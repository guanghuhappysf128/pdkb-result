(define (domain grid)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_a_p1)
        (not_at_a_p10)
        (not_at_a_p11)
        (not_at_a_p12)
        (not_at_a_p2)
        (not_at_a_p3)
        (not_at_a_p4)
        (not_at_a_p5)
        (not_at_a_p6)
        (not_at_a_p7)
        (not_at_a_p8)
        (not_at_a_p9)
        (not_at_b_p1)
        (not_at_b_p10)
        (not_at_b_p11)
        (not_at_b_p12)
        (not_at_b_p2)
        (not_at_b_p3)
        (not_at_b_p4)
        (not_at_b_p5)
        (not_at_b_p6)
        (not_at_b_p7)
        (not_at_b_p8)
        (not_at_b_p9)
        (not_at_c_p1)
        (not_at_c_p10)
        (not_at_c_p11)
        (not_at_c_p12)
        (not_at_c_p2)
        (not_at_c_p3)
        (not_at_c_p4)
        (not_at_c_p5)
        (not_at_c_p6)
        (not_at_c_p7)
        (not_at_c_p8)
        (not_at_c_p9)
        (not_checked_p1)
        (not_checked_p10)
        (not_checked_p11)
        (not_checked_p12)
        (not_checked_p2)
        (not_checked_p3)
        (not_checked_p4)
        (not_checked_p5)
        (not_checked_p6)
        (not_checked_p7)
        (not_checked_p8)
        (not_checked_p9)
        (not_hiddensurvivorat_s_p1)
        (not_hiddensurvivorat_s_p10)
        (not_hiddensurvivorat_s_p11)
        (not_hiddensurvivorat_s_p12)
        (not_hiddensurvivorat_s_p2)
        (not_hiddensurvivorat_s_p3)
        (not_hiddensurvivorat_s_p4)
        (not_hiddensurvivorat_s_p5)
        (not_hiddensurvivorat_s_p6)
        (not_hiddensurvivorat_s_p7)
        (not_hiddensurvivorat_s_p8)
        (not_hiddensurvivorat_s_p9)
        (not_leader_a)
        (not_leader_b)
        (not_leader_c)
        (not_succ_p10_p1)
        (not_succ_p10_p10)
        (not_succ_p10_p11)
        (not_succ_p10_p12)
        (not_succ_p10_p2)
        (not_succ_p10_p3)
        (not_succ_p10_p4)
        (not_succ_p10_p5)
        (not_succ_p10_p6)
        (not_succ_p10_p7)
        (not_succ_p10_p8)
        (not_succ_p10_p9)
        (not_succ_p11_p1)
        (not_succ_p11_p10)
        (not_succ_p11_p11)
        (not_succ_p11_p12)
        (not_succ_p11_p2)
        (not_succ_p11_p3)
        (not_succ_p11_p4)
        (not_succ_p11_p5)
        (not_succ_p11_p6)
        (not_succ_p11_p7)
        (not_succ_p11_p8)
        (not_succ_p11_p9)
        (not_succ_p12_p1)
        (not_succ_p12_p10)
        (not_succ_p12_p11)
        (not_succ_p12_p12)
        (not_succ_p12_p2)
        (not_succ_p12_p3)
        (not_succ_p12_p4)
        (not_succ_p12_p5)
        (not_succ_p12_p6)
        (not_succ_p12_p7)
        (not_succ_p12_p8)
        (not_succ_p12_p9)
        (not_succ_p1_p1)
        (not_succ_p1_p10)
        (not_succ_p1_p11)
        (not_succ_p1_p12)
        (not_succ_p1_p2)
        (not_succ_p1_p3)
        (not_succ_p1_p4)
        (not_succ_p1_p5)
        (not_succ_p1_p6)
        (not_succ_p1_p7)
        (not_succ_p1_p8)
        (not_succ_p1_p9)
        (not_succ_p2_p1)
        (not_succ_p2_p10)
        (not_succ_p2_p11)
        (not_succ_p2_p12)
        (not_succ_p2_p2)
        (not_succ_p2_p3)
        (not_succ_p2_p4)
        (not_succ_p2_p5)
        (not_succ_p2_p6)
        (not_succ_p2_p7)
        (not_succ_p2_p8)
        (not_succ_p2_p9)
        (not_succ_p3_p1)
        (not_succ_p3_p10)
        (not_succ_p3_p11)
        (not_succ_p3_p12)
        (not_succ_p3_p2)
        (not_succ_p3_p3)
        (not_succ_p3_p4)
        (not_succ_p3_p5)
        (not_succ_p3_p6)
        (not_succ_p3_p7)
        (not_succ_p3_p8)
        (not_succ_p3_p9)
        (not_succ_p4_p1)
        (not_succ_p4_p10)
        (not_succ_p4_p11)
        (not_succ_p4_p12)
        (not_succ_p4_p2)
        (not_succ_p4_p3)
        (not_succ_p4_p4)
        (not_succ_p4_p5)
        (not_succ_p4_p6)
        (not_succ_p4_p7)
        (not_succ_p4_p8)
        (not_succ_p4_p9)
        (not_succ_p5_p1)
        (not_succ_p5_p10)
        (not_succ_p5_p11)
        (not_succ_p5_p12)
        (not_succ_p5_p2)
        (not_succ_p5_p3)
        (not_succ_p5_p4)
        (not_succ_p5_p5)
        (not_succ_p5_p6)
        (not_succ_p5_p7)
        (not_succ_p5_p8)
        (not_succ_p5_p9)
        (not_succ_p6_p1)
        (not_succ_p6_p10)
        (not_succ_p6_p11)
        (not_succ_p6_p12)
        (not_succ_p6_p2)
        (not_succ_p6_p3)
        (not_succ_p6_p4)
        (not_succ_p6_p5)
        (not_succ_p6_p6)
        (not_succ_p6_p7)
        (not_succ_p6_p8)
        (not_succ_p6_p9)
        (not_succ_p7_p1)
        (not_succ_p7_p10)
        (not_succ_p7_p11)
        (not_succ_p7_p12)
        (not_succ_p7_p2)
        (not_succ_p7_p3)
        (not_succ_p7_p4)
        (not_succ_p7_p5)
        (not_succ_p7_p6)
        (not_succ_p7_p7)
        (not_succ_p7_p8)
        (not_succ_p7_p9)
        (not_succ_p8_p1)
        (not_succ_p8_p10)
        (not_succ_p8_p11)
        (not_succ_p8_p12)
        (not_succ_p8_p2)
        (not_succ_p8_p3)
        (not_succ_p8_p4)
        (not_succ_p8_p5)
        (not_succ_p8_p6)
        (not_succ_p8_p7)
        (not_succ_p8_p8)
        (not_succ_p8_p9)
        (not_succ_p9_p1)
        (not_succ_p9_p10)
        (not_succ_p9_p11)
        (not_succ_p9_p12)
        (not_succ_p9_p2)
        (not_succ_p9_p3)
        (not_succ_p9_p4)
        (not_succ_p9_p5)
        (not_succ_p9_p6)
        (not_succ_p9_p7)
        (not_succ_p9_p8)
        (not_succ_p9_p9)
        (not_survivorat_s_p1)
        (not_survivorat_s_p10)
        (not_survivorat_s_p11)
        (not_survivorat_s_p12)
        (not_survivorat_s_p2)
        (not_survivorat_s_p3)
        (not_survivorat_s_p4)
        (not_survivorat_s_p5)
        (not_survivorat_s_p6)
        (not_survivorat_s_p7)
        (not_survivorat_s_p8)
        (not_survivorat_s_p9)
        (Ba_not_checked_p1)
        (Ba_not_checked_p10)
        (Ba_not_checked_p11)
        (Ba_not_checked_p12)
        (Ba_not_checked_p2)
        (Ba_not_checked_p3)
        (Ba_not_checked_p4)
        (Ba_not_checked_p5)
        (Ba_not_checked_p6)
        (Ba_not_checked_p7)
        (Ba_not_checked_p8)
        (Ba_not_checked_p9)
        (Ba_not_hiddensurvivorat_s_p1)
        (Ba_not_hiddensurvivorat_s_p10)
        (Ba_not_hiddensurvivorat_s_p11)
        (Ba_not_hiddensurvivorat_s_p12)
        (Ba_not_hiddensurvivorat_s_p2)
        (Ba_not_hiddensurvivorat_s_p3)
        (Ba_not_hiddensurvivorat_s_p4)
        (Ba_not_hiddensurvivorat_s_p5)
        (Ba_not_hiddensurvivorat_s_p6)
        (Ba_not_hiddensurvivorat_s_p7)
        (Ba_not_hiddensurvivorat_s_p8)
        (Ba_not_hiddensurvivorat_s_p9)
        (Ba_not_survivorat_s_p1)
        (Ba_not_survivorat_s_p10)
        (Ba_not_survivorat_s_p11)
        (Ba_not_survivorat_s_p12)
        (Ba_not_survivorat_s_p2)
        (Ba_not_survivorat_s_p3)
        (Ba_not_survivorat_s_p4)
        (Ba_not_survivorat_s_p5)
        (Ba_not_survivorat_s_p6)
        (Ba_not_survivorat_s_p7)
        (Ba_not_survivorat_s_p8)
        (Ba_not_survivorat_s_p9)
        (Ba_checked_p1)
        (Ba_checked_p10)
        (Ba_checked_p11)
        (Ba_checked_p12)
        (Ba_checked_p2)
        (Ba_checked_p3)
        (Ba_checked_p4)
        (Ba_checked_p5)
        (Ba_checked_p6)
        (Ba_checked_p7)
        (Ba_checked_p8)
        (Ba_checked_p9)
        (Ba_hiddensurvivorat_s_p1)
        (Ba_hiddensurvivorat_s_p10)
        (Ba_hiddensurvivorat_s_p11)
        (Ba_hiddensurvivorat_s_p12)
        (Ba_hiddensurvivorat_s_p2)
        (Ba_hiddensurvivorat_s_p3)
        (Ba_hiddensurvivorat_s_p4)
        (Ba_hiddensurvivorat_s_p5)
        (Ba_hiddensurvivorat_s_p6)
        (Ba_hiddensurvivorat_s_p7)
        (Ba_hiddensurvivorat_s_p8)
        (Ba_hiddensurvivorat_s_p9)
        (Ba_survivorat_s_p1)
        (Ba_survivorat_s_p10)
        (Ba_survivorat_s_p11)
        (Ba_survivorat_s_p12)
        (Ba_survivorat_s_p2)
        (Ba_survivorat_s_p3)
        (Ba_survivorat_s_p4)
        (Ba_survivorat_s_p5)
        (Ba_survivorat_s_p6)
        (Ba_survivorat_s_p7)
        (Ba_survivorat_s_p8)
        (Ba_survivorat_s_p9)
        (Bb_not_checked_p1)
        (Bb_not_checked_p10)
        (Bb_not_checked_p11)
        (Bb_not_checked_p12)
        (Bb_not_checked_p2)
        (Bb_not_checked_p3)
        (Bb_not_checked_p4)
        (Bb_not_checked_p5)
        (Bb_not_checked_p6)
        (Bb_not_checked_p7)
        (Bb_not_checked_p8)
        (Bb_not_checked_p9)
        (Bb_not_hiddensurvivorat_s_p1)
        (Bb_not_hiddensurvivorat_s_p10)
        (Bb_not_hiddensurvivorat_s_p11)
        (Bb_not_hiddensurvivorat_s_p12)
        (Bb_not_hiddensurvivorat_s_p2)
        (Bb_not_hiddensurvivorat_s_p3)
        (Bb_not_hiddensurvivorat_s_p4)
        (Bb_not_hiddensurvivorat_s_p5)
        (Bb_not_hiddensurvivorat_s_p6)
        (Bb_not_hiddensurvivorat_s_p7)
        (Bb_not_hiddensurvivorat_s_p8)
        (Bb_not_hiddensurvivorat_s_p9)
        (Bb_not_survivorat_s_p1)
        (Bb_not_survivorat_s_p10)
        (Bb_not_survivorat_s_p11)
        (Bb_not_survivorat_s_p12)
        (Bb_not_survivorat_s_p2)
        (Bb_not_survivorat_s_p3)
        (Bb_not_survivorat_s_p4)
        (Bb_not_survivorat_s_p5)
        (Bb_not_survivorat_s_p6)
        (Bb_not_survivorat_s_p7)
        (Bb_not_survivorat_s_p8)
        (Bb_not_survivorat_s_p9)
        (Bb_checked_p1)
        (Bb_checked_p10)
        (Bb_checked_p11)
        (Bb_checked_p12)
        (Bb_checked_p2)
        (Bb_checked_p3)
        (Bb_checked_p4)
        (Bb_checked_p5)
        (Bb_checked_p6)
        (Bb_checked_p7)
        (Bb_checked_p8)
        (Bb_checked_p9)
        (Bb_hiddensurvivorat_s_p1)
        (Bb_hiddensurvivorat_s_p10)
        (Bb_hiddensurvivorat_s_p11)
        (Bb_hiddensurvivorat_s_p12)
        (Bb_hiddensurvivorat_s_p2)
        (Bb_hiddensurvivorat_s_p3)
        (Bb_hiddensurvivorat_s_p4)
        (Bb_hiddensurvivorat_s_p5)
        (Bb_hiddensurvivorat_s_p6)
        (Bb_hiddensurvivorat_s_p7)
        (Bb_hiddensurvivorat_s_p8)
        (Bb_hiddensurvivorat_s_p9)
        (Bb_survivorat_s_p1)
        (Bb_survivorat_s_p10)
        (Bb_survivorat_s_p11)
        (Bb_survivorat_s_p12)
        (Bb_survivorat_s_p2)
        (Bb_survivorat_s_p3)
        (Bb_survivorat_s_p4)
        (Bb_survivorat_s_p5)
        (Bb_survivorat_s_p6)
        (Bb_survivorat_s_p7)
        (Bb_survivorat_s_p8)
        (Bb_survivorat_s_p9)
        (Bc_not_checked_p1)
        (Bc_not_checked_p10)
        (Bc_not_checked_p11)
        (Bc_not_checked_p12)
        (Bc_not_checked_p2)
        (Bc_not_checked_p3)
        (Bc_not_checked_p4)
        (Bc_not_checked_p5)
        (Bc_not_checked_p6)
        (Bc_not_checked_p7)
        (Bc_not_checked_p8)
        (Bc_not_checked_p9)
        (Bc_not_hiddensurvivorat_s_p1)
        (Bc_not_hiddensurvivorat_s_p10)
        (Bc_not_hiddensurvivorat_s_p11)
        (Bc_not_hiddensurvivorat_s_p12)
        (Bc_not_hiddensurvivorat_s_p2)
        (Bc_not_hiddensurvivorat_s_p3)
        (Bc_not_hiddensurvivorat_s_p4)
        (Bc_not_hiddensurvivorat_s_p5)
        (Bc_not_hiddensurvivorat_s_p6)
        (Bc_not_hiddensurvivorat_s_p7)
        (Bc_not_hiddensurvivorat_s_p8)
        (Bc_not_hiddensurvivorat_s_p9)
        (Bc_not_survivorat_s_p1)
        (Bc_not_survivorat_s_p10)
        (Bc_not_survivorat_s_p11)
        (Bc_not_survivorat_s_p12)
        (Bc_not_survivorat_s_p2)
        (Bc_not_survivorat_s_p3)
        (Bc_not_survivorat_s_p4)
        (Bc_not_survivorat_s_p5)
        (Bc_not_survivorat_s_p6)
        (Bc_not_survivorat_s_p7)
        (Bc_not_survivorat_s_p8)
        (Bc_not_survivorat_s_p9)
        (Bc_checked_p1)
        (Bc_checked_p10)
        (Bc_checked_p11)
        (Bc_checked_p12)
        (Bc_checked_p2)
        (Bc_checked_p3)
        (Bc_checked_p4)
        (Bc_checked_p5)
        (Bc_checked_p6)
        (Bc_checked_p7)
        (Bc_checked_p8)
        (Bc_checked_p9)
        (Bc_hiddensurvivorat_s_p1)
        (Bc_hiddensurvivorat_s_p10)
        (Bc_hiddensurvivorat_s_p11)
        (Bc_hiddensurvivorat_s_p12)
        (Bc_hiddensurvivorat_s_p2)
        (Bc_hiddensurvivorat_s_p3)
        (Bc_hiddensurvivorat_s_p4)
        (Bc_hiddensurvivorat_s_p5)
        (Bc_hiddensurvivorat_s_p6)
        (Bc_hiddensurvivorat_s_p7)
        (Bc_hiddensurvivorat_s_p8)
        (Bc_hiddensurvivorat_s_p9)
        (Bc_survivorat_s_p1)
        (Bc_survivorat_s_p10)
        (Bc_survivorat_s_p11)
        (Bc_survivorat_s_p12)
        (Bc_survivorat_s_p2)
        (Bc_survivorat_s_p3)
        (Bc_survivorat_s_p4)
        (Bc_survivorat_s_p5)
        (Bc_survivorat_s_p6)
        (Bc_survivorat_s_p7)
        (Bc_survivorat_s_p8)
        (Bc_survivorat_s_p9)
        (Pa_not_checked_p1)
        (Pa_not_checked_p10)
        (Pa_not_checked_p11)
        (Pa_not_checked_p12)
        (Pa_not_checked_p2)
        (Pa_not_checked_p3)
        (Pa_not_checked_p4)
        (Pa_not_checked_p5)
        (Pa_not_checked_p6)
        (Pa_not_checked_p7)
        (Pa_not_checked_p8)
        (Pa_not_checked_p9)
        (Pa_not_hiddensurvivorat_s_p1)
        (Pa_not_hiddensurvivorat_s_p10)
        (Pa_not_hiddensurvivorat_s_p11)
        (Pa_not_hiddensurvivorat_s_p12)
        (Pa_not_hiddensurvivorat_s_p2)
        (Pa_not_hiddensurvivorat_s_p3)
        (Pa_not_hiddensurvivorat_s_p4)
        (Pa_not_hiddensurvivorat_s_p5)
        (Pa_not_hiddensurvivorat_s_p6)
        (Pa_not_hiddensurvivorat_s_p7)
        (Pa_not_hiddensurvivorat_s_p8)
        (Pa_not_hiddensurvivorat_s_p9)
        (Pa_not_survivorat_s_p1)
        (Pa_not_survivorat_s_p10)
        (Pa_not_survivorat_s_p11)
        (Pa_not_survivorat_s_p12)
        (Pa_not_survivorat_s_p2)
        (Pa_not_survivorat_s_p3)
        (Pa_not_survivorat_s_p4)
        (Pa_not_survivorat_s_p5)
        (Pa_not_survivorat_s_p6)
        (Pa_not_survivorat_s_p7)
        (Pa_not_survivorat_s_p8)
        (Pa_not_survivorat_s_p9)
        (Pa_checked_p1)
        (Pa_checked_p10)
        (Pa_checked_p11)
        (Pa_checked_p12)
        (Pa_checked_p2)
        (Pa_checked_p3)
        (Pa_checked_p4)
        (Pa_checked_p5)
        (Pa_checked_p6)
        (Pa_checked_p7)
        (Pa_checked_p8)
        (Pa_checked_p9)
        (Pa_hiddensurvivorat_s_p1)
        (Pa_hiddensurvivorat_s_p10)
        (Pa_hiddensurvivorat_s_p11)
        (Pa_hiddensurvivorat_s_p12)
        (Pa_hiddensurvivorat_s_p2)
        (Pa_hiddensurvivorat_s_p3)
        (Pa_hiddensurvivorat_s_p4)
        (Pa_hiddensurvivorat_s_p5)
        (Pa_hiddensurvivorat_s_p6)
        (Pa_hiddensurvivorat_s_p7)
        (Pa_hiddensurvivorat_s_p8)
        (Pa_hiddensurvivorat_s_p9)
        (Pa_survivorat_s_p1)
        (Pa_survivorat_s_p10)
        (Pa_survivorat_s_p11)
        (Pa_survivorat_s_p12)
        (Pa_survivorat_s_p2)
        (Pa_survivorat_s_p3)
        (Pa_survivorat_s_p4)
        (Pa_survivorat_s_p5)
        (Pa_survivorat_s_p6)
        (Pa_survivorat_s_p7)
        (Pa_survivorat_s_p8)
        (Pa_survivorat_s_p9)
        (Pb_not_checked_p1)
        (Pb_not_checked_p10)
        (Pb_not_checked_p11)
        (Pb_not_checked_p12)
        (Pb_not_checked_p2)
        (Pb_not_checked_p3)
        (Pb_not_checked_p4)
        (Pb_not_checked_p5)
        (Pb_not_checked_p6)
        (Pb_not_checked_p7)
        (Pb_not_checked_p8)
        (Pb_not_checked_p9)
        (Pb_not_hiddensurvivorat_s_p1)
        (Pb_not_hiddensurvivorat_s_p10)
        (Pb_not_hiddensurvivorat_s_p11)
        (Pb_not_hiddensurvivorat_s_p12)
        (Pb_not_hiddensurvivorat_s_p2)
        (Pb_not_hiddensurvivorat_s_p3)
        (Pb_not_hiddensurvivorat_s_p4)
        (Pb_not_hiddensurvivorat_s_p5)
        (Pb_not_hiddensurvivorat_s_p6)
        (Pb_not_hiddensurvivorat_s_p7)
        (Pb_not_hiddensurvivorat_s_p8)
        (Pb_not_hiddensurvivorat_s_p9)
        (Pb_not_survivorat_s_p1)
        (Pb_not_survivorat_s_p10)
        (Pb_not_survivorat_s_p11)
        (Pb_not_survivorat_s_p12)
        (Pb_not_survivorat_s_p2)
        (Pb_not_survivorat_s_p3)
        (Pb_not_survivorat_s_p4)
        (Pb_not_survivorat_s_p5)
        (Pb_not_survivorat_s_p6)
        (Pb_not_survivorat_s_p7)
        (Pb_not_survivorat_s_p8)
        (Pb_not_survivorat_s_p9)
        (Pb_checked_p1)
        (Pb_checked_p10)
        (Pb_checked_p11)
        (Pb_checked_p12)
        (Pb_checked_p2)
        (Pb_checked_p3)
        (Pb_checked_p4)
        (Pb_checked_p5)
        (Pb_checked_p6)
        (Pb_checked_p7)
        (Pb_checked_p8)
        (Pb_checked_p9)
        (Pb_hiddensurvivorat_s_p1)
        (Pb_hiddensurvivorat_s_p10)
        (Pb_hiddensurvivorat_s_p11)
        (Pb_hiddensurvivorat_s_p12)
        (Pb_hiddensurvivorat_s_p2)
        (Pb_hiddensurvivorat_s_p3)
        (Pb_hiddensurvivorat_s_p4)
        (Pb_hiddensurvivorat_s_p5)
        (Pb_hiddensurvivorat_s_p6)
        (Pb_hiddensurvivorat_s_p7)
        (Pb_hiddensurvivorat_s_p8)
        (Pb_hiddensurvivorat_s_p9)
        (Pb_survivorat_s_p1)
        (Pb_survivorat_s_p10)
        (Pb_survivorat_s_p11)
        (Pb_survivorat_s_p12)
        (Pb_survivorat_s_p2)
        (Pb_survivorat_s_p3)
        (Pb_survivorat_s_p4)
        (Pb_survivorat_s_p5)
        (Pb_survivorat_s_p6)
        (Pb_survivorat_s_p7)
        (Pb_survivorat_s_p8)
        (Pb_survivorat_s_p9)
        (Pc_not_checked_p1)
        (Pc_not_checked_p10)
        (Pc_not_checked_p11)
        (Pc_not_checked_p12)
        (Pc_not_checked_p2)
        (Pc_not_checked_p3)
        (Pc_not_checked_p4)
        (Pc_not_checked_p5)
        (Pc_not_checked_p6)
        (Pc_not_checked_p7)
        (Pc_not_checked_p8)
        (Pc_not_checked_p9)
        (Pc_not_hiddensurvivorat_s_p1)
        (Pc_not_hiddensurvivorat_s_p10)
        (Pc_not_hiddensurvivorat_s_p11)
        (Pc_not_hiddensurvivorat_s_p12)
        (Pc_not_hiddensurvivorat_s_p2)
        (Pc_not_hiddensurvivorat_s_p3)
        (Pc_not_hiddensurvivorat_s_p4)
        (Pc_not_hiddensurvivorat_s_p5)
        (Pc_not_hiddensurvivorat_s_p6)
        (Pc_not_hiddensurvivorat_s_p7)
        (Pc_not_hiddensurvivorat_s_p8)
        (Pc_not_hiddensurvivorat_s_p9)
        (Pc_not_survivorat_s_p1)
        (Pc_not_survivorat_s_p10)
        (Pc_not_survivorat_s_p11)
        (Pc_not_survivorat_s_p12)
        (Pc_not_survivorat_s_p2)
        (Pc_not_survivorat_s_p3)
        (Pc_not_survivorat_s_p4)
        (Pc_not_survivorat_s_p5)
        (Pc_not_survivorat_s_p6)
        (Pc_not_survivorat_s_p7)
        (Pc_not_survivorat_s_p8)
        (Pc_not_survivorat_s_p9)
        (Pc_checked_p1)
        (Pc_checked_p10)
        (Pc_checked_p11)
        (Pc_checked_p12)
        (Pc_checked_p2)
        (Pc_checked_p3)
        (Pc_checked_p4)
        (Pc_checked_p5)
        (Pc_checked_p6)
        (Pc_checked_p7)
        (Pc_checked_p8)
        (Pc_checked_p9)
        (Pc_hiddensurvivorat_s_p1)
        (Pc_hiddensurvivorat_s_p10)
        (Pc_hiddensurvivorat_s_p11)
        (Pc_hiddensurvivorat_s_p12)
        (Pc_hiddensurvivorat_s_p2)
        (Pc_hiddensurvivorat_s_p3)
        (Pc_hiddensurvivorat_s_p4)
        (Pc_hiddensurvivorat_s_p5)
        (Pc_hiddensurvivorat_s_p6)
        (Pc_hiddensurvivorat_s_p7)
        (Pc_hiddensurvivorat_s_p8)
        (Pc_hiddensurvivorat_s_p9)
        (Pc_survivorat_s_p1)
        (Pc_survivorat_s_p10)
        (Pc_survivorat_s_p11)
        (Pc_survivorat_s_p12)
        (Pc_survivorat_s_p2)
        (Pc_survivorat_s_p3)
        (Pc_survivorat_s_p4)
        (Pc_survivorat_s_p5)
        (Pc_survivorat_s_p6)
        (Pc_survivorat_s_p7)
        (Pc_survivorat_s_p8)
        (Pc_survivorat_s_p9)
        (at_a_p1)
        (at_a_p10)
        (at_a_p11)
        (at_a_p12)
        (at_a_p2)
        (at_a_p3)
        (at_a_p4)
        (at_a_p5)
        (at_a_p6)
        (at_a_p7)
        (at_a_p8)
        (at_a_p9)
        (at_b_p1)
        (at_b_p10)
        (at_b_p11)
        (at_b_p12)
        (at_b_p2)
        (at_b_p3)
        (at_b_p4)
        (at_b_p5)
        (at_b_p6)
        (at_b_p7)
        (at_b_p8)
        (at_b_p9)
        (at_c_p1)
        (at_c_p10)
        (at_c_p11)
        (at_c_p12)
        (at_c_p2)
        (at_c_p3)
        (at_c_p4)
        (at_c_p5)
        (at_c_p6)
        (at_c_p7)
        (at_c_p8)
        (at_c_p9)
        (checked_p1)
        (checked_p10)
        (checked_p11)
        (checked_p12)
        (checked_p2)
        (checked_p3)
        (checked_p4)
        (checked_p5)
        (checked_p6)
        (checked_p7)
        (checked_p8)
        (checked_p9)
        (hiddensurvivorat_s_p1)
        (hiddensurvivorat_s_p10)
        (hiddensurvivorat_s_p11)
        (hiddensurvivorat_s_p12)
        (hiddensurvivorat_s_p2)
        (hiddensurvivorat_s_p3)
        (hiddensurvivorat_s_p4)
        (hiddensurvivorat_s_p5)
        (hiddensurvivorat_s_p6)
        (hiddensurvivorat_s_p7)
        (hiddensurvivorat_s_p8)
        (hiddensurvivorat_s_p9)
        (leader_a)
        (leader_b)
        (leader_c)
        (succ_p10_p1)
        (succ_p10_p10)
        (succ_p10_p11)
        (succ_p10_p12)
        (succ_p10_p2)
        (succ_p10_p3)
        (succ_p10_p4)
        (succ_p10_p5)
        (succ_p10_p6)
        (succ_p10_p7)
        (succ_p10_p8)
        (succ_p10_p9)
        (succ_p11_p1)
        (succ_p11_p10)
        (succ_p11_p11)
        (succ_p11_p12)
        (succ_p11_p2)
        (succ_p11_p3)
        (succ_p11_p4)
        (succ_p11_p5)
        (succ_p11_p6)
        (succ_p11_p7)
        (succ_p11_p8)
        (succ_p11_p9)
        (succ_p12_p1)
        (succ_p12_p10)
        (succ_p12_p11)
        (succ_p12_p12)
        (succ_p12_p2)
        (succ_p12_p3)
        (succ_p12_p4)
        (succ_p12_p5)
        (succ_p12_p6)
        (succ_p12_p7)
        (succ_p12_p8)
        (succ_p12_p9)
        (succ_p1_p1)
        (succ_p1_p10)
        (succ_p1_p11)
        (succ_p1_p12)
        (succ_p1_p2)
        (succ_p1_p3)
        (succ_p1_p4)
        (succ_p1_p5)
        (succ_p1_p6)
        (succ_p1_p7)
        (succ_p1_p8)
        (succ_p1_p9)
        (succ_p2_p1)
        (succ_p2_p10)
        (succ_p2_p11)
        (succ_p2_p12)
        (succ_p2_p2)
        (succ_p2_p3)
        (succ_p2_p4)
        (succ_p2_p5)
        (succ_p2_p6)
        (succ_p2_p7)
        (succ_p2_p8)
        (succ_p2_p9)
        (succ_p3_p1)
        (succ_p3_p10)
        (succ_p3_p11)
        (succ_p3_p12)
        (succ_p3_p2)
        (succ_p3_p3)
        (succ_p3_p4)
        (succ_p3_p5)
        (succ_p3_p6)
        (succ_p3_p7)
        (succ_p3_p8)
        (succ_p3_p9)
        (succ_p4_p1)
        (succ_p4_p10)
        (succ_p4_p11)
        (succ_p4_p12)
        (succ_p4_p2)
        (succ_p4_p3)
        (succ_p4_p4)
        (succ_p4_p5)
        (succ_p4_p6)
        (succ_p4_p7)
        (succ_p4_p8)
        (succ_p4_p9)
        (succ_p5_p1)
        (succ_p5_p10)
        (succ_p5_p11)
        (succ_p5_p12)
        (succ_p5_p2)
        (succ_p5_p3)
        (succ_p5_p4)
        (succ_p5_p5)
        (succ_p5_p6)
        (succ_p5_p7)
        (succ_p5_p8)
        (succ_p5_p9)
        (succ_p6_p1)
        (succ_p6_p10)
        (succ_p6_p11)
        (succ_p6_p12)
        (succ_p6_p2)
        (succ_p6_p3)
        (succ_p6_p4)
        (succ_p6_p5)
        (succ_p6_p6)
        (succ_p6_p7)
        (succ_p6_p8)
        (succ_p6_p9)
        (succ_p7_p1)
        (succ_p7_p10)
        (succ_p7_p11)
        (succ_p7_p12)
        (succ_p7_p2)
        (succ_p7_p3)
        (succ_p7_p4)
        (succ_p7_p5)
        (succ_p7_p6)
        (succ_p7_p7)
        (succ_p7_p8)
        (succ_p7_p9)
        (succ_p8_p1)
        (succ_p8_p10)
        (succ_p8_p11)
        (succ_p8_p12)
        (succ_p8_p2)
        (succ_p8_p3)
        (succ_p8_p4)
        (succ_p8_p5)
        (succ_p8_p6)
        (succ_p8_p7)
        (succ_p8_p8)
        (succ_p8_p9)
        (succ_p9_p1)
        (succ_p9_p10)
        (succ_p9_p11)
        (succ_p9_p12)
        (succ_p9_p2)
        (succ_p9_p3)
        (succ_p9_p4)
        (succ_p9_p5)
        (succ_p9_p6)
        (succ_p9_p7)
        (succ_p9_p8)
        (succ_p9_p9)
        (survivorat_s_p1)
        (survivorat_s_p10)
        (survivorat_s_p11)
        (survivorat_s_p12)
        (survivorat_s_p2)
        (survivorat_s_p3)
        (survivorat_s_p4)
        (survivorat_s_p5)
        (survivorat_s_p6)
        (survivorat_s_p7)
        (survivorat_s_p8)
        (survivorat_s_p9)
    )

    (:action badcomm_p10_a_a_s
        :precondition (and (Pa_survivorat_s_p10)
                           (leader_a)
                           (Ba_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #84178: origin
                    (Ba_not_survivorat_s_p10)

                    ; #90761: <==closure== 84178 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #42810: <==negation-removal== 90761 (pos)
                    (not (Ba_survivorat_s_p10))

                    ; #67228: <==negation-removal== 84178 (pos)
                    (not (Pa_survivorat_s_p10))))

    (:action badcomm_p10_a_b_s
        :precondition (and (Pa_survivorat_s_p10)
                           (leader_b)
                           (Ba_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #10935: origin
                    (Bb_not_survivorat_s_p10)

                    ; #85883: <==closure== 10935 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #52962: <==negation-removal== 10935 (pos)
                    (not (Pb_survivorat_s_p10))

                    ; #81707: <==negation-removal== 85883 (pos)
                    (not (Bb_survivorat_s_p10))))

    (:action badcomm_p10_a_c_s
        :precondition (and (Pa_survivorat_s_p10)
                           (leader_c)
                           (Ba_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #16081: <==closure== 57902 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #57902: origin
                    (Bc_not_survivorat_s_p10)

                    ; #59914: <==negation-removal== 57902 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #62889: <==negation-removal== 16081 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p10_b_a_s
        :precondition (and (Bb_survivorat_s_p10)
                           (leader_a)
                           (Pb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #84178: origin
                    (Ba_not_survivorat_s_p10)

                    ; #90761: <==closure== 84178 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #42810: <==negation-removal== 90761 (pos)
                    (not (Ba_survivorat_s_p10))

                    ; #67228: <==negation-removal== 84178 (pos)
                    (not (Pa_survivorat_s_p10))))

    (:action badcomm_p10_b_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_b))
        :effect (and
                    ; #10935: origin
                    (Bb_not_survivorat_s_p10)

                    ; #85883: <==closure== 10935 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #52962: <==negation-removal== 10935 (pos)
                    (not (Pb_survivorat_s_p10))

                    ; #81707: <==negation-removal== 85883 (pos)
                    (not (Bb_survivorat_s_p10))))

    (:action badcomm_p10_b_c_s
        :precondition (and (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_c))
        :effect (and
                    ; #16081: <==closure== 57902 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #57902: origin
                    (Bc_not_survivorat_s_p10)

                    ; #59914: <==negation-removal== 57902 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #62889: <==negation-removal== 16081 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p10_c_a_s
        :precondition (and (at_c_p10)
                           (leader_a)
                           (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #84178: origin
                    (Ba_not_survivorat_s_p10)

                    ; #90761: <==closure== 84178 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #42810: <==negation-removal== 90761 (pos)
                    (not (Ba_survivorat_s_p10))

                    ; #67228: <==negation-removal== 84178 (pos)
                    (not (Pa_survivorat_s_p10))))

    (:action badcomm_p10_c_b_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (leader_b)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #10935: origin
                    (Bb_not_survivorat_s_p10)

                    ; #85883: <==closure== 10935 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #52962: <==negation-removal== 10935 (pos)
                    (not (Pb_survivorat_s_p10))

                    ; #81707: <==negation-removal== 85883 (pos)
                    (not (Bb_survivorat_s_p10))))

    (:action badcomm_p10_c_c_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (leader_c)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #16081: <==closure== 57902 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #57902: origin
                    (Bc_not_survivorat_s_p10)

                    ; #59914: <==negation-removal== 57902 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #62889: <==negation-removal== 16081 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p11_a_a_s
        :precondition (and (at_a_p11)
                           (leader_a)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #13993: origin
                    (Ba_not_survivorat_s_p11)

                    ; #72825: <==closure== 13993 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #38881: <==negation-removal== 13993 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #56907: <==negation-removal== 72825 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_a_b_s
        :precondition (and (at_a_p11)
                           (leader_b)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #38410: <==closure== 71812 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #71812: origin
                    (Bb_not_survivorat_s_p11)

                    ; #32042: <==negation-removal== 71812 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #54569: <==negation-removal== 38410 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_a_c_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (leader_c))
        :effect (and
                    ; #11023: <==closure== 48011 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #48011: origin
                    (Bc_not_survivorat_s_p11)

                    ; #14184: <==negation-removal== 48011 (pos)
                    (not (Pc_survivorat_s_p11))

                    ; #16823: <==negation-removal== 11023 (pos)
                    (not (Bc_survivorat_s_p11))))

    (:action badcomm_p11_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #13993: origin
                    (Ba_not_survivorat_s_p11)

                    ; #72825: <==closure== 13993 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #38881: <==negation-removal== 13993 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #56907: <==negation-removal== 72825 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #38410: <==closure== 71812 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #71812: origin
                    (Bb_not_survivorat_s_p11)

                    ; #32042: <==negation-removal== 71812 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #54569: <==negation-removal== 38410 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_b_c_s
        :precondition (and (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11)
                           (leader_c))
        :effect (and
                    ; #11023: <==closure== 48011 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #48011: origin
                    (Bc_not_survivorat_s_p11)

                    ; #14184: <==negation-removal== 48011 (pos)
                    (not (Pc_survivorat_s_p11))

                    ; #16823: <==negation-removal== 11023 (pos)
                    (not (Bc_survivorat_s_p11))))

    (:action badcomm_p11_c_a_s
        :precondition (and (Bc_survivorat_s_p11)
                           (leader_a)
                           (Pc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #13993: origin
                    (Ba_not_survivorat_s_p11)

                    ; #72825: <==closure== 13993 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #38881: <==negation-removal== 13993 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #56907: <==negation-removal== 72825 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_c_b_s
        :precondition (and (Bc_survivorat_s_p11)
                           (leader_b)
                           (Pc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #38410: <==closure== 71812 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #71812: origin
                    (Bb_not_survivorat_s_p11)

                    ; #32042: <==negation-removal== 71812 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #54569: <==negation-removal== 38410 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_c_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (leader_c)
                           (Pc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #11023: <==closure== 48011 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #48011: origin
                    (Bc_not_survivorat_s_p11)

                    ; #14184: <==negation-removal== 48011 (pos)
                    (not (Pc_survivorat_s_p11))

                    ; #16823: <==negation-removal== 11023 (pos)
                    (not (Bc_survivorat_s_p11))))

    (:action badcomm_p12_a_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (leader_a)
                           (at_a_p12))
        :effect (and
                    ; #82957: origin
                    (Ba_not_survivorat_s_p12)

                    ; #91719: <==closure== 82957 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #71478: <==negation-removal== 82957 (pos)
                    (not (Pa_survivorat_s_p12))

                    ; #86387: <==negation-removal== 91719 (pos)
                    (not (Ba_survivorat_s_p12))))

    (:action badcomm_p12_a_b_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (leader_b)
                           (at_a_p12))
        :effect (and
                    ; #52179: <==closure== 70392 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #70392: origin
                    (Bb_not_survivorat_s_p12)

                    ; #18723: <==negation-removal== 70392 (pos)
                    (not (Pb_survivorat_s_p12))

                    ; #31352: <==negation-removal== 52179 (pos)
                    (not (Bb_survivorat_s_p12))))

    (:action badcomm_p12_a_c_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (leader_c)
                           (at_a_p12))
        :effect (and
                    ; #49989: origin
                    (Bc_not_survivorat_s_p12)

                    ; #79372: <==closure== 49989 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #35071: <==negation-removal== 79372 (pos)
                    (not (Bc_survivorat_s_p12))

                    ; #45544: <==negation-removal== 49989 (pos)
                    (not (Pc_survivorat_s_p12))))

    (:action badcomm_p12_b_a_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (leader_a)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #82957: origin
                    (Ba_not_survivorat_s_p12)

                    ; #91719: <==closure== 82957 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #71478: <==negation-removal== 82957 (pos)
                    (not (Pa_survivorat_s_p12))

                    ; #86387: <==negation-removal== 91719 (pos)
                    (not (Ba_survivorat_s_p12))))

    (:action badcomm_p12_b_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (leader_b)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #52179: <==closure== 70392 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #70392: origin
                    (Bb_not_survivorat_s_p12)

                    ; #18723: <==negation-removal== 70392 (pos)
                    (not (Pb_survivorat_s_p12))

                    ; #31352: <==negation-removal== 52179 (pos)
                    (not (Bb_survivorat_s_p12))))

    (:action badcomm_p12_b_c_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #49989: origin
                    (Bc_not_survivorat_s_p12)

                    ; #79372: <==closure== 49989 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #35071: <==negation-removal== 79372 (pos)
                    (not (Bc_survivorat_s_p12))

                    ; #45544: <==negation-removal== 49989 (pos)
                    (not (Pc_survivorat_s_p12))))

    (:action badcomm_p12_c_a_s
        :precondition (and (Pc_survivorat_s_p12)
                           (leader_a)
                           (Bc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #82957: origin
                    (Ba_not_survivorat_s_p12)

                    ; #91719: <==closure== 82957 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #71478: <==negation-removal== 82957 (pos)
                    (not (Pa_survivorat_s_p12))

                    ; #86387: <==negation-removal== 91719 (pos)
                    (not (Ba_survivorat_s_p12))))

    (:action badcomm_p12_c_b_s
        :precondition (and (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (leader_b)
                           (at_c_p12))
        :effect (and
                    ; #52179: <==closure== 70392 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #70392: origin
                    (Bb_not_survivorat_s_p12)

                    ; #18723: <==negation-removal== 70392 (pos)
                    (not (Pb_survivorat_s_p12))

                    ; #31352: <==negation-removal== 52179 (pos)
                    (not (Bb_survivorat_s_p12))))

    (:action badcomm_p12_c_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (leader_c)
                           (at_c_p12))
        :effect (and
                    ; #49989: origin
                    (Bc_not_survivorat_s_p12)

                    ; #79372: <==closure== 49989 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #35071: <==negation-removal== 79372 (pos)
                    (not (Bc_survivorat_s_p12))

                    ; #45544: <==negation-removal== 49989 (pos)
                    (not (Pc_survivorat_s_p12))))

    (:action badcomm_p1_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #89424: origin
                    (Ba_not_survivorat_s_p1)

                    ; #89453: <==closure== 89424 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #21855: <==negation-removal== 89453 (pos)
                    (not (Ba_survivorat_s_p1))

                    ; #44950: <==negation-removal== 89424 (pos)
                    (not (Pa_survivorat_s_p1))))

    (:action badcomm_p1_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #27251: origin
                    (Bb_not_survivorat_s_p1)

                    ; #83402: <==closure== 27251 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #26911: <==negation-removal== 83402 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #69132: <==negation-removal== 27251 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_a_c_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (leader_c))
        :effect (and
                    ; #74313: <==closure== 78506 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #78506: origin
                    (Bc_not_survivorat_s_p1)

                    ; #66570: <==negation-removal== 78506 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #69481: <==negation-removal== 74313 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #89424: origin
                    (Ba_not_survivorat_s_p1)

                    ; #89453: <==closure== 89424 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #21855: <==negation-removal== 89453 (pos)
                    (not (Ba_survivorat_s_p1))

                    ; #44950: <==negation-removal== 89424 (pos)
                    (not (Pa_survivorat_s_p1))))

    (:action badcomm_p1_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #27251: origin
                    (Bb_not_survivorat_s_p1)

                    ; #83402: <==closure== 27251 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #26911: <==negation-removal== 83402 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #69132: <==negation-removal== 27251 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_b_c_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (leader_c)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #74313: <==closure== 78506 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #78506: origin
                    (Bc_not_survivorat_s_p1)

                    ; #66570: <==negation-removal== 78506 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #69481: <==negation-removal== 74313 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_c_a_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_a)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #89424: origin
                    (Ba_not_survivorat_s_p1)

                    ; #89453: <==closure== 89424 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #21855: <==negation-removal== 89453 (pos)
                    (not (Ba_survivorat_s_p1))

                    ; #44950: <==negation-removal== 89424 (pos)
                    (not (Pa_survivorat_s_p1))))

    (:action badcomm_p1_c_b_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_b)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #27251: origin
                    (Bb_not_survivorat_s_p1)

                    ; #83402: <==closure== 27251 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #26911: <==negation-removal== 83402 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #69132: <==negation-removal== 27251 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_c_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_c)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #74313: <==closure== 78506 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #78506: origin
                    (Bc_not_survivorat_s_p1)

                    ; #66570: <==negation-removal== 78506 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #69481: <==negation-removal== 74313 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p2_a_a_s
        :precondition (and (leader_a)
                           (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #22070: <==closure== 27771 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #27771: origin
                    (Ba_not_survivorat_s_p2)

                    ; #14642: <==negation-removal== 22070 (pos)
                    (not (Ba_survivorat_s_p2))

                    ; #43037: <==negation-removal== 27771 (pos)
                    (not (Pa_survivorat_s_p2))))

    (:action badcomm_p2_a_b_s
        :precondition (and (leader_b)
                           (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #47349: <==closure== 76658 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #76658: origin
                    (Bb_not_survivorat_s_p2)

                    ; #17947: <==negation-removal== 47349 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #64937: <==negation-removal== 76658 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_a_c_s
        :precondition (and (at_a_p2)
                           (leader_c)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #48151: <==closure== 89860 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #89860: origin
                    (Bc_not_survivorat_s_p2)

                    ; #56654: <==negation-removal== 48151 (pos)
                    (not (Bc_survivorat_s_p2))

                    ; #67345: <==negation-removal== 89860 (pos)
                    (not (Pc_survivorat_s_p2))))

    (:action badcomm_p2_b_a_s
        :precondition (and (Bb_survivorat_s_p2)
                           (leader_a)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #22070: <==closure== 27771 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #27771: origin
                    (Ba_not_survivorat_s_p2)

                    ; #14642: <==negation-removal== 22070 (pos)
                    (not (Ba_survivorat_s_p2))

                    ; #43037: <==negation-removal== 27771 (pos)
                    (not (Pa_survivorat_s_p2))))

    (:action badcomm_p2_b_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_b))
        :effect (and
                    ; #47349: <==closure== 76658 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #76658: origin
                    (Bb_not_survivorat_s_p2)

                    ; #17947: <==negation-removal== 47349 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #64937: <==negation-removal== 76658 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_b_c_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_c))
        :effect (and
                    ; #48151: <==closure== 89860 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #89860: origin
                    (Bc_not_survivorat_s_p2)

                    ; #56654: <==negation-removal== 48151 (pos)
                    (not (Bc_survivorat_s_p2))

                    ; #67345: <==negation-removal== 89860 (pos)
                    (not (Pc_survivorat_s_p2))))

    (:action badcomm_p2_c_a_s
        :precondition (and (leader_a)
                           (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #22070: <==closure== 27771 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #27771: origin
                    (Ba_not_survivorat_s_p2)

                    ; #14642: <==negation-removal== 22070 (pos)
                    (not (Ba_survivorat_s_p2))

                    ; #43037: <==negation-removal== 27771 (pos)
                    (not (Pa_survivorat_s_p2))))

    (:action badcomm_p2_c_b_s
        :precondition (and (leader_b)
                           (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #47349: <==closure== 76658 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #76658: origin
                    (Bb_not_survivorat_s_p2)

                    ; #17947: <==negation-removal== 47349 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #64937: <==negation-removal== 76658 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_c_c_s
        :precondition (and (at_c_p2)
                           (leader_c)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #48151: <==closure== 89860 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #89860: origin
                    (Bc_not_survivorat_s_p2)

                    ; #56654: <==negation-removal== 48151 (pos)
                    (not (Bc_survivorat_s_p2))

                    ; #67345: <==negation-removal== 89860 (pos)
                    (not (Pc_survivorat_s_p2))))

    (:action badcomm_p3_a_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (leader_a)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #55786: origin
                    (Ba_not_survivorat_s_p3)

                    ; #63469: <==closure== 55786 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #38105: <==negation-removal== 55786 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #84610: <==negation-removal== 63469 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_a_b_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #19587: origin
                    (Bb_not_survivorat_s_p3)

                    ; #35682: <==closure== 19587 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #16387: <==negation-removal== 35682 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #47841: <==negation-removal== 19587 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_a_c_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (leader_c))
        :effect (and
                    ; #15762: origin
                    (Bc_not_survivorat_s_p3)

                    ; #27490: <==closure== 15762 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #38825: <==negation-removal== 15762 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #79813: <==negation-removal== 27490 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p3_b_a_s
        :precondition (and (Bb_survivorat_s_p3)
                           (leader_a)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #55786: origin
                    (Ba_not_survivorat_s_p3)

                    ; #63469: <==closure== 55786 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #38105: <==negation-removal== 55786 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #84610: <==negation-removal== 63469 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_b_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (leader_b)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #19587: origin
                    (Bb_not_survivorat_s_p3)

                    ; #35682: <==closure== 19587 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #16387: <==negation-removal== 35682 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #47841: <==negation-removal== 19587 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_b_c_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (leader_c)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #15762: origin
                    (Bc_not_survivorat_s_p3)

                    ; #27490: <==closure== 15762 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #38825: <==negation-removal== 15762 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #79813: <==negation-removal== 27490 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p3_c_a_s
        :precondition (and (leader_a)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #55786: origin
                    (Ba_not_survivorat_s_p3)

                    ; #63469: <==closure== 55786 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #38105: <==negation-removal== 55786 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #84610: <==negation-removal== 63469 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_c_b_s
        :precondition (and (at_c_p3)
                           (leader_b)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #19587: origin
                    (Bb_not_survivorat_s_p3)

                    ; #35682: <==closure== 19587 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #16387: <==negation-removal== 35682 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #47841: <==negation-removal== 19587 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_c_c_s
        :precondition (and (at_c_p3)
                           (leader_c)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #15762: origin
                    (Bc_not_survivorat_s_p3)

                    ; #27490: <==closure== 15762 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #38825: <==negation-removal== 15762 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #79813: <==negation-removal== 27490 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p4_a_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (leader_a)
                           (Pa_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #78589: <==closure== 86269 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #86269: origin
                    (Ba_not_survivorat_s_p4)

                    ; #13706: <==negation-removal== 78589 (pos)
                    (not (Ba_survivorat_s_p4))

                    ; #34354: <==negation-removal== 86269 (pos)
                    (not (Pa_survivorat_s_p4))))

    (:action badcomm_p4_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #58363: <==closure== 89979 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #89979: origin
                    (Bb_not_survivorat_s_p4)

                    ; #36650: <==negation-removal== 58363 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #57602: <==negation-removal== 89979 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_a_c_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (leader_c)
                           (at_a_p4))
        :effect (and
                    ; #13830: <==closure== 65233 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #65233: origin
                    (Bc_not_survivorat_s_p4)

                    ; #80516: <==negation-removal== 13830 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #88743: <==negation-removal== 65233 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #78589: <==closure== 86269 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #86269: origin
                    (Ba_not_survivorat_s_p4)

                    ; #13706: <==negation-removal== 78589 (pos)
                    (not (Ba_survivorat_s_p4))

                    ; #34354: <==negation-removal== 86269 (pos)
                    (not (Pa_survivorat_s_p4))))

    (:action badcomm_p4_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #58363: <==closure== 89979 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #89979: origin
                    (Bb_not_survivorat_s_p4)

                    ; #36650: <==negation-removal== 58363 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #57602: <==negation-removal== 89979 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_b_c_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (leader_c))
        :effect (and
                    ; #13830: <==closure== 65233 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #65233: origin
                    (Bc_not_survivorat_s_p4)

                    ; #80516: <==negation-removal== 13830 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #88743: <==negation-removal== 65233 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #78589: <==closure== 86269 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #86269: origin
                    (Ba_not_survivorat_s_p4)

                    ; #13706: <==negation-removal== 78589 (pos)
                    (not (Ba_survivorat_s_p4))

                    ; #34354: <==negation-removal== 86269 (pos)
                    (not (Pa_survivorat_s_p4))))

    (:action badcomm_p4_c_b_s
        :precondition (and (leader_b)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #58363: <==closure== 89979 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #89979: origin
                    (Bb_not_survivorat_s_p4)

                    ; #36650: <==negation-removal== 58363 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #57602: <==negation-removal== 89979 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_c_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_c))
        :effect (and
                    ; #13830: <==closure== 65233 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #65233: origin
                    (Bc_not_survivorat_s_p4)

                    ; #80516: <==negation-removal== 13830 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #88743: <==negation-removal== 65233 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p5_a_a_s
        :precondition (and (leader_a)
                           (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #18844: <==closure== 35150 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #35150: origin
                    (Ba_not_survivorat_s_p5)

                    ; #11338: <==negation-removal== 18844 (pos)
                    (not (Ba_survivorat_s_p5))

                    ; #88277: <==negation-removal== 35150 (pos)
                    (not (Pa_survivorat_s_p5))))

    (:action badcomm_p5_a_b_s
        :precondition (and (leader_b)
                           (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #22452: <==closure== 57941 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #57941: origin
                    (Bb_not_survivorat_s_p5)

                    ; #51589: <==negation-removal== 22452 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #52943: <==negation-removal== 57941 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_a_c_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (leader_c)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #47449: <==closure== 99082 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #99082: origin
                    (Bc_not_survivorat_s_p5)

                    ; #49176: <==negation-removal== 47449 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #78588: <==negation-removal== 99082 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p5_b_a_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (leader_a)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #18844: <==closure== 35150 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #35150: origin
                    (Ba_not_survivorat_s_p5)

                    ; #11338: <==negation-removal== 18844 (pos)
                    (not (Ba_survivorat_s_p5))

                    ; #88277: <==negation-removal== 35150 (pos)
                    (not (Pa_survivorat_s_p5))))

    (:action badcomm_p5_b_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (leader_b)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #22452: <==closure== 57941 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #57941: origin
                    (Bb_not_survivorat_s_p5)

                    ; #51589: <==negation-removal== 22452 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #52943: <==negation-removal== 57941 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_b_c_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (leader_c)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #47449: <==closure== 99082 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #99082: origin
                    (Bc_not_survivorat_s_p5)

                    ; #49176: <==negation-removal== 47449 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #78588: <==negation-removal== 99082 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p5_c_a_s
        :precondition (and (Pc_survivorat_s_p5)
                           (leader_a)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #18844: <==closure== 35150 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #35150: origin
                    (Ba_not_survivorat_s_p5)

                    ; #11338: <==negation-removal== 18844 (pos)
                    (not (Ba_survivorat_s_p5))

                    ; #88277: <==negation-removal== 35150 (pos)
                    (not (Pa_survivorat_s_p5))))

    (:action badcomm_p5_c_b_s
        :precondition (and (Pc_survivorat_s_p5)
                           (leader_b)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #22452: <==closure== 57941 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #57941: origin
                    (Bb_not_survivorat_s_p5)

                    ; #51589: <==negation-removal== 22452 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #52943: <==negation-removal== 57941 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_c_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #47449: <==closure== 99082 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #99082: origin
                    (Bc_not_survivorat_s_p5)

                    ; #49176: <==negation-removal== 47449 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #78588: <==negation-removal== 99082 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p6_a_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_a)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #19949: <==closure== 57605 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #57605: origin
                    (Ba_not_survivorat_s_p6)

                    ; #29161: <==negation-removal== 57605 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #44134: <==negation-removal== 19949 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_a_b_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_b)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #22636: <==closure== 78147 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #78147: origin
                    (Bb_not_survivorat_s_p6)

                    ; #84534: <==negation-removal== 22636 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #89794: <==negation-removal== 78147 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_a_c_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_c)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #23108: <==closure== 53465 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #53465: origin
                    (Bc_not_survivorat_s_p6)

                    ; #18056: <==negation-removal== 23108 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #68604: <==negation-removal== 53465 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_b_a_s
        :precondition (and (Bb_survivorat_s_p6)
                           (leader_a)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #19949: <==closure== 57605 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #57605: origin
                    (Ba_not_survivorat_s_p6)

                    ; #29161: <==negation-removal== 57605 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #44134: <==negation-removal== 19949 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_b_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (leader_b)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #22636: <==closure== 78147 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #78147: origin
                    (Bb_not_survivorat_s_p6)

                    ; #84534: <==negation-removal== 22636 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #89794: <==negation-removal== 78147 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_b_c_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #23108: <==closure== 53465 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #53465: origin
                    (Bc_not_survivorat_s_p6)

                    ; #18056: <==negation-removal== 23108 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #68604: <==negation-removal== 53465 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_c_a_s
        :precondition (and (Pc_survivorat_s_p6)
                           (leader_a)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #19949: <==closure== 57605 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #57605: origin
                    (Ba_not_survivorat_s_p6)

                    ; #29161: <==negation-removal== 57605 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #44134: <==negation-removal== 19949 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_c_b_s
        :precondition (and (Pc_survivorat_s_p6)
                           (leader_b)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #22636: <==closure== 78147 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #78147: origin
                    (Bb_not_survivorat_s_p6)

                    ; #84534: <==negation-removal== 22636 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #89794: <==negation-removal== 78147 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_c_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (leader_c)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #23108: <==closure== 53465 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #53465: origin
                    (Bc_not_survivorat_s_p6)

                    ; #18056: <==negation-removal== 23108 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #68604: <==negation-removal== 53465 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p7_a_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (leader_a)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #58119: <==closure== 84256 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #84256: origin
                    (Ba_not_survivorat_s_p7)

                    ; #47714: <==negation-removal== 58119 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #82437: <==negation-removal== 84256 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_a_b_s
        :precondition (and (Ba_survivorat_s_p7)
                           (leader_b)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #20591: origin
                    (Bb_not_survivorat_s_p7)

                    ; #31424: <==closure== 20591 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #51913: <==negation-removal== 20591 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #59670: <==negation-removal== 31424 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_a_c_s
        :precondition (and (Ba_survivorat_s_p7)
                           (leader_c)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #24936: <==closure== 28739 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #28739: origin
                    (Bc_not_survivorat_s_p7)

                    ; #10099: <==negation-removal== 28739 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #24534: <==negation-removal== 24936 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_b_a_s
        :precondition (and (Pb_survivorat_s_p7)
                           (leader_a)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #58119: <==closure== 84256 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #84256: origin
                    (Ba_not_survivorat_s_p7)

                    ; #47714: <==negation-removal== 58119 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #82437: <==negation-removal== 84256 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_b_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (leader_b)
                           (at_b_p7))
        :effect (and
                    ; #20591: origin
                    (Bb_not_survivorat_s_p7)

                    ; #31424: <==closure== 20591 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #51913: <==negation-removal== 20591 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #59670: <==negation-removal== 31424 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_b_c_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_c))
        :effect (and
                    ; #24936: <==closure== 28739 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #28739: origin
                    (Bc_not_survivorat_s_p7)

                    ; #10099: <==negation-removal== 28739 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #24534: <==negation-removal== 24936 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #58119: <==closure== 84256 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #84256: origin
                    (Ba_not_survivorat_s_p7)

                    ; #47714: <==negation-removal== 58119 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #82437: <==negation-removal== 84256 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_c_b_s
        :precondition (and (Pc_survivorat_s_p7)
                           (leader_b)
                           (at_c_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #20591: origin
                    (Bb_not_survivorat_s_p7)

                    ; #31424: <==closure== 20591 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #51913: <==negation-removal== 20591 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #59670: <==negation-removal== 31424 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_c_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #24936: <==closure== 28739 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #28739: origin
                    (Bc_not_survivorat_s_p7)

                    ; #10099: <==negation-removal== 28739 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #24534: <==negation-removal== 24936 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p8_a_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (leader_a))
        :effect (and
                    ; #14188: origin
                    (Ba_not_survivorat_s_p8)

                    ; #88769: <==closure== 14188 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #39562: <==negation-removal== 88769 (pos)
                    (not (Ba_survivorat_s_p8))

                    ; #78365: <==negation-removal== 14188 (pos)
                    (not (Pa_survivorat_s_p8))))

    (:action badcomm_p8_a_b_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #11324: origin
                    (Bb_not_survivorat_s_p8)

                    ; #66746: <==closure== 11324 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #43696: <==negation-removal== 11324 (pos)
                    (not (Pb_survivorat_s_p8))

                    ; #78915: <==negation-removal== 66746 (pos)
                    (not (Bb_survivorat_s_p8))))

    (:action badcomm_p8_a_c_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (leader_c))
        :effect (and
                    ; #51147: <==closure== 53901 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #53901: origin
                    (Bc_not_survivorat_s_p8)

                    ; #66233: <==negation-removal== 51147 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #76600: <==negation-removal== 53901 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_b_a_s
        :precondition (and (at_b_p8)
                           (leader_a)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #14188: origin
                    (Ba_not_survivorat_s_p8)

                    ; #88769: <==closure== 14188 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #39562: <==negation-removal== 88769 (pos)
                    (not (Ba_survivorat_s_p8))

                    ; #78365: <==negation-removal== 14188 (pos)
                    (not (Pa_survivorat_s_p8))))

    (:action badcomm_p8_b_b_s
        :precondition (and (at_b_p8)
                           (leader_b)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #11324: origin
                    (Bb_not_survivorat_s_p8)

                    ; #66746: <==closure== 11324 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #43696: <==negation-removal== 11324 (pos)
                    (not (Pb_survivorat_s_p8))

                    ; #78915: <==negation-removal== 66746 (pos)
                    (not (Bb_survivorat_s_p8))))

    (:action badcomm_p8_b_c_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (leader_c)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #51147: <==closure== 53901 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #53901: origin
                    (Bc_not_survivorat_s_p8)

                    ; #66233: <==negation-removal== 51147 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #76600: <==negation-removal== 53901 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_c_a_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (leader_a)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #14188: origin
                    (Ba_not_survivorat_s_p8)

                    ; #88769: <==closure== 14188 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #39562: <==negation-removal== 88769 (pos)
                    (not (Ba_survivorat_s_p8))

                    ; #78365: <==negation-removal== 14188 (pos)
                    (not (Pa_survivorat_s_p8))))

    (:action badcomm_p8_c_b_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (leader_b)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #11324: origin
                    (Bb_not_survivorat_s_p8)

                    ; #66746: <==closure== 11324 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #43696: <==negation-removal== 11324 (pos)
                    (not (Pb_survivorat_s_p8))

                    ; #78915: <==negation-removal== 66746 (pos)
                    (not (Bb_survivorat_s_p8))))

    (:action badcomm_p8_c_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (leader_c)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #51147: <==closure== 53901 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #53901: origin
                    (Bc_not_survivorat_s_p8)

                    ; #66233: <==negation-removal== 51147 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #76600: <==negation-removal== 53901 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p9_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #66191: origin
                    (Ba_not_survivorat_s_p9)

                    ; #82491: <==closure== 66191 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #61074: <==negation-removal== 82491 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #69945: <==negation-removal== 66191 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #45269: origin
                    (Bb_not_survivorat_s_p9)

                    ; #62590: <==closure== 45269 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #50685: <==negation-removal== 62590 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #81052: <==negation-removal== 45269 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_a_c_s
        :precondition (and (Pa_survivorat_s_p9)
                           (leader_c)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #31844: origin
                    (Bc_not_survivorat_s_p9)

                    ; #59301: <==closure== 31844 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #16792: <==negation-removal== 31844 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #63428: <==negation-removal== 59301 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_b_a_s
        :precondition (and (Bb_survivorat_s_p9)
                           (leader_a)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #66191: origin
                    (Ba_not_survivorat_s_p9)

                    ; #82491: <==closure== 66191 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #61074: <==negation-removal== 82491 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #69945: <==negation-removal== 66191 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_b_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (leader_b)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #45269: origin
                    (Bb_not_survivorat_s_p9)

                    ; #62590: <==closure== 45269 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #50685: <==negation-removal== 62590 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #81052: <==negation-removal== 45269 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_b_c_s
        :precondition (and (Bb_survivorat_s_p9)
                           (leader_c)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #31844: origin
                    (Bc_not_survivorat_s_p9)

                    ; #59301: <==closure== 31844 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #16792: <==negation-removal== 31844 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #63428: <==negation-removal== 59301 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_c_a_s
        :precondition (and (Bc_survivorat_s_p9)
                           (leader_a)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #66191: origin
                    (Ba_not_survivorat_s_p9)

                    ; #82491: <==closure== 66191 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #61074: <==negation-removal== 82491 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #69945: <==negation-removal== 66191 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_c_b_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #45269: origin
                    (Bb_not_survivorat_s_p9)

                    ; #62590: <==closure== 45269 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #50685: <==negation-removal== 62590 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #81052: <==negation-removal== 45269 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_c_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (leader_c)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #31844: origin
                    (Bc_not_survivorat_s_p9)

                    ; #59301: <==closure== 31844 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #16792: <==negation-removal== 31844 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #63428: <==negation-removal== 59301 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action comm_p10_a_a_s
        :precondition (and (Pa_survivorat_s_p10)
                           (leader_a)
                           (Ba_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #42810: origin
                    (Ba_survivorat_s_p10)

                    ; #67228: <==closure== 42810 (pos)
                    (Pa_survivorat_s_p10)

                    ; #84178: <==negation-removal== 67228 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #90761: <==negation-removal== 42810 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_a_b_s
        :precondition (and (Pa_survivorat_s_p10)
                           (leader_b)
                           (Ba_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #52962: <==closure== 81707 (pos)
                    (Pb_survivorat_s_p10)

                    ; #81707: origin
                    (Bb_survivorat_s_p10)

                    ; #10935: <==negation-removal== 52962 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #85883: <==negation-removal== 81707 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_a_c_s
        :precondition (and (Pa_survivorat_s_p10)
                           (leader_c)
                           (Ba_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #59914: <==closure== 62889 (pos)
                    (Pc_survivorat_s_p10)

                    ; #62889: origin
                    (Bc_survivorat_s_p10)

                    ; #16081: <==negation-removal== 62889 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #57902: <==negation-removal== 59914 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_b_a_s
        :precondition (and (Bb_survivorat_s_p10)
                           (leader_a)
                           (Pb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #42810: origin
                    (Ba_survivorat_s_p10)

                    ; #67228: <==closure== 42810 (pos)
                    (Pa_survivorat_s_p10)

                    ; #84178: <==negation-removal== 67228 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #90761: <==negation-removal== 42810 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_b_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_b))
        :effect (and
                    ; #52962: <==closure== 81707 (pos)
                    (Pb_survivorat_s_p10)

                    ; #81707: origin
                    (Bb_survivorat_s_p10)

                    ; #10935: <==negation-removal== 52962 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #85883: <==negation-removal== 81707 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_b_c_s
        :precondition (and (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_c))
        :effect (and
                    ; #59914: <==closure== 62889 (pos)
                    (Pc_survivorat_s_p10)

                    ; #62889: origin
                    (Bc_survivorat_s_p10)

                    ; #16081: <==negation-removal== 62889 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #57902: <==negation-removal== 59914 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_c_a_s
        :precondition (and (at_c_p10)
                           (leader_a)
                           (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #42810: origin
                    (Ba_survivorat_s_p10)

                    ; #67228: <==closure== 42810 (pos)
                    (Pa_survivorat_s_p10)

                    ; #84178: <==negation-removal== 67228 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #90761: <==negation-removal== 42810 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_c_b_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (leader_b)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #52962: <==closure== 81707 (pos)
                    (Pb_survivorat_s_p10)

                    ; #81707: origin
                    (Bb_survivorat_s_p10)

                    ; #10935: <==negation-removal== 52962 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #85883: <==negation-removal== 81707 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_c_c_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (leader_c)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #59914: <==closure== 62889 (pos)
                    (Pc_survivorat_s_p10)

                    ; #62889: origin
                    (Bc_survivorat_s_p10)

                    ; #16081: <==negation-removal== 62889 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #57902: <==negation-removal== 59914 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p11_a_a_s
        :precondition (and (at_a_p11)
                           (leader_a)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #38881: <==closure== 56907 (pos)
                    (Pa_survivorat_s_p11)

                    ; #56907: origin
                    (Ba_survivorat_s_p11)

                    ; #13993: <==negation-removal== 38881 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #72825: <==negation-removal== 56907 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_a_b_s
        :precondition (and (at_a_p11)
                           (leader_b)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #32042: <==closure== 54569 (pos)
                    (Pb_survivorat_s_p11)

                    ; #54569: origin
                    (Bb_survivorat_s_p11)

                    ; #38410: <==negation-removal== 54569 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #71812: <==negation-removal== 32042 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_a_c_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (leader_c))
        :effect (and
                    ; #14184: <==closure== 16823 (pos)
                    (Pc_survivorat_s_p11)

                    ; #16823: origin
                    (Bc_survivorat_s_p11)

                    ; #11023: <==negation-removal== 16823 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #48011: <==negation-removal== 14184 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #38881: <==closure== 56907 (pos)
                    (Pa_survivorat_s_p11)

                    ; #56907: origin
                    (Ba_survivorat_s_p11)

                    ; #13993: <==negation-removal== 38881 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #72825: <==negation-removal== 56907 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #32042: <==closure== 54569 (pos)
                    (Pb_survivorat_s_p11)

                    ; #54569: origin
                    (Bb_survivorat_s_p11)

                    ; #38410: <==negation-removal== 54569 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #71812: <==negation-removal== 32042 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_b_c_s
        :precondition (and (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11)
                           (leader_c))
        :effect (and
                    ; #14184: <==closure== 16823 (pos)
                    (Pc_survivorat_s_p11)

                    ; #16823: origin
                    (Bc_survivorat_s_p11)

                    ; #11023: <==negation-removal== 16823 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #48011: <==negation-removal== 14184 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_c_a_s
        :precondition (and (Bc_survivorat_s_p11)
                           (leader_a)
                           (Pc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #38881: <==closure== 56907 (pos)
                    (Pa_survivorat_s_p11)

                    ; #56907: origin
                    (Ba_survivorat_s_p11)

                    ; #13993: <==negation-removal== 38881 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #72825: <==negation-removal== 56907 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_c_b_s
        :precondition (and (Bc_survivorat_s_p11)
                           (leader_b)
                           (Pc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #32042: <==closure== 54569 (pos)
                    (Pb_survivorat_s_p11)

                    ; #54569: origin
                    (Bb_survivorat_s_p11)

                    ; #38410: <==negation-removal== 54569 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #71812: <==negation-removal== 32042 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_c_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (leader_c)
                           (Pc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #14184: <==closure== 16823 (pos)
                    (Pc_survivorat_s_p11)

                    ; #16823: origin
                    (Bc_survivorat_s_p11)

                    ; #11023: <==negation-removal== 16823 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #48011: <==negation-removal== 14184 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p12_a_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (leader_a)
                           (at_a_p12))
        :effect (and
                    ; #71478: <==closure== 86387 (pos)
                    (Pa_survivorat_s_p12)

                    ; #86387: origin
                    (Ba_survivorat_s_p12)

                    ; #82957: <==negation-removal== 71478 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #91719: <==negation-removal== 86387 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_a_b_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (leader_b)
                           (at_a_p12))
        :effect (and
                    ; #18723: <==closure== 31352 (pos)
                    (Pb_survivorat_s_p12)

                    ; #31352: origin
                    (Bb_survivorat_s_p12)

                    ; #52179: <==negation-removal== 31352 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #70392: <==negation-removal== 18723 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_a_c_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (leader_c)
                           (at_a_p12))
        :effect (and
                    ; #35071: origin
                    (Bc_survivorat_s_p12)

                    ; #45544: <==closure== 35071 (pos)
                    (Pc_survivorat_s_p12)

                    ; #49989: <==negation-removal== 45544 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #79372: <==negation-removal== 35071 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_b_a_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (leader_a)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #71478: <==closure== 86387 (pos)
                    (Pa_survivorat_s_p12)

                    ; #86387: origin
                    (Ba_survivorat_s_p12)

                    ; #82957: <==negation-removal== 71478 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #91719: <==negation-removal== 86387 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_b_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (leader_b)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #18723: <==closure== 31352 (pos)
                    (Pb_survivorat_s_p12)

                    ; #31352: origin
                    (Bb_survivorat_s_p12)

                    ; #52179: <==negation-removal== 31352 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #70392: <==negation-removal== 18723 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_b_c_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #35071: origin
                    (Bc_survivorat_s_p12)

                    ; #45544: <==closure== 35071 (pos)
                    (Pc_survivorat_s_p12)

                    ; #49989: <==negation-removal== 45544 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #79372: <==negation-removal== 35071 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_c_a_s
        :precondition (and (Pc_survivorat_s_p12)
                           (leader_a)
                           (Bc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #71478: <==closure== 86387 (pos)
                    (Pa_survivorat_s_p12)

                    ; #86387: origin
                    (Ba_survivorat_s_p12)

                    ; #82957: <==negation-removal== 71478 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #91719: <==negation-removal== 86387 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_c_b_s
        :precondition (and (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (leader_b)
                           (at_c_p12))
        :effect (and
                    ; #18723: <==closure== 31352 (pos)
                    (Pb_survivorat_s_p12)

                    ; #31352: origin
                    (Bb_survivorat_s_p12)

                    ; #52179: <==negation-removal== 31352 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #70392: <==negation-removal== 18723 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_c_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (leader_c)
                           (at_c_p12))
        :effect (and
                    ; #35071: origin
                    (Bc_survivorat_s_p12)

                    ; #45544: <==closure== 35071 (pos)
                    (Pc_survivorat_s_p12)

                    ; #49989: <==negation-removal== 45544 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #79372: <==negation-removal== 35071 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p1_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #21855: origin
                    (Ba_survivorat_s_p1)

                    ; #44950: <==closure== 21855 (pos)
                    (Pa_survivorat_s_p1)

                    ; #89424: <==negation-removal== 44950 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #89453: <==negation-removal== 21855 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #26911: origin
                    (Bb_survivorat_s_p1)

                    ; #69132: <==closure== 26911 (pos)
                    (Pb_survivorat_s_p1)

                    ; #27251: <==negation-removal== 69132 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #83402: <==negation-removal== 26911 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (leader_c))
        :effect (and
                    ; #66570: <==closure== 69481 (pos)
                    (Pc_survivorat_s_p1)

                    ; #69481: origin
                    (Bc_survivorat_s_p1)

                    ; #74313: <==negation-removal== 69481 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #78506: <==negation-removal== 66570 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #21855: origin
                    (Ba_survivorat_s_p1)

                    ; #44950: <==closure== 21855 (pos)
                    (Pa_survivorat_s_p1)

                    ; #89424: <==negation-removal== 44950 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #89453: <==negation-removal== 21855 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #26911: origin
                    (Bb_survivorat_s_p1)

                    ; #69132: <==closure== 26911 (pos)
                    (Pb_survivorat_s_p1)

                    ; #27251: <==negation-removal== 69132 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #83402: <==negation-removal== 26911 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (leader_c)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #66570: <==closure== 69481 (pos)
                    (Pc_survivorat_s_p1)

                    ; #69481: origin
                    (Bc_survivorat_s_p1)

                    ; #74313: <==negation-removal== 69481 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #78506: <==negation-removal== 66570 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_a)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #21855: origin
                    (Ba_survivorat_s_p1)

                    ; #44950: <==closure== 21855 (pos)
                    (Pa_survivorat_s_p1)

                    ; #89424: <==negation-removal== 44950 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #89453: <==negation-removal== 21855 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_b)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #26911: origin
                    (Bb_survivorat_s_p1)

                    ; #69132: <==closure== 26911 (pos)
                    (Pb_survivorat_s_p1)

                    ; #27251: <==negation-removal== 69132 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #83402: <==negation-removal== 26911 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_c)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #66570: <==closure== 69481 (pos)
                    (Pc_survivorat_s_p1)

                    ; #69481: origin
                    (Bc_survivorat_s_p1)

                    ; #74313: <==negation-removal== 69481 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #78506: <==negation-removal== 66570 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (leader_a)
                           (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #14642: origin
                    (Ba_survivorat_s_p2)

                    ; #43037: <==closure== 14642 (pos)
                    (Pa_survivorat_s_p2)

                    ; #22070: <==negation-removal== 14642 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #27771: <==negation-removal== 43037 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (leader_b)
                           (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #17947: origin
                    (Bb_survivorat_s_p2)

                    ; #64937: <==closure== 17947 (pos)
                    (Pb_survivorat_s_p2)

                    ; #47349: <==negation-removal== 17947 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #76658: <==negation-removal== 64937 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (at_a_p2)
                           (leader_c)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #56654: origin
                    (Bc_survivorat_s_p2)

                    ; #67345: <==closure== 56654 (pos)
                    (Pc_survivorat_s_p2)

                    ; #48151: <==negation-removal== 56654 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #89860: <==negation-removal== 67345 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (Bb_survivorat_s_p2)
                           (leader_a)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #14642: origin
                    (Ba_survivorat_s_p2)

                    ; #43037: <==closure== 14642 (pos)
                    (Pa_survivorat_s_p2)

                    ; #22070: <==negation-removal== 14642 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #27771: <==negation-removal== 43037 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_b))
        :effect (and
                    ; #17947: origin
                    (Bb_survivorat_s_p2)

                    ; #64937: <==closure== 17947 (pos)
                    (Pb_survivorat_s_p2)

                    ; #47349: <==negation-removal== 17947 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #76658: <==negation-removal== 64937 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_c))
        :effect (and
                    ; #56654: origin
                    (Bc_survivorat_s_p2)

                    ; #67345: <==closure== 56654 (pos)
                    (Pc_survivorat_s_p2)

                    ; #48151: <==negation-removal== 56654 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #89860: <==negation-removal== 67345 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (leader_a)
                           (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #14642: origin
                    (Ba_survivorat_s_p2)

                    ; #43037: <==closure== 14642 (pos)
                    (Pa_survivorat_s_p2)

                    ; #22070: <==negation-removal== 14642 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #27771: <==negation-removal== 43037 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (leader_b)
                           (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #17947: origin
                    (Bb_survivorat_s_p2)

                    ; #64937: <==closure== 17947 (pos)
                    (Pb_survivorat_s_p2)

                    ; #47349: <==negation-removal== 17947 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #76658: <==negation-removal== 64937 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (at_c_p2)
                           (leader_c)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #56654: origin
                    (Bc_survivorat_s_p2)

                    ; #67345: <==closure== 56654 (pos)
                    (Pc_survivorat_s_p2)

                    ; #48151: <==negation-removal== 56654 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #89860: <==negation-removal== 67345 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (leader_a)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #38105: <==closure== 84610 (pos)
                    (Pa_survivorat_s_p3)

                    ; #84610: origin
                    (Ba_survivorat_s_p3)

                    ; #55786: <==negation-removal== 38105 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #63469: <==negation-removal== 84610 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #16387: origin
                    (Bb_survivorat_s_p3)

                    ; #47841: <==closure== 16387 (pos)
                    (Pb_survivorat_s_p3)

                    ; #19587: <==negation-removal== 47841 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #35682: <==negation-removal== 16387 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (leader_c))
        :effect (and
                    ; #38825: <==closure== 79813 (pos)
                    (Pc_survivorat_s_p3)

                    ; #79813: origin
                    (Bc_survivorat_s_p3)

                    ; #15762: <==negation-removal== 38825 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #27490: <==negation-removal== 79813 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (Bb_survivorat_s_p3)
                           (leader_a)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #38105: <==closure== 84610 (pos)
                    (Pa_survivorat_s_p3)

                    ; #84610: origin
                    (Ba_survivorat_s_p3)

                    ; #55786: <==negation-removal== 38105 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #63469: <==negation-removal== 84610 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (leader_b)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #16387: origin
                    (Bb_survivorat_s_p3)

                    ; #47841: <==closure== 16387 (pos)
                    (Pb_survivorat_s_p3)

                    ; #19587: <==negation-removal== 47841 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #35682: <==negation-removal== 16387 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (leader_c)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #38825: <==closure== 79813 (pos)
                    (Pc_survivorat_s_p3)

                    ; #79813: origin
                    (Bc_survivorat_s_p3)

                    ; #15762: <==negation-removal== 38825 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #27490: <==negation-removal== 79813 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (leader_a)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #38105: <==closure== 84610 (pos)
                    (Pa_survivorat_s_p3)

                    ; #84610: origin
                    (Ba_survivorat_s_p3)

                    ; #55786: <==negation-removal== 38105 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #63469: <==negation-removal== 84610 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (at_c_p3)
                           (leader_b)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #16387: origin
                    (Bb_survivorat_s_p3)

                    ; #47841: <==closure== 16387 (pos)
                    (Pb_survivorat_s_p3)

                    ; #19587: <==negation-removal== 47841 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #35682: <==negation-removal== 16387 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (at_c_p3)
                           (leader_c)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #38825: <==closure== 79813 (pos)
                    (Pc_survivorat_s_p3)

                    ; #79813: origin
                    (Bc_survivorat_s_p3)

                    ; #15762: <==negation-removal== 38825 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #27490: <==negation-removal== 79813 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (leader_a)
                           (Pa_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #13706: origin
                    (Ba_survivorat_s_p4)

                    ; #34354: <==closure== 13706 (pos)
                    (Pa_survivorat_s_p4)

                    ; #78589: <==negation-removal== 13706 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #86269: <==negation-removal== 34354 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #36650: origin
                    (Bb_survivorat_s_p4)

                    ; #57602: <==closure== 36650 (pos)
                    (Pb_survivorat_s_p4)

                    ; #58363: <==negation-removal== 36650 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #89979: <==negation-removal== 57602 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (leader_c)
                           (at_a_p4))
        :effect (and
                    ; #80516: origin
                    (Bc_survivorat_s_p4)

                    ; #88743: <==closure== 80516 (pos)
                    (Pc_survivorat_s_p4)

                    ; #13830: <==negation-removal== 80516 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #65233: <==negation-removal== 88743 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #13706: origin
                    (Ba_survivorat_s_p4)

                    ; #34354: <==closure== 13706 (pos)
                    (Pa_survivorat_s_p4)

                    ; #78589: <==negation-removal== 13706 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #86269: <==negation-removal== 34354 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #36650: origin
                    (Bb_survivorat_s_p4)

                    ; #57602: <==closure== 36650 (pos)
                    (Pb_survivorat_s_p4)

                    ; #58363: <==negation-removal== 36650 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #89979: <==negation-removal== 57602 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (leader_c))
        :effect (and
                    ; #80516: origin
                    (Bc_survivorat_s_p4)

                    ; #88743: <==closure== 80516 (pos)
                    (Pc_survivorat_s_p4)

                    ; #13830: <==negation-removal== 80516 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #65233: <==negation-removal== 88743 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #13706: origin
                    (Ba_survivorat_s_p4)

                    ; #34354: <==closure== 13706 (pos)
                    (Pa_survivorat_s_p4)

                    ; #78589: <==negation-removal== 13706 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #86269: <==negation-removal== 34354 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (leader_b)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #36650: origin
                    (Bb_survivorat_s_p4)

                    ; #57602: <==closure== 36650 (pos)
                    (Pb_survivorat_s_p4)

                    ; #58363: <==negation-removal== 36650 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #89979: <==negation-removal== 57602 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_c))
        :effect (and
                    ; #80516: origin
                    (Bc_survivorat_s_p4)

                    ; #88743: <==closure== 80516 (pos)
                    (Pc_survivorat_s_p4)

                    ; #13830: <==negation-removal== 80516 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #65233: <==negation-removal== 88743 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (leader_a)
                           (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #11338: origin
                    (Ba_survivorat_s_p5)

                    ; #88277: <==closure== 11338 (pos)
                    (Pa_survivorat_s_p5)

                    ; #18844: <==negation-removal== 11338 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #35150: <==negation-removal== 88277 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (leader_b)
                           (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #51589: origin
                    (Bb_survivorat_s_p5)

                    ; #52943: <==closure== 51589 (pos)
                    (Pb_survivorat_s_p5)

                    ; #22452: <==negation-removal== 51589 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #57941: <==negation-removal== 52943 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (leader_c)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #49176: origin
                    (Bc_survivorat_s_p5)

                    ; #78588: <==closure== 49176 (pos)
                    (Pc_survivorat_s_p5)

                    ; #47449: <==negation-removal== 49176 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #99082: <==negation-removal== 78588 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (leader_a)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #11338: origin
                    (Ba_survivorat_s_p5)

                    ; #88277: <==closure== 11338 (pos)
                    (Pa_survivorat_s_p5)

                    ; #18844: <==negation-removal== 11338 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #35150: <==negation-removal== 88277 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (leader_b)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #51589: origin
                    (Bb_survivorat_s_p5)

                    ; #52943: <==closure== 51589 (pos)
                    (Pb_survivorat_s_p5)

                    ; #22452: <==negation-removal== 51589 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #57941: <==negation-removal== 52943 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (leader_c)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #49176: origin
                    (Bc_survivorat_s_p5)

                    ; #78588: <==closure== 49176 (pos)
                    (Pc_survivorat_s_p5)

                    ; #47449: <==negation-removal== 49176 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #99082: <==negation-removal== 78588 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (Pc_survivorat_s_p5)
                           (leader_a)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #11338: origin
                    (Ba_survivorat_s_p5)

                    ; #88277: <==closure== 11338 (pos)
                    (Pa_survivorat_s_p5)

                    ; #18844: <==negation-removal== 11338 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #35150: <==negation-removal== 88277 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (Pc_survivorat_s_p5)
                           (leader_b)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #51589: origin
                    (Bb_survivorat_s_p5)

                    ; #52943: <==closure== 51589 (pos)
                    (Pb_survivorat_s_p5)

                    ; #22452: <==negation-removal== 51589 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #57941: <==negation-removal== 52943 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #49176: origin
                    (Bc_survivorat_s_p5)

                    ; #78588: <==closure== 49176 (pos)
                    (Pc_survivorat_s_p5)

                    ; #47449: <==negation-removal== 49176 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #99082: <==negation-removal== 78588 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_a)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #29161: <==closure== 44134 (pos)
                    (Pa_survivorat_s_p6)

                    ; #44134: origin
                    (Ba_survivorat_s_p6)

                    ; #19949: <==negation-removal== 44134 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #57605: <==negation-removal== 29161 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_b)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #84534: origin
                    (Bb_survivorat_s_p6)

                    ; #89794: <==closure== 84534 (pos)
                    (Pb_survivorat_s_p6)

                    ; #22636: <==negation-removal== 84534 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #78147: <==negation-removal== 89794 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_c)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #18056: origin
                    (Bc_survivorat_s_p6)

                    ; #68604: <==closure== 18056 (pos)
                    (Pc_survivorat_s_p6)

                    ; #23108: <==negation-removal== 18056 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #53465: <==negation-removal== 68604 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (Bb_survivorat_s_p6)
                           (leader_a)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #29161: <==closure== 44134 (pos)
                    (Pa_survivorat_s_p6)

                    ; #44134: origin
                    (Ba_survivorat_s_p6)

                    ; #19949: <==negation-removal== 44134 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #57605: <==negation-removal== 29161 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (leader_b)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #84534: origin
                    (Bb_survivorat_s_p6)

                    ; #89794: <==closure== 84534 (pos)
                    (Pb_survivorat_s_p6)

                    ; #22636: <==negation-removal== 84534 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #78147: <==negation-removal== 89794 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #18056: origin
                    (Bc_survivorat_s_p6)

                    ; #68604: <==closure== 18056 (pos)
                    (Pc_survivorat_s_p6)

                    ; #23108: <==negation-removal== 18056 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #53465: <==negation-removal== 68604 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (Pc_survivorat_s_p6)
                           (leader_a)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #29161: <==closure== 44134 (pos)
                    (Pa_survivorat_s_p6)

                    ; #44134: origin
                    (Ba_survivorat_s_p6)

                    ; #19949: <==negation-removal== 44134 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #57605: <==negation-removal== 29161 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (Pc_survivorat_s_p6)
                           (leader_b)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #84534: origin
                    (Bb_survivorat_s_p6)

                    ; #89794: <==closure== 84534 (pos)
                    (Pb_survivorat_s_p6)

                    ; #22636: <==negation-removal== 84534 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #78147: <==negation-removal== 89794 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (leader_c)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #18056: origin
                    (Bc_survivorat_s_p6)

                    ; #68604: <==closure== 18056 (pos)
                    (Pc_survivorat_s_p6)

                    ; #23108: <==negation-removal== 18056 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #53465: <==negation-removal== 68604 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (leader_a)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #47714: origin
                    (Ba_survivorat_s_p7)

                    ; #82437: <==closure== 47714 (pos)
                    (Pa_survivorat_s_p7)

                    ; #58119: <==negation-removal== 47714 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #84256: <==negation-removal== 82437 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (Ba_survivorat_s_p7)
                           (leader_b)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #51913: <==closure== 59670 (pos)
                    (Pb_survivorat_s_p7)

                    ; #59670: origin
                    (Bb_survivorat_s_p7)

                    ; #20591: <==negation-removal== 51913 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #31424: <==negation-removal== 59670 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (Ba_survivorat_s_p7)
                           (leader_c)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #10099: <==closure== 24534 (pos)
                    (Pc_survivorat_s_p7)

                    ; #24534: origin
                    (Bc_survivorat_s_p7)

                    ; #24936: <==negation-removal== 24534 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #28739: <==negation-removal== 10099 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (Pb_survivorat_s_p7)
                           (leader_a)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #47714: origin
                    (Ba_survivorat_s_p7)

                    ; #82437: <==closure== 47714 (pos)
                    (Pa_survivorat_s_p7)

                    ; #58119: <==negation-removal== 47714 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #84256: <==negation-removal== 82437 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (leader_b)
                           (at_b_p7))
        :effect (and
                    ; #51913: <==closure== 59670 (pos)
                    (Pb_survivorat_s_p7)

                    ; #59670: origin
                    (Bb_survivorat_s_p7)

                    ; #20591: <==negation-removal== 51913 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #31424: <==negation-removal== 59670 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_c))
        :effect (and
                    ; #10099: <==closure== 24534 (pos)
                    (Pc_survivorat_s_p7)

                    ; #24534: origin
                    (Bc_survivorat_s_p7)

                    ; #24936: <==negation-removal== 24534 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #28739: <==negation-removal== 10099 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #47714: origin
                    (Ba_survivorat_s_p7)

                    ; #82437: <==closure== 47714 (pos)
                    (Pa_survivorat_s_p7)

                    ; #58119: <==negation-removal== 47714 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #84256: <==negation-removal== 82437 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (Pc_survivorat_s_p7)
                           (leader_b)
                           (at_c_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #51913: <==closure== 59670 (pos)
                    (Pb_survivorat_s_p7)

                    ; #59670: origin
                    (Bb_survivorat_s_p7)

                    ; #20591: <==negation-removal== 51913 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #31424: <==negation-removal== 59670 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #10099: <==closure== 24534 (pos)
                    (Pc_survivorat_s_p7)

                    ; #24534: origin
                    (Bc_survivorat_s_p7)

                    ; #24936: <==negation-removal== 24534 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #28739: <==negation-removal== 10099 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (leader_a))
        :effect (and
                    ; #39562: origin
                    (Ba_survivorat_s_p8)

                    ; #78365: <==closure== 39562 (pos)
                    (Pa_survivorat_s_p8)

                    ; #14188: <==negation-removal== 78365 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #88769: <==negation-removal== 39562 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #43696: <==closure== 78915 (pos)
                    (Pb_survivorat_s_p8)

                    ; #78915: origin
                    (Bb_survivorat_s_p8)

                    ; #11324: <==negation-removal== 43696 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #66746: <==negation-removal== 78915 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (leader_c))
        :effect (and
                    ; #66233: origin
                    (Bc_survivorat_s_p8)

                    ; #76600: <==closure== 66233 (pos)
                    (Pc_survivorat_s_p8)

                    ; #51147: <==negation-removal== 66233 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #53901: <==negation-removal== 76600 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (at_b_p8)
                           (leader_a)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #39562: origin
                    (Ba_survivorat_s_p8)

                    ; #78365: <==closure== 39562 (pos)
                    (Pa_survivorat_s_p8)

                    ; #14188: <==negation-removal== 78365 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #88769: <==negation-removal== 39562 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (at_b_p8)
                           (leader_b)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #43696: <==closure== 78915 (pos)
                    (Pb_survivorat_s_p8)

                    ; #78915: origin
                    (Bb_survivorat_s_p8)

                    ; #11324: <==negation-removal== 43696 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #66746: <==negation-removal== 78915 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (leader_c)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #66233: origin
                    (Bc_survivorat_s_p8)

                    ; #76600: <==closure== 66233 (pos)
                    (Pc_survivorat_s_p8)

                    ; #51147: <==negation-removal== 66233 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #53901: <==negation-removal== 76600 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (leader_a)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #39562: origin
                    (Ba_survivorat_s_p8)

                    ; #78365: <==closure== 39562 (pos)
                    (Pa_survivorat_s_p8)

                    ; #14188: <==negation-removal== 78365 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #88769: <==negation-removal== 39562 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (leader_b)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #43696: <==closure== 78915 (pos)
                    (Pb_survivorat_s_p8)

                    ; #78915: origin
                    (Bb_survivorat_s_p8)

                    ; #11324: <==negation-removal== 43696 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #66746: <==negation-removal== 78915 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (leader_c)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #66233: origin
                    (Bc_survivorat_s_p8)

                    ; #76600: <==closure== 66233 (pos)
                    (Pc_survivorat_s_p8)

                    ; #51147: <==negation-removal== 66233 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #53901: <==negation-removal== 76600 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #61074: origin
                    (Ba_survivorat_s_p9)

                    ; #69945: <==closure== 61074 (pos)
                    (Pa_survivorat_s_p9)

                    ; #66191: <==negation-removal== 69945 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #82491: <==negation-removal== 61074 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #50685: origin
                    (Bb_survivorat_s_p9)

                    ; #81052: <==closure== 50685 (pos)
                    (Pb_survivorat_s_p9)

                    ; #45269: <==negation-removal== 81052 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #62590: <==negation-removal== 50685 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (Pa_survivorat_s_p9)
                           (leader_c)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #16792: <==closure== 63428 (pos)
                    (Pc_survivorat_s_p9)

                    ; #63428: origin
                    (Bc_survivorat_s_p9)

                    ; #31844: <==negation-removal== 16792 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #59301: <==negation-removal== 63428 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (Bb_survivorat_s_p9)
                           (leader_a)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #61074: origin
                    (Ba_survivorat_s_p9)

                    ; #69945: <==closure== 61074 (pos)
                    (Pa_survivorat_s_p9)

                    ; #66191: <==negation-removal== 69945 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #82491: <==negation-removal== 61074 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (leader_b)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #50685: origin
                    (Bb_survivorat_s_p9)

                    ; #81052: <==closure== 50685 (pos)
                    (Pb_survivorat_s_p9)

                    ; #45269: <==negation-removal== 81052 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #62590: <==negation-removal== 50685 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (Bb_survivorat_s_p9)
                           (leader_c)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #16792: <==closure== 63428 (pos)
                    (Pc_survivorat_s_p9)

                    ; #63428: origin
                    (Bc_survivorat_s_p9)

                    ; #31844: <==negation-removal== 16792 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #59301: <==negation-removal== 63428 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (Bc_survivorat_s_p9)
                           (leader_a)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #61074: origin
                    (Ba_survivorat_s_p9)

                    ; #69945: <==closure== 61074 (pos)
                    (Pa_survivorat_s_p9)

                    ; #66191: <==negation-removal== 69945 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #82491: <==negation-removal== 61074 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #50685: origin
                    (Bb_survivorat_s_p9)

                    ; #81052: <==closure== 50685 (pos)
                    (Pb_survivorat_s_p9)

                    ; #45269: <==negation-removal== 81052 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #62590: <==negation-removal== 50685 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (leader_c)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #16792: <==closure== 63428 (pos)
                    (Pc_survivorat_s_p9)

                    ; #63428: origin
                    (Bc_survivorat_s_p9)

                    ; #31844: <==negation-removal== 16792 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #59301: <==negation-removal== 63428 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #33320: origin
                    (not_at_a_p10)

                    ; #84592: origin
                    (at_a_p1)

                    ; #41818: <==negation-removal== 33320 (pos)
                    (not (at_a_p10))

                    ; #66554: <==negation-removal== 84592 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #33320: origin
                    (not_at_a_p10)

                    ; #41818: origin
                    (at_a_p10)

                    ; #33320: <==negation-removal== 41818 (pos)
                    (not (not_at_a_p10))

                    ; #41818: <==negation-removal== 33320 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #33320: origin
                    (not_at_a_p10)

                    ; #42448: origin
                    (at_a_p11)

                    ; #41818: <==negation-removal== 33320 (pos)
                    (not (at_a_p10))

                    ; #53222: <==negation-removal== 42448 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #11683: origin
                    (at_a_p12)

                    ; #33320: origin
                    (not_at_a_p10)

                    ; #22497: <==negation-removal== 11683 (pos)
                    (not (not_at_a_p12))

                    ; #41818: <==negation-removal== 33320 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #33320: origin
                    (not_at_a_p10)

                    ; #58513: origin
                    (at_a_p2)

                    ; #16775: <==negation-removal== 58513 (pos)
                    (not (not_at_a_p2))

                    ; #41818: <==negation-removal== 33320 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #33320: origin
                    (not_at_a_p10)

                    ; #69576: origin
                    (at_a_p3)

                    ; #41818: <==negation-removal== 33320 (pos)
                    (not (at_a_p10))

                    ; #66031: <==negation-removal== 69576 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #33320: origin
                    (not_at_a_p10)

                    ; #75597: origin
                    (at_a_p4)

                    ; #41818: <==negation-removal== 33320 (pos)
                    (not (at_a_p10))

                    ; #57875: <==negation-removal== 75597 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #33320: origin
                    (not_at_a_p10)

                    ; #46457: origin
                    (at_a_p5)

                    ; #38875: <==negation-removal== 46457 (pos)
                    (not (not_at_a_p5))

                    ; #41818: <==negation-removal== 33320 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #33320: origin
                    (not_at_a_p10)

                    ; #42667: origin
                    (at_a_p6)

                    ; #41818: <==negation-removal== 33320 (pos)
                    (not (at_a_p10))

                    ; #45294: <==negation-removal== 42667 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #24561: origin
                    (at_a_p7)

                    ; #33320: origin
                    (not_at_a_p10)

                    ; #31616: <==negation-removal== 24561 (pos)
                    (not (not_at_a_p7))

                    ; #41818: <==negation-removal== 33320 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #11654: origin
                    (at_a_p8)

                    ; #33320: origin
                    (not_at_a_p10)

                    ; #41818: <==negation-removal== 33320 (pos)
                    (not (at_a_p10))

                    ; #72470: <==negation-removal== 11654 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #33320: origin
                    (not_at_a_p10)

                    ; #41711: origin
                    (at_a_p9)

                    ; #41818: <==negation-removal== 33320 (pos)
                    (not (at_a_p10))

                    ; #66152: <==negation-removal== 41711 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1)
                           (not (leader_a)))
        :effect (and
                    ; #53222: origin
                    (not_at_a_p11)

                    ; #84592: origin
                    (at_a_p1)

                    ; #42448: <==negation-removal== 53222 (pos)
                    (not (at_a_p11))

                    ; #66554: <==negation-removal== 84592 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10)
                           (not (leader_a)))
        :effect (and
                    ; #41818: origin
                    (at_a_p10)

                    ; #53222: origin
                    (not_at_a_p11)

                    ; #33320: <==negation-removal== 41818 (pos)
                    (not (not_at_a_p10))

                    ; #42448: <==negation-removal== 53222 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11)
                           (not (leader_a)))
        :effect (and
                    ; #42448: origin
                    (at_a_p11)

                    ; #53222: origin
                    (not_at_a_p11)

                    ; #42448: <==negation-removal== 53222 (pos)
                    (not (at_a_p11))

                    ; #53222: <==negation-removal== 42448 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (at_a_p11)
                           (succ_p11_p12)
                           (not (leader_a)))
        :effect (and
                    ; #11683: origin
                    (at_a_p12)

                    ; #53222: origin
                    (not_at_a_p11)

                    ; #22497: <==negation-removal== 11683 (pos)
                    (not (not_at_a_p12))

                    ; #42448: <==negation-removal== 53222 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #53222: origin
                    (not_at_a_p11)

                    ; #58513: origin
                    (at_a_p2)

                    ; #16775: <==negation-removal== 58513 (pos)
                    (not (not_at_a_p2))

                    ; #42448: <==negation-removal== 53222 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3)
                           (not (leader_a)))
        :effect (and
                    ; #53222: origin
                    (not_at_a_p11)

                    ; #69576: origin
                    (at_a_p3)

                    ; #42448: <==negation-removal== 53222 (pos)
                    (not (at_a_p11))

                    ; #66031: <==negation-removal== 69576 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (at_a_p11)
                           (succ_p11_p4)
                           (not (leader_a)))
        :effect (and
                    ; #53222: origin
                    (not_at_a_p11)

                    ; #75597: origin
                    (at_a_p4)

                    ; #42448: <==negation-removal== 53222 (pos)
                    (not (at_a_p11))

                    ; #57875: <==negation-removal== 75597 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5)
                           (not (leader_a)))
        :effect (and
                    ; #46457: origin
                    (at_a_p5)

                    ; #53222: origin
                    (not_at_a_p11)

                    ; #38875: <==negation-removal== 46457 (pos)
                    (not (not_at_a_p5))

                    ; #42448: <==negation-removal== 53222 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6)
                           (not (leader_a)))
        :effect (and
                    ; #42667: origin
                    (at_a_p6)

                    ; #53222: origin
                    (not_at_a_p11)

                    ; #42448: <==negation-removal== 53222 (pos)
                    (not (at_a_p11))

                    ; #45294: <==negation-removal== 42667 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7)
                           (not (leader_a)))
        :effect (and
                    ; #24561: origin
                    (at_a_p7)

                    ; #53222: origin
                    (not_at_a_p11)

                    ; #31616: <==negation-removal== 24561 (pos)
                    (not (not_at_a_p7))

                    ; #42448: <==negation-removal== 53222 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p8
        :precondition (and (at_a_p11)
                           (succ_p11_p8)
                           (not (leader_a)))
        :effect (and
                    ; #11654: origin
                    (at_a_p8)

                    ; #53222: origin
                    (not_at_a_p11)

                    ; #42448: <==negation-removal== 53222 (pos)
                    (not (at_a_p11))

                    ; #72470: <==negation-removal== 11654 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #41711: origin
                    (at_a_p9)

                    ; #53222: origin
                    (not_at_a_p11)

                    ; #42448: <==negation-removal== 53222 (pos)
                    (not (at_a_p11))

                    ; #66152: <==negation-removal== 41711 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #22497: origin
                    (not_at_a_p12)

                    ; #84592: origin
                    (at_a_p1)

                    ; #11683: <==negation-removal== 22497 (pos)
                    (not (at_a_p12))

                    ; #66554: <==negation-removal== 84592 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10)
                           (not (leader_a)))
        :effect (and
                    ; #22497: origin
                    (not_at_a_p12)

                    ; #41818: origin
                    (at_a_p10)

                    ; #11683: <==negation-removal== 22497 (pos)
                    (not (at_a_p12))

                    ; #33320: <==negation-removal== 41818 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #22497: origin
                    (not_at_a_p12)

                    ; #42448: origin
                    (at_a_p11)

                    ; #11683: <==negation-removal== 22497 (pos)
                    (not (at_a_p12))

                    ; #53222: <==negation-removal== 42448 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (at_a_p12)
                           (succ_p12_p12)
                           (not (leader_a)))
        :effect (and
                    ; #11683: origin
                    (at_a_p12)

                    ; #22497: origin
                    (not_at_a_p12)

                    ; #11683: <==negation-removal== 22497 (pos)
                    (not (at_a_p12))

                    ; #22497: <==negation-removal== 11683 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #22497: origin
                    (not_at_a_p12)

                    ; #58513: origin
                    (at_a_p2)

                    ; #11683: <==negation-removal== 22497 (pos)
                    (not (at_a_p12))

                    ; #16775: <==negation-removal== 58513 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #22497: origin
                    (not_at_a_p12)

                    ; #69576: origin
                    (at_a_p3)

                    ; #11683: <==negation-removal== 22497 (pos)
                    (not (at_a_p12))

                    ; #66031: <==negation-removal== 69576 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #22497: origin
                    (not_at_a_p12)

                    ; #75597: origin
                    (at_a_p4)

                    ; #11683: <==negation-removal== 22497 (pos)
                    (not (at_a_p12))

                    ; #57875: <==negation-removal== 75597 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #22497: origin
                    (not_at_a_p12)

                    ; #46457: origin
                    (at_a_p5)

                    ; #11683: <==negation-removal== 22497 (pos)
                    (not (at_a_p12))

                    ; #38875: <==negation-removal== 46457 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6)
                           (not (leader_a)))
        :effect (and
                    ; #22497: origin
                    (not_at_a_p12)

                    ; #42667: origin
                    (at_a_p6)

                    ; #11683: <==negation-removal== 22497 (pos)
                    (not (at_a_p12))

                    ; #45294: <==negation-removal== 42667 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #22497: origin
                    (not_at_a_p12)

                    ; #24561: origin
                    (at_a_p7)

                    ; #11683: <==negation-removal== 22497 (pos)
                    (not (at_a_p12))

                    ; #31616: <==negation-removal== 24561 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #11654: origin
                    (at_a_p8)

                    ; #22497: origin
                    (not_at_a_p12)

                    ; #11683: <==negation-removal== 22497 (pos)
                    (not (at_a_p12))

                    ; #72470: <==negation-removal== 11654 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #22497: origin
                    (not_at_a_p12)

                    ; #41711: origin
                    (at_a_p9)

                    ; #11683: <==negation-removal== 22497 (pos)
                    (not (at_a_p12))

                    ; #66152: <==negation-removal== 41711 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #66554: origin
                    (not_at_a_p1)

                    ; #84592: origin
                    (at_a_p1)

                    ; #66554: <==negation-removal== 84592 (pos)
                    (not (not_at_a_p1))

                    ; #84592: <==negation-removal== 66554 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #41818: origin
                    (at_a_p10)

                    ; #66554: origin
                    (not_at_a_p1)

                    ; #33320: <==negation-removal== 41818 (pos)
                    (not (not_at_a_p10))

                    ; #84592: <==negation-removal== 66554 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #42448: origin
                    (at_a_p11)

                    ; #66554: origin
                    (not_at_a_p1)

                    ; #53222: <==negation-removal== 42448 (pos)
                    (not (not_at_a_p11))

                    ; #84592: <==negation-removal== 66554 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12)
                           (not (leader_a)))
        :effect (and
                    ; #11683: origin
                    (at_a_p12)

                    ; #66554: origin
                    (not_at_a_p1)

                    ; #22497: <==negation-removal== 11683 (pos)
                    (not (not_at_a_p12))

                    ; #84592: <==negation-removal== 66554 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #58513: origin
                    (at_a_p2)

                    ; #66554: origin
                    (not_at_a_p1)

                    ; #16775: <==negation-removal== 58513 (pos)
                    (not (not_at_a_p2))

                    ; #84592: <==negation-removal== 66554 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #66554: origin
                    (not_at_a_p1)

                    ; #69576: origin
                    (at_a_p3)

                    ; #66031: <==negation-removal== 69576 (pos)
                    (not (not_at_a_p3))

                    ; #84592: <==negation-removal== 66554 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #66554: origin
                    (not_at_a_p1)

                    ; #75597: origin
                    (at_a_p4)

                    ; #57875: <==negation-removal== 75597 (pos)
                    (not (not_at_a_p4))

                    ; #84592: <==negation-removal== 66554 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #46457: origin
                    (at_a_p5)

                    ; #66554: origin
                    (not_at_a_p1)

                    ; #38875: <==negation-removal== 46457 (pos)
                    (not (not_at_a_p5))

                    ; #84592: <==negation-removal== 66554 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #42667: origin
                    (at_a_p6)

                    ; #66554: origin
                    (not_at_a_p1)

                    ; #45294: <==negation-removal== 42667 (pos)
                    (not (not_at_a_p6))

                    ; #84592: <==negation-removal== 66554 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #24561: origin
                    (at_a_p7)

                    ; #66554: origin
                    (not_at_a_p1)

                    ; #31616: <==negation-removal== 24561 (pos)
                    (not (not_at_a_p7))

                    ; #84592: <==negation-removal== 66554 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8)
                           (not (leader_a)))
        :effect (and
                    ; #11654: origin
                    (at_a_p8)

                    ; #66554: origin
                    (not_at_a_p1)

                    ; #72470: <==negation-removal== 11654 (pos)
                    (not (not_at_a_p8))

                    ; #84592: <==negation-removal== 66554 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #41711: origin
                    (at_a_p9)

                    ; #66554: origin
                    (not_at_a_p1)

                    ; #66152: <==negation-removal== 41711 (pos)
                    (not (not_at_a_p9))

                    ; #84592: <==negation-removal== 66554 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #16775: origin
                    (not_at_a_p2)

                    ; #84592: origin
                    (at_a_p1)

                    ; #58513: <==negation-removal== 16775 (pos)
                    (not (at_a_p2))

                    ; #66554: <==negation-removal== 84592 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #16775: origin
                    (not_at_a_p2)

                    ; #41818: origin
                    (at_a_p10)

                    ; #33320: <==negation-removal== 41818 (pos)
                    (not (not_at_a_p10))

                    ; #58513: <==negation-removal== 16775 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (at_a_p2)
                           (succ_p2_p11)
                           (not (leader_a)))
        :effect (and
                    ; #16775: origin
                    (not_at_a_p2)

                    ; #42448: origin
                    (at_a_p11)

                    ; #53222: <==negation-removal== 42448 (pos)
                    (not (not_at_a_p11))

                    ; #58513: <==negation-removal== 16775 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12)
                           (not (leader_a)))
        :effect (and
                    ; #11683: origin
                    (at_a_p12)

                    ; #16775: origin
                    (not_at_a_p2)

                    ; #22497: <==negation-removal== 11683 (pos)
                    (not (not_at_a_p12))

                    ; #58513: <==negation-removal== 16775 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2)
                           (not (leader_a)))
        :effect (and
                    ; #16775: origin
                    (not_at_a_p2)

                    ; #58513: origin
                    (at_a_p2)

                    ; #16775: <==negation-removal== 58513 (pos)
                    (not (not_at_a_p2))

                    ; #58513: <==negation-removal== 16775 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3)
                           (not (leader_a)))
        :effect (and
                    ; #16775: origin
                    (not_at_a_p2)

                    ; #69576: origin
                    (at_a_p3)

                    ; #58513: <==negation-removal== 16775 (pos)
                    (not (at_a_p2))

                    ; #66031: <==negation-removal== 69576 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #16775: origin
                    (not_at_a_p2)

                    ; #75597: origin
                    (at_a_p4)

                    ; #57875: <==negation-removal== 75597 (pos)
                    (not (not_at_a_p4))

                    ; #58513: <==negation-removal== 16775 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5)
                           (not (leader_a)))
        :effect (and
                    ; #16775: origin
                    (not_at_a_p2)

                    ; #46457: origin
                    (at_a_p5)

                    ; #38875: <==negation-removal== 46457 (pos)
                    (not (not_at_a_p5))

                    ; #58513: <==negation-removal== 16775 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #16775: origin
                    (not_at_a_p2)

                    ; #42667: origin
                    (at_a_p6)

                    ; #45294: <==negation-removal== 42667 (pos)
                    (not (not_at_a_p6))

                    ; #58513: <==negation-removal== 16775 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #16775: origin
                    (not_at_a_p2)

                    ; #24561: origin
                    (at_a_p7)

                    ; #31616: <==negation-removal== 24561 (pos)
                    (not (not_at_a_p7))

                    ; #58513: <==negation-removal== 16775 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8)
                           (not (leader_a)))
        :effect (and
                    ; #11654: origin
                    (at_a_p8)

                    ; #16775: origin
                    (not_at_a_p2)

                    ; #58513: <==negation-removal== 16775 (pos)
                    (not (at_a_p2))

                    ; #72470: <==negation-removal== 11654 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9)
                           (not (leader_a)))
        :effect (and
                    ; #16775: origin
                    (not_at_a_p2)

                    ; #41711: origin
                    (at_a_p9)

                    ; #58513: <==negation-removal== 16775 (pos)
                    (not (at_a_p2))

                    ; #66152: <==negation-removal== 41711 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1)
                           (not (leader_a)))
        :effect (and
                    ; #66031: origin
                    (not_at_a_p3)

                    ; #84592: origin
                    (at_a_p1)

                    ; #66554: <==negation-removal== 84592 (pos)
                    (not (not_at_a_p1))

                    ; #69576: <==negation-removal== 66031 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10)
                           (not (leader_a)))
        :effect (and
                    ; #41818: origin
                    (at_a_p10)

                    ; #66031: origin
                    (not_at_a_p3)

                    ; #33320: <==negation-removal== 41818 (pos)
                    (not (not_at_a_p10))

                    ; #69576: <==negation-removal== 66031 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11)
                           (not (leader_a)))
        :effect (and
                    ; #42448: origin
                    (at_a_p11)

                    ; #66031: origin
                    (not_at_a_p3)

                    ; #53222: <==negation-removal== 42448 (pos)
                    (not (not_at_a_p11))

                    ; #69576: <==negation-removal== 66031 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12)
                           (not (leader_a)))
        :effect (and
                    ; #11683: origin
                    (at_a_p12)

                    ; #66031: origin
                    (not_at_a_p3)

                    ; #22497: <==negation-removal== 11683 (pos)
                    (not (not_at_a_p12))

                    ; #69576: <==negation-removal== 66031 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2)
                           (not (leader_a)))
        :effect (and
                    ; #58513: origin
                    (at_a_p2)

                    ; #66031: origin
                    (not_at_a_p3)

                    ; #16775: <==negation-removal== 58513 (pos)
                    (not (not_at_a_p2))

                    ; #69576: <==negation-removal== 66031 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3)
                           (not (leader_a)))
        :effect (and
                    ; #66031: origin
                    (not_at_a_p3)

                    ; #69576: origin
                    (at_a_p3)

                    ; #66031: <==negation-removal== 69576 (pos)
                    (not (not_at_a_p3))

                    ; #69576: <==negation-removal== 66031 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4)
                           (not (leader_a)))
        :effect (and
                    ; #66031: origin
                    (not_at_a_p3)

                    ; #75597: origin
                    (at_a_p4)

                    ; #57875: <==negation-removal== 75597 (pos)
                    (not (not_at_a_p4))

                    ; #69576: <==negation-removal== 66031 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5)
                           (not (leader_a)))
        :effect (and
                    ; #46457: origin
                    (at_a_p5)

                    ; #66031: origin
                    (not_at_a_p3)

                    ; #38875: <==negation-removal== 46457 (pos)
                    (not (not_at_a_p5))

                    ; #69576: <==negation-removal== 66031 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6)
                           (not (leader_a)))
        :effect (and
                    ; #42667: origin
                    (at_a_p6)

                    ; #66031: origin
                    (not_at_a_p3)

                    ; #45294: <==negation-removal== 42667 (pos)
                    (not (not_at_a_p6))

                    ; #69576: <==negation-removal== 66031 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7)
                           (not (leader_a)))
        :effect (and
                    ; #24561: origin
                    (at_a_p7)

                    ; #66031: origin
                    (not_at_a_p3)

                    ; #31616: <==negation-removal== 24561 (pos)
                    (not (not_at_a_p7))

                    ; #69576: <==negation-removal== 66031 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8)
                           (not (leader_a)))
        :effect (and
                    ; #11654: origin
                    (at_a_p8)

                    ; #66031: origin
                    (not_at_a_p3)

                    ; #69576: <==negation-removal== 66031 (pos)
                    (not (at_a_p3))

                    ; #72470: <==negation-removal== 11654 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9)
                           (not (leader_a)))
        :effect (and
                    ; #41711: origin
                    (at_a_p9)

                    ; #66031: origin
                    (not_at_a_p3)

                    ; #66152: <==negation-removal== 41711 (pos)
                    (not (not_at_a_p9))

                    ; #69576: <==negation-removal== 66031 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1)
                           (not (leader_a)))
        :effect (and
                    ; #57875: origin
                    (not_at_a_p4)

                    ; #84592: origin
                    (at_a_p1)

                    ; #66554: <==negation-removal== 84592 (pos)
                    (not (not_at_a_p1))

                    ; #75597: <==negation-removal== 57875 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #41818: origin
                    (at_a_p10)

                    ; #57875: origin
                    (not_at_a_p4)

                    ; #33320: <==negation-removal== 41818 (pos)
                    (not (not_at_a_p10))

                    ; #75597: <==negation-removal== 57875 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #42448: origin
                    (at_a_p11)

                    ; #57875: origin
                    (not_at_a_p4)

                    ; #53222: <==negation-removal== 42448 (pos)
                    (not (not_at_a_p11))

                    ; #75597: <==negation-removal== 57875 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #11683: origin
                    (at_a_p12)

                    ; #57875: origin
                    (not_at_a_p4)

                    ; #22497: <==negation-removal== 11683 (pos)
                    (not (not_at_a_p12))

                    ; #75597: <==negation-removal== 57875 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #57875: origin
                    (not_at_a_p4)

                    ; #58513: origin
                    (at_a_p2)

                    ; #16775: <==negation-removal== 58513 (pos)
                    (not (not_at_a_p2))

                    ; #75597: <==negation-removal== 57875 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #57875: origin
                    (not_at_a_p4)

                    ; #69576: origin
                    (at_a_p3)

                    ; #66031: <==negation-removal== 69576 (pos)
                    (not (not_at_a_p3))

                    ; #75597: <==negation-removal== 57875 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #57875: origin
                    (not_at_a_p4)

                    ; #75597: origin
                    (at_a_p4)

                    ; #57875: <==negation-removal== 75597 (pos)
                    (not (not_at_a_p4))

                    ; #75597: <==negation-removal== 57875 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #46457: origin
                    (at_a_p5)

                    ; #57875: origin
                    (not_at_a_p4)

                    ; #38875: <==negation-removal== 46457 (pos)
                    (not (not_at_a_p5))

                    ; #75597: <==negation-removal== 57875 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #42667: origin
                    (at_a_p6)

                    ; #57875: origin
                    (not_at_a_p4)

                    ; #45294: <==negation-removal== 42667 (pos)
                    (not (not_at_a_p6))

                    ; #75597: <==negation-removal== 57875 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #24561: origin
                    (at_a_p7)

                    ; #57875: origin
                    (not_at_a_p4)

                    ; #31616: <==negation-removal== 24561 (pos)
                    (not (not_at_a_p7))

                    ; #75597: <==negation-removal== 57875 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #11654: origin
                    (at_a_p8)

                    ; #57875: origin
                    (not_at_a_p4)

                    ; #72470: <==negation-removal== 11654 (pos)
                    (not (not_at_a_p8))

                    ; #75597: <==negation-removal== 57875 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9)
                           (not (leader_a)))
        :effect (and
                    ; #41711: origin
                    (at_a_p9)

                    ; #57875: origin
                    (not_at_a_p4)

                    ; #66152: <==negation-removal== 41711 (pos)
                    (not (not_at_a_p9))

                    ; #75597: <==negation-removal== 57875 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1)
                           (not (leader_a)))
        :effect (and
                    ; #38875: origin
                    (not_at_a_p5)

                    ; #84592: origin
                    (at_a_p1)

                    ; #46457: <==negation-removal== 38875 (pos)
                    (not (at_a_p5))

                    ; #66554: <==negation-removal== 84592 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #38875: origin
                    (not_at_a_p5)

                    ; #41818: origin
                    (at_a_p10)

                    ; #33320: <==negation-removal== 41818 (pos)
                    (not (not_at_a_p10))

                    ; #46457: <==negation-removal== 38875 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11)
                           (not (leader_a)))
        :effect (and
                    ; #38875: origin
                    (not_at_a_p5)

                    ; #42448: origin
                    (at_a_p11)

                    ; #46457: <==negation-removal== 38875 (pos)
                    (not (at_a_p5))

                    ; #53222: <==negation-removal== 42448 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #11683: origin
                    (at_a_p12)

                    ; #38875: origin
                    (not_at_a_p5)

                    ; #22497: <==negation-removal== 11683 (pos)
                    (not (not_at_a_p12))

                    ; #46457: <==negation-removal== 38875 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2)
                           (not (leader_a)))
        :effect (and
                    ; #38875: origin
                    (not_at_a_p5)

                    ; #58513: origin
                    (at_a_p2)

                    ; #16775: <==negation-removal== 58513 (pos)
                    (not (not_at_a_p2))

                    ; #46457: <==negation-removal== 38875 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3)
                           (not (leader_a)))
        :effect (and
                    ; #38875: origin
                    (not_at_a_p5)

                    ; #69576: origin
                    (at_a_p3)

                    ; #46457: <==negation-removal== 38875 (pos)
                    (not (at_a_p5))

                    ; #66031: <==negation-removal== 69576 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #38875: origin
                    (not_at_a_p5)

                    ; #75597: origin
                    (at_a_p4)

                    ; #46457: <==negation-removal== 38875 (pos)
                    (not (at_a_p5))

                    ; #57875: <==negation-removal== 75597 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5)
                           (not (leader_a)))
        :effect (and
                    ; #38875: origin
                    (not_at_a_p5)

                    ; #46457: origin
                    (at_a_p5)

                    ; #38875: <==negation-removal== 46457 (pos)
                    (not (not_at_a_p5))

                    ; #46457: <==negation-removal== 38875 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6)
                           (not (leader_a)))
        :effect (and
                    ; #38875: origin
                    (not_at_a_p5)

                    ; #42667: origin
                    (at_a_p6)

                    ; #45294: <==negation-removal== 42667 (pos)
                    (not (not_at_a_p6))

                    ; #46457: <==negation-removal== 38875 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7)
                           (not (leader_a)))
        :effect (and
                    ; #24561: origin
                    (at_a_p7)

                    ; #38875: origin
                    (not_at_a_p5)

                    ; #31616: <==negation-removal== 24561 (pos)
                    (not (not_at_a_p7))

                    ; #46457: <==negation-removal== 38875 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8)
                           (not (leader_a)))
        :effect (and
                    ; #11654: origin
                    (at_a_p8)

                    ; #38875: origin
                    (not_at_a_p5)

                    ; #46457: <==negation-removal== 38875 (pos)
                    (not (at_a_p5))

                    ; #72470: <==negation-removal== 11654 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #38875: origin
                    (not_at_a_p5)

                    ; #41711: origin
                    (at_a_p9)

                    ; #46457: <==negation-removal== 38875 (pos)
                    (not (at_a_p5))

                    ; #66152: <==negation-removal== 41711 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #45294: origin
                    (not_at_a_p6)

                    ; #84592: origin
                    (at_a_p1)

                    ; #42667: <==negation-removal== 45294 (pos)
                    (not (at_a_p6))

                    ; #66554: <==negation-removal== 84592 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #41818: origin
                    (at_a_p10)

                    ; #45294: origin
                    (not_at_a_p6)

                    ; #33320: <==negation-removal== 41818 (pos)
                    (not (not_at_a_p10))

                    ; #42667: <==negation-removal== 45294 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #42448: origin
                    (at_a_p11)

                    ; #45294: origin
                    (not_at_a_p6)

                    ; #42667: <==negation-removal== 45294 (pos)
                    (not (at_a_p6))

                    ; #53222: <==negation-removal== 42448 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11683: origin
                    (at_a_p12)

                    ; #45294: origin
                    (not_at_a_p6)

                    ; #22497: <==negation-removal== 11683 (pos)
                    (not (not_at_a_p12))

                    ; #42667: <==negation-removal== 45294 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #45294: origin
                    (not_at_a_p6)

                    ; #58513: origin
                    (at_a_p2)

                    ; #16775: <==negation-removal== 58513 (pos)
                    (not (not_at_a_p2))

                    ; #42667: <==negation-removal== 45294 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #45294: origin
                    (not_at_a_p6)

                    ; #69576: origin
                    (at_a_p3)

                    ; #42667: <==negation-removal== 45294 (pos)
                    (not (at_a_p6))

                    ; #66031: <==negation-removal== 69576 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #45294: origin
                    (not_at_a_p6)

                    ; #75597: origin
                    (at_a_p4)

                    ; #42667: <==negation-removal== 45294 (pos)
                    (not (at_a_p6))

                    ; #57875: <==negation-removal== 75597 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #45294: origin
                    (not_at_a_p6)

                    ; #46457: origin
                    (at_a_p5)

                    ; #38875: <==negation-removal== 46457 (pos)
                    (not (not_at_a_p5))

                    ; #42667: <==negation-removal== 45294 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #42667: origin
                    (at_a_p6)

                    ; #45294: origin
                    (not_at_a_p6)

                    ; #42667: <==negation-removal== 45294 (pos)
                    (not (at_a_p6))

                    ; #45294: <==negation-removal== 42667 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7)
                           (not (leader_a)))
        :effect (and
                    ; #24561: origin
                    (at_a_p7)

                    ; #45294: origin
                    (not_at_a_p6)

                    ; #31616: <==negation-removal== 24561 (pos)
                    (not (not_at_a_p7))

                    ; #42667: <==negation-removal== 45294 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11654: origin
                    (at_a_p8)

                    ; #45294: origin
                    (not_at_a_p6)

                    ; #42667: <==negation-removal== 45294 (pos)
                    (not (at_a_p6))

                    ; #72470: <==negation-removal== 11654 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #41711: origin
                    (at_a_p9)

                    ; #45294: origin
                    (not_at_a_p6)

                    ; #42667: <==negation-removal== 45294 (pos)
                    (not (at_a_p6))

                    ; #66152: <==negation-removal== 41711 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #31616: origin
                    (not_at_a_p7)

                    ; #84592: origin
                    (at_a_p1)

                    ; #24561: <==negation-removal== 31616 (pos)
                    (not (at_a_p7))

                    ; #66554: <==negation-removal== 84592 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (at_a_p7)
                           (succ_p7_p10)
                           (not (leader_a)))
        :effect (and
                    ; #31616: origin
                    (not_at_a_p7)

                    ; #41818: origin
                    (at_a_p10)

                    ; #24561: <==negation-removal== 31616 (pos)
                    (not (at_a_p7))

                    ; #33320: <==negation-removal== 41818 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #31616: origin
                    (not_at_a_p7)

                    ; #42448: origin
                    (at_a_p11)

                    ; #24561: <==negation-removal== 31616 (pos)
                    (not (at_a_p7))

                    ; #53222: <==negation-removal== 42448 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #11683: origin
                    (at_a_p12)

                    ; #31616: origin
                    (not_at_a_p7)

                    ; #22497: <==negation-removal== 11683 (pos)
                    (not (not_at_a_p12))

                    ; #24561: <==negation-removal== 31616 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2)
                           (not (leader_a)))
        :effect (and
                    ; #31616: origin
                    (not_at_a_p7)

                    ; #58513: origin
                    (at_a_p2)

                    ; #16775: <==negation-removal== 58513 (pos)
                    (not (not_at_a_p2))

                    ; #24561: <==negation-removal== 31616 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #31616: origin
                    (not_at_a_p7)

                    ; #69576: origin
                    (at_a_p3)

                    ; #24561: <==negation-removal== 31616 (pos)
                    (not (at_a_p7))

                    ; #66031: <==negation-removal== 69576 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #31616: origin
                    (not_at_a_p7)

                    ; #75597: origin
                    (at_a_p4)

                    ; #24561: <==negation-removal== 31616 (pos)
                    (not (at_a_p7))

                    ; #57875: <==negation-removal== 75597 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #31616: origin
                    (not_at_a_p7)

                    ; #46457: origin
                    (at_a_p5)

                    ; #24561: <==negation-removal== 31616 (pos)
                    (not (at_a_p7))

                    ; #38875: <==negation-removal== 46457 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #31616: origin
                    (not_at_a_p7)

                    ; #42667: origin
                    (at_a_p6)

                    ; #24561: <==negation-removal== 31616 (pos)
                    (not (at_a_p7))

                    ; #45294: <==negation-removal== 42667 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #24561: origin
                    (at_a_p7)

                    ; #31616: origin
                    (not_at_a_p7)

                    ; #24561: <==negation-removal== 31616 (pos)
                    (not (at_a_p7))

                    ; #31616: <==negation-removal== 24561 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #11654: origin
                    (at_a_p8)

                    ; #31616: origin
                    (not_at_a_p7)

                    ; #24561: <==negation-removal== 31616 (pos)
                    (not (at_a_p7))

                    ; #72470: <==negation-removal== 11654 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #31616: origin
                    (not_at_a_p7)

                    ; #41711: origin
                    (at_a_p9)

                    ; #24561: <==negation-removal== 31616 (pos)
                    (not (at_a_p7))

                    ; #66152: <==negation-removal== 41711 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1)
                           (not (leader_a)))
        :effect (and
                    ; #72470: origin
                    (not_at_a_p8)

                    ; #84592: origin
                    (at_a_p1)

                    ; #11654: <==negation-removal== 72470 (pos)
                    (not (at_a_p8))

                    ; #66554: <==negation-removal== 84592 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10)
                           (not (leader_a)))
        :effect (and
                    ; #41818: origin
                    (at_a_p10)

                    ; #72470: origin
                    (not_at_a_p8)

                    ; #11654: <==negation-removal== 72470 (pos)
                    (not (at_a_p8))

                    ; #33320: <==negation-removal== 41818 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11)
                           (not (leader_a)))
        :effect (and
                    ; #42448: origin
                    (at_a_p11)

                    ; #72470: origin
                    (not_at_a_p8)

                    ; #11654: <==negation-removal== 72470 (pos)
                    (not (at_a_p8))

                    ; #53222: <==negation-removal== 42448 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12)
                           (not (leader_a)))
        :effect (and
                    ; #11683: origin
                    (at_a_p12)

                    ; #72470: origin
                    (not_at_a_p8)

                    ; #11654: <==negation-removal== 72470 (pos)
                    (not (at_a_p8))

                    ; #22497: <==negation-removal== 11683 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2)
                           (not (leader_a)))
        :effect (and
                    ; #58513: origin
                    (at_a_p2)

                    ; #72470: origin
                    (not_at_a_p8)

                    ; #11654: <==negation-removal== 72470 (pos)
                    (not (at_a_p8))

                    ; #16775: <==negation-removal== 58513 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3)
                           (not (leader_a)))
        :effect (and
                    ; #69576: origin
                    (at_a_p3)

                    ; #72470: origin
                    (not_at_a_p8)

                    ; #11654: <==negation-removal== 72470 (pos)
                    (not (at_a_p8))

                    ; #66031: <==negation-removal== 69576 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4)
                           (not (leader_a)))
        :effect (and
                    ; #72470: origin
                    (not_at_a_p8)

                    ; #75597: origin
                    (at_a_p4)

                    ; #11654: <==negation-removal== 72470 (pos)
                    (not (at_a_p8))

                    ; #57875: <==negation-removal== 75597 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5)
                           (not (leader_a)))
        :effect (and
                    ; #46457: origin
                    (at_a_p5)

                    ; #72470: origin
                    (not_at_a_p8)

                    ; #11654: <==negation-removal== 72470 (pos)
                    (not (at_a_p8))

                    ; #38875: <==negation-removal== 46457 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6)
                           (not (leader_a)))
        :effect (and
                    ; #42667: origin
                    (at_a_p6)

                    ; #72470: origin
                    (not_at_a_p8)

                    ; #11654: <==negation-removal== 72470 (pos)
                    (not (at_a_p8))

                    ; #45294: <==negation-removal== 42667 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7)
                           (not (leader_a)))
        :effect (and
                    ; #24561: origin
                    (at_a_p7)

                    ; #72470: origin
                    (not_at_a_p8)

                    ; #11654: <==negation-removal== 72470 (pos)
                    (not (at_a_p8))

                    ; #31616: <==negation-removal== 24561 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8)
                           (not (leader_a)))
        :effect (and
                    ; #11654: origin
                    (at_a_p8)

                    ; #72470: origin
                    (not_at_a_p8)

                    ; #11654: <==negation-removal== 72470 (pos)
                    (not (at_a_p8))

                    ; #72470: <==negation-removal== 11654 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9)
                           (not (leader_a)))
        :effect (and
                    ; #41711: origin
                    (at_a_p9)

                    ; #72470: origin
                    (not_at_a_p8)

                    ; #11654: <==negation-removal== 72470 (pos)
                    (not (at_a_p8))

                    ; #66152: <==negation-removal== 41711 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #66152: origin
                    (not_at_a_p9)

                    ; #84592: origin
                    (at_a_p1)

                    ; #41711: <==negation-removal== 66152 (pos)
                    (not (at_a_p9))

                    ; #66554: <==negation-removal== 84592 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #41818: origin
                    (at_a_p10)

                    ; #66152: origin
                    (not_at_a_p9)

                    ; #33320: <==negation-removal== 41818 (pos)
                    (not (not_at_a_p10))

                    ; #41711: <==negation-removal== 66152 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #42448: origin
                    (at_a_p11)

                    ; #66152: origin
                    (not_at_a_p9)

                    ; #41711: <==negation-removal== 66152 (pos)
                    (not (at_a_p9))

                    ; #53222: <==negation-removal== 42448 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11683: origin
                    (at_a_p12)

                    ; #66152: origin
                    (not_at_a_p9)

                    ; #22497: <==negation-removal== 11683 (pos)
                    (not (not_at_a_p12))

                    ; #41711: <==negation-removal== 66152 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #58513: origin
                    (at_a_p2)

                    ; #66152: origin
                    (not_at_a_p9)

                    ; #16775: <==negation-removal== 58513 (pos)
                    (not (not_at_a_p2))

                    ; #41711: <==negation-removal== 66152 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #66152: origin
                    (not_at_a_p9)

                    ; #69576: origin
                    (at_a_p3)

                    ; #41711: <==negation-removal== 66152 (pos)
                    (not (at_a_p9))

                    ; #66031: <==negation-removal== 69576 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #66152: origin
                    (not_at_a_p9)

                    ; #75597: origin
                    (at_a_p4)

                    ; #41711: <==negation-removal== 66152 (pos)
                    (not (at_a_p9))

                    ; #57875: <==negation-removal== 75597 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #46457: origin
                    (at_a_p5)

                    ; #66152: origin
                    (not_at_a_p9)

                    ; #38875: <==negation-removal== 46457 (pos)
                    (not (not_at_a_p5))

                    ; #41711: <==negation-removal== 66152 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #42667: origin
                    (at_a_p6)

                    ; #66152: origin
                    (not_at_a_p9)

                    ; #41711: <==negation-removal== 66152 (pos)
                    (not (at_a_p9))

                    ; #45294: <==negation-removal== 42667 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #24561: origin
                    (at_a_p7)

                    ; #66152: origin
                    (not_at_a_p9)

                    ; #31616: <==negation-removal== 24561 (pos)
                    (not (not_at_a_p7))

                    ; #41711: <==negation-removal== 66152 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11654: origin
                    (at_a_p8)

                    ; #66152: origin
                    (not_at_a_p9)

                    ; #41711: <==negation-removal== 66152 (pos)
                    (not (at_a_p9))

                    ; #72470: <==negation-removal== 11654 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #41711: origin
                    (at_a_p9)

                    ; #66152: origin
                    (not_at_a_p9)

                    ; #41711: <==negation-removal== 66152 (pos)
                    (not (at_a_p9))

                    ; #66152: <==negation-removal== 41711 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1)
                           (not (leader_b)))
        :effect (and
                    ; #26261: origin
                    (at_b_p1)

                    ; #74924: origin
                    (not_at_b_p10)

                    ; #55512: <==negation-removal== 26261 (pos)
                    (not (not_at_b_p1))

                    ; #89290: <==negation-removal== 74924 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #74924: origin
                    (not_at_b_p10)

                    ; #89290: origin
                    (at_b_p10)

                    ; #74924: <==negation-removal== 89290 (pos)
                    (not (not_at_b_p10))

                    ; #89290: <==negation-removal== 74924 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #50602: origin
                    (at_b_p11)

                    ; #74924: origin
                    (not_at_b_p10)

                    ; #52381: <==negation-removal== 50602 (pos)
                    (not (not_at_b_p11))

                    ; #89290: <==negation-removal== 74924 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #74924: origin
                    (not_at_b_p10)

                    ; #75503: origin
                    (at_b_p12)

                    ; #12924: <==negation-removal== 75503 (pos)
                    (not (not_at_b_p12))

                    ; #89290: <==negation-removal== 74924 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2)
                           (not (leader_b)))
        :effect (and
                    ; #34744: origin
                    (at_b_p2)

                    ; #74924: origin
                    (not_at_b_p10)

                    ; #22969: <==negation-removal== 34744 (pos)
                    (not (not_at_b_p2))

                    ; #89290: <==negation-removal== 74924 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #59751: origin
                    (at_b_p3)

                    ; #74924: origin
                    (not_at_b_p10)

                    ; #12684: <==negation-removal== 59751 (pos)
                    (not (not_at_b_p3))

                    ; #89290: <==negation-removal== 74924 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4)
                           (not (leader_b)))
        :effect (and
                    ; #74924: origin
                    (not_at_b_p10)

                    ; #79267: origin
                    (at_b_p4)

                    ; #84360: <==negation-removal== 79267 (pos)
                    (not (not_at_b_p4))

                    ; #89290: <==negation-removal== 74924 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5)
                           (not (leader_b)))
        :effect (and
                    ; #17162: origin
                    (at_b_p5)

                    ; #74924: origin
                    (not_at_b_p10)

                    ; #35805: <==negation-removal== 17162 (pos)
                    (not (not_at_b_p5))

                    ; #89290: <==negation-removal== 74924 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #74924: origin
                    (not_at_b_p10)

                    ; #81236: origin
                    (at_b_p6)

                    ; #46021: <==negation-removal== 81236 (pos)
                    (not (not_at_b_p6))

                    ; #89290: <==negation-removal== 74924 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #37818: origin
                    (at_b_p7)

                    ; #74924: origin
                    (not_at_b_p10)

                    ; #55202: <==negation-removal== 37818 (pos)
                    (not (not_at_b_p7))

                    ; #89290: <==negation-removal== 74924 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8)
                           (not (leader_b)))
        :effect (and
                    ; #74924: origin
                    (not_at_b_p10)

                    ; #83756: origin
                    (at_b_p8)

                    ; #44133: <==negation-removal== 83756 (pos)
                    (not (not_at_b_p8))

                    ; #89290: <==negation-removal== 74924 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #43396: origin
                    (at_b_p9)

                    ; #74924: origin
                    (not_at_b_p10)

                    ; #59212: <==negation-removal== 43396 (pos)
                    (not (not_at_b_p9))

                    ; #89290: <==negation-removal== 74924 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (at_b_p11)
                           (succ_p11_p1)
                           (not (leader_b)))
        :effect (and
                    ; #26261: origin
                    (at_b_p1)

                    ; #52381: origin
                    (not_at_b_p11)

                    ; #50602: <==negation-removal== 52381 (pos)
                    (not (at_b_p11))

                    ; #55512: <==negation-removal== 26261 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #52381: origin
                    (not_at_b_p11)

                    ; #89290: origin
                    (at_b_p10)

                    ; #50602: <==negation-removal== 52381 (pos)
                    (not (at_b_p11))

                    ; #74924: <==negation-removal== 89290 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11)
                           (not (leader_b)))
        :effect (and
                    ; #50602: origin
                    (at_b_p11)

                    ; #52381: origin
                    (not_at_b_p11)

                    ; #50602: <==negation-removal== 52381 (pos)
                    (not (at_b_p11))

                    ; #52381: <==negation-removal== 50602 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (at_b_p11)
                           (succ_p11_p12)
                           (not (leader_b)))
        :effect (and
                    ; #52381: origin
                    (not_at_b_p11)

                    ; #75503: origin
                    (at_b_p12)

                    ; #12924: <==negation-removal== 75503 (pos)
                    (not (not_at_b_p12))

                    ; #50602: <==negation-removal== 52381 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #34744: origin
                    (at_b_p2)

                    ; #52381: origin
                    (not_at_b_p11)

                    ; #22969: <==negation-removal== 34744 (pos)
                    (not (not_at_b_p2))

                    ; #50602: <==negation-removal== 52381 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3)
                           (not (leader_b)))
        :effect (and
                    ; #52381: origin
                    (not_at_b_p11)

                    ; #59751: origin
                    (at_b_p3)

                    ; #12684: <==negation-removal== 59751 (pos)
                    (not (not_at_b_p3))

                    ; #50602: <==negation-removal== 52381 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #52381: origin
                    (not_at_b_p11)

                    ; #79267: origin
                    (at_b_p4)

                    ; #50602: <==negation-removal== 52381 (pos)
                    (not (at_b_p11))

                    ; #84360: <==negation-removal== 79267 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5)
                           (not (leader_b)))
        :effect (and
                    ; #17162: origin
                    (at_b_p5)

                    ; #52381: origin
                    (not_at_b_p11)

                    ; #35805: <==negation-removal== 17162 (pos)
                    (not (not_at_b_p5))

                    ; #50602: <==negation-removal== 52381 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #52381: origin
                    (not_at_b_p11)

                    ; #81236: origin
                    (at_b_p6)

                    ; #46021: <==negation-removal== 81236 (pos)
                    (not (not_at_b_p6))

                    ; #50602: <==negation-removal== 52381 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7)
                           (not (leader_b)))
        :effect (and
                    ; #37818: origin
                    (at_b_p7)

                    ; #52381: origin
                    (not_at_b_p11)

                    ; #50602: <==negation-removal== 52381 (pos)
                    (not (at_b_p11))

                    ; #55202: <==negation-removal== 37818 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (at_b_p11)
                           (succ_p11_p8)
                           (not (leader_b)))
        :effect (and
                    ; #52381: origin
                    (not_at_b_p11)

                    ; #83756: origin
                    (at_b_p8)

                    ; #44133: <==negation-removal== 83756 (pos)
                    (not (not_at_b_p8))

                    ; #50602: <==negation-removal== 52381 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #43396: origin
                    (at_b_p9)

                    ; #52381: origin
                    (not_at_b_p11)

                    ; #50602: <==negation-removal== 52381 (pos)
                    (not (at_b_p11))

                    ; #59212: <==negation-removal== 43396 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #12924: origin
                    (not_at_b_p12)

                    ; #26261: origin
                    (at_b_p1)

                    ; #55512: <==negation-removal== 26261 (pos)
                    (not (not_at_b_p1))

                    ; #75503: <==negation-removal== 12924 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10)
                           (not (leader_b)))
        :effect (and
                    ; #12924: origin
                    (not_at_b_p12)

                    ; #89290: origin
                    (at_b_p10)

                    ; #74924: <==negation-removal== 89290 (pos)
                    (not (not_at_b_p10))

                    ; #75503: <==negation-removal== 12924 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11)
                           (not (leader_b)))
        :effect (and
                    ; #12924: origin
                    (not_at_b_p12)

                    ; #50602: origin
                    (at_b_p11)

                    ; #52381: <==negation-removal== 50602 (pos)
                    (not (not_at_b_p11))

                    ; #75503: <==negation-removal== 12924 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12)
                           (not (leader_b)))
        :effect (and
                    ; #12924: origin
                    (not_at_b_p12)

                    ; #75503: origin
                    (at_b_p12)

                    ; #12924: <==negation-removal== 75503 (pos)
                    (not (not_at_b_p12))

                    ; #75503: <==negation-removal== 12924 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #12924: origin
                    (not_at_b_p12)

                    ; #34744: origin
                    (at_b_p2)

                    ; #22969: <==negation-removal== 34744 (pos)
                    (not (not_at_b_p2))

                    ; #75503: <==negation-removal== 12924 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3)
                           (not (leader_b)))
        :effect (and
                    ; #12924: origin
                    (not_at_b_p12)

                    ; #59751: origin
                    (at_b_p3)

                    ; #12684: <==negation-removal== 59751 (pos)
                    (not (not_at_b_p3))

                    ; #75503: <==negation-removal== 12924 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4)
                           (not (leader_b)))
        :effect (and
                    ; #12924: origin
                    (not_at_b_p12)

                    ; #79267: origin
                    (at_b_p4)

                    ; #75503: <==negation-removal== 12924 (pos)
                    (not (at_b_p12))

                    ; #84360: <==negation-removal== 79267 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5)
                           (not (leader_b)))
        :effect (and
                    ; #12924: origin
                    (not_at_b_p12)

                    ; #17162: origin
                    (at_b_p5)

                    ; #35805: <==negation-removal== 17162 (pos)
                    (not (not_at_b_p5))

                    ; #75503: <==negation-removal== 12924 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6)
                           (not (leader_b)))
        :effect (and
                    ; #12924: origin
                    (not_at_b_p12)

                    ; #81236: origin
                    (at_b_p6)

                    ; #46021: <==negation-removal== 81236 (pos)
                    (not (not_at_b_p6))

                    ; #75503: <==negation-removal== 12924 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7)
                           (not (leader_b)))
        :effect (and
                    ; #12924: origin
                    (not_at_b_p12)

                    ; #37818: origin
                    (at_b_p7)

                    ; #55202: <==negation-removal== 37818 (pos)
                    (not (not_at_b_p7))

                    ; #75503: <==negation-removal== 12924 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8)
                           (not (leader_b)))
        :effect (and
                    ; #12924: origin
                    (not_at_b_p12)

                    ; #83756: origin
                    (at_b_p8)

                    ; #44133: <==negation-removal== 83756 (pos)
                    (not (not_at_b_p8))

                    ; #75503: <==negation-removal== 12924 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9)
                           (not (leader_b)))
        :effect (and
                    ; #12924: origin
                    (not_at_b_p12)

                    ; #43396: origin
                    (at_b_p9)

                    ; #59212: <==negation-removal== 43396 (pos)
                    (not (not_at_b_p9))

                    ; #75503: <==negation-removal== 12924 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #26261: origin
                    (at_b_p1)

                    ; #55512: origin
                    (not_at_b_p1)

                    ; #26261: <==negation-removal== 55512 (pos)
                    (not (at_b_p1))

                    ; #55512: <==negation-removal== 26261 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #55512: origin
                    (not_at_b_p1)

                    ; #89290: origin
                    (at_b_p10)

                    ; #26261: <==negation-removal== 55512 (pos)
                    (not (at_b_p1))

                    ; #74924: <==negation-removal== 89290 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #50602: origin
                    (at_b_p11)

                    ; #55512: origin
                    (not_at_b_p1)

                    ; #26261: <==negation-removal== 55512 (pos)
                    (not (at_b_p1))

                    ; #52381: <==negation-removal== 50602 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12)
                           (not (leader_b)))
        :effect (and
                    ; #55512: origin
                    (not_at_b_p1)

                    ; #75503: origin
                    (at_b_p12)

                    ; #12924: <==negation-removal== 75503 (pos)
                    (not (not_at_b_p12))

                    ; #26261: <==negation-removal== 55512 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #34744: origin
                    (at_b_p2)

                    ; #55512: origin
                    (not_at_b_p1)

                    ; #22969: <==negation-removal== 34744 (pos)
                    (not (not_at_b_p2))

                    ; #26261: <==negation-removal== 55512 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #55512: origin
                    (not_at_b_p1)

                    ; #59751: origin
                    (at_b_p3)

                    ; #12684: <==negation-removal== 59751 (pos)
                    (not (not_at_b_p3))

                    ; #26261: <==negation-removal== 55512 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #55512: origin
                    (not_at_b_p1)

                    ; #79267: origin
                    (at_b_p4)

                    ; #26261: <==negation-removal== 55512 (pos)
                    (not (at_b_p1))

                    ; #84360: <==negation-removal== 79267 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #17162: origin
                    (at_b_p5)

                    ; #55512: origin
                    (not_at_b_p1)

                    ; #26261: <==negation-removal== 55512 (pos)
                    (not (at_b_p1))

                    ; #35805: <==negation-removal== 17162 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #55512: origin
                    (not_at_b_p1)

                    ; #81236: origin
                    (at_b_p6)

                    ; #26261: <==negation-removal== 55512 (pos)
                    (not (at_b_p1))

                    ; #46021: <==negation-removal== 81236 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #37818: origin
                    (at_b_p7)

                    ; #55512: origin
                    (not_at_b_p1)

                    ; #26261: <==negation-removal== 55512 (pos)
                    (not (at_b_p1))

                    ; #55202: <==negation-removal== 37818 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8)
                           (not (leader_b)))
        :effect (and
                    ; #55512: origin
                    (not_at_b_p1)

                    ; #83756: origin
                    (at_b_p8)

                    ; #26261: <==negation-removal== 55512 (pos)
                    (not (at_b_p1))

                    ; #44133: <==negation-removal== 83756 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #43396: origin
                    (at_b_p9)

                    ; #55512: origin
                    (not_at_b_p1)

                    ; #26261: <==negation-removal== 55512 (pos)
                    (not (at_b_p1))

                    ; #59212: <==negation-removal== 43396 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #22969: origin
                    (not_at_b_p2)

                    ; #26261: origin
                    (at_b_p1)

                    ; #34744: <==negation-removal== 22969 (pos)
                    (not (at_b_p2))

                    ; #55512: <==negation-removal== 26261 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #22969: origin
                    (not_at_b_p2)

                    ; #89290: origin
                    (at_b_p10)

                    ; #34744: <==negation-removal== 22969 (pos)
                    (not (at_b_p2))

                    ; #74924: <==negation-removal== 89290 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (at_b_p2)
                           (succ_p2_p11)
                           (not (leader_b)))
        :effect (and
                    ; #22969: origin
                    (not_at_b_p2)

                    ; #50602: origin
                    (at_b_p11)

                    ; #34744: <==negation-removal== 22969 (pos)
                    (not (at_b_p2))

                    ; #52381: <==negation-removal== 50602 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12)
                           (not (leader_b)))
        :effect (and
                    ; #22969: origin
                    (not_at_b_p2)

                    ; #75503: origin
                    (at_b_p12)

                    ; #12924: <==negation-removal== 75503 (pos)
                    (not (not_at_b_p12))

                    ; #34744: <==negation-removal== 22969 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2)
                           (not (leader_b)))
        :effect (and
                    ; #22969: origin
                    (not_at_b_p2)

                    ; #34744: origin
                    (at_b_p2)

                    ; #22969: <==negation-removal== 34744 (pos)
                    (not (not_at_b_p2))

                    ; #34744: <==negation-removal== 22969 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3)
                           (not (leader_b)))
        :effect (and
                    ; #22969: origin
                    (not_at_b_p2)

                    ; #59751: origin
                    (at_b_p3)

                    ; #12684: <==negation-removal== 59751 (pos)
                    (not (not_at_b_p3))

                    ; #34744: <==negation-removal== 22969 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #22969: origin
                    (not_at_b_p2)

                    ; #79267: origin
                    (at_b_p4)

                    ; #34744: <==negation-removal== 22969 (pos)
                    (not (at_b_p2))

                    ; #84360: <==negation-removal== 79267 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5)
                           (not (leader_b)))
        :effect (and
                    ; #17162: origin
                    (at_b_p5)

                    ; #22969: origin
                    (not_at_b_p2)

                    ; #34744: <==negation-removal== 22969 (pos)
                    (not (at_b_p2))

                    ; #35805: <==negation-removal== 17162 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #22969: origin
                    (not_at_b_p2)

                    ; #81236: origin
                    (at_b_p6)

                    ; #34744: <==negation-removal== 22969 (pos)
                    (not (at_b_p2))

                    ; #46021: <==negation-removal== 81236 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #22969: origin
                    (not_at_b_p2)

                    ; #37818: origin
                    (at_b_p7)

                    ; #34744: <==negation-removal== 22969 (pos)
                    (not (at_b_p2))

                    ; #55202: <==negation-removal== 37818 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8)
                           (not (leader_b)))
        :effect (and
                    ; #22969: origin
                    (not_at_b_p2)

                    ; #83756: origin
                    (at_b_p8)

                    ; #34744: <==negation-removal== 22969 (pos)
                    (not (at_b_p2))

                    ; #44133: <==negation-removal== 83756 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9)
                           (not (leader_b)))
        :effect (and
                    ; #22969: origin
                    (not_at_b_p2)

                    ; #43396: origin
                    (at_b_p9)

                    ; #34744: <==negation-removal== 22969 (pos)
                    (not (at_b_p2))

                    ; #59212: <==negation-removal== 43396 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1)
                           (not (leader_b)))
        :effect (and
                    ; #12684: origin
                    (not_at_b_p3)

                    ; #26261: origin
                    (at_b_p1)

                    ; #55512: <==negation-removal== 26261 (pos)
                    (not (not_at_b_p1))

                    ; #59751: <==negation-removal== 12684 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #12684: origin
                    (not_at_b_p3)

                    ; #89290: origin
                    (at_b_p10)

                    ; #59751: <==negation-removal== 12684 (pos)
                    (not (at_b_p3))

                    ; #74924: <==negation-removal== 89290 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11)
                           (not (leader_b)))
        :effect (and
                    ; #12684: origin
                    (not_at_b_p3)

                    ; #50602: origin
                    (at_b_p11)

                    ; #52381: <==negation-removal== 50602 (pos)
                    (not (not_at_b_p11))

                    ; #59751: <==negation-removal== 12684 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12)
                           (not (leader_b)))
        :effect (and
                    ; #12684: origin
                    (not_at_b_p3)

                    ; #75503: origin
                    (at_b_p12)

                    ; #12924: <==negation-removal== 75503 (pos)
                    (not (not_at_b_p12))

                    ; #59751: <==negation-removal== 12684 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2)
                           (not (leader_b)))
        :effect (and
                    ; #12684: origin
                    (not_at_b_p3)

                    ; #34744: origin
                    (at_b_p2)

                    ; #22969: <==negation-removal== 34744 (pos)
                    (not (not_at_b_p2))

                    ; #59751: <==negation-removal== 12684 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3)
                           (not (leader_b)))
        :effect (and
                    ; #12684: origin
                    (not_at_b_p3)

                    ; #59751: origin
                    (at_b_p3)

                    ; #12684: <==negation-removal== 59751 (pos)
                    (not (not_at_b_p3))

                    ; #59751: <==negation-removal== 12684 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4)
                           (not (leader_b)))
        :effect (and
                    ; #12684: origin
                    (not_at_b_p3)

                    ; #79267: origin
                    (at_b_p4)

                    ; #59751: <==negation-removal== 12684 (pos)
                    (not (at_b_p3))

                    ; #84360: <==negation-removal== 79267 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5)
                           (not (leader_b)))
        :effect (and
                    ; #12684: origin
                    (not_at_b_p3)

                    ; #17162: origin
                    (at_b_p5)

                    ; #35805: <==negation-removal== 17162 (pos)
                    (not (not_at_b_p5))

                    ; #59751: <==negation-removal== 12684 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #12684: origin
                    (not_at_b_p3)

                    ; #81236: origin
                    (at_b_p6)

                    ; #46021: <==negation-removal== 81236 (pos)
                    (not (not_at_b_p6))

                    ; #59751: <==negation-removal== 12684 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #12684: origin
                    (not_at_b_p3)

                    ; #37818: origin
                    (at_b_p7)

                    ; #55202: <==negation-removal== 37818 (pos)
                    (not (not_at_b_p7))

                    ; #59751: <==negation-removal== 12684 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8)
                           (not (leader_b)))
        :effect (and
                    ; #12684: origin
                    (not_at_b_p3)

                    ; #83756: origin
                    (at_b_p8)

                    ; #44133: <==negation-removal== 83756 (pos)
                    (not (not_at_b_p8))

                    ; #59751: <==negation-removal== 12684 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #12684: origin
                    (not_at_b_p3)

                    ; #43396: origin
                    (at_b_p9)

                    ; #59212: <==negation-removal== 43396 (pos)
                    (not (not_at_b_p9))

                    ; #59751: <==negation-removal== 12684 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1)
                           (not (leader_b)))
        :effect (and
                    ; #26261: origin
                    (at_b_p1)

                    ; #84360: origin
                    (not_at_b_p4)

                    ; #55512: <==negation-removal== 26261 (pos)
                    (not (not_at_b_p1))

                    ; #79267: <==negation-removal== 84360 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #84360: origin
                    (not_at_b_p4)

                    ; #89290: origin
                    (at_b_p10)

                    ; #74924: <==negation-removal== 89290 (pos)
                    (not (not_at_b_p10))

                    ; #79267: <==negation-removal== 84360 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #50602: origin
                    (at_b_p11)

                    ; #84360: origin
                    (not_at_b_p4)

                    ; #52381: <==negation-removal== 50602 (pos)
                    (not (not_at_b_p11))

                    ; #79267: <==negation-removal== 84360 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #75503: origin
                    (at_b_p12)

                    ; #84360: origin
                    (not_at_b_p4)

                    ; #12924: <==negation-removal== 75503 (pos)
                    (not (not_at_b_p12))

                    ; #79267: <==negation-removal== 84360 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2)
                           (not (leader_b)))
        :effect (and
                    ; #34744: origin
                    (at_b_p2)

                    ; #84360: origin
                    (not_at_b_p4)

                    ; #22969: <==negation-removal== 34744 (pos)
                    (not (not_at_b_p2))

                    ; #79267: <==negation-removal== 84360 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #59751: origin
                    (at_b_p3)

                    ; #84360: origin
                    (not_at_b_p4)

                    ; #12684: <==negation-removal== 59751 (pos)
                    (not (not_at_b_p3))

                    ; #79267: <==negation-removal== 84360 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #79267: origin
                    (at_b_p4)

                    ; #84360: origin
                    (not_at_b_p4)

                    ; #79267: <==negation-removal== 84360 (pos)
                    (not (at_b_p4))

                    ; #84360: <==negation-removal== 79267 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #17162: origin
                    (at_b_p5)

                    ; #84360: origin
                    (not_at_b_p4)

                    ; #35805: <==negation-removal== 17162 (pos)
                    (not (not_at_b_p5))

                    ; #79267: <==negation-removal== 84360 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #81236: origin
                    (at_b_p6)

                    ; #84360: origin
                    (not_at_b_p4)

                    ; #46021: <==negation-removal== 81236 (pos)
                    (not (not_at_b_p6))

                    ; #79267: <==negation-removal== 84360 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #37818: origin
                    (at_b_p7)

                    ; #84360: origin
                    (not_at_b_p4)

                    ; #55202: <==negation-removal== 37818 (pos)
                    (not (not_at_b_p7))

                    ; #79267: <==negation-removal== 84360 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #83756: origin
                    (at_b_p8)

                    ; #84360: origin
                    (not_at_b_p4)

                    ; #44133: <==negation-removal== 83756 (pos)
                    (not (not_at_b_p8))

                    ; #79267: <==negation-removal== 84360 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9)
                           (not (leader_b)))
        :effect (and
                    ; #43396: origin
                    (at_b_p9)

                    ; #84360: origin
                    (not_at_b_p4)

                    ; #59212: <==negation-removal== 43396 (pos)
                    (not (not_at_b_p9))

                    ; #79267: <==negation-removal== 84360 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1)
                           (not (leader_b)))
        :effect (and
                    ; #26261: origin
                    (at_b_p1)

                    ; #35805: origin
                    (not_at_b_p5)

                    ; #17162: <==negation-removal== 35805 (pos)
                    (not (at_b_p5))

                    ; #55512: <==negation-removal== 26261 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #35805: origin
                    (not_at_b_p5)

                    ; #89290: origin
                    (at_b_p10)

                    ; #17162: <==negation-removal== 35805 (pos)
                    (not (at_b_p5))

                    ; #74924: <==negation-removal== 89290 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11)
                           (not (leader_b)))
        :effect (and
                    ; #35805: origin
                    (not_at_b_p5)

                    ; #50602: origin
                    (at_b_p11)

                    ; #17162: <==negation-removal== 35805 (pos)
                    (not (at_b_p5))

                    ; #52381: <==negation-removal== 50602 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #35805: origin
                    (not_at_b_p5)

                    ; #75503: origin
                    (at_b_p12)

                    ; #12924: <==negation-removal== 75503 (pos)
                    (not (not_at_b_p12))

                    ; #17162: <==negation-removal== 35805 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2)
                           (not (leader_b)))
        :effect (and
                    ; #34744: origin
                    (at_b_p2)

                    ; #35805: origin
                    (not_at_b_p5)

                    ; #17162: <==negation-removal== 35805 (pos)
                    (not (at_b_p5))

                    ; #22969: <==negation-removal== 34744 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3)
                           (not (leader_b)))
        :effect (and
                    ; #35805: origin
                    (not_at_b_p5)

                    ; #59751: origin
                    (at_b_p3)

                    ; #12684: <==negation-removal== 59751 (pos)
                    (not (not_at_b_p3))

                    ; #17162: <==negation-removal== 35805 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #35805: origin
                    (not_at_b_p5)

                    ; #79267: origin
                    (at_b_p4)

                    ; #17162: <==negation-removal== 35805 (pos)
                    (not (at_b_p5))

                    ; #84360: <==negation-removal== 79267 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5)
                           (not (leader_b)))
        :effect (and
                    ; #17162: origin
                    (at_b_p5)

                    ; #35805: origin
                    (not_at_b_p5)

                    ; #17162: <==negation-removal== 35805 (pos)
                    (not (at_b_p5))

                    ; #35805: <==negation-removal== 17162 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6)
                           (not (leader_b)))
        :effect (and
                    ; #35805: origin
                    (not_at_b_p5)

                    ; #81236: origin
                    (at_b_p6)

                    ; #17162: <==negation-removal== 35805 (pos)
                    (not (at_b_p5))

                    ; #46021: <==negation-removal== 81236 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7)
                           (not (leader_b)))
        :effect (and
                    ; #35805: origin
                    (not_at_b_p5)

                    ; #37818: origin
                    (at_b_p7)

                    ; #17162: <==negation-removal== 35805 (pos)
                    (not (at_b_p5))

                    ; #55202: <==negation-removal== 37818 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8)
                           (not (leader_b)))
        :effect (and
                    ; #35805: origin
                    (not_at_b_p5)

                    ; #83756: origin
                    (at_b_p8)

                    ; #17162: <==negation-removal== 35805 (pos)
                    (not (at_b_p5))

                    ; #44133: <==negation-removal== 83756 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #35805: origin
                    (not_at_b_p5)

                    ; #43396: origin
                    (at_b_p9)

                    ; #17162: <==negation-removal== 35805 (pos)
                    (not (at_b_p5))

                    ; #59212: <==negation-removal== 43396 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #26261: origin
                    (at_b_p1)

                    ; #46021: origin
                    (not_at_b_p6)

                    ; #55512: <==negation-removal== 26261 (pos)
                    (not (not_at_b_p1))

                    ; #81236: <==negation-removal== 46021 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #46021: origin
                    (not_at_b_p6)

                    ; #89290: origin
                    (at_b_p10)

                    ; #74924: <==negation-removal== 89290 (pos)
                    (not (not_at_b_p10))

                    ; #81236: <==negation-removal== 46021 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (at_b_p6)
                           (succ_p6_p11)
                           (not (leader_b)))
        :effect (and
                    ; #46021: origin
                    (not_at_b_p6)

                    ; #50602: origin
                    (at_b_p11)

                    ; #52381: <==negation-removal== 50602 (pos)
                    (not (not_at_b_p11))

                    ; #81236: <==negation-removal== 46021 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #46021: origin
                    (not_at_b_p6)

                    ; #75503: origin
                    (at_b_p12)

                    ; #12924: <==negation-removal== 75503 (pos)
                    (not (not_at_b_p12))

                    ; #81236: <==negation-removal== 46021 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2)
                           (not (leader_b)))
        :effect (and
                    ; #34744: origin
                    (at_b_p2)

                    ; #46021: origin
                    (not_at_b_p6)

                    ; #22969: <==negation-removal== 34744 (pos)
                    (not (not_at_b_p2))

                    ; #81236: <==negation-removal== 46021 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3)
                           (not (leader_b)))
        :effect (and
                    ; #46021: origin
                    (not_at_b_p6)

                    ; #59751: origin
                    (at_b_p3)

                    ; #12684: <==negation-removal== 59751 (pos)
                    (not (not_at_b_p3))

                    ; #81236: <==negation-removal== 46021 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #46021: origin
                    (not_at_b_p6)

                    ; #79267: origin
                    (at_b_p4)

                    ; #81236: <==negation-removal== 46021 (pos)
                    (not (at_b_p6))

                    ; #84360: <==negation-removal== 79267 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #17162: origin
                    (at_b_p5)

                    ; #46021: origin
                    (not_at_b_p6)

                    ; #35805: <==negation-removal== 17162 (pos)
                    (not (not_at_b_p5))

                    ; #81236: <==negation-removal== 46021 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6)
                           (not (leader_b)))
        :effect (and
                    ; #46021: origin
                    (not_at_b_p6)

                    ; #81236: origin
                    (at_b_p6)

                    ; #46021: <==negation-removal== 81236 (pos)
                    (not (not_at_b_p6))

                    ; #81236: <==negation-removal== 46021 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7)
                           (not (leader_b)))
        :effect (and
                    ; #37818: origin
                    (at_b_p7)

                    ; #46021: origin
                    (not_at_b_p6)

                    ; #55202: <==negation-removal== 37818 (pos)
                    (not (not_at_b_p7))

                    ; #81236: <==negation-removal== 46021 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #46021: origin
                    (not_at_b_p6)

                    ; #83756: origin
                    (at_b_p8)

                    ; #44133: <==negation-removal== 83756 (pos)
                    (not (not_at_b_p8))

                    ; #81236: <==negation-removal== 46021 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #43396: origin
                    (at_b_p9)

                    ; #46021: origin
                    (not_at_b_p6)

                    ; #59212: <==negation-removal== 43396 (pos)
                    (not (not_at_b_p9))

                    ; #81236: <==negation-removal== 46021 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #26261: origin
                    (at_b_p1)

                    ; #55202: origin
                    (not_at_b_p7)

                    ; #37818: <==negation-removal== 55202 (pos)
                    (not (at_b_p7))

                    ; #55512: <==negation-removal== 26261 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10)
                           (not (leader_b)))
        :effect (and
                    ; #55202: origin
                    (not_at_b_p7)

                    ; #89290: origin
                    (at_b_p10)

                    ; #37818: <==negation-removal== 55202 (pos)
                    (not (at_b_p7))

                    ; #74924: <==negation-removal== 89290 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11)
                           (not (leader_b)))
        :effect (and
                    ; #50602: origin
                    (at_b_p11)

                    ; #55202: origin
                    (not_at_b_p7)

                    ; #37818: <==negation-removal== 55202 (pos)
                    (not (at_b_p7))

                    ; #52381: <==negation-removal== 50602 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #55202: origin
                    (not_at_b_p7)

                    ; #75503: origin
                    (at_b_p12)

                    ; #12924: <==negation-removal== 75503 (pos)
                    (not (not_at_b_p12))

                    ; #37818: <==negation-removal== 55202 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2)
                           (not (leader_b)))
        :effect (and
                    ; #34744: origin
                    (at_b_p2)

                    ; #55202: origin
                    (not_at_b_p7)

                    ; #22969: <==negation-removal== 34744 (pos)
                    (not (not_at_b_p2))

                    ; #37818: <==negation-removal== 55202 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #55202: origin
                    (not_at_b_p7)

                    ; #59751: origin
                    (at_b_p3)

                    ; #12684: <==negation-removal== 59751 (pos)
                    (not (not_at_b_p3))

                    ; #37818: <==negation-removal== 55202 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #55202: origin
                    (not_at_b_p7)

                    ; #79267: origin
                    (at_b_p4)

                    ; #37818: <==negation-removal== 55202 (pos)
                    (not (at_b_p7))

                    ; #84360: <==negation-removal== 79267 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5)
                           (not (leader_b)))
        :effect (and
                    ; #17162: origin
                    (at_b_p5)

                    ; #55202: origin
                    (not_at_b_p7)

                    ; #35805: <==negation-removal== 17162 (pos)
                    (not (not_at_b_p5))

                    ; #37818: <==negation-removal== 55202 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #55202: origin
                    (not_at_b_p7)

                    ; #81236: origin
                    (at_b_p6)

                    ; #37818: <==negation-removal== 55202 (pos)
                    (not (at_b_p7))

                    ; #46021: <==negation-removal== 81236 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #37818: origin
                    (at_b_p7)

                    ; #55202: origin
                    (not_at_b_p7)

                    ; #37818: <==negation-removal== 55202 (pos)
                    (not (at_b_p7))

                    ; #55202: <==negation-removal== 37818 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8)
                           (not (leader_b)))
        :effect (and
                    ; #55202: origin
                    (not_at_b_p7)

                    ; #83756: origin
                    (at_b_p8)

                    ; #37818: <==negation-removal== 55202 (pos)
                    (not (at_b_p7))

                    ; #44133: <==negation-removal== 83756 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #43396: origin
                    (at_b_p9)

                    ; #55202: origin
                    (not_at_b_p7)

                    ; #37818: <==negation-removal== 55202 (pos)
                    (not (at_b_p7))

                    ; #59212: <==negation-removal== 43396 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1)
                           (not (leader_b)))
        :effect (and
                    ; #26261: origin
                    (at_b_p1)

                    ; #44133: origin
                    (not_at_b_p8)

                    ; #55512: <==negation-removal== 26261 (pos)
                    (not (not_at_b_p1))

                    ; #83756: <==negation-removal== 44133 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10)
                           (not (leader_b)))
        :effect (and
                    ; #44133: origin
                    (not_at_b_p8)

                    ; #89290: origin
                    (at_b_p10)

                    ; #74924: <==negation-removal== 89290 (pos)
                    (not (not_at_b_p10))

                    ; #83756: <==negation-removal== 44133 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11)
                           (not (leader_b)))
        :effect (and
                    ; #44133: origin
                    (not_at_b_p8)

                    ; #50602: origin
                    (at_b_p11)

                    ; #52381: <==negation-removal== 50602 (pos)
                    (not (not_at_b_p11))

                    ; #83756: <==negation-removal== 44133 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12)
                           (not (leader_b)))
        :effect (and
                    ; #44133: origin
                    (not_at_b_p8)

                    ; #75503: origin
                    (at_b_p12)

                    ; #12924: <==negation-removal== 75503 (pos)
                    (not (not_at_b_p12))

                    ; #83756: <==negation-removal== 44133 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2)
                           (not (leader_b)))
        :effect (and
                    ; #34744: origin
                    (at_b_p2)

                    ; #44133: origin
                    (not_at_b_p8)

                    ; #22969: <==negation-removal== 34744 (pos)
                    (not (not_at_b_p2))

                    ; #83756: <==negation-removal== 44133 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3)
                           (not (leader_b)))
        :effect (and
                    ; #44133: origin
                    (not_at_b_p8)

                    ; #59751: origin
                    (at_b_p3)

                    ; #12684: <==negation-removal== 59751 (pos)
                    (not (not_at_b_p3))

                    ; #83756: <==negation-removal== 44133 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4)
                           (not (leader_b)))
        :effect (and
                    ; #44133: origin
                    (not_at_b_p8)

                    ; #79267: origin
                    (at_b_p4)

                    ; #83756: <==negation-removal== 44133 (pos)
                    (not (at_b_p8))

                    ; #84360: <==negation-removal== 79267 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5)
                           (not (leader_b)))
        :effect (and
                    ; #17162: origin
                    (at_b_p5)

                    ; #44133: origin
                    (not_at_b_p8)

                    ; #35805: <==negation-removal== 17162 (pos)
                    (not (not_at_b_p5))

                    ; #83756: <==negation-removal== 44133 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6)
                           (not (leader_b)))
        :effect (and
                    ; #44133: origin
                    (not_at_b_p8)

                    ; #81236: origin
                    (at_b_p6)

                    ; #46021: <==negation-removal== 81236 (pos)
                    (not (not_at_b_p6))

                    ; #83756: <==negation-removal== 44133 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7)
                           (not (leader_b)))
        :effect (and
                    ; #37818: origin
                    (at_b_p7)

                    ; #44133: origin
                    (not_at_b_p8)

                    ; #55202: <==negation-removal== 37818 (pos)
                    (not (not_at_b_p7))

                    ; #83756: <==negation-removal== 44133 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8)
                           (not (leader_b)))
        :effect (and
                    ; #44133: origin
                    (not_at_b_p8)

                    ; #83756: origin
                    (at_b_p8)

                    ; #44133: <==negation-removal== 83756 (pos)
                    (not (not_at_b_p8))

                    ; #83756: <==negation-removal== 44133 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9)
                           (not (leader_b)))
        :effect (and
                    ; #43396: origin
                    (at_b_p9)

                    ; #44133: origin
                    (not_at_b_p8)

                    ; #59212: <==negation-removal== 43396 (pos)
                    (not (not_at_b_p9))

                    ; #83756: <==negation-removal== 44133 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1)
                           (not (leader_b)))
        :effect (and
                    ; #26261: origin
                    (at_b_p1)

                    ; #59212: origin
                    (not_at_b_p9)

                    ; #43396: <==negation-removal== 59212 (pos)
                    (not (at_b_p9))

                    ; #55512: <==negation-removal== 26261 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #59212: origin
                    (not_at_b_p9)

                    ; #89290: origin
                    (at_b_p10)

                    ; #43396: <==negation-removal== 59212 (pos)
                    (not (at_b_p9))

                    ; #74924: <==negation-removal== 89290 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #50602: origin
                    (at_b_p11)

                    ; #59212: origin
                    (not_at_b_p9)

                    ; #43396: <==negation-removal== 59212 (pos)
                    (not (at_b_p9))

                    ; #52381: <==negation-removal== 50602 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12)
                           (not (leader_b)))
        :effect (and
                    ; #59212: origin
                    (not_at_b_p9)

                    ; #75503: origin
                    (at_b_p12)

                    ; #12924: <==negation-removal== 75503 (pos)
                    (not (not_at_b_p12))

                    ; #43396: <==negation-removal== 59212 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2)
                           (not (leader_b)))
        :effect (and
                    ; #34744: origin
                    (at_b_p2)

                    ; #59212: origin
                    (not_at_b_p9)

                    ; #22969: <==negation-removal== 34744 (pos)
                    (not (not_at_b_p2))

                    ; #43396: <==negation-removal== 59212 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #59212: origin
                    (not_at_b_p9)

                    ; #59751: origin
                    (at_b_p3)

                    ; #12684: <==negation-removal== 59751 (pos)
                    (not (not_at_b_p3))

                    ; #43396: <==negation-removal== 59212 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #59212: origin
                    (not_at_b_p9)

                    ; #79267: origin
                    (at_b_p4)

                    ; #43396: <==negation-removal== 59212 (pos)
                    (not (at_b_p9))

                    ; #84360: <==negation-removal== 79267 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #17162: origin
                    (at_b_p5)

                    ; #59212: origin
                    (not_at_b_p9)

                    ; #35805: <==negation-removal== 17162 (pos)
                    (not (not_at_b_p5))

                    ; #43396: <==negation-removal== 59212 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #59212: origin
                    (not_at_b_p9)

                    ; #81236: origin
                    (at_b_p6)

                    ; #43396: <==negation-removal== 59212 (pos)
                    (not (at_b_p9))

                    ; #46021: <==negation-removal== 81236 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #37818: origin
                    (at_b_p7)

                    ; #59212: origin
                    (not_at_b_p9)

                    ; #43396: <==negation-removal== 59212 (pos)
                    (not (at_b_p9))

                    ; #55202: <==negation-removal== 37818 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #59212: origin
                    (not_at_b_p9)

                    ; #83756: origin
                    (at_b_p8)

                    ; #43396: <==negation-removal== 59212 (pos)
                    (not (at_b_p9))

                    ; #44133: <==negation-removal== 83756 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9)
                           (not (leader_b)))
        :effect (and
                    ; #43396: origin
                    (at_b_p9)

                    ; #59212: origin
                    (not_at_b_p9)

                    ; #43396: <==negation-removal== 59212 (pos)
                    (not (at_b_p9))

                    ; #59212: <==negation-removal== 43396 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1)
                           (not (leader_c)))
        :effect (and
                    ; #46790: origin
                    (not_at_c_p10)

                    ; #87689: origin
                    (at_c_p1)

                    ; #41085: <==negation-removal== 87689 (pos)
                    (not (not_at_c_p1))

                    ; #72905: <==negation-removal== 46790 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10)
                           (not (leader_c)))
        :effect (and
                    ; #46790: origin
                    (not_at_c_p10)

                    ; #72905: origin
                    (at_c_p10)

                    ; #46790: <==negation-removal== 72905 (pos)
                    (not (not_at_c_p10))

                    ; #72905: <==negation-removal== 46790 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15947: origin
                    (at_c_p11)

                    ; #46790: origin
                    (not_at_c_p10)

                    ; #34840: <==negation-removal== 15947 (pos)
                    (not (not_at_c_p11))

                    ; #72905: <==negation-removal== 46790 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12)
                           (not (leader_c)))
        :effect (and
                    ; #46790: origin
                    (not_at_c_p10)

                    ; #68740: origin
                    (at_c_p12)

                    ; #13741: <==negation-removal== 68740 (pos)
                    (not (not_at_c_p12))

                    ; #72905: <==negation-removal== 46790 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2)
                           (not (leader_c)))
        :effect (and
                    ; #41585: origin
                    (at_c_p2)

                    ; #46790: origin
                    (not_at_c_p10)

                    ; #10673: <==negation-removal== 41585 (pos)
                    (not (not_at_c_p2))

                    ; #72905: <==negation-removal== 46790 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3)
                           (not (leader_c)))
        :effect (and
                    ; #11358: origin
                    (at_c_p3)

                    ; #46790: origin
                    (not_at_c_p10)

                    ; #72905: <==negation-removal== 46790 (pos)
                    (not (at_c_p10))

                    ; #91040: <==negation-removal== 11358 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4)
                           (not (leader_c)))
        :effect (and
                    ; #46790: origin
                    (not_at_c_p10)

                    ; #75101: origin
                    (at_c_p4)

                    ; #72905: <==negation-removal== 46790 (pos)
                    (not (at_c_p10))

                    ; #88491: <==negation-removal== 75101 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5)
                           (not (leader_c)))
        :effect (and
                    ; #45187: origin
                    (at_c_p5)

                    ; #46790: origin
                    (not_at_c_p10)

                    ; #38383: <==negation-removal== 45187 (pos)
                    (not (not_at_c_p5))

                    ; #72905: <==negation-removal== 46790 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6)
                           (not (leader_c)))
        :effect (and
                    ; #11263: origin
                    (at_c_p6)

                    ; #46790: origin
                    (not_at_c_p10)

                    ; #59696: <==negation-removal== 11263 (pos)
                    (not (not_at_c_p6))

                    ; #72905: <==negation-removal== 46790 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7)
                           (not (leader_c)))
        :effect (and
                    ; #46790: origin
                    (not_at_c_p10)

                    ; #63604: origin
                    (at_c_p7)

                    ; #72905: <==negation-removal== 46790 (pos)
                    (not (at_c_p10))

                    ; #74263: <==negation-removal== 63604 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8)
                           (not (leader_c)))
        :effect (and
                    ; #35462: origin
                    (at_c_p8)

                    ; #46790: origin
                    (not_at_c_p10)

                    ; #58074: <==negation-removal== 35462 (pos)
                    (not (not_at_c_p8))

                    ; #72905: <==negation-removal== 46790 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9)
                           (not (leader_c)))
        :effect (and
                    ; #46790: origin
                    (not_at_c_p10)

                    ; #86953: origin
                    (at_c_p9)

                    ; #47864: <==negation-removal== 86953 (pos)
                    (not (not_at_c_p9))

                    ; #72905: <==negation-removal== 46790 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #34840: origin
                    (not_at_c_p11)

                    ; #87689: origin
                    (at_c_p1)

                    ; #15947: <==negation-removal== 34840 (pos)
                    (not (at_c_p11))

                    ; #41085: <==negation-removal== 87689 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #34840: origin
                    (not_at_c_p11)

                    ; #72905: origin
                    (at_c_p10)

                    ; #15947: <==negation-removal== 34840 (pos)
                    (not (at_c_p11))

                    ; #46790: <==negation-removal== 72905 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15947: origin
                    (at_c_p11)

                    ; #34840: origin
                    (not_at_c_p11)

                    ; #15947: <==negation-removal== 34840 (pos)
                    (not (at_c_p11))

                    ; #34840: <==negation-removal== 15947 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #34840: origin
                    (not_at_c_p11)

                    ; #68740: origin
                    (at_c_p12)

                    ; #13741: <==negation-removal== 68740 (pos)
                    (not (not_at_c_p12))

                    ; #15947: <==negation-removal== 34840 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #34840: origin
                    (not_at_c_p11)

                    ; #41585: origin
                    (at_c_p2)

                    ; #10673: <==negation-removal== 41585 (pos)
                    (not (not_at_c_p2))

                    ; #15947: <==negation-removal== 34840 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #11358: origin
                    (at_c_p3)

                    ; #34840: origin
                    (not_at_c_p11)

                    ; #15947: <==negation-removal== 34840 (pos)
                    (not (at_c_p11))

                    ; #91040: <==negation-removal== 11358 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #34840: origin
                    (not_at_c_p11)

                    ; #75101: origin
                    (at_c_p4)

                    ; #15947: <==negation-removal== 34840 (pos)
                    (not (at_c_p11))

                    ; #88491: <==negation-removal== 75101 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #34840: origin
                    (not_at_c_p11)

                    ; #45187: origin
                    (at_c_p5)

                    ; #15947: <==negation-removal== 34840 (pos)
                    (not (at_c_p11))

                    ; #38383: <==negation-removal== 45187 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #11263: origin
                    (at_c_p6)

                    ; #34840: origin
                    (not_at_c_p11)

                    ; #15947: <==negation-removal== 34840 (pos)
                    (not (at_c_p11))

                    ; #59696: <==negation-removal== 11263 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #34840: origin
                    (not_at_c_p11)

                    ; #63604: origin
                    (at_c_p7)

                    ; #15947: <==negation-removal== 34840 (pos)
                    (not (at_c_p11))

                    ; #74263: <==negation-removal== 63604 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #34840: origin
                    (not_at_c_p11)

                    ; #35462: origin
                    (at_c_p8)

                    ; #15947: <==negation-removal== 34840 (pos)
                    (not (at_c_p11))

                    ; #58074: <==negation-removal== 35462 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #34840: origin
                    (not_at_c_p11)

                    ; #86953: origin
                    (at_c_p9)

                    ; #15947: <==negation-removal== 34840 (pos)
                    (not (at_c_p11))

                    ; #47864: <==negation-removal== 86953 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #13741: origin
                    (not_at_c_p12)

                    ; #87689: origin
                    (at_c_p1)

                    ; #41085: <==negation-removal== 87689 (pos)
                    (not (not_at_c_p1))

                    ; #68740: <==negation-removal== 13741 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #13741: origin
                    (not_at_c_p12)

                    ; #72905: origin
                    (at_c_p10)

                    ; #46790: <==negation-removal== 72905 (pos)
                    (not (not_at_c_p10))

                    ; #68740: <==negation-removal== 13741 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #13741: origin
                    (not_at_c_p12)

                    ; #15947: origin
                    (at_c_p11)

                    ; #34840: <==negation-removal== 15947 (pos)
                    (not (not_at_c_p11))

                    ; #68740: <==negation-removal== 13741 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #13741: origin
                    (not_at_c_p12)

                    ; #68740: origin
                    (at_c_p12)

                    ; #13741: <==negation-removal== 68740 (pos)
                    (not (not_at_c_p12))

                    ; #68740: <==negation-removal== 13741 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #13741: origin
                    (not_at_c_p12)

                    ; #41585: origin
                    (at_c_p2)

                    ; #10673: <==negation-removal== 41585 (pos)
                    (not (not_at_c_p2))

                    ; #68740: <==negation-removal== 13741 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #11358: origin
                    (at_c_p3)

                    ; #13741: origin
                    (not_at_c_p12)

                    ; #68740: <==negation-removal== 13741 (pos)
                    (not (at_c_p12))

                    ; #91040: <==negation-removal== 11358 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #13741: origin
                    (not_at_c_p12)

                    ; #75101: origin
                    (at_c_p4)

                    ; #68740: <==negation-removal== 13741 (pos)
                    (not (at_c_p12))

                    ; #88491: <==negation-removal== 75101 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #13741: origin
                    (not_at_c_p12)

                    ; #45187: origin
                    (at_c_p5)

                    ; #38383: <==negation-removal== 45187 (pos)
                    (not (not_at_c_p5))

                    ; #68740: <==negation-removal== 13741 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #11263: origin
                    (at_c_p6)

                    ; #13741: origin
                    (not_at_c_p12)

                    ; #59696: <==negation-removal== 11263 (pos)
                    (not (not_at_c_p6))

                    ; #68740: <==negation-removal== 13741 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #13741: origin
                    (not_at_c_p12)

                    ; #63604: origin
                    (at_c_p7)

                    ; #68740: <==negation-removal== 13741 (pos)
                    (not (at_c_p12))

                    ; #74263: <==negation-removal== 63604 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #13741: origin
                    (not_at_c_p12)

                    ; #35462: origin
                    (at_c_p8)

                    ; #58074: <==negation-removal== 35462 (pos)
                    (not (not_at_c_p8))

                    ; #68740: <==negation-removal== 13741 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #13741: origin
                    (not_at_c_p12)

                    ; #86953: origin
                    (at_c_p9)

                    ; #47864: <==negation-removal== 86953 (pos)
                    (not (not_at_c_p9))

                    ; #68740: <==negation-removal== 13741 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1)
                           (not (leader_c)))
        :effect (and
                    ; #41085: origin
                    (not_at_c_p1)

                    ; #87689: origin
                    (at_c_p1)

                    ; #41085: <==negation-removal== 87689 (pos)
                    (not (not_at_c_p1))

                    ; #87689: <==negation-removal== 41085 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10)
                           (not (leader_c)))
        :effect (and
                    ; #41085: origin
                    (not_at_c_p1)

                    ; #72905: origin
                    (at_c_p10)

                    ; #46790: <==negation-removal== 72905 (pos)
                    (not (not_at_c_p10))

                    ; #87689: <==negation-removal== 41085 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15947: origin
                    (at_c_p11)

                    ; #41085: origin
                    (not_at_c_p1)

                    ; #34840: <==negation-removal== 15947 (pos)
                    (not (not_at_c_p11))

                    ; #87689: <==negation-removal== 41085 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12)
                           (not (leader_c)))
        :effect (and
                    ; #41085: origin
                    (not_at_c_p1)

                    ; #68740: origin
                    (at_c_p12)

                    ; #13741: <==negation-removal== 68740 (pos)
                    (not (not_at_c_p12))

                    ; #87689: <==negation-removal== 41085 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2)
                           (not (leader_c)))
        :effect (and
                    ; #41085: origin
                    (not_at_c_p1)

                    ; #41585: origin
                    (at_c_p2)

                    ; #10673: <==negation-removal== 41585 (pos)
                    (not (not_at_c_p2))

                    ; #87689: <==negation-removal== 41085 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3)
                           (not (leader_c)))
        :effect (and
                    ; #11358: origin
                    (at_c_p3)

                    ; #41085: origin
                    (not_at_c_p1)

                    ; #87689: <==negation-removal== 41085 (pos)
                    (not (at_c_p1))

                    ; #91040: <==negation-removal== 11358 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4)
                           (not (leader_c)))
        :effect (and
                    ; #41085: origin
                    (not_at_c_p1)

                    ; #75101: origin
                    (at_c_p4)

                    ; #87689: <==negation-removal== 41085 (pos)
                    (not (at_c_p1))

                    ; #88491: <==negation-removal== 75101 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5)
                           (not (leader_c)))
        :effect (and
                    ; #41085: origin
                    (not_at_c_p1)

                    ; #45187: origin
                    (at_c_p5)

                    ; #38383: <==negation-removal== 45187 (pos)
                    (not (not_at_c_p5))

                    ; #87689: <==negation-removal== 41085 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6)
                           (not (leader_c)))
        :effect (and
                    ; #11263: origin
                    (at_c_p6)

                    ; #41085: origin
                    (not_at_c_p1)

                    ; #59696: <==negation-removal== 11263 (pos)
                    (not (not_at_c_p6))

                    ; #87689: <==negation-removal== 41085 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7)
                           (not (leader_c)))
        :effect (and
                    ; #41085: origin
                    (not_at_c_p1)

                    ; #63604: origin
                    (at_c_p7)

                    ; #74263: <==negation-removal== 63604 (pos)
                    (not (not_at_c_p7))

                    ; #87689: <==negation-removal== 41085 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8)
                           (not (leader_c)))
        :effect (and
                    ; #35462: origin
                    (at_c_p8)

                    ; #41085: origin
                    (not_at_c_p1)

                    ; #58074: <==negation-removal== 35462 (pos)
                    (not (not_at_c_p8))

                    ; #87689: <==negation-removal== 41085 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9)
                           (not (leader_c)))
        :effect (and
                    ; #41085: origin
                    (not_at_c_p1)

                    ; #86953: origin
                    (at_c_p9)

                    ; #47864: <==negation-removal== 86953 (pos)
                    (not (not_at_c_p9))

                    ; #87689: <==negation-removal== 41085 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #10673: origin
                    (not_at_c_p2)

                    ; #87689: origin
                    (at_c_p1)

                    ; #41085: <==negation-removal== 87689 (pos)
                    (not (not_at_c_p1))

                    ; #41585: <==negation-removal== 10673 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #10673: origin
                    (not_at_c_p2)

                    ; #72905: origin
                    (at_c_p10)

                    ; #41585: <==negation-removal== 10673 (pos)
                    (not (at_c_p2))

                    ; #46790: <==negation-removal== 72905 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (at_c_p2)
                           (succ_p2_p11)
                           (not (leader_c)))
        :effect (and
                    ; #10673: origin
                    (not_at_c_p2)

                    ; #15947: origin
                    (at_c_p11)

                    ; #34840: <==negation-removal== 15947 (pos)
                    (not (not_at_c_p11))

                    ; #41585: <==negation-removal== 10673 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12)
                           (not (leader_c)))
        :effect (and
                    ; #10673: origin
                    (not_at_c_p2)

                    ; #68740: origin
                    (at_c_p12)

                    ; #13741: <==negation-removal== 68740 (pos)
                    (not (not_at_c_p12))

                    ; #41585: <==negation-removal== 10673 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2)
                           (not (leader_c)))
        :effect (and
                    ; #10673: origin
                    (not_at_c_p2)

                    ; #41585: origin
                    (at_c_p2)

                    ; #10673: <==negation-removal== 41585 (pos)
                    (not (not_at_c_p2))

                    ; #41585: <==negation-removal== 10673 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10673: origin
                    (not_at_c_p2)

                    ; #11358: origin
                    (at_c_p3)

                    ; #41585: <==negation-removal== 10673 (pos)
                    (not (at_c_p2))

                    ; #91040: <==negation-removal== 11358 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #10673: origin
                    (not_at_c_p2)

                    ; #75101: origin
                    (at_c_p4)

                    ; #41585: <==negation-removal== 10673 (pos)
                    (not (at_c_p2))

                    ; #88491: <==negation-removal== 75101 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5)
                           (not (leader_c)))
        :effect (and
                    ; #10673: origin
                    (not_at_c_p2)

                    ; #45187: origin
                    (at_c_p5)

                    ; #38383: <==negation-removal== 45187 (pos)
                    (not (not_at_c_p5))

                    ; #41585: <==negation-removal== 10673 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #10673: origin
                    (not_at_c_p2)

                    ; #11263: origin
                    (at_c_p6)

                    ; #41585: <==negation-removal== 10673 (pos)
                    (not (at_c_p2))

                    ; #59696: <==negation-removal== 11263 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #10673: origin
                    (not_at_c_p2)

                    ; #63604: origin
                    (at_c_p7)

                    ; #41585: <==negation-removal== 10673 (pos)
                    (not (at_c_p2))

                    ; #74263: <==negation-removal== 63604 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8)
                           (not (leader_c)))
        :effect (and
                    ; #10673: origin
                    (not_at_c_p2)

                    ; #35462: origin
                    (at_c_p8)

                    ; #41585: <==negation-removal== 10673 (pos)
                    (not (at_c_p2))

                    ; #58074: <==negation-removal== 35462 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9)
                           (not (leader_c)))
        :effect (and
                    ; #10673: origin
                    (not_at_c_p2)

                    ; #86953: origin
                    (at_c_p9)

                    ; #41585: <==negation-removal== 10673 (pos)
                    (not (at_c_p2))

                    ; #47864: <==negation-removal== 86953 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1)
                           (not (leader_c)))
        :effect (and
                    ; #87689: origin
                    (at_c_p1)

                    ; #91040: origin
                    (not_at_c_p3)

                    ; #11358: <==negation-removal== 91040 (pos)
                    (not (at_c_p3))

                    ; #41085: <==negation-removal== 87689 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #72905: origin
                    (at_c_p10)

                    ; #91040: origin
                    (not_at_c_p3)

                    ; #11358: <==negation-removal== 91040 (pos)
                    (not (at_c_p3))

                    ; #46790: <==negation-removal== 72905 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15947: origin
                    (at_c_p11)

                    ; #91040: origin
                    (not_at_c_p3)

                    ; #11358: <==negation-removal== 91040 (pos)
                    (not (at_c_p3))

                    ; #34840: <==negation-removal== 15947 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12)
                           (not (leader_c)))
        :effect (and
                    ; #68740: origin
                    (at_c_p12)

                    ; #91040: origin
                    (not_at_c_p3)

                    ; #11358: <==negation-removal== 91040 (pos)
                    (not (at_c_p3))

                    ; #13741: <==negation-removal== 68740 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2)
                           (not (leader_c)))
        :effect (and
                    ; #41585: origin
                    (at_c_p2)

                    ; #91040: origin
                    (not_at_c_p3)

                    ; #10673: <==negation-removal== 41585 (pos)
                    (not (not_at_c_p2))

                    ; #11358: <==negation-removal== 91040 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3)
                           (not (leader_c)))
        :effect (and
                    ; #11358: origin
                    (at_c_p3)

                    ; #91040: origin
                    (not_at_c_p3)

                    ; #11358: <==negation-removal== 91040 (pos)
                    (not (at_c_p3))

                    ; #91040: <==negation-removal== 11358 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4)
                           (not (leader_c)))
        :effect (and
                    ; #75101: origin
                    (at_c_p4)

                    ; #91040: origin
                    (not_at_c_p3)

                    ; #11358: <==negation-removal== 91040 (pos)
                    (not (at_c_p3))

                    ; #88491: <==negation-removal== 75101 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5)
                           (not (leader_c)))
        :effect (and
                    ; #45187: origin
                    (at_c_p5)

                    ; #91040: origin
                    (not_at_c_p3)

                    ; #11358: <==negation-removal== 91040 (pos)
                    (not (at_c_p3))

                    ; #38383: <==negation-removal== 45187 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #11263: origin
                    (at_c_p6)

                    ; #91040: origin
                    (not_at_c_p3)

                    ; #11358: <==negation-removal== 91040 (pos)
                    (not (at_c_p3))

                    ; #59696: <==negation-removal== 11263 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #63604: origin
                    (at_c_p7)

                    ; #91040: origin
                    (not_at_c_p3)

                    ; #11358: <==negation-removal== 91040 (pos)
                    (not (at_c_p3))

                    ; #74263: <==negation-removal== 63604 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8)
                           (not (leader_c)))
        :effect (and
                    ; #35462: origin
                    (at_c_p8)

                    ; #91040: origin
                    (not_at_c_p3)

                    ; #11358: <==negation-removal== 91040 (pos)
                    (not (at_c_p3))

                    ; #58074: <==negation-removal== 35462 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #86953: origin
                    (at_c_p9)

                    ; #91040: origin
                    (not_at_c_p3)

                    ; #11358: <==negation-removal== 91040 (pos)
                    (not (at_c_p3))

                    ; #47864: <==negation-removal== 86953 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1)
                           (not (leader_c)))
        :effect (and
                    ; #87689: origin
                    (at_c_p1)

                    ; #88491: origin
                    (not_at_c_p4)

                    ; #41085: <==negation-removal== 87689 (pos)
                    (not (not_at_c_p1))

                    ; #75101: <==negation-removal== 88491 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #72905: origin
                    (at_c_p10)

                    ; #88491: origin
                    (not_at_c_p4)

                    ; #46790: <==negation-removal== 72905 (pos)
                    (not (not_at_c_p10))

                    ; #75101: <==negation-removal== 88491 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #15947: origin
                    (at_c_p11)

                    ; #88491: origin
                    (not_at_c_p4)

                    ; #34840: <==negation-removal== 15947 (pos)
                    (not (not_at_c_p11))

                    ; #75101: <==negation-removal== 88491 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #68740: origin
                    (at_c_p12)

                    ; #88491: origin
                    (not_at_c_p4)

                    ; #13741: <==negation-removal== 68740 (pos)
                    (not (not_at_c_p12))

                    ; #75101: <==negation-removal== 88491 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #41585: origin
                    (at_c_p2)

                    ; #88491: origin
                    (not_at_c_p4)

                    ; #10673: <==negation-removal== 41585 (pos)
                    (not (not_at_c_p2))

                    ; #75101: <==negation-removal== 88491 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #11358: origin
                    (at_c_p3)

                    ; #88491: origin
                    (not_at_c_p4)

                    ; #75101: <==negation-removal== 88491 (pos)
                    (not (at_c_p4))

                    ; #91040: <==negation-removal== 11358 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #75101: origin
                    (at_c_p4)

                    ; #88491: origin
                    (not_at_c_p4)

                    ; #75101: <==negation-removal== 88491 (pos)
                    (not (at_c_p4))

                    ; #88491: <==negation-removal== 75101 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #45187: origin
                    (at_c_p5)

                    ; #88491: origin
                    (not_at_c_p4)

                    ; #38383: <==negation-removal== 45187 (pos)
                    (not (not_at_c_p5))

                    ; #75101: <==negation-removal== 88491 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #11263: origin
                    (at_c_p6)

                    ; #88491: origin
                    (not_at_c_p4)

                    ; #59696: <==negation-removal== 11263 (pos)
                    (not (not_at_c_p6))

                    ; #75101: <==negation-removal== 88491 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #63604: origin
                    (at_c_p7)

                    ; #88491: origin
                    (not_at_c_p4)

                    ; #74263: <==negation-removal== 63604 (pos)
                    (not (not_at_c_p7))

                    ; #75101: <==negation-removal== 88491 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #35462: origin
                    (at_c_p8)

                    ; #88491: origin
                    (not_at_c_p4)

                    ; #58074: <==negation-removal== 35462 (pos)
                    (not (not_at_c_p8))

                    ; #75101: <==negation-removal== 88491 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9)
                           (not (leader_c)))
        :effect (and
                    ; #86953: origin
                    (at_c_p9)

                    ; #88491: origin
                    (not_at_c_p4)

                    ; #47864: <==negation-removal== 86953 (pos)
                    (not (not_at_c_p9))

                    ; #75101: <==negation-removal== 88491 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1)
                           (not (leader_c)))
        :effect (and
                    ; #38383: origin
                    (not_at_c_p5)

                    ; #87689: origin
                    (at_c_p1)

                    ; #41085: <==negation-removal== 87689 (pos)
                    (not (not_at_c_p1))

                    ; #45187: <==negation-removal== 38383 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #38383: origin
                    (not_at_c_p5)

                    ; #72905: origin
                    (at_c_p10)

                    ; #45187: <==negation-removal== 38383 (pos)
                    (not (at_c_p5))

                    ; #46790: <==negation-removal== 72905 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15947: origin
                    (at_c_p11)

                    ; #38383: origin
                    (not_at_c_p5)

                    ; #34840: <==negation-removal== 15947 (pos)
                    (not (not_at_c_p11))

                    ; #45187: <==negation-removal== 38383 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #38383: origin
                    (not_at_c_p5)

                    ; #68740: origin
                    (at_c_p12)

                    ; #13741: <==negation-removal== 68740 (pos)
                    (not (not_at_c_p12))

                    ; #45187: <==negation-removal== 38383 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2)
                           (not (leader_c)))
        :effect (and
                    ; #38383: origin
                    (not_at_c_p5)

                    ; #41585: origin
                    (at_c_p2)

                    ; #10673: <==negation-removal== 41585 (pos)
                    (not (not_at_c_p2))

                    ; #45187: <==negation-removal== 38383 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3)
                           (not (leader_c)))
        :effect (and
                    ; #11358: origin
                    (at_c_p3)

                    ; #38383: origin
                    (not_at_c_p5)

                    ; #45187: <==negation-removal== 38383 (pos)
                    (not (at_c_p5))

                    ; #91040: <==negation-removal== 11358 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #38383: origin
                    (not_at_c_p5)

                    ; #75101: origin
                    (at_c_p4)

                    ; #45187: <==negation-removal== 38383 (pos)
                    (not (at_c_p5))

                    ; #88491: <==negation-removal== 75101 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #38383: origin
                    (not_at_c_p5)

                    ; #45187: origin
                    (at_c_p5)

                    ; #38383: <==negation-removal== 45187 (pos)
                    (not (not_at_c_p5))

                    ; #45187: <==negation-removal== 38383 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6)
                           (not (leader_c)))
        :effect (and
                    ; #11263: origin
                    (at_c_p6)

                    ; #38383: origin
                    (not_at_c_p5)

                    ; #45187: <==negation-removal== 38383 (pos)
                    (not (at_c_p5))

                    ; #59696: <==negation-removal== 11263 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #38383: origin
                    (not_at_c_p5)

                    ; #63604: origin
                    (at_c_p7)

                    ; #45187: <==negation-removal== 38383 (pos)
                    (not (at_c_p5))

                    ; #74263: <==negation-removal== 63604 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8)
                           (not (leader_c)))
        :effect (and
                    ; #35462: origin
                    (at_c_p8)

                    ; #38383: origin
                    (not_at_c_p5)

                    ; #45187: <==negation-removal== 38383 (pos)
                    (not (at_c_p5))

                    ; #58074: <==negation-removal== 35462 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #38383: origin
                    (not_at_c_p5)

                    ; #86953: origin
                    (at_c_p9)

                    ; #45187: <==negation-removal== 38383 (pos)
                    (not (at_c_p5))

                    ; #47864: <==negation-removal== 86953 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #59696: origin
                    (not_at_c_p6)

                    ; #87689: origin
                    (at_c_p1)

                    ; #11263: <==negation-removal== 59696 (pos)
                    (not (at_c_p6))

                    ; #41085: <==negation-removal== 87689 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #59696: origin
                    (not_at_c_p6)

                    ; #72905: origin
                    (at_c_p10)

                    ; #11263: <==negation-removal== 59696 (pos)
                    (not (at_c_p6))

                    ; #46790: <==negation-removal== 72905 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #15947: origin
                    (at_c_p11)

                    ; #59696: origin
                    (not_at_c_p6)

                    ; #11263: <==negation-removal== 59696 (pos)
                    (not (at_c_p6))

                    ; #34840: <==negation-removal== 15947 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #59696: origin
                    (not_at_c_p6)

                    ; #68740: origin
                    (at_c_p12)

                    ; #11263: <==negation-removal== 59696 (pos)
                    (not (at_c_p6))

                    ; #13741: <==negation-removal== 68740 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #41585: origin
                    (at_c_p2)

                    ; #59696: origin
                    (not_at_c_p6)

                    ; #10673: <==negation-removal== 41585 (pos)
                    (not (not_at_c_p2))

                    ; #11263: <==negation-removal== 59696 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #11358: origin
                    (at_c_p3)

                    ; #59696: origin
                    (not_at_c_p6)

                    ; #11263: <==negation-removal== 59696 (pos)
                    (not (at_c_p6))

                    ; #91040: <==negation-removal== 11358 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #59696: origin
                    (not_at_c_p6)

                    ; #75101: origin
                    (at_c_p4)

                    ; #11263: <==negation-removal== 59696 (pos)
                    (not (at_c_p6))

                    ; #88491: <==negation-removal== 75101 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #45187: origin
                    (at_c_p5)

                    ; #59696: origin
                    (not_at_c_p6)

                    ; #11263: <==negation-removal== 59696 (pos)
                    (not (at_c_p6))

                    ; #38383: <==negation-removal== 45187 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #11263: origin
                    (at_c_p6)

                    ; #59696: origin
                    (not_at_c_p6)

                    ; #11263: <==negation-removal== 59696 (pos)
                    (not (at_c_p6))

                    ; #59696: <==negation-removal== 11263 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #59696: origin
                    (not_at_c_p6)

                    ; #63604: origin
                    (at_c_p7)

                    ; #11263: <==negation-removal== 59696 (pos)
                    (not (at_c_p6))

                    ; #74263: <==negation-removal== 63604 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #35462: origin
                    (at_c_p8)

                    ; #59696: origin
                    (not_at_c_p6)

                    ; #11263: <==negation-removal== 59696 (pos)
                    (not (at_c_p6))

                    ; #58074: <==negation-removal== 35462 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #59696: origin
                    (not_at_c_p6)

                    ; #86953: origin
                    (at_c_p9)

                    ; #11263: <==negation-removal== 59696 (pos)
                    (not (at_c_p6))

                    ; #47864: <==negation-removal== 86953 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #74263: origin
                    (not_at_c_p7)

                    ; #87689: origin
                    (at_c_p1)

                    ; #41085: <==negation-removal== 87689 (pos)
                    (not (not_at_c_p1))

                    ; #63604: <==negation-removal== 74263 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (at_c_p7)
                           (succ_p7_p10)
                           (not (leader_c)))
        :effect (and
                    ; #72905: origin
                    (at_c_p10)

                    ; #74263: origin
                    (not_at_c_p7)

                    ; #46790: <==negation-removal== 72905 (pos)
                    (not (not_at_c_p10))

                    ; #63604: <==negation-removal== 74263 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15947: origin
                    (at_c_p11)

                    ; #74263: origin
                    (not_at_c_p7)

                    ; #34840: <==negation-removal== 15947 (pos)
                    (not (not_at_c_p11))

                    ; #63604: <==negation-removal== 74263 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #68740: origin
                    (at_c_p12)

                    ; #74263: origin
                    (not_at_c_p7)

                    ; #13741: <==negation-removal== 68740 (pos)
                    (not (not_at_c_p12))

                    ; #63604: <==negation-removal== 74263 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2)
                           (not (leader_c)))
        :effect (and
                    ; #41585: origin
                    (at_c_p2)

                    ; #74263: origin
                    (not_at_c_p7)

                    ; #10673: <==negation-removal== 41585 (pos)
                    (not (not_at_c_p2))

                    ; #63604: <==negation-removal== 74263 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #11358: origin
                    (at_c_p3)

                    ; #74263: origin
                    (not_at_c_p7)

                    ; #63604: <==negation-removal== 74263 (pos)
                    (not (at_c_p7))

                    ; #91040: <==negation-removal== 11358 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #74263: origin
                    (not_at_c_p7)

                    ; #75101: origin
                    (at_c_p4)

                    ; #63604: <==negation-removal== 74263 (pos)
                    (not (at_c_p7))

                    ; #88491: <==negation-removal== 75101 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5)
                           (not (leader_c)))
        :effect (and
                    ; #45187: origin
                    (at_c_p5)

                    ; #74263: origin
                    (not_at_c_p7)

                    ; #38383: <==negation-removal== 45187 (pos)
                    (not (not_at_c_p5))

                    ; #63604: <==negation-removal== 74263 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #11263: origin
                    (at_c_p6)

                    ; #74263: origin
                    (not_at_c_p7)

                    ; #59696: <==negation-removal== 11263 (pos)
                    (not (not_at_c_p6))

                    ; #63604: <==negation-removal== 74263 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #63604: origin
                    (at_c_p7)

                    ; #74263: origin
                    (not_at_c_p7)

                    ; #63604: <==negation-removal== 74263 (pos)
                    (not (at_c_p7))

                    ; #74263: <==negation-removal== 63604 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8)
                           (not (leader_c)))
        :effect (and
                    ; #35462: origin
                    (at_c_p8)

                    ; #74263: origin
                    (not_at_c_p7)

                    ; #58074: <==negation-removal== 35462 (pos)
                    (not (not_at_c_p8))

                    ; #63604: <==negation-removal== 74263 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #74263: origin
                    (not_at_c_p7)

                    ; #86953: origin
                    (at_c_p9)

                    ; #47864: <==negation-removal== 86953 (pos)
                    (not (not_at_c_p9))

                    ; #63604: <==negation-removal== 74263 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1)
                           (not (leader_c)))
        :effect (and
                    ; #58074: origin
                    (not_at_c_p8)

                    ; #87689: origin
                    (at_c_p1)

                    ; #35462: <==negation-removal== 58074 (pos)
                    (not (at_c_p8))

                    ; #41085: <==negation-removal== 87689 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10)
                           (not (leader_c)))
        :effect (and
                    ; #58074: origin
                    (not_at_c_p8)

                    ; #72905: origin
                    (at_c_p10)

                    ; #35462: <==negation-removal== 58074 (pos)
                    (not (at_c_p8))

                    ; #46790: <==negation-removal== 72905 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #15947: origin
                    (at_c_p11)

                    ; #58074: origin
                    (not_at_c_p8)

                    ; #34840: <==negation-removal== 15947 (pos)
                    (not (not_at_c_p11))

                    ; #35462: <==negation-removal== 58074 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #58074: origin
                    (not_at_c_p8)

                    ; #68740: origin
                    (at_c_p12)

                    ; #13741: <==negation-removal== 68740 (pos)
                    (not (not_at_c_p12))

                    ; #35462: <==negation-removal== 58074 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2)
                           (not (leader_c)))
        :effect (and
                    ; #41585: origin
                    (at_c_p2)

                    ; #58074: origin
                    (not_at_c_p8)

                    ; #10673: <==negation-removal== 41585 (pos)
                    (not (not_at_c_p2))

                    ; #35462: <==negation-removal== 58074 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3)
                           (not (leader_c)))
        :effect (and
                    ; #11358: origin
                    (at_c_p3)

                    ; #58074: origin
                    (not_at_c_p8)

                    ; #35462: <==negation-removal== 58074 (pos)
                    (not (at_c_p8))

                    ; #91040: <==negation-removal== 11358 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4)
                           (not (leader_c)))
        :effect (and
                    ; #58074: origin
                    (not_at_c_p8)

                    ; #75101: origin
                    (at_c_p4)

                    ; #35462: <==negation-removal== 58074 (pos)
                    (not (at_c_p8))

                    ; #88491: <==negation-removal== 75101 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5)
                           (not (leader_c)))
        :effect (and
                    ; #45187: origin
                    (at_c_p5)

                    ; #58074: origin
                    (not_at_c_p8)

                    ; #35462: <==negation-removal== 58074 (pos)
                    (not (at_c_p8))

                    ; #38383: <==negation-removal== 45187 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6)
                           (not (leader_c)))
        :effect (and
                    ; #11263: origin
                    (at_c_p6)

                    ; #58074: origin
                    (not_at_c_p8)

                    ; #35462: <==negation-removal== 58074 (pos)
                    (not (at_c_p8))

                    ; #59696: <==negation-removal== 11263 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #58074: origin
                    (not_at_c_p8)

                    ; #63604: origin
                    (at_c_p7)

                    ; #35462: <==negation-removal== 58074 (pos)
                    (not (at_c_p8))

                    ; #74263: <==negation-removal== 63604 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8)
                           (not (leader_c)))
        :effect (and
                    ; #35462: origin
                    (at_c_p8)

                    ; #58074: origin
                    (not_at_c_p8)

                    ; #35462: <==negation-removal== 58074 (pos)
                    (not (at_c_p8))

                    ; #58074: <==negation-removal== 35462 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9)
                           (not (leader_c)))
        :effect (and
                    ; #58074: origin
                    (not_at_c_p8)

                    ; #86953: origin
                    (at_c_p9)

                    ; #35462: <==negation-removal== 58074 (pos)
                    (not (at_c_p8))

                    ; #47864: <==negation-removal== 86953 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1)
                           (not (leader_c)))
        :effect (and
                    ; #47864: origin
                    (not_at_c_p9)

                    ; #87689: origin
                    (at_c_p1)

                    ; #41085: <==negation-removal== 87689 (pos)
                    (not (not_at_c_p1))

                    ; #86953: <==negation-removal== 47864 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10)
                           (not (leader_c)))
        :effect (and
                    ; #47864: origin
                    (not_at_c_p9)

                    ; #72905: origin
                    (at_c_p10)

                    ; #46790: <==negation-removal== 72905 (pos)
                    (not (not_at_c_p10))

                    ; #86953: <==negation-removal== 47864 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (at_c_p9)
                           (succ_p9_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15947: origin
                    (at_c_p11)

                    ; #47864: origin
                    (not_at_c_p9)

                    ; #34840: <==negation-removal== 15947 (pos)
                    (not (not_at_c_p11))

                    ; #86953: <==negation-removal== 47864 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12)
                           (not (leader_c)))
        :effect (and
                    ; #47864: origin
                    (not_at_c_p9)

                    ; #68740: origin
                    (at_c_p12)

                    ; #13741: <==negation-removal== 68740 (pos)
                    (not (not_at_c_p12))

                    ; #86953: <==negation-removal== 47864 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2)
                           (not (leader_c)))
        :effect (and
                    ; #41585: origin
                    (at_c_p2)

                    ; #47864: origin
                    (not_at_c_p9)

                    ; #10673: <==negation-removal== 41585 (pos)
                    (not (not_at_c_p2))

                    ; #86953: <==negation-removal== 47864 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11358: origin
                    (at_c_p3)

                    ; #47864: origin
                    (not_at_c_p9)

                    ; #86953: <==negation-removal== 47864 (pos)
                    (not (at_c_p9))

                    ; #91040: <==negation-removal== 11358 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #47864: origin
                    (not_at_c_p9)

                    ; #75101: origin
                    (at_c_p4)

                    ; #86953: <==negation-removal== 47864 (pos)
                    (not (at_c_p9))

                    ; #88491: <==negation-removal== 75101 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5)
                           (not (leader_c)))
        :effect (and
                    ; #45187: origin
                    (at_c_p5)

                    ; #47864: origin
                    (not_at_c_p9)

                    ; #38383: <==negation-removal== 45187 (pos)
                    (not (not_at_c_p5))

                    ; #86953: <==negation-removal== 47864 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11263: origin
                    (at_c_p6)

                    ; #47864: origin
                    (not_at_c_p9)

                    ; #59696: <==negation-removal== 11263 (pos)
                    (not (not_at_c_p6))

                    ; #86953: <==negation-removal== 47864 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7)
                           (not (leader_c)))
        :effect (and
                    ; #47864: origin
                    (not_at_c_p9)

                    ; #63604: origin
                    (at_c_p7)

                    ; #74263: <==negation-removal== 63604 (pos)
                    (not (not_at_c_p7))

                    ; #86953: <==negation-removal== 47864 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #35462: origin
                    (at_c_p8)

                    ; #47864: origin
                    (not_at_c_p9)

                    ; #58074: <==negation-removal== 35462 (pos)
                    (not (not_at_c_p8))

                    ; #86953: <==negation-removal== 47864 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9)
                           (not (leader_c)))
        :effect (and
                    ; #47864: origin
                    (not_at_c_p9)

                    ; #86953: origin
                    (at_c_p9)

                    ; #47864: <==negation-removal== 86953 (pos)
                    (not (not_at_c_p9))

                    ; #86953: <==negation-removal== 47864 (pos)
                    (not (at_c_p9))))

    (:action observe_a_p10_s
        :precondition (and (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #20323: <==commonly_known== 77824 (pos)
                    (Bb_checked_p10)

                    ; #28283: <==closure== 35152 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #35152: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #35901: <==commonly_known== 69578 (neg)
                    (Pc_checked_p10)

                    ; #37090: <==commonly_known== 77824 (pos)
                    (Ba_checked_p10)

                    ; #47107: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #62560: <==commonly_known== 69578 (neg)
                    (Pa_checked_p10)

                    ; #66428: <==commonly_known== 77824 (pos)
                    (Bc_checked_p10)

                    ; #77433: <==closure== 47107 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #77824: origin
                    (checked_p10)

                    ; #81158: <==commonly_known== 69578 (neg)
                    (Pb_checked_p10)

                    ; #24866: <==negation-removal== 62560 (pos)
                    (not (Ba_not_checked_p10))

                    ; #31110: <==uncertain_firing== 35152 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #42838: <==negation-removal== 77433 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #56642: <==negation-removal== 37090 (pos)
                    (not (Pa_not_checked_p10))

                    ; #57714: <==negation-removal== 66428 (pos)
                    (not (Pc_not_checked_p10))

                    ; #59924: <==uncertain_firing== 47107 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #62528: <==uncertain_firing== 28283 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #63790: <==negation-removal== 81158 (pos)
                    (not (Bb_not_checked_p10))

                    ; #64498: <==negation-removal== 35901 (pos)
                    (not (Bc_not_checked_p10))

                    ; #67462: <==negation-removal== 28283 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #69578: <==negation-removal== 77824 (pos)
                    (not (not_checked_p10))

                    ; #77123: <==negation-removal== 47107 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #81729: <==negation-removal== 35152 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #88880: <==negation-removal== 20323 (pos)
                    (not (Pb_not_checked_p10))

                    ; #91515: <==uncertain_firing== 77433 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))))

    (:action observe_a_p11_s
        :precondition (and (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #14463: <==commonly_known== 31029 (neg)
                    (Pb_checked_p11)

                    ; #16172: <==commonly_known== 31029 (neg)
                    (Pc_checked_p11)

                    ; #20318: <==commonly_known== 86226 (pos)
                    (Bc_checked_p11)

                    ; #25304: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #31767: <==commonly_known== 86226 (pos)
                    (Bb_checked_p11)

                    ; #49268: <==commonly_known== 31029 (neg)
                    (Pa_checked_p11)

                    ; #50551: <==closure== 25304 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #58993: <==closure== 80799 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #80799: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #86226: origin
                    (checked_p11)

                    ; #88081: <==commonly_known== 86226 (pos)
                    (Ba_checked_p11)

                    ; #15348: <==uncertain_firing== 80799 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #16397: <==negation-removal== 58993 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #17794: <==negation-removal== 20318 (pos)
                    (not (Pc_not_checked_p11))

                    ; #27809: <==negation-removal== 25304 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #31029: <==negation-removal== 86226 (pos)
                    (not (not_checked_p11))

                    ; #36878: <==negation-removal== 14463 (pos)
                    (not (Bb_not_checked_p11))

                    ; #39247: <==uncertain_firing== 25304 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #48958: <==negation-removal== 50551 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #56447: <==negation-removal== 88081 (pos)
                    (not (Pa_not_checked_p11))

                    ; #56586: <==negation-removal== 49268 (pos)
                    (not (Ba_not_checked_p11))

                    ; #56693: <==negation-removal== 16172 (pos)
                    (not (Bc_not_checked_p11))

                    ; #57972: <==negation-removal== 80799 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #71125: <==negation-removal== 31767 (pos)
                    (not (Pb_not_checked_p11))

                    ; #72531: <==uncertain_firing== 58993 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #72702: <==uncertain_firing== 50551 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))))

    (:action observe_a_p12_s
        :precondition (and (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #15009: <==commonly_known== 83395 (pos)
                    (Bb_checked_p12)

                    ; #22695: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #37772: <==commonly_known== 83395 (pos)
                    (Bc_checked_p12)

                    ; #42194: <==commonly_known== 68478 (neg)
                    (Pc_checked_p12)

                    ; #48726: <==commonly_known== 68478 (neg)
                    (Pa_checked_p12)

                    ; #52004: <==closure== 55418 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #55418: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #61392: <==commonly_known== 83395 (pos)
                    (Ba_checked_p12)

                    ; #75064: <==closure== 22695 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #83395: origin
                    (checked_p12)

                    ; #83787: <==commonly_known== 68478 (neg)
                    (Pb_checked_p12)

                    ; #11207: <==negation-removal== 15009 (pos)
                    (not (Pb_not_checked_p12))

                    ; #12455: <==uncertain_firing== 75064 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #15032: <==negation-removal== 48726 (pos)
                    (not (Ba_not_checked_p12))

                    ; #16414: <==negation-removal== 61392 (pos)
                    (not (Pa_not_checked_p12))

                    ; #22898: <==uncertain_firing== 22695 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #27547: <==negation-removal== 83787 (pos)
                    (not (Bb_not_checked_p12))

                    ; #27774: <==negation-removal== 37772 (pos)
                    (not (Pc_not_checked_p12))

                    ; #32402: <==negation-removal== 22695 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #48026: <==negation-removal== 55418 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #49268: <==uncertain_firing== 52004 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #53321: <==negation-removal== 75064 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #55574: <==negation-removal== 42194 (pos)
                    (not (Bc_not_checked_p12))

                    ; #68478: <==negation-removal== 83395 (pos)
                    (not (not_checked_p12))

                    ; #68967: <==negation-removal== 52004 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #76744: <==uncertain_firing== 55418 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #22272: origin
                    (checked_p1)

                    ; #39437: <==closure== 64725 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #40680: <==commonly_known== 22272 (pos)
                    (Ba_checked_p1)

                    ; #41711: <==commonly_known== 82312 (neg)
                    (Pa_checked_p1)

                    ; #51659: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #56369: <==commonly_known== 22272 (pos)
                    (Bc_checked_p1)

                    ; #59137: <==commonly_known== 82312 (neg)
                    (Pb_checked_p1)

                    ; #64725: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #81611: <==commonly_known== 22272 (pos)
                    (Bb_checked_p1)

                    ; #81625: <==closure== 51659 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #88065: <==commonly_known== 82312 (neg)
                    (Pc_checked_p1)

                    ; #10424: <==negation-removal== 41711 (pos)
                    (not (Ba_not_checked_p1))

                    ; #12542: <==uncertain_firing== 81625 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #14599: <==negation-removal== 81625 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #15148: <==negation-removal== 88065 (pos)
                    (not (Bc_not_checked_p1))

                    ; #25917: <==negation-removal== 40680 (pos)
                    (not (Pa_not_checked_p1))

                    ; #41273: <==negation-removal== 51659 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #42953: <==uncertain_firing== 39437 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #58902: <==uncertain_firing== 64725 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #69474: <==negation-removal== 56369 (pos)
                    (not (Pc_not_checked_p1))

                    ; #72114: <==negation-removal== 81611 (pos)
                    (not (Pb_not_checked_p1))

                    ; #81372: <==negation-removal== 39437 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #82312: <==negation-removal== 22272 (pos)
                    (not (not_checked_p1))

                    ; #84058: <==negation-removal== 64725 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #90083: <==negation-removal== 59137 (pos)
                    (not (Bb_not_checked_p1))

                    ; #91028: <==uncertain_firing== 51659 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #21119: <==commonly_known== 69722 (neg)
                    (Pb_checked_p2)

                    ; #28688: <==commonly_known== 41471 (pos)
                    (Bb_checked_p2)

                    ; #39076: <==commonly_known== 41471 (pos)
                    (Ba_checked_p2)

                    ; #41471: origin
                    (checked_p2)

                    ; #42010: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #47898: <==commonly_known== 41471 (pos)
                    (Bc_checked_p2)

                    ; #49434: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #63349: <==closure== 49434 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #72125: <==closure== 42010 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #81848: <==commonly_known== 69722 (neg)
                    (Pc_checked_p2)

                    ; #82434: <==commonly_known== 69722 (neg)
                    (Pa_checked_p2)

                    ; #14920: <==negation-removal== 47898 (pos)
                    (not (Pc_not_checked_p2))

                    ; #18720: <==negation-removal== 42010 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #27426: <==negation-removal== 49434 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #29555: <==negation-removal== 21119 (pos)
                    (not (Bb_not_checked_p2))

                    ; #42512: <==negation-removal== 39076 (pos)
                    (not (Pa_not_checked_p2))

                    ; #46142: <==uncertain_firing== 49434 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #46504: <==negation-removal== 28688 (pos)
                    (not (Pb_not_checked_p2))

                    ; #54751: <==uncertain_firing== 72125 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #56934: <==negation-removal== 72125 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #65403: <==uncertain_firing== 42010 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #69722: <==negation-removal== 41471 (pos)
                    (not (not_checked_p2))

                    ; #71152: <==negation-removal== 63349 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #74907: <==negation-removal== 81848 (pos)
                    (not (Bc_not_checked_p2))

                    ; #87848: <==uncertain_firing== 63349 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #91329: <==negation-removal== 82434 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #10939: <==commonly_known== 88457 (neg)
                    (Pc_checked_p3)

                    ; #11639: <==commonly_known== 33733 (pos)
                    (Ba_checked_p3)

                    ; #27670: <==commonly_known== 88457 (neg)
                    (Pb_checked_p3)

                    ; #33733: origin
                    (checked_p3)

                    ; #39142: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #44125: <==commonly_known== 88457 (neg)
                    (Pa_checked_p3)

                    ; #57342: <==commonly_known== 33733 (pos)
                    (Bc_checked_p3)

                    ; #62334: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #64881: <==closure== 39142 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #88192: <==closure== 62334 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #91013: <==commonly_known== 33733 (pos)
                    (Bb_checked_p3)

                    ; #10541: <==uncertain_firing== 62334 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #16898: <==negation-removal== 62334 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #19213: <==negation-removal== 44125 (pos)
                    (not (Ba_not_checked_p3))

                    ; #28508: <==uncertain_firing== 88192 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #31078: <==negation-removal== 64881 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #44733: <==negation-removal== 88192 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #49867: <==negation-removal== 91013 (pos)
                    (not (Pb_not_checked_p3))

                    ; #50872: <==negation-removal== 27670 (pos)
                    (not (Bb_not_checked_p3))

                    ; #53872: <==negation-removal== 57342 (pos)
                    (not (Pc_not_checked_p3))

                    ; #58063: <==negation-removal== 10939 (pos)
                    (not (Bc_not_checked_p3))

                    ; #66783: <==uncertain_firing== 64881 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #84481: <==negation-removal== 11639 (pos)
                    (not (Pa_not_checked_p3))

                    ; #85414: <==negation-removal== 39142 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #86089: <==uncertain_firing== 39142 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #88457: <==negation-removal== 33733 (pos)
                    (not (not_checked_p3))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #12851: <==commonly_known== 90628 (neg)
                    (Pa_checked_p4)

                    ; #21354: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #30188: <==closure== 21354 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #39397: <==commonly_known== 90628 (neg)
                    (Pb_checked_p4)

                    ; #41287: <==commonly_known== 90628 (neg)
                    (Pc_checked_p4)

                    ; #68438: <==closure== 73299 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #73299: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #75311: <==commonly_known== 88387 (pos)
                    (Bb_checked_p4)

                    ; #77967: <==commonly_known== 88387 (pos)
                    (Ba_checked_p4)

                    ; #88387: origin
                    (checked_p4)

                    ; #88978: <==commonly_known== 88387 (pos)
                    (Bc_checked_p4)

                    ; #22393: <==negation-removal== 88978 (pos)
                    (not (Pc_not_checked_p4))

                    ; #38033: <==negation-removal== 73299 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #43821: <==uncertain_firing== 30188 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #52612: <==negation-removal== 41287 (pos)
                    (not (Bc_not_checked_p4))

                    ; #58858: <==uncertain_firing== 21354 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #61425: <==uncertain_firing== 73299 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #61988: <==negation-removal== 21354 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #63252: <==negation-removal== 77967 (pos)
                    (not (Pa_not_checked_p4))

                    ; #64970: <==negation-removal== 39397 (pos)
                    (not (Bb_not_checked_p4))

                    ; #66304: <==negation-removal== 30188 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #66321: <==negation-removal== 75311 (pos)
                    (not (Pb_not_checked_p4))

                    ; #69264: <==negation-removal== 12851 (pos)
                    (not (Ba_not_checked_p4))

                    ; #70572: <==negation-removal== 68438 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #90628: <==negation-removal== 88387 (pos)
                    (not (not_checked_p4))

                    ; #92158: <==uncertain_firing== 68438 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #20181: origin
                    (checked_p5)

                    ; #23569: <==commonly_known== 20181 (pos)
                    (Ba_checked_p5)

                    ; #40314: <==closure== 64225 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #44778: <==closure== 91367 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #47759: <==commonly_known== 20181 (pos)
                    (Bb_checked_p5)

                    ; #56399: <==commonly_known== 20181 (pos)
                    (Bc_checked_p5)

                    ; #64225: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #73099: <==commonly_known== 66335 (neg)
                    (Pa_checked_p5)

                    ; #77507: <==commonly_known== 66335 (neg)
                    (Pb_checked_p5)

                    ; #89475: <==commonly_known== 66335 (neg)
                    (Pc_checked_p5)

                    ; #91367: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #10172: <==negation-removal== 77507 (pos)
                    (not (Bb_not_checked_p5))

                    ; #12553: <==uncertain_firing== 40314 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #15026: <==uncertain_firing== 91367 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #19820: <==negation-removal== 91367 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #22757: <==negation-removal== 23569 (pos)
                    (not (Pa_not_checked_p5))

                    ; #39996: <==negation-removal== 47759 (pos)
                    (not (Pb_not_checked_p5))

                    ; #55170: <==negation-removal== 40314 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #62410: <==negation-removal== 64225 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #62597: <==uncertain_firing== 44778 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #64280: <==negation-removal== 73099 (pos)
                    (not (Ba_not_checked_p5))

                    ; #64289: <==negation-removal== 44778 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #66335: <==negation-removal== 20181 (pos)
                    (not (not_checked_p5))

                    ; #81751: <==negation-removal== 56399 (pos)
                    (not (Pc_not_checked_p5))

                    ; #86218: <==negation-removal== 89475 (pos)
                    (not (Bc_not_checked_p5))

                    ; #91090: <==uncertain_firing== 64225 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #22530: <==commonly_known== 87948 (pos)
                    (Bb_checked_p6)

                    ; #35250: <==closure== 71833 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #39718: <==commonly_known== 72522 (neg)
                    (Pb_checked_p6)

                    ; #41598: <==closure== 85605 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #42245: <==commonly_known== 87948 (pos)
                    (Ba_checked_p6)

                    ; #43938: <==commonly_known== 72522 (neg)
                    (Pa_checked_p6)

                    ; #64065: <==commonly_known== 72522 (neg)
                    (Pc_checked_p6)

                    ; #71833: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #72303: <==commonly_known== 87948 (pos)
                    (Bc_checked_p6)

                    ; #85605: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #87948: origin
                    (checked_p6)

                    ; #11419: <==uncertain_firing== 41598 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #13475: <==negation-removal== 71833 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #33049: <==negation-removal== 22530 (pos)
                    (not (Pb_not_checked_p6))

                    ; #35623: <==negation-removal== 39718 (pos)
                    (not (Bb_not_checked_p6))

                    ; #38337: <==negation-removal== 85605 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #38680: <==uncertain_firing== 35250 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #47745: <==negation-removal== 43938 (pos)
                    (not (Ba_not_checked_p6))

                    ; #49405: <==negation-removal== 64065 (pos)
                    (not (Bc_not_checked_p6))

                    ; #60021: <==negation-removal== 35250 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #68486: <==uncertain_firing== 71833 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #72522: <==negation-removal== 87948 (pos)
                    (not (not_checked_p6))

                    ; #76909: <==negation-removal== 42245 (pos)
                    (not (Pa_not_checked_p6))

                    ; #77001: <==negation-removal== 41598 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #79094: <==negation-removal== 72303 (pos)
                    (not (Pc_not_checked_p6))

                    ; #98853: <==uncertain_firing== 85605 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #26679: <==closure== 60446 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #29781: <==closure== 31245 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #31245: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #41637: origin
                    (checked_p7)

                    ; #45927: <==commonly_known== 41637 (pos)
                    (Bc_checked_p7)

                    ; #53715: <==commonly_known== 41637 (pos)
                    (Bb_checked_p7)

                    ; #60446: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #70182: <==commonly_known== 32005 (neg)
                    (Pa_checked_p7)

                    ; #70525: <==commonly_known== 32005 (neg)
                    (Pb_checked_p7)

                    ; #77757: <==commonly_known== 41637 (pos)
                    (Ba_checked_p7)

                    ; #80292: <==commonly_known== 32005 (neg)
                    (Pc_checked_p7)

                    ; #24152: <==uncertain_firing== 60446 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #32005: <==negation-removal== 41637 (pos)
                    (not (not_checked_p7))

                    ; #34810: <==negation-removal== 70182 (pos)
                    (not (Ba_not_checked_p7))

                    ; #37218: <==negation-removal== 70525 (pos)
                    (not (Bb_not_checked_p7))

                    ; #40449: <==negation-removal== 80292 (pos)
                    (not (Bc_not_checked_p7))

                    ; #48160: <==negation-removal== 26679 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #50234: <==negation-removal== 45927 (pos)
                    (not (Pc_not_checked_p7))

                    ; #51716: <==negation-removal== 31245 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #66633: <==uncertain_firing== 26679 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #67271: <==uncertain_firing== 29781 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #68713: <==negation-removal== 29781 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #69297: <==uncertain_firing== 31245 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #74986: <==negation-removal== 53715 (pos)
                    (not (Pb_not_checked_p7))

                    ; #81689: <==negation-removal== 60446 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #88754: <==negation-removal== 77757 (pos)
                    (not (Pa_not_checked_p7))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #30654: <==commonly_known== 57503 (pos)
                    (Bc_checked_p8)

                    ; #33189: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #34685: <==commonly_known== 21517 (neg)
                    (Pa_checked_p8)

                    ; #40213: <==closure== 57951 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #45172: <==commonly_known== 21517 (neg)
                    (Pc_checked_p8)

                    ; #57095: <==closure== 33189 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #57503: origin
                    (checked_p8)

                    ; #57951: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #74904: <==commonly_known== 57503 (pos)
                    (Bb_checked_p8)

                    ; #76536: <==commonly_known== 57503 (pos)
                    (Ba_checked_p8)

                    ; #88432: <==commonly_known== 21517 (neg)
                    (Pb_checked_p8)

                    ; #17500: <==uncertain_firing== 33189 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #21517: <==negation-removal== 57503 (pos)
                    (not (not_checked_p8))

                    ; #26633: <==negation-removal== 33189 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #33269: <==negation-removal== 40213 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #33934: <==uncertain_firing== 57951 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #37978: <==uncertain_firing== 57095 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #42932: <==negation-removal== 30654 (pos)
                    (not (Pc_not_checked_p8))

                    ; #72959: <==negation-removal== 34685 (pos)
                    (not (Ba_not_checked_p8))

                    ; #77313: <==negation-removal== 57951 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #78271: <==negation-removal== 88432 (pos)
                    (not (Bb_not_checked_p8))

                    ; #78441: <==uncertain_firing== 40213 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #79924: <==negation-removal== 45172 (pos)
                    (not (Bc_not_checked_p8))

                    ; #80559: <==negation-removal== 74904 (pos)
                    (not (Pb_not_checked_p8))

                    ; #82120: <==negation-removal== 57095 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #90476: <==negation-removal== 76536 (pos)
                    (not (Pa_not_checked_p8))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11030: origin
                    (checked_p9)

                    ; #41252: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #42920: <==commonly_known== 14679 (neg)
                    (Pa_checked_p9)

                    ; #44557: <==closure== 48280 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #45991: <==closure== 41252 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #46307: <==commonly_known== 11030 (pos)
                    (Ba_checked_p9)

                    ; #48280: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #50745: <==commonly_known== 14679 (neg)
                    (Pc_checked_p9)

                    ; #62000: <==commonly_known== 14679 (neg)
                    (Pb_checked_p9)

                    ; #70076: <==commonly_known== 11030 (pos)
                    (Bc_checked_p9)

                    ; #87584: <==commonly_known== 11030 (pos)
                    (Bb_checked_p9)

                    ; #14679: <==negation-removal== 11030 (pos)
                    (not (not_checked_p9))

                    ; #19913: <==uncertain_firing== 44557 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #36302: <==negation-removal== 87584 (pos)
                    (not (Pb_not_checked_p9))

                    ; #41799: <==negation-removal== 44557 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #46475: <==negation-removal== 70076 (pos)
                    (not (Pc_not_checked_p9))

                    ; #52339: <==negation-removal== 62000 (pos)
                    (not (Bb_not_checked_p9))

                    ; #53676: <==negation-removal== 42920 (pos)
                    (not (Ba_not_checked_p9))

                    ; #63793: <==negation-removal== 46307 (pos)
                    (not (Pa_not_checked_p9))

                    ; #65930: <==uncertain_firing== 45991 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #67248: <==uncertain_firing== 41252 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #69131: <==negation-removal== 48280 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #72877: <==negation-removal== 45991 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #75307: <==negation-removal== 50745 (pos)
                    (not (Bc_not_checked_p9))

                    ; #80605: <==uncertain_firing== 48280 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #84895: <==negation-removal== 41252 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action observe_b_p10_s
        :precondition (and (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #14045: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #17837: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #20323: <==commonly_known== 77824 (pos)
                    (Bb_checked_p10)

                    ; #35901: <==commonly_known== 69578 (neg)
                    (Pc_checked_p10)

                    ; #37090: <==commonly_known== 77824 (pos)
                    (Ba_checked_p10)

                    ; #60347: <==closure== 17837 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #62560: <==commonly_known== 69578 (neg)
                    (Pa_checked_p10)

                    ; #66428: <==commonly_known== 77824 (pos)
                    (Bc_checked_p10)

                    ; #72124: <==closure== 14045 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #77824: origin
                    (checked_p10)

                    ; #81158: <==commonly_known== 69578 (neg)
                    (Pb_checked_p10)

                    ; #24866: <==negation-removal== 62560 (pos)
                    (not (Ba_not_checked_p10))

                    ; #25437: <==uncertain_firing== 17837 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #28754: <==negation-removal== 14045 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #34079: <==uncertain_firing== 14045 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #43267: <==negation-removal== 60347 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #47584: <==uncertain_firing== 72124 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #50595: <==negation-removal== 17837 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #56642: <==negation-removal== 37090 (pos)
                    (not (Pa_not_checked_p10))

                    ; #57714: <==negation-removal== 66428 (pos)
                    (not (Pc_not_checked_p10))

                    ; #63790: <==negation-removal== 81158 (pos)
                    (not (Bb_not_checked_p10))

                    ; #64498: <==negation-removal== 35901 (pos)
                    (not (Bc_not_checked_p10))

                    ; #66392: <==negation-removal== 72124 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #69578: <==negation-removal== 77824 (pos)
                    (not (not_checked_p10))

                    ; #88880: <==negation-removal== 20323 (pos)
                    (not (Pb_not_checked_p10))

                    ; #90728: <==uncertain_firing== 60347 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))))

    (:action observe_b_p11_s
        :precondition (and (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #12226: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #14463: <==commonly_known== 31029 (neg)
                    (Pb_checked_p11)

                    ; #16172: <==commonly_known== 31029 (neg)
                    (Pc_checked_p11)

                    ; #20318: <==commonly_known== 86226 (pos)
                    (Bc_checked_p11)

                    ; #21410: <==closure== 78798 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #31767: <==commonly_known== 86226 (pos)
                    (Bb_checked_p11)

                    ; #49268: <==commonly_known== 31029 (neg)
                    (Pa_checked_p11)

                    ; #57851: <==closure== 12226 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #78798: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #86226: origin
                    (checked_p11)

                    ; #88081: <==commonly_known== 86226 (pos)
                    (Ba_checked_p11)

                    ; #16365: <==uncertain_firing== 78798 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #17794: <==negation-removal== 20318 (pos)
                    (not (Pc_not_checked_p11))

                    ; #23853: <==negation-removal== 57851 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #31029: <==negation-removal== 86226 (pos)
                    (not (not_checked_p11))

                    ; #36878: <==negation-removal== 14463 (pos)
                    (not (Bb_not_checked_p11))

                    ; #53373: <==negation-removal== 78798 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #56447: <==negation-removal== 88081 (pos)
                    (not (Pa_not_checked_p11))

                    ; #56586: <==negation-removal== 49268 (pos)
                    (not (Ba_not_checked_p11))

                    ; #56693: <==negation-removal== 16172 (pos)
                    (not (Bc_not_checked_p11))

                    ; #61717: <==uncertain_firing== 12226 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #71125: <==negation-removal== 31767 (pos)
                    (not (Pb_not_checked_p11))

                    ; #71320: <==negation-removal== 21410 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #79938: <==uncertain_firing== 57851 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #81271: <==uncertain_firing== 21410 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #90763: <==negation-removal== 12226 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))))

    (:action observe_b_p12_s
        :precondition (and (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #15009: <==commonly_known== 83395 (pos)
                    (Bb_checked_p12)

                    ; #37772: <==commonly_known== 83395 (pos)
                    (Bc_checked_p12)

                    ; #42194: <==commonly_known== 68478 (neg)
                    (Pc_checked_p12)

                    ; #48726: <==commonly_known== 68478 (neg)
                    (Pa_checked_p12)

                    ; #48987: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #50840: <==closure== 96593 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #61392: <==commonly_known== 83395 (pos)
                    (Ba_checked_p12)

                    ; #66965: <==closure== 48987 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #83395: origin
                    (checked_p12)

                    ; #83787: <==commonly_known== 68478 (neg)
                    (Pb_checked_p12)

                    ; #96593: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #11207: <==negation-removal== 15009 (pos)
                    (not (Pb_not_checked_p12))

                    ; #15032: <==negation-removal== 48726 (pos)
                    (not (Ba_not_checked_p12))

                    ; #16414: <==negation-removal== 61392 (pos)
                    (not (Pa_not_checked_p12))

                    ; #17656: <==uncertain_firing== 66965 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #19301: <==negation-removal== 96593 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #27547: <==negation-removal== 83787 (pos)
                    (not (Bb_not_checked_p12))

                    ; #27774: <==negation-removal== 37772 (pos)
                    (not (Pc_not_checked_p12))

                    ; #45240: <==negation-removal== 48987 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #46421: <==negation-removal== 66965 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #55574: <==negation-removal== 42194 (pos)
                    (not (Bc_not_checked_p12))

                    ; #56638: <==uncertain_firing== 48987 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #68478: <==negation-removal== 83395 (pos)
                    (not (not_checked_p12))

                    ; #84310: <==uncertain_firing== 96593 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #85322: <==uncertain_firing== 50840 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #90858: <==negation-removal== 50840 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #12272: <==closure== 85636 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #22272: origin
                    (checked_p1)

                    ; #40680: <==commonly_known== 22272 (pos)
                    (Ba_checked_p1)

                    ; #41711: <==commonly_known== 82312 (neg)
                    (Pa_checked_p1)

                    ; #56369: <==commonly_known== 22272 (pos)
                    (Bc_checked_p1)

                    ; #59137: <==commonly_known== 82312 (neg)
                    (Pb_checked_p1)

                    ; #66603: <==closure== 86982 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #81611: <==commonly_known== 22272 (pos)
                    (Bb_checked_p1)

                    ; #85636: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #86982: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #88065: <==commonly_known== 82312 (neg)
                    (Pc_checked_p1)

                    ; #10424: <==negation-removal== 41711 (pos)
                    (not (Ba_not_checked_p1))

                    ; #12946: <==negation-removal== 66603 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #15148: <==negation-removal== 88065 (pos)
                    (not (Bc_not_checked_p1))

                    ; #25917: <==negation-removal== 40680 (pos)
                    (not (Pa_not_checked_p1))

                    ; #35593: <==uncertain_firing== 12272 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #45232: <==uncertain_firing== 66603 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #58150: <==uncertain_firing== 86982 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #59221: <==negation-removal== 12272 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #60229: <==negation-removal== 86982 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #69474: <==negation-removal== 56369 (pos)
                    (not (Pc_not_checked_p1))

                    ; #70096: <==uncertain_firing== 85636 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #71669: <==negation-removal== 85636 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #72114: <==negation-removal== 81611 (pos)
                    (not (Pb_not_checked_p1))

                    ; #82312: <==negation-removal== 22272 (pos)
                    (not (not_checked_p1))

                    ; #90083: <==negation-removal== 59137 (pos)
                    (not (Bb_not_checked_p1))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #14104: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #15714: <==closure== 61100 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #21119: <==commonly_known== 69722 (neg)
                    (Pb_checked_p2)

                    ; #28688: <==commonly_known== 41471 (pos)
                    (Bb_checked_p2)

                    ; #39076: <==commonly_known== 41471 (pos)
                    (Ba_checked_p2)

                    ; #41471: origin
                    (checked_p2)

                    ; #47898: <==commonly_known== 41471 (pos)
                    (Bc_checked_p2)

                    ; #61100: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #81848: <==commonly_known== 69722 (neg)
                    (Pc_checked_p2)

                    ; #82434: <==commonly_known== 69722 (neg)
                    (Pa_checked_p2)

                    ; #92082: <==closure== 14104 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #12102: <==negation-removal== 15714 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #14920: <==negation-removal== 47898 (pos)
                    (not (Pc_not_checked_p2))

                    ; #29555: <==negation-removal== 21119 (pos)
                    (not (Bb_not_checked_p2))

                    ; #42512: <==negation-removal== 39076 (pos)
                    (not (Pa_not_checked_p2))

                    ; #45462: <==uncertain_firing== 14104 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #46504: <==negation-removal== 28688 (pos)
                    (not (Pb_not_checked_p2))

                    ; #65312: <==negation-removal== 92082 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #68841: <==uncertain_firing== 61100 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #68867: <==uncertain_firing== 15714 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #69722: <==negation-removal== 41471 (pos)
                    (not (not_checked_p2))

                    ; #70329: <==uncertain_firing== 92082 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #73044: <==negation-removal== 14104 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #74907: <==negation-removal== 81848 (pos)
                    (not (Bc_not_checked_p2))

                    ; #82261: <==negation-removal== 61100 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #91329: <==negation-removal== 82434 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #10939: <==commonly_known== 88457 (neg)
                    (Pc_checked_p3)

                    ; #11639: <==commonly_known== 33733 (pos)
                    (Ba_checked_p3)

                    ; #15673: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #27670: <==commonly_known== 88457 (neg)
                    (Pb_checked_p3)

                    ; #33733: origin
                    (checked_p3)

                    ; #40965: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #44125: <==commonly_known== 88457 (neg)
                    (Pa_checked_p3)

                    ; #57342: <==commonly_known== 33733 (pos)
                    (Bc_checked_p3)

                    ; #64758: <==closure== 40965 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #86732: <==closure== 15673 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #91013: <==commonly_known== 33733 (pos)
                    (Bb_checked_p3)

                    ; #19213: <==negation-removal== 44125 (pos)
                    (not (Ba_not_checked_p3))

                    ; #22616: <==negation-removal== 40965 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #31480: <==negation-removal== 86732 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #40510: <==uncertain_firing== 15673 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #46443: <==negation-removal== 64758 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #49867: <==negation-removal== 91013 (pos)
                    (not (Pb_not_checked_p3))

                    ; #50872: <==negation-removal== 27670 (pos)
                    (not (Bb_not_checked_p3))

                    ; #53872: <==negation-removal== 57342 (pos)
                    (not (Pc_not_checked_p3))

                    ; #58063: <==negation-removal== 10939 (pos)
                    (not (Bc_not_checked_p3))

                    ; #78932: <==uncertain_firing== 40965 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #80887: <==negation-removal== 15673 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #84481: <==negation-removal== 11639 (pos)
                    (not (Pa_not_checked_p3))

                    ; #85163: <==uncertain_firing== 86732 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #88457: <==negation-removal== 33733 (pos)
                    (not (not_checked_p3))

                    ; #90043: <==uncertain_firing== 64758 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #11944: <==closure== 81255 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #12851: <==commonly_known== 90628 (neg)
                    (Pa_checked_p4)

                    ; #39397: <==commonly_known== 90628 (neg)
                    (Pb_checked_p4)

                    ; #41287: <==commonly_known== 90628 (neg)
                    (Pc_checked_p4)

                    ; #71943: <==closure== 79991 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #75311: <==commonly_known== 88387 (pos)
                    (Bb_checked_p4)

                    ; #77967: <==commonly_known== 88387 (pos)
                    (Ba_checked_p4)

                    ; #79991: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #81255: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #88387: origin
                    (checked_p4)

                    ; #88978: <==commonly_known== 88387 (pos)
                    (Bc_checked_p4)

                    ; #11218: <==uncertain_firing== 71943 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #19214: <==uncertain_firing== 81255 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #22393: <==negation-removal== 88978 (pos)
                    (not (Pc_not_checked_p4))

                    ; #30253: <==negation-removal== 79991 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #46323: <==uncertain_firing== 11944 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #49915: <==negation-removal== 81255 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #50888: <==negation-removal== 11944 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #52612: <==negation-removal== 41287 (pos)
                    (not (Bc_not_checked_p4))

                    ; #63252: <==negation-removal== 77967 (pos)
                    (not (Pa_not_checked_p4))

                    ; #63616: <==uncertain_firing== 79991 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #64970: <==negation-removal== 39397 (pos)
                    (not (Bb_not_checked_p4))

                    ; #66321: <==negation-removal== 75311 (pos)
                    (not (Pb_not_checked_p4))

                    ; #69264: <==negation-removal== 12851 (pos)
                    (not (Ba_not_checked_p4))

                    ; #80577: <==negation-removal== 71943 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #90628: <==negation-removal== 88387 (pos)
                    (not (not_checked_p4))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #20181: origin
                    (checked_p5)

                    ; #23569: <==commonly_known== 20181 (pos)
                    (Ba_checked_p5)

                    ; #42167: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #47759: <==commonly_known== 20181 (pos)
                    (Bb_checked_p5)

                    ; #54418: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #56399: <==commonly_known== 20181 (pos)
                    (Bc_checked_p5)

                    ; #73099: <==commonly_known== 66335 (neg)
                    (Pa_checked_p5)

                    ; #74261: <==closure== 54418 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #76920: <==closure== 42167 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #77507: <==commonly_known== 66335 (neg)
                    (Pb_checked_p5)

                    ; #89475: <==commonly_known== 66335 (neg)
                    (Pc_checked_p5)

                    ; #10172: <==negation-removal== 77507 (pos)
                    (not (Bb_not_checked_p5))

                    ; #11897: <==uncertain_firing== 42167 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #22757: <==negation-removal== 23569 (pos)
                    (not (Pa_not_checked_p5))

                    ; #29151: <==uncertain_firing== 54418 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #33266: <==negation-removal== 74261 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #39996: <==negation-removal== 47759 (pos)
                    (not (Pb_not_checked_p5))

                    ; #45106: <==negation-removal== 76920 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #48664: <==uncertain_firing== 76920 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #60232: <==negation-removal== 54418 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #64280: <==negation-removal== 73099 (pos)
                    (not (Ba_not_checked_p5))

                    ; #66335: <==negation-removal== 20181 (pos)
                    (not (not_checked_p5))

                    ; #68209: <==uncertain_firing== 74261 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #81751: <==negation-removal== 56399 (pos)
                    (not (Pc_not_checked_p5))

                    ; #82172: <==negation-removal== 42167 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #86218: <==negation-removal== 89475 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #18855: <==closure== 65592 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #22298: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #22530: <==commonly_known== 87948 (pos)
                    (Bb_checked_p6)

                    ; #39718: <==commonly_known== 72522 (neg)
                    (Pb_checked_p6)

                    ; #42245: <==commonly_known== 87948 (pos)
                    (Ba_checked_p6)

                    ; #43938: <==commonly_known== 72522 (neg)
                    (Pa_checked_p6)

                    ; #56761: <==closure== 22298 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #64065: <==commonly_known== 72522 (neg)
                    (Pc_checked_p6)

                    ; #65592: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #72303: <==commonly_known== 87948 (pos)
                    (Bc_checked_p6)

                    ; #87948: origin
                    (checked_p6)

                    ; #21325: <==uncertain_firing== 22298 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #33049: <==negation-removal== 22530 (pos)
                    (not (Pb_not_checked_p6))

                    ; #35623: <==negation-removal== 39718 (pos)
                    (not (Bb_not_checked_p6))

                    ; #47745: <==negation-removal== 43938 (pos)
                    (not (Ba_not_checked_p6))

                    ; #49405: <==negation-removal== 64065 (pos)
                    (not (Bc_not_checked_p6))

                    ; #50633: <==uncertain_firing== 18855 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #72522: <==negation-removal== 87948 (pos)
                    (not (not_checked_p6))

                    ; #73239: <==negation-removal== 18855 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #73427: <==negation-removal== 22298 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #76909: <==negation-removal== 42245 (pos)
                    (not (Pa_not_checked_p6))

                    ; #79094: <==negation-removal== 72303 (pos)
                    (not (Pc_not_checked_p6))

                    ; #79529: <==negation-removal== 65592 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #79969: <==negation-removal== 56761 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #82252: <==uncertain_firing== 65592 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #85958: <==uncertain_firing== 56761 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #27523: <==closure== 57655 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #41637: origin
                    (checked_p7)

                    ; #44922: <==closure== 46211 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #45927: <==commonly_known== 41637 (pos)
                    (Bc_checked_p7)

                    ; #46211: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #53715: <==commonly_known== 41637 (pos)
                    (Bb_checked_p7)

                    ; #57655: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #70182: <==commonly_known== 32005 (neg)
                    (Pa_checked_p7)

                    ; #70525: <==commonly_known== 32005 (neg)
                    (Pb_checked_p7)

                    ; #77757: <==commonly_known== 41637 (pos)
                    (Ba_checked_p7)

                    ; #80292: <==commonly_known== 32005 (neg)
                    (Pc_checked_p7)

                    ; #14043: <==negation-removal== 46211 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #26140: <==negation-removal== 57655 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #32005: <==negation-removal== 41637 (pos)
                    (not (not_checked_p7))

                    ; #34810: <==negation-removal== 70182 (pos)
                    (not (Ba_not_checked_p7))

                    ; #36421: <==negation-removal== 27523 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #37218: <==negation-removal== 70525 (pos)
                    (not (Bb_not_checked_p7))

                    ; #39277: <==uncertain_firing== 46211 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #40449: <==negation-removal== 80292 (pos)
                    (not (Bc_not_checked_p7))

                    ; #50234: <==negation-removal== 45927 (pos)
                    (not (Pc_not_checked_p7))

                    ; #57410: <==uncertain_firing== 27523 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #65858: <==uncertain_firing== 57655 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #74986: <==negation-removal== 53715 (pos)
                    (not (Pb_not_checked_p7))

                    ; #81094: <==uncertain_firing== 44922 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #85736: <==negation-removal== 44922 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #88754: <==negation-removal== 77757 (pos)
                    (not (Pa_not_checked_p7))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #20044: <==closure== 33581 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #26620: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #30654: <==commonly_known== 57503 (pos)
                    (Bc_checked_p8)

                    ; #33581: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #34685: <==commonly_known== 21517 (neg)
                    (Pa_checked_p8)

                    ; #45172: <==commonly_known== 21517 (neg)
                    (Pc_checked_p8)

                    ; #51589: <==closure== 26620 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #57503: origin
                    (checked_p8)

                    ; #74904: <==commonly_known== 57503 (pos)
                    (Bb_checked_p8)

                    ; #76536: <==commonly_known== 57503 (pos)
                    (Ba_checked_p8)

                    ; #88432: <==commonly_known== 21517 (neg)
                    (Pb_checked_p8)

                    ; #16852: <==negation-removal== 20044 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #17254: <==negation-removal== 33581 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #21517: <==negation-removal== 57503 (pos)
                    (not (not_checked_p8))

                    ; #26046: <==uncertain_firing== 33581 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #27191: <==negation-removal== 26620 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #42932: <==negation-removal== 30654 (pos)
                    (not (Pc_not_checked_p8))

                    ; #61059: <==uncertain_firing== 26620 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #72959: <==negation-removal== 34685 (pos)
                    (not (Ba_not_checked_p8))

                    ; #78271: <==negation-removal== 88432 (pos)
                    (not (Bb_not_checked_p8))

                    ; #79924: <==negation-removal== 45172 (pos)
                    (not (Bc_not_checked_p8))

                    ; #80559: <==negation-removal== 74904 (pos)
                    (not (Pb_not_checked_p8))

                    ; #86261: <==uncertain_firing== 20044 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #89760: <==negation-removal== 51589 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #90476: <==negation-removal== 76536 (pos)
                    (not (Pa_not_checked_p8))

                    ; #96100: <==uncertain_firing== 51589 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #11030: origin
                    (checked_p9)

                    ; #12361: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #31170: <==closure== 12361 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #42920: <==commonly_known== 14679 (neg)
                    (Pa_checked_p9)

                    ; #46307: <==commonly_known== 11030 (pos)
                    (Ba_checked_p9)

                    ; #49644: <==closure== 81281 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #50745: <==commonly_known== 14679 (neg)
                    (Pc_checked_p9)

                    ; #62000: <==commonly_known== 14679 (neg)
                    (Pb_checked_p9)

                    ; #70076: <==commonly_known== 11030 (pos)
                    (Bc_checked_p9)

                    ; #81281: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #87584: <==commonly_known== 11030 (pos)
                    (Bb_checked_p9)

                    ; #14679: <==negation-removal== 11030 (pos)
                    (not (not_checked_p9))

                    ; #24931: <==negation-removal== 81281 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #34483: <==uncertain_firing== 81281 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #35504: <==negation-removal== 31170 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #36302: <==negation-removal== 87584 (pos)
                    (not (Pb_not_checked_p9))

                    ; #44735: <==negation-removal== 12361 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #46475: <==negation-removal== 70076 (pos)
                    (not (Pc_not_checked_p9))

                    ; #52339: <==negation-removal== 62000 (pos)
                    (not (Bb_not_checked_p9))

                    ; #53676: <==negation-removal== 42920 (pos)
                    (not (Ba_not_checked_p9))

                    ; #57784: <==uncertain_firing== 31170 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #60365: <==negation-removal== 49644 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #63634: <==uncertain_firing== 49644 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #63793: <==negation-removal== 46307 (pos)
                    (not (Pa_not_checked_p9))

                    ; #75307: <==negation-removal== 50745 (pos)
                    (not (Bc_not_checked_p9))

                    ; #89934: <==uncertain_firing== 12361 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))))

    (:action observe_c_p10_s
        :precondition (and (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #18820: <==closure== 52513 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #20323: <==commonly_known== 77824 (pos)
                    (Bb_checked_p10)

                    ; #31746: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #35901: <==commonly_known== 69578 (neg)
                    (Pc_checked_p10)

                    ; #37090: <==commonly_known== 77824 (pos)
                    (Ba_checked_p10)

                    ; #52513: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #57233: <==closure== 31746 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #62560: <==commonly_known== 69578 (neg)
                    (Pa_checked_p10)

                    ; #66428: <==commonly_known== 77824 (pos)
                    (Bc_checked_p10)

                    ; #77824: origin
                    (checked_p10)

                    ; #81158: <==commonly_known== 69578 (neg)
                    (Pb_checked_p10)

                    ; #22396: <==negation-removal== 18820 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #24866: <==negation-removal== 62560 (pos)
                    (not (Ba_not_checked_p10))

                    ; #40063: <==uncertain_firing== 57233 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #44860: <==negation-removal== 31746 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #56642: <==negation-removal== 37090 (pos)
                    (not (Pa_not_checked_p10))

                    ; #57714: <==negation-removal== 66428 (pos)
                    (not (Pc_not_checked_p10))

                    ; #60586: <==uncertain_firing== 18820 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #63730: <==uncertain_firing== 31746 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #63790: <==negation-removal== 81158 (pos)
                    (not (Bb_not_checked_p10))

                    ; #64498: <==negation-removal== 35901 (pos)
                    (not (Bc_not_checked_p10))

                    ; #69578: <==negation-removal== 77824 (pos)
                    (not (not_checked_p10))

                    ; #73682: <==negation-removal== 57233 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #83131: <==negation-removal== 52513 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #88058: <==uncertain_firing== 52513 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #88880: <==negation-removal== 20323 (pos)
                    (not (Pb_not_checked_p10))))

    (:action observe_c_p11_s
        :precondition (and (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #11913: <==closure== 37387 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #14463: <==commonly_known== 31029 (neg)
                    (Pb_checked_p11)

                    ; #16172: <==commonly_known== 31029 (neg)
                    (Pc_checked_p11)

                    ; #20318: <==commonly_known== 86226 (pos)
                    (Bc_checked_p11)

                    ; #31767: <==commonly_known== 86226 (pos)
                    (Bb_checked_p11)

                    ; #37387: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #49268: <==commonly_known== 31029 (neg)
                    (Pa_checked_p11)

                    ; #58838: <==closure== 88686 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #86226: origin
                    (checked_p11)

                    ; #88081: <==commonly_known== 86226 (pos)
                    (Ba_checked_p11)

                    ; #88686: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #10596: <==negation-removal== 37387 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #17794: <==negation-removal== 20318 (pos)
                    (not (Pc_not_checked_p11))

                    ; #20717: <==negation-removal== 11913 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #31029: <==negation-removal== 86226 (pos)
                    (not (not_checked_p11))

                    ; #36878: <==negation-removal== 14463 (pos)
                    (not (Bb_not_checked_p11))

                    ; #38783: <==uncertain_firing== 58838 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #47284: <==uncertain_firing== 88686 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #49618: <==uncertain_firing== 37387 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #56447: <==negation-removal== 88081 (pos)
                    (not (Pa_not_checked_p11))

                    ; #56586: <==negation-removal== 49268 (pos)
                    (not (Ba_not_checked_p11))

                    ; #56693: <==negation-removal== 16172 (pos)
                    (not (Bc_not_checked_p11))

                    ; #71125: <==negation-removal== 31767 (pos)
                    (not (Pb_not_checked_p11))

                    ; #75156: <==uncertain_firing== 11913 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #79039: <==negation-removal== 58838 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #85819: <==negation-removal== 88686 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))))

    (:action observe_c_p12_s
        :precondition (and (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #14280: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #15009: <==commonly_known== 83395 (pos)
                    (Bb_checked_p12)

                    ; #15491: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #25712: <==closure== 15491 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #37772: <==commonly_known== 83395 (pos)
                    (Bc_checked_p12)

                    ; #42194: <==commonly_known== 68478 (neg)
                    (Pc_checked_p12)

                    ; #48726: <==commonly_known== 68478 (neg)
                    (Pa_checked_p12)

                    ; #51874: <==closure== 14280 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #61392: <==commonly_known== 83395 (pos)
                    (Ba_checked_p12)

                    ; #83395: origin
                    (checked_p12)

                    ; #83787: <==commonly_known== 68478 (neg)
                    (Pb_checked_p12)

                    ; #11159: <==uncertain_firing== 14280 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #11207: <==negation-removal== 15009 (pos)
                    (not (Pb_not_checked_p12))

                    ; #15032: <==negation-removal== 48726 (pos)
                    (not (Ba_not_checked_p12))

                    ; #16414: <==negation-removal== 61392 (pos)
                    (not (Pa_not_checked_p12))

                    ; #27547: <==negation-removal== 83787 (pos)
                    (not (Bb_not_checked_p12))

                    ; #27774: <==negation-removal== 37772 (pos)
                    (not (Pc_not_checked_p12))

                    ; #37660: <==negation-removal== 15491 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #38719: <==negation-removal== 25712 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #52503: <==uncertain_firing== 51874 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #55574: <==negation-removal== 42194 (pos)
                    (not (Bc_not_checked_p12))

                    ; #66590: <==negation-removal== 51874 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #68478: <==negation-removal== 83395 (pos)
                    (not (not_checked_p12))

                    ; #69805: <==uncertain_firing== 25712 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #74766: <==negation-removal== 14280 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #92121: <==uncertain_firing== 15491 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #22272: origin
                    (checked_p1)

                    ; #38518: <==closure== 38765 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #38765: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #40680: <==commonly_known== 22272 (pos)
                    (Ba_checked_p1)

                    ; #41711: <==commonly_known== 82312 (neg)
                    (Pa_checked_p1)

                    ; #48887: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #56369: <==commonly_known== 22272 (pos)
                    (Bc_checked_p1)

                    ; #59137: <==commonly_known== 82312 (neg)
                    (Pb_checked_p1)

                    ; #81611: <==commonly_known== 22272 (pos)
                    (Bb_checked_p1)

                    ; #88065: <==commonly_known== 82312 (neg)
                    (Pc_checked_p1)

                    ; #91311: <==closure== 48887 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #10424: <==negation-removal== 41711 (pos)
                    (not (Ba_not_checked_p1))

                    ; #13314: <==negation-removal== 38518 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #15148: <==negation-removal== 88065 (pos)
                    (not (Bc_not_checked_p1))

                    ; #21363: <==negation-removal== 48887 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #25917: <==negation-removal== 40680 (pos)
                    (not (Pa_not_checked_p1))

                    ; #31824: <==uncertain_firing== 48887 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #69474: <==negation-removal== 56369 (pos)
                    (not (Pc_not_checked_p1))

                    ; #72114: <==negation-removal== 81611 (pos)
                    (not (Pb_not_checked_p1))

                    ; #74167: <==uncertain_firing== 38518 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #76059: <==negation-removal== 91311 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #81854: <==uncertain_firing== 91311 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #82312: <==negation-removal== 22272 (pos)
                    (not (not_checked_p1))

                    ; #86323: <==negation-removal== 38765 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #90083: <==negation-removal== 59137 (pos)
                    (not (Bb_not_checked_p1))

                    ; #91528: <==uncertain_firing== 38765 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #11922: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #21119: <==commonly_known== 69722 (neg)
                    (Pb_checked_p2)

                    ; #28688: <==commonly_known== 41471 (pos)
                    (Bb_checked_p2)

                    ; #37775: <==closure== 11922 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #39076: <==commonly_known== 41471 (pos)
                    (Ba_checked_p2)

                    ; #41471: origin
                    (checked_p2)

                    ; #47898: <==commonly_known== 41471 (pos)
                    (Bc_checked_p2)

                    ; #64770: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #71029: <==closure== 64770 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #81848: <==commonly_known== 69722 (neg)
                    (Pc_checked_p2)

                    ; #82434: <==commonly_known== 69722 (neg)
                    (Pa_checked_p2)

                    ; #11946: <==negation-removal== 11922 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #14920: <==negation-removal== 47898 (pos)
                    (not (Pc_not_checked_p2))

                    ; #16333: <==negation-removal== 71029 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #23300: <==negation-removal== 64770 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #29555: <==negation-removal== 21119 (pos)
                    (not (Bb_not_checked_p2))

                    ; #42512: <==negation-removal== 39076 (pos)
                    (not (Pa_not_checked_p2))

                    ; #44540: <==uncertain_firing== 64770 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #46504: <==negation-removal== 28688 (pos)
                    (not (Pb_not_checked_p2))

                    ; #69722: <==negation-removal== 41471 (pos)
                    (not (not_checked_p2))

                    ; #74907: <==negation-removal== 81848 (pos)
                    (not (Bc_not_checked_p2))

                    ; #76336: <==uncertain_firing== 11922 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #81240: <==uncertain_firing== 37775 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #88353: <==uncertain_firing== 71029 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #91329: <==negation-removal== 82434 (pos)
                    (not (Ba_not_checked_p2))

                    ; #96476: <==negation-removal== 37775 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10939: <==commonly_known== 88457 (neg)
                    (Pc_checked_p3)

                    ; #11639: <==commonly_known== 33733 (pos)
                    (Ba_checked_p3)

                    ; #27670: <==commonly_known== 88457 (neg)
                    (Pb_checked_p3)

                    ; #33733: origin
                    (checked_p3)

                    ; #35454: <==closure== 91393 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #37098: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #44125: <==commonly_known== 88457 (neg)
                    (Pa_checked_p3)

                    ; #47251: <==closure== 37098 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #57342: <==commonly_known== 33733 (pos)
                    (Bc_checked_p3)

                    ; #91013: <==commonly_known== 33733 (pos)
                    (Bb_checked_p3)

                    ; #91393: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #19213: <==negation-removal== 44125 (pos)
                    (not (Ba_not_checked_p3))

                    ; #26174: <==negation-removal== 91393 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #27463: <==negation-removal== 37098 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #49867: <==negation-removal== 91013 (pos)
                    (not (Pb_not_checked_p3))

                    ; #50872: <==negation-removal== 27670 (pos)
                    (not (Bb_not_checked_p3))

                    ; #53872: <==negation-removal== 57342 (pos)
                    (not (Pc_not_checked_p3))

                    ; #58063: <==negation-removal== 10939 (pos)
                    (not (Bc_not_checked_p3))

                    ; #63221: <==uncertain_firing== 37098 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #66184: <==negation-removal== 47251 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #69113: <==negation-removal== 35454 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #84481: <==negation-removal== 11639 (pos)
                    (not (Pa_not_checked_p3))

                    ; #85954: <==uncertain_firing== 91393 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #88457: <==negation-removal== 33733 (pos)
                    (not (not_checked_p3))

                    ; #88459: <==uncertain_firing== 35454 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #90859: <==uncertain_firing== 47251 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #12851: <==commonly_known== 90628 (neg)
                    (Pa_checked_p4)

                    ; #39397: <==commonly_known== 90628 (neg)
                    (Pb_checked_p4)

                    ; #41287: <==commonly_known== 90628 (neg)
                    (Pc_checked_p4)

                    ; #63303: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #75311: <==commonly_known== 88387 (pos)
                    (Bb_checked_p4)

                    ; #77967: <==commonly_known== 88387 (pos)
                    (Ba_checked_p4)

                    ; #80472: <==closure== 63303 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #84535: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #88257: <==closure== 84535 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #88387: origin
                    (checked_p4)

                    ; #88978: <==commonly_known== 88387 (pos)
                    (Bc_checked_p4)

                    ; #14323: <==uncertain_firing== 63303 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #22019: <==negation-removal== 88257 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #22393: <==negation-removal== 88978 (pos)
                    (not (Pc_not_checked_p4))

                    ; #36830: <==uncertain_firing== 88257 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #38247: <==negation-removal== 63303 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #42101: <==negation-removal== 84535 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #46867: <==uncertain_firing== 84535 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #48452: <==uncertain_firing== 80472 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #52612: <==negation-removal== 41287 (pos)
                    (not (Bc_not_checked_p4))

                    ; #63252: <==negation-removal== 77967 (pos)
                    (not (Pa_not_checked_p4))

                    ; #64970: <==negation-removal== 39397 (pos)
                    (not (Bb_not_checked_p4))

                    ; #66321: <==negation-removal== 75311 (pos)
                    (not (Pb_not_checked_p4))

                    ; #69264: <==negation-removal== 12851 (pos)
                    (not (Ba_not_checked_p4))

                    ; #88023: <==negation-removal== 80472 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #90628: <==negation-removal== 88387 (pos)
                    (not (not_checked_p4))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #13208: <==closure== 54525 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #20181: origin
                    (checked_p5)

                    ; #23569: <==commonly_known== 20181 (pos)
                    (Ba_checked_p5)

                    ; #27075: <==closure== 49687 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #47759: <==commonly_known== 20181 (pos)
                    (Bb_checked_p5)

                    ; #49687: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #54525: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #56399: <==commonly_known== 20181 (pos)
                    (Bc_checked_p5)

                    ; #73099: <==commonly_known== 66335 (neg)
                    (Pa_checked_p5)

                    ; #77507: <==commonly_known== 66335 (neg)
                    (Pb_checked_p5)

                    ; #89475: <==commonly_known== 66335 (neg)
                    (Pc_checked_p5)

                    ; #10172: <==negation-removal== 77507 (pos)
                    (not (Bb_not_checked_p5))

                    ; #13909: <==negation-removal== 54525 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #17274: <==negation-removal== 49687 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #22757: <==negation-removal== 23569 (pos)
                    (not (Pa_not_checked_p5))

                    ; #36476: <==negation-removal== 27075 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #38361: <==uncertain_firing== 49687 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #39996: <==negation-removal== 47759 (pos)
                    (not (Pb_not_checked_p5))

                    ; #56470: <==uncertain_firing== 54525 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #64280: <==negation-removal== 73099 (pos)
                    (not (Ba_not_checked_p5))

                    ; #66335: <==negation-removal== 20181 (pos)
                    (not (not_checked_p5))

                    ; #75879: <==uncertain_firing== 13208 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #78756: <==negation-removal== 13208 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #81751: <==negation-removal== 56399 (pos)
                    (not (Pc_not_checked_p5))

                    ; #86218: <==negation-removal== 89475 (pos)
                    (not (Bc_not_checked_p5))

                    ; #87562: <==uncertain_firing== 27075 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #10416: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #22530: <==commonly_known== 87948 (pos)
                    (Bb_checked_p6)

                    ; #39059: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #39718: <==commonly_known== 72522 (neg)
                    (Pb_checked_p6)

                    ; #42245: <==commonly_known== 87948 (pos)
                    (Ba_checked_p6)

                    ; #43938: <==commonly_known== 72522 (neg)
                    (Pa_checked_p6)

                    ; #63990: <==closure== 39059 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #64065: <==commonly_known== 72522 (neg)
                    (Pc_checked_p6)

                    ; #72303: <==commonly_known== 87948 (pos)
                    (Bc_checked_p6)

                    ; #85029: <==closure== 10416 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #87948: origin
                    (checked_p6)

                    ; #21822: <==negation-removal== 39059 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #27210: <==negation-removal== 85029 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #27691: <==uncertain_firing== 10416 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #33049: <==negation-removal== 22530 (pos)
                    (not (Pb_not_checked_p6))

                    ; #35623: <==negation-removal== 39718 (pos)
                    (not (Bb_not_checked_p6))

                    ; #37277: <==negation-removal== 63990 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #47745: <==negation-removal== 43938 (pos)
                    (not (Ba_not_checked_p6))

                    ; #49405: <==negation-removal== 64065 (pos)
                    (not (Bc_not_checked_p6))

                    ; #53069: <==uncertain_firing== 39059 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #64258: <==negation-removal== 10416 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #72522: <==negation-removal== 87948 (pos)
                    (not (not_checked_p6))

                    ; #76909: <==negation-removal== 42245 (pos)
                    (not (Pa_not_checked_p6))

                    ; #79094: <==negation-removal== 72303 (pos)
                    (not (Pc_not_checked_p6))

                    ; #81484: <==uncertain_firing== 85029 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #90252: <==uncertain_firing== 63990 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #10854: <==closure== 76935 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #41637: origin
                    (checked_p7)

                    ; #45927: <==commonly_known== 41637 (pos)
                    (Bc_checked_p7)

                    ; #53715: <==commonly_known== 41637 (pos)
                    (Bb_checked_p7)

                    ; #57628: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #70182: <==commonly_known== 32005 (neg)
                    (Pa_checked_p7)

                    ; #70525: <==commonly_known== 32005 (neg)
                    (Pb_checked_p7)

                    ; #76935: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #77757: <==commonly_known== 41637 (pos)
                    (Ba_checked_p7)

                    ; #78693: <==closure== 57628 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #80292: <==commonly_known== 32005 (neg)
                    (Pc_checked_p7)

                    ; #21771: <==uncertain_firing== 78693 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #32005: <==negation-removal== 41637 (pos)
                    (not (not_checked_p7))

                    ; #34810: <==negation-removal== 70182 (pos)
                    (not (Ba_not_checked_p7))

                    ; #37218: <==negation-removal== 70525 (pos)
                    (not (Bb_not_checked_p7))

                    ; #40449: <==negation-removal== 80292 (pos)
                    (not (Bc_not_checked_p7))

                    ; #43305: <==negation-removal== 78693 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #48167: <==negation-removal== 10854 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #50234: <==negation-removal== 45927 (pos)
                    (not (Pc_not_checked_p7))

                    ; #58853: <==uncertain_firing== 76935 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #74986: <==negation-removal== 53715 (pos)
                    (not (Pb_not_checked_p7))

                    ; #75278: <==negation-removal== 76935 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #80724: <==uncertain_firing== 57628 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #80884: <==uncertain_firing== 10854 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #88754: <==negation-removal== 77757 (pos)
                    (not (Pa_not_checked_p7))

                    ; #90231: <==negation-removal== 57628 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #18870: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #27087: <==closure== 35172 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #30654: <==commonly_known== 57503 (pos)
                    (Bc_checked_p8)

                    ; #34685: <==commonly_known== 21517 (neg)
                    (Pa_checked_p8)

                    ; #35172: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #45172: <==commonly_known== 21517 (neg)
                    (Pc_checked_p8)

                    ; #57503: origin
                    (checked_p8)

                    ; #72432: <==closure== 18870 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #74904: <==commonly_known== 57503 (pos)
                    (Bb_checked_p8)

                    ; #76536: <==commonly_known== 57503 (pos)
                    (Ba_checked_p8)

                    ; #88432: <==commonly_known== 21517 (neg)
                    (Pb_checked_p8)

                    ; #10431: <==negation-removal== 27087 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #21517: <==negation-removal== 57503 (pos)
                    (not (not_checked_p8))

                    ; #25866: <==negation-removal== 72432 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #26429: <==uncertain_firing== 27087 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #35383: <==uncertain_firing== 72432 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #37546: <==negation-removal== 18870 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #39042: <==uncertain_firing== 18870 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #42932: <==negation-removal== 30654 (pos)
                    (not (Pc_not_checked_p8))

                    ; #63292: <==uncertain_firing== 35172 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #72959: <==negation-removal== 34685 (pos)
                    (not (Ba_not_checked_p8))

                    ; #78271: <==negation-removal== 88432 (pos)
                    (not (Bb_not_checked_p8))

                    ; #79924: <==negation-removal== 45172 (pos)
                    (not (Bc_not_checked_p8))

                    ; #80559: <==negation-removal== 74904 (pos)
                    (not (Pb_not_checked_p8))

                    ; #90476: <==negation-removal== 76536 (pos)
                    (not (Pa_not_checked_p8))

                    ; #91616: <==negation-removal== 35172 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11030: origin
                    (checked_p9)

                    ; #33175: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #38101: <==closure== 33175 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #39274: <==closure== 43326 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #42920: <==commonly_known== 14679 (neg)
                    (Pa_checked_p9)

                    ; #43326: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #46307: <==commonly_known== 11030 (pos)
                    (Ba_checked_p9)

                    ; #50745: <==commonly_known== 14679 (neg)
                    (Pc_checked_p9)

                    ; #62000: <==commonly_known== 14679 (neg)
                    (Pb_checked_p9)

                    ; #70076: <==commonly_known== 11030 (pos)
                    (Bc_checked_p9)

                    ; #87584: <==commonly_known== 11030 (pos)
                    (Bb_checked_p9)

                    ; #14679: <==negation-removal== 11030 (pos)
                    (not (not_checked_p9))

                    ; #18167: <==uncertain_firing== 39274 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #36302: <==negation-removal== 87584 (pos)
                    (not (Pb_not_checked_p9))

                    ; #46475: <==negation-removal== 70076 (pos)
                    (not (Pc_not_checked_p9))

                    ; #50876: <==uncertain_firing== 38101 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #52339: <==negation-removal== 62000 (pos)
                    (not (Bb_not_checked_p9))

                    ; #53676: <==negation-removal== 42920 (pos)
                    (not (Ba_not_checked_p9))

                    ; #53953: <==uncertain_firing== 43326 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #63793: <==negation-removal== 46307 (pos)
                    (not (Pa_not_checked_p9))

                    ; #65781: <==negation-removal== 43326 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #72178: <==negation-removal== 38101 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #72776: <==uncertain_firing== 33175 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #75307: <==negation-removal== 50745 (pos)
                    (not (Bc_not_checked_p9))

                    ; #79923: <==negation-removal== 33175 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #82838: <==negation-removal== 39274 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))))

)