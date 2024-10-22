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

    (:action comm_p10_a_a_s
        :precondition (and (Pa_survivorat_s_p10)
                           (leader_a)
                           (at_a_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #27784: <==closure== 58582 (pos)
                    (Pa_survivorat_s_p10)

                    ; #58582: origin
                    (Ba_survivorat_s_p10)

                    ; #75561: <==negation-removal== 58582 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #83948: <==negation-removal== 27784 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_a_b_s
        :precondition (and (Pa_survivorat_s_p10)
                           (leader_b)
                           (at_a_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #54327: <==closure== 68712 (pos)
                    (Pb_survivorat_s_p10)

                    ; #68712: origin
                    (Bb_survivorat_s_p10)

                    ; #70201: <==negation-removal== 54327 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #80898: <==negation-removal== 68712 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #30030: origin
                    (Bc_survivorat_s_p10)

                    ; #40265: <==closure== 30030 (pos)
                    (Pc_survivorat_s_p10)

                    ; #17534: <==negation-removal== 40265 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #49487: <==negation-removal== 30030 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_b_a_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (leader_a))
        :effect (and
                    ; #27784: <==closure== 58582 (pos)
                    (Pa_survivorat_s_p10)

                    ; #58582: origin
                    (Ba_survivorat_s_p10)

                    ; #75561: <==negation-removal== 58582 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #83948: <==negation-removal== 27784 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_b_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_b)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #54327: <==closure== 68712 (pos)
                    (Pb_survivorat_s_p10)

                    ; #68712: origin
                    (Bb_survivorat_s_p10)

                    ; #70201: <==negation-removal== 54327 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #80898: <==negation-removal== 68712 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #30030: origin
                    (Bc_survivorat_s_p10)

                    ; #40265: <==closure== 30030 (pos)
                    (Pc_survivorat_s_p10)

                    ; #17534: <==negation-removal== 40265 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #49487: <==negation-removal== 30030 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_c_a_s
        :precondition (and (Bc_survivorat_s_p10)
                           (leader_a)
                           (at_c_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #27784: <==closure== 58582 (pos)
                    (Pa_survivorat_s_p10)

                    ; #58582: origin
                    (Ba_survivorat_s_p10)

                    ; #75561: <==negation-removal== 58582 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #83948: <==negation-removal== 27784 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_c_b_s
        :precondition (and (Bc_survivorat_s_p10)
                           (leader_b)
                           (at_c_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #54327: <==closure== 68712 (pos)
                    (Pb_survivorat_s_p10)

                    ; #68712: origin
                    (Bb_survivorat_s_p10)

                    ; #70201: <==negation-removal== 54327 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #80898: <==negation-removal== 68712 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_c_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (leader_c))
        :effect (and
                    ; #30030: origin
                    (Bc_survivorat_s_p10)

                    ; #40265: <==closure== 30030 (pos)
                    (Pc_survivorat_s_p10)

                    ; #17534: <==negation-removal== 40265 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #49487: <==negation-removal== 30030 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p11_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #53423: <==closure== 97898 (pos)
                    (Pa_survivorat_s_p11)

                    ; #97898: origin
                    (Ba_survivorat_s_p11)

                    ; #41294: <==negation-removal== 53423 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #81699: <==negation-removal== 97898 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #66728: origin
                    (Bb_survivorat_s_p11)

                    ; #67278: <==closure== 66728 (pos)
                    (Pb_survivorat_s_p11)

                    ; #31565: <==negation-removal== 66728 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #32504: <==negation-removal== 67278 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #25939: <==closure== 62482 (pos)
                    (Pc_survivorat_s_p11)

                    ; #62482: origin
                    (Bc_survivorat_s_p11)

                    ; #35203: <==negation-removal== 25939 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #82429: <==negation-removal== 62482 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #53423: <==closure== 97898 (pos)
                    (Pa_survivorat_s_p11)

                    ; #97898: origin
                    (Ba_survivorat_s_p11)

                    ; #41294: <==negation-removal== 53423 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #81699: <==negation-removal== 97898 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #66728: origin
                    (Bb_survivorat_s_p11)

                    ; #67278: <==closure== 66728 (pos)
                    (Pb_survivorat_s_p11)

                    ; #31565: <==negation-removal== 66728 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #32504: <==negation-removal== 67278 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #25939: <==closure== 62482 (pos)
                    (Pc_survivorat_s_p11)

                    ; #62482: origin
                    (Bc_survivorat_s_p11)

                    ; #35203: <==negation-removal== 25939 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #82429: <==negation-removal== 62482 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_c_a_s
        :precondition (and (Bc_survivorat_s_p11)
                           (leader_a)
                           (Pc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #53423: <==closure== 97898 (pos)
                    (Pa_survivorat_s_p11)

                    ; #97898: origin
                    (Ba_survivorat_s_p11)

                    ; #41294: <==negation-removal== 53423 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #81699: <==negation-removal== 97898 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_c_b_s
        :precondition (and (Bc_survivorat_s_p11)
                           (leader_b)
                           (Pc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #66728: origin
                    (Bb_survivorat_s_p11)

                    ; #67278: <==closure== 66728 (pos)
                    (Pb_survivorat_s_p11)

                    ; #31565: <==negation-removal== 66728 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #32504: <==negation-removal== 67278 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_c_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (leader_c)
                           (Pc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #25939: <==closure== 62482 (pos)
                    (Pc_survivorat_s_p11)

                    ; #62482: origin
                    (Bc_survivorat_s_p11)

                    ; #35203: <==negation-removal== 25939 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #82429: <==negation-removal== 62482 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p12_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #39124: <==closure== 86557 (pos)
                    (Pa_survivorat_s_p12)

                    ; #86557: origin
                    (Ba_survivorat_s_p12)

                    ; #58155: <==negation-removal== 86557 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #63879: <==negation-removal== 39124 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #48325: <==closure== 56836 (pos)
                    (Pb_survivorat_s_p12)

                    ; #56836: origin
                    (Bb_survivorat_s_p12)

                    ; #57837: <==negation-removal== 48325 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #89394: <==negation-removal== 56836 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #53678: origin
                    (Bc_survivorat_s_p12)

                    ; #61391: <==closure== 53678 (pos)
                    (Pc_survivorat_s_p12)

                    ; #33868: <==negation-removal== 53678 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #37564: <==negation-removal== 61391 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p12_b_a_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #39124: <==closure== 86557 (pos)
                    (Pa_survivorat_s_p12)

                    ; #86557: origin
                    (Ba_survivorat_s_p12)

                    ; #58155: <==negation-removal== 86557 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #63879: <==negation-removal== 39124 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_b_b_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (leader_b)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #48325: <==closure== 56836 (pos)
                    (Pb_survivorat_s_p12)

                    ; #56836: origin
                    (Bb_survivorat_s_p12)

                    ; #57837: <==negation-removal== 48325 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #89394: <==negation-removal== 56836 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_b_c_s
        :precondition (and (leader_c)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #53678: origin
                    (Bc_survivorat_s_p12)

                    ; #61391: <==closure== 53678 (pos)
                    (Pc_survivorat_s_p12)

                    ; #33868: <==negation-removal== 53678 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #37564: <==negation-removal== 61391 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p12_c_a_s
        :precondition (and (at_c_p12)
                           (leader_a)
                           (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #39124: <==closure== 86557 (pos)
                    (Pa_survivorat_s_p12)

                    ; #86557: origin
                    (Ba_survivorat_s_p12)

                    ; #58155: <==negation-removal== 86557 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #63879: <==negation-removal== 39124 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_c_b_s
        :precondition (and (at_c_p12)
                           (leader_b)
                           (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #48325: <==closure== 56836 (pos)
                    (Pb_survivorat_s_p12)

                    ; #56836: origin
                    (Bb_survivorat_s_p12)

                    ; #57837: <==negation-removal== 48325 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #89394: <==negation-removal== 56836 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_c_c_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (leader_c)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #53678: origin
                    (Bc_survivorat_s_p12)

                    ; #61391: <==closure== 53678 (pos)
                    (Pc_survivorat_s_p12)

                    ; #33868: <==negation-removal== 53678 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #37564: <==negation-removal== 61391 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p1_a_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (leader_a)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #15405: origin
                    (Ba_survivorat_s_p1)

                    ; #80451: <==closure== 15405 (pos)
                    (Pa_survivorat_s_p1)

                    ; #16283: <==negation-removal== 80451 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #37074: <==negation-removal== 15405 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #12628: origin
                    (Bb_survivorat_s_p1)

                    ; #75165: <==closure== 12628 (pos)
                    (Pb_survivorat_s_p1)

                    ; #17101: <==negation-removal== 12628 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #78106: <==negation-removal== 75165 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #76350: origin
                    (Bc_survivorat_s_p1)

                    ; #89189: <==closure== 76350 (pos)
                    (Pc_survivorat_s_p1)

                    ; #17857: <==negation-removal== 89189 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #85702: <==negation-removal== 76350 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #15405: origin
                    (Ba_survivorat_s_p1)

                    ; #80451: <==closure== 15405 (pos)
                    (Pa_survivorat_s_p1)

                    ; #16283: <==negation-removal== 80451 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #37074: <==negation-removal== 15405 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #12628: origin
                    (Bb_survivorat_s_p1)

                    ; #75165: <==closure== 12628 (pos)
                    (Pb_survivorat_s_p1)

                    ; #17101: <==negation-removal== 12628 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #78106: <==negation-removal== 75165 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #76350: origin
                    (Bc_survivorat_s_p1)

                    ; #89189: <==closure== 76350 (pos)
                    (Pc_survivorat_s_p1)

                    ; #17857: <==negation-removal== 89189 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #85702: <==negation-removal== 76350 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (Pc_survivorat_s_p1)
                           (leader_a)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #15405: origin
                    (Ba_survivorat_s_p1)

                    ; #80451: <==closure== 15405 (pos)
                    (Pa_survivorat_s_p1)

                    ; #16283: <==negation-removal== 80451 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #37074: <==negation-removal== 15405 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (Pc_survivorat_s_p1)
                           (leader_b)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #12628: origin
                    (Bb_survivorat_s_p1)

                    ; #75165: <==closure== 12628 (pos)
                    (Pb_survivorat_s_p1)

                    ; #17101: <==negation-removal== 12628 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #78106: <==negation-removal== 75165 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (leader_c)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #76350: origin
                    (Bc_survivorat_s_p1)

                    ; #89189: <==closure== 76350 (pos)
                    (Pc_survivorat_s_p1)

                    ; #17857: <==negation-removal== 89189 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #85702: <==negation-removal== 76350 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (at_a_p2)
                           (leader_a)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #28711: <==closure== 48847 (pos)
                    (Pa_survivorat_s_p2)

                    ; #48847: origin
                    (Ba_survivorat_s_p2)

                    ; #71189: <==negation-removal== 48847 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #99306: <==negation-removal== 28711 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (at_a_p2)
                           (leader_b)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #22912: <==closure== 31342 (pos)
                    (Pb_survivorat_s_p2)

                    ; #31342: origin
                    (Bb_survivorat_s_p2)

                    ; #35892: <==negation-removal== 22912 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #39484: <==negation-removal== 31342 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (at_a_p2)
                           (leader_c)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #18943: <==closure== 22921 (pos)
                    (Pc_survivorat_s_p2)

                    ; #22921: origin
                    (Bc_survivorat_s_p2)

                    ; #23710: <==negation-removal== 18943 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #58455: <==negation-removal== 22921 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (at_b_p2)
                           (leader_a)
                           (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #28711: <==closure== 48847 (pos)
                    (Pa_survivorat_s_p2)

                    ; #48847: origin
                    (Ba_survivorat_s_p2)

                    ; #71189: <==negation-removal== 48847 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #99306: <==negation-removal== 28711 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (at_b_p2)
                           (leader_b)
                           (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #22912: <==closure== 31342 (pos)
                    (Pb_survivorat_s_p2)

                    ; #31342: origin
                    (Bb_survivorat_s_p2)

                    ; #35892: <==negation-removal== 22912 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #39484: <==negation-removal== 31342 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (leader_c)
                           (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #18943: <==closure== 22921 (pos)
                    (Pc_survivorat_s_p2)

                    ; #22921: origin
                    (Bc_survivorat_s_p2)

                    ; #23710: <==negation-removal== 18943 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #58455: <==negation-removal== 22921 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (at_c_p2)
                           (leader_a)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #28711: <==closure== 48847 (pos)
                    (Pa_survivorat_s_p2)

                    ; #48847: origin
                    (Ba_survivorat_s_p2)

                    ; #71189: <==negation-removal== 48847 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #99306: <==negation-removal== 28711 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (at_c_p2)
                           (leader_b)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #22912: <==closure== 31342 (pos)
                    (Pb_survivorat_s_p2)

                    ; #31342: origin
                    (Bb_survivorat_s_p2)

                    ; #35892: <==negation-removal== 22912 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #39484: <==negation-removal== 31342 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (leader_c)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #18943: <==closure== 22921 (pos)
                    (Pc_survivorat_s_p2)

                    ; #22921: origin
                    (Bc_survivorat_s_p2)

                    ; #23710: <==negation-removal== 18943 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #58455: <==negation-removal== 22921 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #41024: <==closure== 48623 (pos)
                    (Pa_survivorat_s_p3)

                    ; #48623: origin
                    (Ba_survivorat_s_p3)

                    ; #19366: <==negation-removal== 41024 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #62955: <==negation-removal== 48623 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #35713: <==closure== 90355 (pos)
                    (Pb_survivorat_s_p3)

                    ; #90355: origin
                    (Bb_survivorat_s_p3)

                    ; #18758: <==negation-removal== 35713 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #31310: <==negation-removal== 90355 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #50388: origin
                    (Bc_survivorat_s_p3)

                    ; #65305: <==closure== 50388 (pos)
                    (Pc_survivorat_s_p3)

                    ; #13063: <==negation-removal== 50388 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #55878: <==negation-removal== 65305 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #41024: <==closure== 48623 (pos)
                    (Pa_survivorat_s_p3)

                    ; #48623: origin
                    (Ba_survivorat_s_p3)

                    ; #19366: <==negation-removal== 41024 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #62955: <==negation-removal== 48623 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #35713: <==closure== 90355 (pos)
                    (Pb_survivorat_s_p3)

                    ; #90355: origin
                    (Bb_survivorat_s_p3)

                    ; #18758: <==negation-removal== 35713 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #31310: <==negation-removal== 90355 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #50388: origin
                    (Bc_survivorat_s_p3)

                    ; #65305: <==closure== 50388 (pos)
                    (Pc_survivorat_s_p3)

                    ; #13063: <==negation-removal== 50388 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #55878: <==negation-removal== 65305 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (leader_a)
                           (at_c_p3))
        :effect (and
                    ; #41024: <==closure== 48623 (pos)
                    (Pa_survivorat_s_p3)

                    ; #48623: origin
                    (Ba_survivorat_s_p3)

                    ; #19366: <==negation-removal== 41024 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #62955: <==negation-removal== 48623 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (leader_b)
                           (at_c_p3))
        :effect (and
                    ; #35713: <==closure== 90355 (pos)
                    (Pb_survivorat_s_p3)

                    ; #90355: origin
                    (Bb_survivorat_s_p3)

                    ; #18758: <==negation-removal== 35713 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #31310: <==negation-removal== 90355 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (leader_c))
        :effect (and
                    ; #50388: origin
                    (Bc_survivorat_s_p3)

                    ; #65305: <==closure== 50388 (pos)
                    (Pc_survivorat_s_p3)

                    ; #13063: <==negation-removal== 50388 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #55878: <==negation-removal== 65305 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (leader_a))
        :effect (and
                    ; #48376: origin
                    (Ba_survivorat_s_p4)

                    ; #56742: <==closure== 48376 (pos)
                    (Pa_survivorat_s_p4)

                    ; #50328: <==negation-removal== 56742 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #91533: <==negation-removal== 48376 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (leader_b)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #18937: origin
                    (Bb_survivorat_s_p4)

                    ; #89858: <==closure== 18937 (pos)
                    (Pb_survivorat_s_p4)

                    ; #29525: <==negation-removal== 89858 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #72907: <==negation-removal== 18937 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #37926: <==closure== 78425 (pos)
                    (Pc_survivorat_s_p4)

                    ; #78425: origin
                    (Bc_survivorat_s_p4)

                    ; #21798: <==negation-removal== 78425 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #32782: <==negation-removal== 37926 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (Bb_survivorat_s_p4)
                           (leader_a)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #48376: origin
                    (Ba_survivorat_s_p4)

                    ; #56742: <==closure== 48376 (pos)
                    (Pa_survivorat_s_p4)

                    ; #50328: <==negation-removal== 56742 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #91533: <==negation-removal== 48376 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (leader_b)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #18937: origin
                    (Bb_survivorat_s_p4)

                    ; #89858: <==closure== 18937 (pos)
                    (Pb_survivorat_s_p4)

                    ; #29525: <==negation-removal== 89858 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #72907: <==negation-removal== 18937 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (Bb_survivorat_s_p4)
                           (leader_c)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #37926: <==closure== 78425 (pos)
                    (Pc_survivorat_s_p4)

                    ; #78425: origin
                    (Bc_survivorat_s_p4)

                    ; #21798: <==negation-removal== 78425 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #32782: <==negation-removal== 37926 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (leader_a)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #48376: origin
                    (Ba_survivorat_s_p4)

                    ; #56742: <==closure== 48376 (pos)
                    (Pa_survivorat_s_p4)

                    ; #50328: <==negation-removal== 56742 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #91533: <==negation-removal== 48376 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (leader_b)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #18937: origin
                    (Bb_survivorat_s_p4)

                    ; #89858: <==closure== 18937 (pos)
                    (Pb_survivorat_s_p4)

                    ; #29525: <==negation-removal== 89858 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #72907: <==negation-removal== 18937 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (leader_c))
        :effect (and
                    ; #37926: <==closure== 78425 (pos)
                    (Pc_survivorat_s_p4)

                    ; #78425: origin
                    (Bc_survivorat_s_p4)

                    ; #21798: <==negation-removal== 78425 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #32782: <==negation-removal== 37926 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (at_a_p5)
                           (leader_a)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #45656: origin
                    (Ba_survivorat_s_p5)

                    ; #80194: <==closure== 45656 (pos)
                    (Pa_survivorat_s_p5)

                    ; #31007: <==negation-removal== 80194 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #71818: <==negation-removal== 45656 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (at_a_p5)
                           (leader_b)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #41537: origin
                    (Bb_survivorat_s_p5)

                    ; #62438: <==closure== 41537 (pos)
                    (Pb_survivorat_s_p5)

                    ; #52709: <==negation-removal== 62438 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #90522: <==negation-removal== 41537 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (leader_c)
                           (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #15709: <==closure== 83767 (pos)
                    (Pc_survivorat_s_p5)

                    ; #83767: origin
                    (Bc_survivorat_s_p5)

                    ; #37246: <==negation-removal== 83767 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #82329: <==negation-removal== 15709 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (leader_a))
        :effect (and
                    ; #45656: origin
                    (Ba_survivorat_s_p5)

                    ; #80194: <==closure== 45656 (pos)
                    (Pa_survivorat_s_p5)

                    ; #31007: <==negation-removal== 80194 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #71818: <==negation-removal== 45656 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (leader_b))
        :effect (and
                    ; #41537: origin
                    (Bb_survivorat_s_p5)

                    ; #62438: <==closure== 41537 (pos)
                    (Pb_survivorat_s_p5)

                    ; #52709: <==negation-removal== 62438 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #90522: <==negation-removal== 41537 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (leader_c))
        :effect (and
                    ; #15709: <==closure== 83767 (pos)
                    (Pc_survivorat_s_p5)

                    ; #83767: origin
                    (Bc_survivorat_s_p5)

                    ; #37246: <==negation-removal== 83767 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #82329: <==negation-removal== 15709 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (Bc_survivorat_s_p5)
                           (leader_a)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #45656: origin
                    (Ba_survivorat_s_p5)

                    ; #80194: <==closure== 45656 (pos)
                    (Pa_survivorat_s_p5)

                    ; #31007: <==negation-removal== 80194 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #71818: <==negation-removal== 45656 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (leader_b)
                           (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #41537: origin
                    (Bb_survivorat_s_p5)

                    ; #62438: <==closure== 41537 (pos)
                    (Pb_survivorat_s_p5)

                    ; #52709: <==negation-removal== 62438 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #90522: <==negation-removal== 41537 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #15709: <==closure== 83767 (pos)
                    (Pc_survivorat_s_p5)

                    ; #83767: origin
                    (Bc_survivorat_s_p5)

                    ; #37246: <==negation-removal== 83767 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #82329: <==negation-removal== 15709 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #26674: <==closure== 71162 (pos)
                    (Pa_survivorat_s_p6)

                    ; #71162: origin
                    (Ba_survivorat_s_p6)

                    ; #29847: <==negation-removal== 71162 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #58855: <==negation-removal== 26674 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #25874: origin
                    (Bb_survivorat_s_p6)

                    ; #62891: <==closure== 25874 (pos)
                    (Pb_survivorat_s_p6)

                    ; #23347: <==negation-removal== 25874 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #91377: <==negation-removal== 62891 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #20049: <==closure== 91217 (pos)
                    (Pc_survivorat_s_p6)

                    ; #91217: origin
                    (Bc_survivorat_s_p6)

                    ; #59431: <==negation-removal== 20049 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #91302: <==negation-removal== 91217 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (Bb_survivorat_s_p6)
                           (leader_a)
                           (Pb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #26674: <==closure== 71162 (pos)
                    (Pa_survivorat_s_p6)

                    ; #71162: origin
                    (Ba_survivorat_s_p6)

                    ; #29847: <==negation-removal== 71162 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #58855: <==negation-removal== 26674 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #25874: origin
                    (Bb_survivorat_s_p6)

                    ; #62891: <==closure== 25874 (pos)
                    (Pb_survivorat_s_p6)

                    ; #23347: <==negation-removal== 25874 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #91377: <==negation-removal== 62891 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #20049: <==closure== 91217 (pos)
                    (Pc_survivorat_s_p6)

                    ; #91217: origin
                    (Bc_survivorat_s_p6)

                    ; #59431: <==negation-removal== 20049 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #91302: <==negation-removal== 91217 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (at_c_p6)
                           (leader_a)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #26674: <==closure== 71162 (pos)
                    (Pa_survivorat_s_p6)

                    ; #71162: origin
                    (Ba_survivorat_s_p6)

                    ; #29847: <==negation-removal== 71162 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #58855: <==negation-removal== 26674 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (leader_b)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #25874: origin
                    (Bb_survivorat_s_p6)

                    ; #62891: <==closure== 25874 (pos)
                    (Pb_survivorat_s_p6)

                    ; #23347: <==negation-removal== 25874 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #91377: <==negation-removal== 62891 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #20049: <==closure== 91217 (pos)
                    (Pc_survivorat_s_p6)

                    ; #91217: origin
                    (Bc_survivorat_s_p6)

                    ; #59431: <==negation-removal== 20049 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #91302: <==negation-removal== 91217 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_a)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #27307: <==closure== 86550 (pos)
                    (Pa_survivorat_s_p7)

                    ; #86550: origin
                    (Ba_survivorat_s_p7)

                    ; #32987: <==negation-removal== 86550 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #70451: <==negation-removal== 27307 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_b)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #47293: origin
                    (Bb_survivorat_s_p7)

                    ; #56986: <==closure== 47293 (pos)
                    (Pb_survivorat_s_p7)

                    ; #20858: <==negation-removal== 47293 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #29574: <==negation-removal== 56986 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_c)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #19044: origin
                    (Bc_survivorat_s_p7)

                    ; #54548: <==closure== 19044 (pos)
                    (Pc_survivorat_s_p7)

                    ; #52193: <==negation-removal== 19044 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #98632: <==negation-removal== 54548 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_a))
        :effect (and
                    ; #27307: <==closure== 86550 (pos)
                    (Pa_survivorat_s_p7)

                    ; #86550: origin
                    (Ba_survivorat_s_p7)

                    ; #32987: <==negation-removal== 86550 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #70451: <==negation-removal== 27307 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #47293: origin
                    (Bb_survivorat_s_p7)

                    ; #56986: <==closure== 47293 (pos)
                    (Pb_survivorat_s_p7)

                    ; #20858: <==negation-removal== 47293 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #29574: <==negation-removal== 56986 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #19044: origin
                    (Bc_survivorat_s_p7)

                    ; #54548: <==closure== 19044 (pos)
                    (Pc_survivorat_s_p7)

                    ; #52193: <==negation-removal== 19044 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #98632: <==negation-removal== 54548 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (leader_a)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #27307: <==closure== 86550 (pos)
                    (Pa_survivorat_s_p7)

                    ; #86550: origin
                    (Ba_survivorat_s_p7)

                    ; #32987: <==negation-removal== 86550 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #70451: <==negation-removal== 27307 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (leader_b)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #47293: origin
                    (Bb_survivorat_s_p7)

                    ; #56986: <==closure== 47293 (pos)
                    (Pb_survivorat_s_p7)

                    ; #20858: <==negation-removal== 47293 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #29574: <==negation-removal== 56986 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (leader_c)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #19044: origin
                    (Bc_survivorat_s_p7)

                    ; #54548: <==closure== 19044 (pos)
                    (Pc_survivorat_s_p7)

                    ; #52193: <==negation-removal== 19044 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #98632: <==negation-removal== 54548 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (at_a_p8)
                           (leader_a)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #49975: origin
                    (Ba_survivorat_s_p8)

                    ; #70821: <==closure== 49975 (pos)
                    (Pa_survivorat_s_p8)

                    ; #11244: <==negation-removal== 70821 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #15942: <==negation-removal== 49975 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (at_a_p8)
                           (leader_b)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #45626: origin
                    (Bb_survivorat_s_p8)

                    ; #85321: <==closure== 45626 (pos)
                    (Pb_survivorat_s_p8)

                    ; #14511: <==negation-removal== 45626 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #42576: <==negation-removal== 85321 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (leader_c)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #10918: origin
                    (Bc_survivorat_s_p8)

                    ; #89551: <==closure== 10918 (pos)
                    (Pc_survivorat_s_p8)

                    ; #82496: <==negation-removal== 10918 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #89864: <==negation-removal== 89551 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (at_b_p8)
                           (leader_a)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #49975: origin
                    (Ba_survivorat_s_p8)

                    ; #70821: <==closure== 49975 (pos)
                    (Pa_survivorat_s_p8)

                    ; #11244: <==negation-removal== 70821 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #15942: <==negation-removal== 49975 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (at_b_p8)
                           (leader_b)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #45626: origin
                    (Bb_survivorat_s_p8)

                    ; #85321: <==closure== 45626 (pos)
                    (Pb_survivorat_s_p8)

                    ; #14511: <==negation-removal== 45626 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #42576: <==negation-removal== 85321 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (leader_c)
                           (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #10918: origin
                    (Bc_survivorat_s_p8)

                    ; #89551: <==closure== 10918 (pos)
                    (Pc_survivorat_s_p8)

                    ; #82496: <==negation-removal== 10918 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #89864: <==negation-removal== 89551 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #49975: origin
                    (Ba_survivorat_s_p8)

                    ; #70821: <==closure== 49975 (pos)
                    (Pa_survivorat_s_p8)

                    ; #11244: <==negation-removal== 70821 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #15942: <==negation-removal== 49975 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (leader_b)
                           (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #45626: origin
                    (Bb_survivorat_s_p8)

                    ; #85321: <==closure== 45626 (pos)
                    (Pb_survivorat_s_p8)

                    ; #14511: <==negation-removal== 45626 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #42576: <==negation-removal== 85321 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #10918: origin
                    (Bc_survivorat_s_p8)

                    ; #89551: <==closure== 10918 (pos)
                    (Pc_survivorat_s_p8)

                    ; #82496: <==negation-removal== 10918 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #89864: <==negation-removal== 89551 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (leader_a)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #10291: <==closure== 81782 (pos)
                    (Pa_survivorat_s_p9)

                    ; #81782: origin
                    (Ba_survivorat_s_p9)

                    ; #23214: <==negation-removal== 10291 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #87316: <==negation-removal== 81782 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (Ba_survivorat_s_p9)
                           (leader_b)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #58927: origin
                    (Bb_survivorat_s_p9)

                    ; #72036: <==closure== 58927 (pos)
                    (Pb_survivorat_s_p9)

                    ; #15082: <==negation-removal== 58927 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #90241: <==negation-removal== 72036 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (Ba_survivorat_s_p9)
                           (leader_c)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #56368: origin
                    (Bc_survivorat_s_p9)

                    ; #61039: <==closure== 56368 (pos)
                    (Pc_survivorat_s_p9)

                    ; #15562: <==negation-removal== 56368 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #18059: <==negation-removal== 61039 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (Pb_survivorat_s_p9)
                           (leader_a)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #10291: <==closure== 81782 (pos)
                    (Pa_survivorat_s_p9)

                    ; #81782: origin
                    (Ba_survivorat_s_p9)

                    ; #23214: <==negation-removal== 10291 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #87316: <==negation-removal== 81782 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (leader_b)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #58927: origin
                    (Bb_survivorat_s_p9)

                    ; #72036: <==closure== 58927 (pos)
                    (Pb_survivorat_s_p9)

                    ; #15082: <==negation-removal== 58927 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #90241: <==negation-removal== 72036 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (leader_c)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #56368: origin
                    (Bc_survivorat_s_p9)

                    ; #61039: <==closure== 56368 (pos)
                    (Pc_survivorat_s_p9)

                    ; #15562: <==negation-removal== 56368 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #18059: <==negation-removal== 61039 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (leader_a)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #10291: <==closure== 81782 (pos)
                    (Pa_survivorat_s_p9)

                    ; #81782: origin
                    (Ba_survivorat_s_p9)

                    ; #23214: <==negation-removal== 10291 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #87316: <==negation-removal== 81782 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (leader_b)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #58927: origin
                    (Bb_survivorat_s_p9)

                    ; #72036: <==closure== 58927 (pos)
                    (Pb_survivorat_s_p9)

                    ; #15082: <==negation-removal== 58927 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #90241: <==negation-removal== 72036 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (leader_c)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #56368: origin
                    (Bc_survivorat_s_p9)

                    ; #61039: <==closure== 56368 (pos)
                    (Pc_survivorat_s_p9)

                    ; #15562: <==negation-removal== 56368 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #18059: <==negation-removal== 61039 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #15873: origin
                    (at_a_p1)

                    ; #39671: origin
                    (not_at_a_p10)

                    ; #64304: <==negation-removal== 15873 (pos)
                    (not (not_at_a_p1))

                    ; #81999: <==negation-removal== 39671 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #39671: origin
                    (not_at_a_p10)

                    ; #81999: origin
                    (at_a_p10)

                    ; #39671: <==negation-removal== 81999 (pos)
                    (not (not_at_a_p10))

                    ; #81999: <==negation-removal== 39671 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #33291: origin
                    (at_a_p11)

                    ; #39671: origin
                    (not_at_a_p10)

                    ; #28438: <==negation-removal== 33291 (pos)
                    (not (not_at_a_p11))

                    ; #81999: <==negation-removal== 39671 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12)
                           (not (leader_a)))
        :effect (and
                    ; #18556: origin
                    (at_a_p12)

                    ; #39671: origin
                    (not_at_a_p10)

                    ; #67690: <==negation-removal== 18556 (pos)
                    (not (not_at_a_p12))

                    ; #81999: <==negation-removal== 39671 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2)
                           (not (leader_a)))
        :effect (and
                    ; #39671: origin
                    (not_at_a_p10)

                    ; #53223: origin
                    (at_a_p2)

                    ; #78129: <==negation-removal== 53223 (pos)
                    (not (not_at_a_p2))

                    ; #81999: <==negation-removal== 39671 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p3
        :precondition (and (at_a_p10)
                           (succ_p10_p3)
                           (not (leader_a)))
        :effect (and
                    ; #30759: origin
                    (at_a_p3)

                    ; #39671: origin
                    (not_at_a_p10)

                    ; #55601: <==negation-removal== 30759 (pos)
                    (not (not_at_a_p3))

                    ; #81999: <==negation-removal== 39671 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4)
                           (not (leader_a)))
        :effect (and
                    ; #10453: origin
                    (at_a_p4)

                    ; #39671: origin
                    (not_at_a_p10)

                    ; #81999: <==negation-removal== 39671 (pos)
                    (not (at_a_p10))

                    ; #83039: <==negation-removal== 10453 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (at_a_p10)
                           (succ_p10_p5)
                           (not (leader_a)))
        :effect (and
                    ; #36143: origin
                    (at_a_p5)

                    ; #39671: origin
                    (not_at_a_p10)

                    ; #77252: <==negation-removal== 36143 (pos)
                    (not (not_at_a_p5))

                    ; #81999: <==negation-removal== 39671 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6)
                           (not (leader_a)))
        :effect (and
                    ; #39671: origin
                    (not_at_a_p10)

                    ; #71840: origin
                    (at_a_p6)

                    ; #81999: <==negation-removal== 39671 (pos)
                    (not (at_a_p10))

                    ; #91556: <==negation-removal== 71840 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7)
                           (not (leader_a)))
        :effect (and
                    ; #36974: origin
                    (at_a_p7)

                    ; #39671: origin
                    (not_at_a_p10)

                    ; #81999: <==negation-removal== 39671 (pos)
                    (not (at_a_p10))

                    ; #90650: <==negation-removal== 36974 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #21160: origin
                    (at_a_p8)

                    ; #39671: origin
                    (not_at_a_p10)

                    ; #16553: <==negation-removal== 21160 (pos)
                    (not (not_at_a_p8))

                    ; #81999: <==negation-removal== 39671 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #24820: origin
                    (at_a_p9)

                    ; #39671: origin
                    (not_at_a_p10)

                    ; #81999: <==negation-removal== 39671 (pos)
                    (not (at_a_p10))

                    ; #87605: <==negation-removal== 24820 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #15873: origin
                    (at_a_p1)

                    ; #28438: origin
                    (not_at_a_p11)

                    ; #33291: <==negation-removal== 28438 (pos)
                    (not (at_a_p11))

                    ; #64304: <==negation-removal== 15873 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10)
                           (not (leader_a)))
        :effect (and
                    ; #28438: origin
                    (not_at_a_p11)

                    ; #81999: origin
                    (at_a_p10)

                    ; #33291: <==negation-removal== 28438 (pos)
                    (not (at_a_p11))

                    ; #39671: <==negation-removal== 81999 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11)
                           (not (leader_a)))
        :effect (and
                    ; #28438: origin
                    (not_at_a_p11)

                    ; #33291: origin
                    (at_a_p11)

                    ; #28438: <==negation-removal== 33291 (pos)
                    (not (not_at_a_p11))

                    ; #33291: <==negation-removal== 28438 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #18556: origin
                    (at_a_p12)

                    ; #28438: origin
                    (not_at_a_p11)

                    ; #33291: <==negation-removal== 28438 (pos)
                    (not (at_a_p11))

                    ; #67690: <==negation-removal== 18556 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #28438: origin
                    (not_at_a_p11)

                    ; #53223: origin
                    (at_a_p2)

                    ; #33291: <==negation-removal== 28438 (pos)
                    (not (at_a_p11))

                    ; #78129: <==negation-removal== 53223 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #28438: origin
                    (not_at_a_p11)

                    ; #30759: origin
                    (at_a_p3)

                    ; #33291: <==negation-removal== 28438 (pos)
                    (not (at_a_p11))

                    ; #55601: <==negation-removal== 30759 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #10453: origin
                    (at_a_p4)

                    ; #28438: origin
                    (not_at_a_p11)

                    ; #33291: <==negation-removal== 28438 (pos)
                    (not (at_a_p11))

                    ; #83039: <==negation-removal== 10453 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #28438: origin
                    (not_at_a_p11)

                    ; #36143: origin
                    (at_a_p5)

                    ; #33291: <==negation-removal== 28438 (pos)
                    (not (at_a_p11))

                    ; #77252: <==negation-removal== 36143 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #28438: origin
                    (not_at_a_p11)

                    ; #71840: origin
                    (at_a_p6)

                    ; #33291: <==negation-removal== 28438 (pos)
                    (not (at_a_p11))

                    ; #91556: <==negation-removal== 71840 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #28438: origin
                    (not_at_a_p11)

                    ; #36974: origin
                    (at_a_p7)

                    ; #33291: <==negation-removal== 28438 (pos)
                    (not (at_a_p11))

                    ; #90650: <==negation-removal== 36974 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #21160: origin
                    (at_a_p8)

                    ; #28438: origin
                    (not_at_a_p11)

                    ; #16553: <==negation-removal== 21160 (pos)
                    (not (not_at_a_p8))

                    ; #33291: <==negation-removal== 28438 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #24820: origin
                    (at_a_p9)

                    ; #28438: origin
                    (not_at_a_p11)

                    ; #33291: <==negation-removal== 28438 (pos)
                    (not (at_a_p11))

                    ; #87605: <==negation-removal== 24820 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #15873: origin
                    (at_a_p1)

                    ; #67690: origin
                    (not_at_a_p12)

                    ; #18556: <==negation-removal== 67690 (pos)
                    (not (at_a_p12))

                    ; #64304: <==negation-removal== 15873 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #67690: origin
                    (not_at_a_p12)

                    ; #81999: origin
                    (at_a_p10)

                    ; #18556: <==negation-removal== 67690 (pos)
                    (not (at_a_p12))

                    ; #39671: <==negation-removal== 81999 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (at_a_p12)
                           (succ_p12_p11)
                           (not (leader_a)))
        :effect (and
                    ; #33291: origin
                    (at_a_p11)

                    ; #67690: origin
                    (not_at_a_p12)

                    ; #18556: <==negation-removal== 67690 (pos)
                    (not (at_a_p12))

                    ; #28438: <==negation-removal== 33291 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #18556: origin
                    (at_a_p12)

                    ; #67690: origin
                    (not_at_a_p12)

                    ; #18556: <==negation-removal== 67690 (pos)
                    (not (at_a_p12))

                    ; #67690: <==negation-removal== 18556 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #53223: origin
                    (at_a_p2)

                    ; #67690: origin
                    (not_at_a_p12)

                    ; #18556: <==negation-removal== 67690 (pos)
                    (not (at_a_p12))

                    ; #78129: <==negation-removal== 53223 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #30759: origin
                    (at_a_p3)

                    ; #67690: origin
                    (not_at_a_p12)

                    ; #18556: <==negation-removal== 67690 (pos)
                    (not (at_a_p12))

                    ; #55601: <==negation-removal== 30759 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #10453: origin
                    (at_a_p4)

                    ; #67690: origin
                    (not_at_a_p12)

                    ; #18556: <==negation-removal== 67690 (pos)
                    (not (at_a_p12))

                    ; #83039: <==negation-removal== 10453 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #36143: origin
                    (at_a_p5)

                    ; #67690: origin
                    (not_at_a_p12)

                    ; #18556: <==negation-removal== 67690 (pos)
                    (not (at_a_p12))

                    ; #77252: <==negation-removal== 36143 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6)
                           (not (leader_a)))
        :effect (and
                    ; #67690: origin
                    (not_at_a_p12)

                    ; #71840: origin
                    (at_a_p6)

                    ; #18556: <==negation-removal== 67690 (pos)
                    (not (at_a_p12))

                    ; #91556: <==negation-removal== 71840 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #36974: origin
                    (at_a_p7)

                    ; #67690: origin
                    (not_at_a_p12)

                    ; #18556: <==negation-removal== 67690 (pos)
                    (not (at_a_p12))

                    ; #90650: <==negation-removal== 36974 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #21160: origin
                    (at_a_p8)

                    ; #67690: origin
                    (not_at_a_p12)

                    ; #16553: <==negation-removal== 21160 (pos)
                    (not (not_at_a_p8))

                    ; #18556: <==negation-removal== 67690 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (at_a_p12)
                           (succ_p12_p9)
                           (not (leader_a)))
        :effect (and
                    ; #24820: origin
                    (at_a_p9)

                    ; #67690: origin
                    (not_at_a_p12)

                    ; #18556: <==negation-removal== 67690 (pos)
                    (not (at_a_p12))

                    ; #87605: <==negation-removal== 24820 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1)
                           (not (leader_a)))
        :effect (and
                    ; #15873: origin
                    (at_a_p1)

                    ; #64304: origin
                    (not_at_a_p1)

                    ; #15873: <==negation-removal== 64304 (pos)
                    (not (at_a_p1))

                    ; #64304: <==negation-removal== 15873 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #64304: origin
                    (not_at_a_p1)

                    ; #81999: origin
                    (at_a_p10)

                    ; #15873: <==negation-removal== 64304 (pos)
                    (not (at_a_p1))

                    ; #39671: <==negation-removal== 81999 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11)
                           (not (leader_a)))
        :effect (and
                    ; #33291: origin
                    (at_a_p11)

                    ; #64304: origin
                    (not_at_a_p1)

                    ; #15873: <==negation-removal== 64304 (pos)
                    (not (at_a_p1))

                    ; #28438: <==negation-removal== 33291 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #18556: origin
                    (at_a_p12)

                    ; #64304: origin
                    (not_at_a_p1)

                    ; #15873: <==negation-removal== 64304 (pos)
                    (not (at_a_p1))

                    ; #67690: <==negation-removal== 18556 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2)
                           (not (leader_a)))
        :effect (and
                    ; #53223: origin
                    (at_a_p2)

                    ; #64304: origin
                    (not_at_a_p1)

                    ; #15873: <==negation-removal== 64304 (pos)
                    (not (at_a_p1))

                    ; #78129: <==negation-removal== 53223 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3)
                           (not (leader_a)))
        :effect (and
                    ; #30759: origin
                    (at_a_p3)

                    ; #64304: origin
                    (not_at_a_p1)

                    ; #15873: <==negation-removal== 64304 (pos)
                    (not (at_a_p1))

                    ; #55601: <==negation-removal== 30759 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4)
                           (not (leader_a)))
        :effect (and
                    ; #10453: origin
                    (at_a_p4)

                    ; #64304: origin
                    (not_at_a_p1)

                    ; #15873: <==negation-removal== 64304 (pos)
                    (not (at_a_p1))

                    ; #83039: <==negation-removal== 10453 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #36143: origin
                    (at_a_p5)

                    ; #64304: origin
                    (not_at_a_p1)

                    ; #15873: <==negation-removal== 64304 (pos)
                    (not (at_a_p1))

                    ; #77252: <==negation-removal== 36143 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6)
                           (not (leader_a)))
        :effect (and
                    ; #64304: origin
                    (not_at_a_p1)

                    ; #71840: origin
                    (at_a_p6)

                    ; #15873: <==negation-removal== 64304 (pos)
                    (not (at_a_p1))

                    ; #91556: <==negation-removal== 71840 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7)
                           (not (leader_a)))
        :effect (and
                    ; #36974: origin
                    (at_a_p7)

                    ; #64304: origin
                    (not_at_a_p1)

                    ; #15873: <==negation-removal== 64304 (pos)
                    (not (at_a_p1))

                    ; #90650: <==negation-removal== 36974 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #21160: origin
                    (at_a_p8)

                    ; #64304: origin
                    (not_at_a_p1)

                    ; #15873: <==negation-removal== 64304 (pos)
                    (not (at_a_p1))

                    ; #16553: <==negation-removal== 21160 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9)
                           (not (leader_a)))
        :effect (and
                    ; #24820: origin
                    (at_a_p9)

                    ; #64304: origin
                    (not_at_a_p1)

                    ; #15873: <==negation-removal== 64304 (pos)
                    (not (at_a_p1))

                    ; #87605: <==negation-removal== 24820 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1)
                           (not (leader_a)))
        :effect (and
                    ; #15873: origin
                    (at_a_p1)

                    ; #78129: origin
                    (not_at_a_p2)

                    ; #53223: <==negation-removal== 78129 (pos)
                    (not (at_a_p2))

                    ; #64304: <==negation-removal== 15873 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (at_a_p2)
                           (succ_p2_p10)
                           (not (leader_a)))
        :effect (and
                    ; #78129: origin
                    (not_at_a_p2)

                    ; #81999: origin
                    (at_a_p10)

                    ; #39671: <==negation-removal== 81999 (pos)
                    (not (not_at_a_p10))

                    ; #53223: <==negation-removal== 78129 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (at_a_p2)
                           (succ_p2_p11)
                           (not (leader_a)))
        :effect (and
                    ; #33291: origin
                    (at_a_p11)

                    ; #78129: origin
                    (not_at_a_p2)

                    ; #28438: <==negation-removal== 33291 (pos)
                    (not (not_at_a_p11))

                    ; #53223: <==negation-removal== 78129 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12)
                           (not (leader_a)))
        :effect (and
                    ; #18556: origin
                    (at_a_p12)

                    ; #78129: origin
                    (not_at_a_p2)

                    ; #53223: <==negation-removal== 78129 (pos)
                    (not (at_a_p2))

                    ; #67690: <==negation-removal== 18556 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2)
                           (not (leader_a)))
        :effect (and
                    ; #53223: origin
                    (at_a_p2)

                    ; #78129: origin
                    (not_at_a_p2)

                    ; #53223: <==negation-removal== 78129 (pos)
                    (not (at_a_p2))

                    ; #78129: <==negation-removal== 53223 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3)
                           (not (leader_a)))
        :effect (and
                    ; #30759: origin
                    (at_a_p3)

                    ; #78129: origin
                    (not_at_a_p2)

                    ; #53223: <==negation-removal== 78129 (pos)
                    (not (at_a_p2))

                    ; #55601: <==negation-removal== 30759 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4)
                           (not (leader_a)))
        :effect (and
                    ; #10453: origin
                    (at_a_p4)

                    ; #78129: origin
                    (not_at_a_p2)

                    ; #53223: <==negation-removal== 78129 (pos)
                    (not (at_a_p2))

                    ; #83039: <==negation-removal== 10453 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5)
                           (not (leader_a)))
        :effect (and
                    ; #36143: origin
                    (at_a_p5)

                    ; #78129: origin
                    (not_at_a_p2)

                    ; #53223: <==negation-removal== 78129 (pos)
                    (not (at_a_p2))

                    ; #77252: <==negation-removal== 36143 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6)
                           (not (leader_a)))
        :effect (and
                    ; #71840: origin
                    (at_a_p6)

                    ; #78129: origin
                    (not_at_a_p2)

                    ; #53223: <==negation-removal== 78129 (pos)
                    (not (at_a_p2))

                    ; #91556: <==negation-removal== 71840 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7)
                           (not (leader_a)))
        :effect (and
                    ; #36974: origin
                    (at_a_p7)

                    ; #78129: origin
                    (not_at_a_p2)

                    ; #53223: <==negation-removal== 78129 (pos)
                    (not (at_a_p2))

                    ; #90650: <==negation-removal== 36974 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8)
                           (not (leader_a)))
        :effect (and
                    ; #21160: origin
                    (at_a_p8)

                    ; #78129: origin
                    (not_at_a_p2)

                    ; #16553: <==negation-removal== 21160 (pos)
                    (not (not_at_a_p8))

                    ; #53223: <==negation-removal== 78129 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9)
                           (not (leader_a)))
        :effect (and
                    ; #24820: origin
                    (at_a_p9)

                    ; #78129: origin
                    (not_at_a_p2)

                    ; #53223: <==negation-removal== 78129 (pos)
                    (not (at_a_p2))

                    ; #87605: <==negation-removal== 24820 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #15873: origin
                    (at_a_p1)

                    ; #55601: origin
                    (not_at_a_p3)

                    ; #30759: <==negation-removal== 55601 (pos)
                    (not (at_a_p3))

                    ; #64304: <==negation-removal== 15873 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #55601: origin
                    (not_at_a_p3)

                    ; #81999: origin
                    (at_a_p10)

                    ; #30759: <==negation-removal== 55601 (pos)
                    (not (at_a_p3))

                    ; #39671: <==negation-removal== 81999 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #33291: origin
                    (at_a_p11)

                    ; #55601: origin
                    (not_at_a_p3)

                    ; #28438: <==negation-removal== 33291 (pos)
                    (not (not_at_a_p11))

                    ; #30759: <==negation-removal== 55601 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #18556: origin
                    (at_a_p12)

                    ; #55601: origin
                    (not_at_a_p3)

                    ; #30759: <==negation-removal== 55601 (pos)
                    (not (at_a_p3))

                    ; #67690: <==negation-removal== 18556 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #53223: origin
                    (at_a_p2)

                    ; #55601: origin
                    (not_at_a_p3)

                    ; #30759: <==negation-removal== 55601 (pos)
                    (not (at_a_p3))

                    ; #78129: <==negation-removal== 53223 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #30759: origin
                    (at_a_p3)

                    ; #55601: origin
                    (not_at_a_p3)

                    ; #30759: <==negation-removal== 55601 (pos)
                    (not (at_a_p3))

                    ; #55601: <==negation-removal== 30759 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #10453: origin
                    (at_a_p4)

                    ; #55601: origin
                    (not_at_a_p3)

                    ; #30759: <==negation-removal== 55601 (pos)
                    (not (at_a_p3))

                    ; #83039: <==negation-removal== 10453 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #36143: origin
                    (at_a_p5)

                    ; #55601: origin
                    (not_at_a_p3)

                    ; #30759: <==negation-removal== 55601 (pos)
                    (not (at_a_p3))

                    ; #77252: <==negation-removal== 36143 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #55601: origin
                    (not_at_a_p3)

                    ; #71840: origin
                    (at_a_p6)

                    ; #30759: <==negation-removal== 55601 (pos)
                    (not (at_a_p3))

                    ; #91556: <==negation-removal== 71840 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #36974: origin
                    (at_a_p7)

                    ; #55601: origin
                    (not_at_a_p3)

                    ; #30759: <==negation-removal== 55601 (pos)
                    (not (at_a_p3))

                    ; #90650: <==negation-removal== 36974 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #21160: origin
                    (at_a_p8)

                    ; #55601: origin
                    (not_at_a_p3)

                    ; #16553: <==negation-removal== 21160 (pos)
                    (not (not_at_a_p8))

                    ; #30759: <==negation-removal== 55601 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #24820: origin
                    (at_a_p9)

                    ; #55601: origin
                    (not_at_a_p3)

                    ; #30759: <==negation-removal== 55601 (pos)
                    (not (at_a_p3))

                    ; #87605: <==negation-removal== 24820 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1)
                           (not (leader_a)))
        :effect (and
                    ; #15873: origin
                    (at_a_p1)

                    ; #83039: origin
                    (not_at_a_p4)

                    ; #10453: <==negation-removal== 83039 (pos)
                    (not (at_a_p4))

                    ; #64304: <==negation-removal== 15873 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10)
                           (not (leader_a)))
        :effect (and
                    ; #81999: origin
                    (at_a_p10)

                    ; #83039: origin
                    (not_at_a_p4)

                    ; #10453: <==negation-removal== 83039 (pos)
                    (not (at_a_p4))

                    ; #39671: <==negation-removal== 81999 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11)
                           (not (leader_a)))
        :effect (and
                    ; #33291: origin
                    (at_a_p11)

                    ; #83039: origin
                    (not_at_a_p4)

                    ; #10453: <==negation-removal== 83039 (pos)
                    (not (at_a_p4))

                    ; #28438: <==negation-removal== 33291 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #18556: origin
                    (at_a_p12)

                    ; #83039: origin
                    (not_at_a_p4)

                    ; #10453: <==negation-removal== 83039 (pos)
                    (not (at_a_p4))

                    ; #67690: <==negation-removal== 18556 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2)
                           (not (leader_a)))
        :effect (and
                    ; #53223: origin
                    (at_a_p2)

                    ; #83039: origin
                    (not_at_a_p4)

                    ; #10453: <==negation-removal== 83039 (pos)
                    (not (at_a_p4))

                    ; #78129: <==negation-removal== 53223 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3)
                           (not (leader_a)))
        :effect (and
                    ; #30759: origin
                    (at_a_p3)

                    ; #83039: origin
                    (not_at_a_p4)

                    ; #10453: <==negation-removal== 83039 (pos)
                    (not (at_a_p4))

                    ; #55601: <==negation-removal== 30759 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #10453: origin
                    (at_a_p4)

                    ; #83039: origin
                    (not_at_a_p4)

                    ; #10453: <==negation-removal== 83039 (pos)
                    (not (at_a_p4))

                    ; #83039: <==negation-removal== 10453 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #36143: origin
                    (at_a_p5)

                    ; #83039: origin
                    (not_at_a_p4)

                    ; #10453: <==negation-removal== 83039 (pos)
                    (not (at_a_p4))

                    ; #77252: <==negation-removal== 36143 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6)
                           (not (leader_a)))
        :effect (and
                    ; #71840: origin
                    (at_a_p6)

                    ; #83039: origin
                    (not_at_a_p4)

                    ; #10453: <==negation-removal== 83039 (pos)
                    (not (at_a_p4))

                    ; #91556: <==negation-removal== 71840 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7)
                           (not (leader_a)))
        :effect (and
                    ; #36974: origin
                    (at_a_p7)

                    ; #83039: origin
                    (not_at_a_p4)

                    ; #10453: <==negation-removal== 83039 (pos)
                    (not (at_a_p4))

                    ; #90650: <==negation-removal== 36974 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8)
                           (not (leader_a)))
        :effect (and
                    ; #21160: origin
                    (at_a_p8)

                    ; #83039: origin
                    (not_at_a_p4)

                    ; #10453: <==negation-removal== 83039 (pos)
                    (not (at_a_p4))

                    ; #16553: <==negation-removal== 21160 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9)
                           (not (leader_a)))
        :effect (and
                    ; #24820: origin
                    (at_a_p9)

                    ; #83039: origin
                    (not_at_a_p4)

                    ; #10453: <==negation-removal== 83039 (pos)
                    (not (at_a_p4))

                    ; #87605: <==negation-removal== 24820 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1)
                           (not (leader_a)))
        :effect (and
                    ; #15873: origin
                    (at_a_p1)

                    ; #77252: origin
                    (not_at_a_p5)

                    ; #36143: <==negation-removal== 77252 (pos)
                    (not (at_a_p5))

                    ; #64304: <==negation-removal== 15873 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10)
                           (not (leader_a)))
        :effect (and
                    ; #77252: origin
                    (not_at_a_p5)

                    ; #81999: origin
                    (at_a_p10)

                    ; #36143: <==negation-removal== 77252 (pos)
                    (not (at_a_p5))

                    ; #39671: <==negation-removal== 81999 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11)
                           (not (leader_a)))
        :effect (and
                    ; #33291: origin
                    (at_a_p11)

                    ; #77252: origin
                    (not_at_a_p5)

                    ; #28438: <==negation-removal== 33291 (pos)
                    (not (not_at_a_p11))

                    ; #36143: <==negation-removal== 77252 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12)
                           (not (leader_a)))
        :effect (and
                    ; #18556: origin
                    (at_a_p12)

                    ; #77252: origin
                    (not_at_a_p5)

                    ; #36143: <==negation-removal== 77252 (pos)
                    (not (at_a_p5))

                    ; #67690: <==negation-removal== 18556 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2)
                           (not (leader_a)))
        :effect (and
                    ; #53223: origin
                    (at_a_p2)

                    ; #77252: origin
                    (not_at_a_p5)

                    ; #36143: <==negation-removal== 77252 (pos)
                    (not (at_a_p5))

                    ; #78129: <==negation-removal== 53223 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3)
                           (not (leader_a)))
        :effect (and
                    ; #30759: origin
                    (at_a_p3)

                    ; #77252: origin
                    (not_at_a_p5)

                    ; #36143: <==negation-removal== 77252 (pos)
                    (not (at_a_p5))

                    ; #55601: <==negation-removal== 30759 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4)
                           (not (leader_a)))
        :effect (and
                    ; #10453: origin
                    (at_a_p4)

                    ; #77252: origin
                    (not_at_a_p5)

                    ; #36143: <==negation-removal== 77252 (pos)
                    (not (at_a_p5))

                    ; #83039: <==negation-removal== 10453 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5)
                           (not (leader_a)))
        :effect (and
                    ; #36143: origin
                    (at_a_p5)

                    ; #77252: origin
                    (not_at_a_p5)

                    ; #36143: <==negation-removal== 77252 (pos)
                    (not (at_a_p5))

                    ; #77252: <==negation-removal== 36143 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6)
                           (not (leader_a)))
        :effect (and
                    ; #71840: origin
                    (at_a_p6)

                    ; #77252: origin
                    (not_at_a_p5)

                    ; #36143: <==negation-removal== 77252 (pos)
                    (not (at_a_p5))

                    ; #91556: <==negation-removal== 71840 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7)
                           (not (leader_a)))
        :effect (and
                    ; #36974: origin
                    (at_a_p7)

                    ; #77252: origin
                    (not_at_a_p5)

                    ; #36143: <==negation-removal== 77252 (pos)
                    (not (at_a_p5))

                    ; #90650: <==negation-removal== 36974 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8)
                           (not (leader_a)))
        :effect (and
                    ; #21160: origin
                    (at_a_p8)

                    ; #77252: origin
                    (not_at_a_p5)

                    ; #16553: <==negation-removal== 21160 (pos)
                    (not (not_at_a_p8))

                    ; #36143: <==negation-removal== 77252 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9)
                           (not (leader_a)))
        :effect (and
                    ; #24820: origin
                    (at_a_p9)

                    ; #77252: origin
                    (not_at_a_p5)

                    ; #36143: <==negation-removal== 77252 (pos)
                    (not (at_a_p5))

                    ; #87605: <==negation-removal== 24820 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #15873: origin
                    (at_a_p1)

                    ; #91556: origin
                    (not_at_a_p6)

                    ; #64304: <==negation-removal== 15873 (pos)
                    (not (not_at_a_p1))

                    ; #71840: <==negation-removal== 91556 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #81999: origin
                    (at_a_p10)

                    ; #91556: origin
                    (not_at_a_p6)

                    ; #39671: <==negation-removal== 81999 (pos)
                    (not (not_at_a_p10))

                    ; #71840: <==negation-removal== 91556 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #33291: origin
                    (at_a_p11)

                    ; #91556: origin
                    (not_at_a_p6)

                    ; #28438: <==negation-removal== 33291 (pos)
                    (not (not_at_a_p11))

                    ; #71840: <==negation-removal== 91556 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #18556: origin
                    (at_a_p12)

                    ; #91556: origin
                    (not_at_a_p6)

                    ; #67690: <==negation-removal== 18556 (pos)
                    (not (not_at_a_p12))

                    ; #71840: <==negation-removal== 91556 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #53223: origin
                    (at_a_p2)

                    ; #91556: origin
                    (not_at_a_p6)

                    ; #71840: <==negation-removal== 91556 (pos)
                    (not (at_a_p6))

                    ; #78129: <==negation-removal== 53223 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #30759: origin
                    (at_a_p3)

                    ; #91556: origin
                    (not_at_a_p6)

                    ; #55601: <==negation-removal== 30759 (pos)
                    (not (not_at_a_p3))

                    ; #71840: <==negation-removal== 91556 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #10453: origin
                    (at_a_p4)

                    ; #91556: origin
                    (not_at_a_p6)

                    ; #71840: <==negation-removal== 91556 (pos)
                    (not (at_a_p6))

                    ; #83039: <==negation-removal== 10453 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #36143: origin
                    (at_a_p5)

                    ; #91556: origin
                    (not_at_a_p6)

                    ; #71840: <==negation-removal== 91556 (pos)
                    (not (at_a_p6))

                    ; #77252: <==negation-removal== 36143 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #71840: origin
                    (at_a_p6)

                    ; #91556: origin
                    (not_at_a_p6)

                    ; #71840: <==negation-removal== 91556 (pos)
                    (not (at_a_p6))

                    ; #91556: <==negation-removal== 71840 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #36974: origin
                    (at_a_p7)

                    ; #91556: origin
                    (not_at_a_p6)

                    ; #71840: <==negation-removal== 91556 (pos)
                    (not (at_a_p6))

                    ; #90650: <==negation-removal== 36974 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #21160: origin
                    (at_a_p8)

                    ; #91556: origin
                    (not_at_a_p6)

                    ; #16553: <==negation-removal== 21160 (pos)
                    (not (not_at_a_p8))

                    ; #71840: <==negation-removal== 91556 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #24820: origin
                    (at_a_p9)

                    ; #91556: origin
                    (not_at_a_p6)

                    ; #71840: <==negation-removal== 91556 (pos)
                    (not (at_a_p6))

                    ; #87605: <==negation-removal== 24820 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1)
                           (not (leader_a)))
        :effect (and
                    ; #15873: origin
                    (at_a_p1)

                    ; #90650: origin
                    (not_at_a_p7)

                    ; #36974: <==negation-removal== 90650 (pos)
                    (not (at_a_p7))

                    ; #64304: <==negation-removal== 15873 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (at_a_p7)
                           (succ_p7_p10)
                           (not (leader_a)))
        :effect (and
                    ; #81999: origin
                    (at_a_p10)

                    ; #90650: origin
                    (not_at_a_p7)

                    ; #36974: <==negation-removal== 90650 (pos)
                    (not (at_a_p7))

                    ; #39671: <==negation-removal== 81999 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11)
                           (not (leader_a)))
        :effect (and
                    ; #33291: origin
                    (at_a_p11)

                    ; #90650: origin
                    (not_at_a_p7)

                    ; #28438: <==negation-removal== 33291 (pos)
                    (not (not_at_a_p11))

                    ; #36974: <==negation-removal== 90650 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #18556: origin
                    (at_a_p12)

                    ; #90650: origin
                    (not_at_a_p7)

                    ; #36974: <==negation-removal== 90650 (pos)
                    (not (at_a_p7))

                    ; #67690: <==negation-removal== 18556 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2)
                           (not (leader_a)))
        :effect (and
                    ; #53223: origin
                    (at_a_p2)

                    ; #90650: origin
                    (not_at_a_p7)

                    ; #36974: <==negation-removal== 90650 (pos)
                    (not (at_a_p7))

                    ; #78129: <==negation-removal== 53223 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3)
                           (not (leader_a)))
        :effect (and
                    ; #30759: origin
                    (at_a_p3)

                    ; #90650: origin
                    (not_at_a_p7)

                    ; #36974: <==negation-removal== 90650 (pos)
                    (not (at_a_p7))

                    ; #55601: <==negation-removal== 30759 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4)
                           (not (leader_a)))
        :effect (and
                    ; #10453: origin
                    (at_a_p4)

                    ; #90650: origin
                    (not_at_a_p7)

                    ; #36974: <==negation-removal== 90650 (pos)
                    (not (at_a_p7))

                    ; #83039: <==negation-removal== 10453 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5)
                           (not (leader_a)))
        :effect (and
                    ; #36143: origin
                    (at_a_p5)

                    ; #90650: origin
                    (not_at_a_p7)

                    ; #36974: <==negation-removal== 90650 (pos)
                    (not (at_a_p7))

                    ; #77252: <==negation-removal== 36143 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #71840: origin
                    (at_a_p6)

                    ; #90650: origin
                    (not_at_a_p7)

                    ; #36974: <==negation-removal== 90650 (pos)
                    (not (at_a_p7))

                    ; #91556: <==negation-removal== 71840 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7)
                           (not (leader_a)))
        :effect (and
                    ; #36974: origin
                    (at_a_p7)

                    ; #90650: origin
                    (not_at_a_p7)

                    ; #36974: <==negation-removal== 90650 (pos)
                    (not (at_a_p7))

                    ; #90650: <==negation-removal== 36974 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8)
                           (not (leader_a)))
        :effect (and
                    ; #21160: origin
                    (at_a_p8)

                    ; #90650: origin
                    (not_at_a_p7)

                    ; #16553: <==negation-removal== 21160 (pos)
                    (not (not_at_a_p8))

                    ; #36974: <==negation-removal== 90650 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #24820: origin
                    (at_a_p9)

                    ; #90650: origin
                    (not_at_a_p7)

                    ; #36974: <==negation-removal== 90650 (pos)
                    (not (at_a_p7))

                    ; #87605: <==negation-removal== 24820 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1)
                           (not (leader_a)))
        :effect (and
                    ; #15873: origin
                    (at_a_p1)

                    ; #16553: origin
                    (not_at_a_p8)

                    ; #21160: <==negation-removal== 16553 (pos)
                    (not (at_a_p8))

                    ; #64304: <==negation-removal== 15873 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10)
                           (not (leader_a)))
        :effect (and
                    ; #16553: origin
                    (not_at_a_p8)

                    ; #81999: origin
                    (at_a_p10)

                    ; #21160: <==negation-removal== 16553 (pos)
                    (not (at_a_p8))

                    ; #39671: <==negation-removal== 81999 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11)
                           (not (leader_a)))
        :effect (and
                    ; #16553: origin
                    (not_at_a_p8)

                    ; #33291: origin
                    (at_a_p11)

                    ; #21160: <==negation-removal== 16553 (pos)
                    (not (at_a_p8))

                    ; #28438: <==negation-removal== 33291 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12)
                           (not (leader_a)))
        :effect (and
                    ; #16553: origin
                    (not_at_a_p8)

                    ; #18556: origin
                    (at_a_p12)

                    ; #21160: <==negation-removal== 16553 (pos)
                    (not (at_a_p8))

                    ; #67690: <==negation-removal== 18556 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2)
                           (not (leader_a)))
        :effect (and
                    ; #16553: origin
                    (not_at_a_p8)

                    ; #53223: origin
                    (at_a_p2)

                    ; #21160: <==negation-removal== 16553 (pos)
                    (not (at_a_p8))

                    ; #78129: <==negation-removal== 53223 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3)
                           (not (leader_a)))
        :effect (and
                    ; #16553: origin
                    (not_at_a_p8)

                    ; #30759: origin
                    (at_a_p3)

                    ; #21160: <==negation-removal== 16553 (pos)
                    (not (at_a_p8))

                    ; #55601: <==negation-removal== 30759 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4)
                           (not (leader_a)))
        :effect (and
                    ; #10453: origin
                    (at_a_p4)

                    ; #16553: origin
                    (not_at_a_p8)

                    ; #21160: <==negation-removal== 16553 (pos)
                    (not (at_a_p8))

                    ; #83039: <==negation-removal== 10453 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5)
                           (not (leader_a)))
        :effect (and
                    ; #16553: origin
                    (not_at_a_p8)

                    ; #36143: origin
                    (at_a_p5)

                    ; #21160: <==negation-removal== 16553 (pos)
                    (not (at_a_p8))

                    ; #77252: <==negation-removal== 36143 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6)
                           (not (leader_a)))
        :effect (and
                    ; #16553: origin
                    (not_at_a_p8)

                    ; #71840: origin
                    (at_a_p6)

                    ; #21160: <==negation-removal== 16553 (pos)
                    (not (at_a_p8))

                    ; #91556: <==negation-removal== 71840 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7)
                           (not (leader_a)))
        :effect (and
                    ; #16553: origin
                    (not_at_a_p8)

                    ; #36974: origin
                    (at_a_p7)

                    ; #21160: <==negation-removal== 16553 (pos)
                    (not (at_a_p8))

                    ; #90650: <==negation-removal== 36974 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8)
                           (not (leader_a)))
        :effect (and
                    ; #16553: origin
                    (not_at_a_p8)

                    ; #21160: origin
                    (at_a_p8)

                    ; #16553: <==negation-removal== 21160 (pos)
                    (not (not_at_a_p8))

                    ; #21160: <==negation-removal== 16553 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9)
                           (not (leader_a)))
        :effect (and
                    ; #16553: origin
                    (not_at_a_p8)

                    ; #24820: origin
                    (at_a_p9)

                    ; #21160: <==negation-removal== 16553 (pos)
                    (not (at_a_p8))

                    ; #87605: <==negation-removal== 24820 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #15873: origin
                    (at_a_p1)

                    ; #87605: origin
                    (not_at_a_p9)

                    ; #24820: <==negation-removal== 87605 (pos)
                    (not (at_a_p9))

                    ; #64304: <==negation-removal== 15873 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (at_a_p9)
                           (succ_p9_p10)
                           (not (leader_a)))
        :effect (and
                    ; #81999: origin
                    (at_a_p10)

                    ; #87605: origin
                    (not_at_a_p9)

                    ; #24820: <==negation-removal== 87605 (pos)
                    (not (at_a_p9))

                    ; #39671: <==negation-removal== 81999 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #33291: origin
                    (at_a_p11)

                    ; #87605: origin
                    (not_at_a_p9)

                    ; #24820: <==negation-removal== 87605 (pos)
                    (not (at_a_p9))

                    ; #28438: <==negation-removal== 33291 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12)
                           (not (leader_a)))
        :effect (and
                    ; #18556: origin
                    (at_a_p12)

                    ; #87605: origin
                    (not_at_a_p9)

                    ; #24820: <==negation-removal== 87605 (pos)
                    (not (at_a_p9))

                    ; #67690: <==negation-removal== 18556 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #53223: origin
                    (at_a_p2)

                    ; #87605: origin
                    (not_at_a_p9)

                    ; #24820: <==negation-removal== 87605 (pos)
                    (not (at_a_p9))

                    ; #78129: <==negation-removal== 53223 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #30759: origin
                    (at_a_p3)

                    ; #87605: origin
                    (not_at_a_p9)

                    ; #24820: <==negation-removal== 87605 (pos)
                    (not (at_a_p9))

                    ; #55601: <==negation-removal== 30759 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #10453: origin
                    (at_a_p4)

                    ; #87605: origin
                    (not_at_a_p9)

                    ; #24820: <==negation-removal== 87605 (pos)
                    (not (at_a_p9))

                    ; #83039: <==negation-removal== 10453 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #36143: origin
                    (at_a_p5)

                    ; #87605: origin
                    (not_at_a_p9)

                    ; #24820: <==negation-removal== 87605 (pos)
                    (not (at_a_p9))

                    ; #77252: <==negation-removal== 36143 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #71840: origin
                    (at_a_p6)

                    ; #87605: origin
                    (not_at_a_p9)

                    ; #24820: <==negation-removal== 87605 (pos)
                    (not (at_a_p9))

                    ; #91556: <==negation-removal== 71840 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #36974: origin
                    (at_a_p7)

                    ; #87605: origin
                    (not_at_a_p9)

                    ; #24820: <==negation-removal== 87605 (pos)
                    (not (at_a_p9))

                    ; #90650: <==negation-removal== 36974 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #21160: origin
                    (at_a_p8)

                    ; #87605: origin
                    (not_at_a_p9)

                    ; #16553: <==negation-removal== 21160 (pos)
                    (not (not_at_a_p8))

                    ; #24820: <==negation-removal== 87605 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #24820: origin
                    (at_a_p9)

                    ; #87605: origin
                    (not_at_a_p9)

                    ; #24820: <==negation-removal== 87605 (pos)
                    (not (at_a_p9))

                    ; #87605: <==negation-removal== 24820 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #26919: origin
                    (at_b_p1)

                    ; #56603: origin
                    (not_at_b_p10)

                    ; #29243: <==negation-removal== 56603 (pos)
                    (not (at_b_p10))

                    ; #54250: <==negation-removal== 26919 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #29243: origin
                    (at_b_p10)

                    ; #56603: origin
                    (not_at_b_p10)

                    ; #29243: <==negation-removal== 56603 (pos)
                    (not (at_b_p10))

                    ; #56603: <==negation-removal== 29243 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #17659: origin
                    (at_b_p11)

                    ; #56603: origin
                    (not_at_b_p10)

                    ; #29243: <==negation-removal== 56603 (pos)
                    (not (at_b_p10))

                    ; #74546: <==negation-removal== 17659 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12)
                           (not (leader_b)))
        :effect (and
                    ; #56603: origin
                    (not_at_b_p10)

                    ; #60225: origin
                    (at_b_p12)

                    ; #29243: <==negation-removal== 56603 (pos)
                    (not (at_b_p10))

                    ; #35644: <==negation-removal== 60225 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2)
                           (not (leader_b)))
        :effect (and
                    ; #42193: origin
                    (at_b_p2)

                    ; #56603: origin
                    (not_at_b_p10)

                    ; #29243: <==negation-removal== 56603 (pos)
                    (not (at_b_p10))

                    ; #83526: <==negation-removal== 42193 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3)
                           (not (leader_b)))
        :effect (and
                    ; #26070: origin
                    (at_b_p3)

                    ; #56603: origin
                    (not_at_b_p10)

                    ; #29243: <==negation-removal== 56603 (pos)
                    (not (at_b_p10))

                    ; #71904: <==negation-removal== 26070 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4)
                           (not (leader_b)))
        :effect (and
                    ; #52705: origin
                    (at_b_p4)

                    ; #56603: origin
                    (not_at_b_p10)

                    ; #29243: <==negation-removal== 56603 (pos)
                    (not (at_b_p10))

                    ; #46174: <==negation-removal== 52705 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5)
                           (not (leader_b)))
        :effect (and
                    ; #55280: origin
                    (at_b_p5)

                    ; #56603: origin
                    (not_at_b_p10)

                    ; #21053: <==negation-removal== 55280 (pos)
                    (not (not_at_b_p5))

                    ; #29243: <==negation-removal== 56603 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6)
                           (not (leader_b)))
        :effect (and
                    ; #56603: origin
                    (not_at_b_p10)

                    ; #62025: origin
                    (at_b_p6)

                    ; #29243: <==negation-removal== 56603 (pos)
                    (not (at_b_p10))

                    ; #46296: <==negation-removal== 62025 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7)
                           (not (leader_b)))
        :effect (and
                    ; #56603: origin
                    (not_at_b_p10)

                    ; #90389: origin
                    (at_b_p7)

                    ; #29243: <==negation-removal== 56603 (pos)
                    (not (at_b_p10))

                    ; #39886: <==negation-removal== 90389 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #56603: origin
                    (not_at_b_p10)

                    ; #73812: origin
                    (at_b_p8)

                    ; #25425: <==negation-removal== 73812 (pos)
                    (not (not_at_b_p8))

                    ; #29243: <==negation-removal== 56603 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9)
                           (not (leader_b)))
        :effect (and
                    ; #17441: origin
                    (at_b_p9)

                    ; #56603: origin
                    (not_at_b_p10)

                    ; #18882: <==negation-removal== 17441 (pos)
                    (not (not_at_b_p9))

                    ; #29243: <==negation-removal== 56603 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #26919: origin
                    (at_b_p1)

                    ; #74546: origin
                    (not_at_b_p11)

                    ; #17659: <==negation-removal== 74546 (pos)
                    (not (at_b_p11))

                    ; #54250: <==negation-removal== 26919 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #29243: origin
                    (at_b_p10)

                    ; #74546: origin
                    (not_at_b_p11)

                    ; #17659: <==negation-removal== 74546 (pos)
                    (not (at_b_p11))

                    ; #56603: <==negation-removal== 29243 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #17659: origin
                    (at_b_p11)

                    ; #74546: origin
                    (not_at_b_p11)

                    ; #17659: <==negation-removal== 74546 (pos)
                    (not (at_b_p11))

                    ; #74546: <==negation-removal== 17659 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #60225: origin
                    (at_b_p12)

                    ; #74546: origin
                    (not_at_b_p11)

                    ; #17659: <==negation-removal== 74546 (pos)
                    (not (at_b_p11))

                    ; #35644: <==negation-removal== 60225 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #42193: origin
                    (at_b_p2)

                    ; #74546: origin
                    (not_at_b_p11)

                    ; #17659: <==negation-removal== 74546 (pos)
                    (not (at_b_p11))

                    ; #83526: <==negation-removal== 42193 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #26070: origin
                    (at_b_p3)

                    ; #74546: origin
                    (not_at_b_p11)

                    ; #17659: <==negation-removal== 74546 (pos)
                    (not (at_b_p11))

                    ; #71904: <==negation-removal== 26070 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #52705: origin
                    (at_b_p4)

                    ; #74546: origin
                    (not_at_b_p11)

                    ; #17659: <==negation-removal== 74546 (pos)
                    (not (at_b_p11))

                    ; #46174: <==negation-removal== 52705 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #55280: origin
                    (at_b_p5)

                    ; #74546: origin
                    (not_at_b_p11)

                    ; #17659: <==negation-removal== 74546 (pos)
                    (not (at_b_p11))

                    ; #21053: <==negation-removal== 55280 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #62025: origin
                    (at_b_p6)

                    ; #74546: origin
                    (not_at_b_p11)

                    ; #17659: <==negation-removal== 74546 (pos)
                    (not (at_b_p11))

                    ; #46296: <==negation-removal== 62025 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #74546: origin
                    (not_at_b_p11)

                    ; #90389: origin
                    (at_b_p7)

                    ; #17659: <==negation-removal== 74546 (pos)
                    (not (at_b_p11))

                    ; #39886: <==negation-removal== 90389 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #73812: origin
                    (at_b_p8)

                    ; #74546: origin
                    (not_at_b_p11)

                    ; #17659: <==negation-removal== 74546 (pos)
                    (not (at_b_p11))

                    ; #25425: <==negation-removal== 73812 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #17441: origin
                    (at_b_p9)

                    ; #74546: origin
                    (not_at_b_p11)

                    ; #17659: <==negation-removal== 74546 (pos)
                    (not (at_b_p11))

                    ; #18882: <==negation-removal== 17441 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1)
                           (not (leader_b)))
        :effect (and
                    ; #26919: origin
                    (at_b_p1)

                    ; #35644: origin
                    (not_at_b_p12)

                    ; #54250: <==negation-removal== 26919 (pos)
                    (not (not_at_b_p1))

                    ; #60225: <==negation-removal== 35644 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10)
                           (not (leader_b)))
        :effect (and
                    ; #29243: origin
                    (at_b_p10)

                    ; #35644: origin
                    (not_at_b_p12)

                    ; #56603: <==negation-removal== 29243 (pos)
                    (not (not_at_b_p10))

                    ; #60225: <==negation-removal== 35644 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11)
                           (not (leader_b)))
        :effect (and
                    ; #17659: origin
                    (at_b_p11)

                    ; #35644: origin
                    (not_at_b_p12)

                    ; #60225: <==negation-removal== 35644 (pos)
                    (not (at_b_p12))

                    ; #74546: <==negation-removal== 17659 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12)
                           (not (leader_b)))
        :effect (and
                    ; #35644: origin
                    (not_at_b_p12)

                    ; #60225: origin
                    (at_b_p12)

                    ; #35644: <==negation-removal== 60225 (pos)
                    (not (not_at_b_p12))

                    ; #60225: <==negation-removal== 35644 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2)
                           (not (leader_b)))
        :effect (and
                    ; #35644: origin
                    (not_at_b_p12)

                    ; #42193: origin
                    (at_b_p2)

                    ; #60225: <==negation-removal== 35644 (pos)
                    (not (at_b_p12))

                    ; #83526: <==negation-removal== 42193 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3)
                           (not (leader_b)))
        :effect (and
                    ; #26070: origin
                    (at_b_p3)

                    ; #35644: origin
                    (not_at_b_p12)

                    ; #60225: <==negation-removal== 35644 (pos)
                    (not (at_b_p12))

                    ; #71904: <==negation-removal== 26070 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #35644: origin
                    (not_at_b_p12)

                    ; #52705: origin
                    (at_b_p4)

                    ; #46174: <==negation-removal== 52705 (pos)
                    (not (not_at_b_p4))

                    ; #60225: <==negation-removal== 35644 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5)
                           (not (leader_b)))
        :effect (and
                    ; #35644: origin
                    (not_at_b_p12)

                    ; #55280: origin
                    (at_b_p5)

                    ; #21053: <==negation-removal== 55280 (pos)
                    (not (not_at_b_p5))

                    ; #60225: <==negation-removal== 35644 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6)
                           (not (leader_b)))
        :effect (and
                    ; #35644: origin
                    (not_at_b_p12)

                    ; #62025: origin
                    (at_b_p6)

                    ; #46296: <==negation-removal== 62025 (pos)
                    (not (not_at_b_p6))

                    ; #60225: <==negation-removal== 35644 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7)
                           (not (leader_b)))
        :effect (and
                    ; #35644: origin
                    (not_at_b_p12)

                    ; #90389: origin
                    (at_b_p7)

                    ; #39886: <==negation-removal== 90389 (pos)
                    (not (not_at_b_p7))

                    ; #60225: <==negation-removal== 35644 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8)
                           (not (leader_b)))
        :effect (and
                    ; #35644: origin
                    (not_at_b_p12)

                    ; #73812: origin
                    (at_b_p8)

                    ; #25425: <==negation-removal== 73812 (pos)
                    (not (not_at_b_p8))

                    ; #60225: <==negation-removal== 35644 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9)
                           (not (leader_b)))
        :effect (and
                    ; #17441: origin
                    (at_b_p9)

                    ; #35644: origin
                    (not_at_b_p12)

                    ; #18882: <==negation-removal== 17441 (pos)
                    (not (not_at_b_p9))

                    ; #60225: <==negation-removal== 35644 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1)
                           (not (leader_b)))
        :effect (and
                    ; #26919: origin
                    (at_b_p1)

                    ; #54250: origin
                    (not_at_b_p1)

                    ; #26919: <==negation-removal== 54250 (pos)
                    (not (at_b_p1))

                    ; #54250: <==negation-removal== 26919 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #29243: origin
                    (at_b_p10)

                    ; #54250: origin
                    (not_at_b_p1)

                    ; #26919: <==negation-removal== 54250 (pos)
                    (not (at_b_p1))

                    ; #56603: <==negation-removal== 29243 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11)
                           (not (leader_b)))
        :effect (and
                    ; #17659: origin
                    (at_b_p11)

                    ; #54250: origin
                    (not_at_b_p1)

                    ; #26919: <==negation-removal== 54250 (pos)
                    (not (at_b_p1))

                    ; #74546: <==negation-removal== 17659 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #54250: origin
                    (not_at_b_p1)

                    ; #60225: origin
                    (at_b_p12)

                    ; #26919: <==negation-removal== 54250 (pos)
                    (not (at_b_p1))

                    ; #35644: <==negation-removal== 60225 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #42193: origin
                    (at_b_p2)

                    ; #54250: origin
                    (not_at_b_p1)

                    ; #26919: <==negation-removal== 54250 (pos)
                    (not (at_b_p1))

                    ; #83526: <==negation-removal== 42193 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3)
                           (not (leader_b)))
        :effect (and
                    ; #26070: origin
                    (at_b_p3)

                    ; #54250: origin
                    (not_at_b_p1)

                    ; #26919: <==negation-removal== 54250 (pos)
                    (not (at_b_p1))

                    ; #71904: <==negation-removal== 26070 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #52705: origin
                    (at_b_p4)

                    ; #54250: origin
                    (not_at_b_p1)

                    ; #26919: <==negation-removal== 54250 (pos)
                    (not (at_b_p1))

                    ; #46174: <==negation-removal== 52705 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #54250: origin
                    (not_at_b_p1)

                    ; #55280: origin
                    (at_b_p5)

                    ; #21053: <==negation-removal== 55280 (pos)
                    (not (not_at_b_p5))

                    ; #26919: <==negation-removal== 54250 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #54250: origin
                    (not_at_b_p1)

                    ; #62025: origin
                    (at_b_p6)

                    ; #26919: <==negation-removal== 54250 (pos)
                    (not (at_b_p1))

                    ; #46296: <==negation-removal== 62025 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #54250: origin
                    (not_at_b_p1)

                    ; #90389: origin
                    (at_b_p7)

                    ; #26919: <==negation-removal== 54250 (pos)
                    (not (at_b_p1))

                    ; #39886: <==negation-removal== 90389 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #54250: origin
                    (not_at_b_p1)

                    ; #73812: origin
                    (at_b_p8)

                    ; #25425: <==negation-removal== 73812 (pos)
                    (not (not_at_b_p8))

                    ; #26919: <==negation-removal== 54250 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9)
                           (not (leader_b)))
        :effect (and
                    ; #17441: origin
                    (at_b_p9)

                    ; #54250: origin
                    (not_at_b_p1)

                    ; #18882: <==negation-removal== 17441 (pos)
                    (not (not_at_b_p9))

                    ; #26919: <==negation-removal== 54250 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1)
                           (not (leader_b)))
        :effect (and
                    ; #26919: origin
                    (at_b_p1)

                    ; #83526: origin
                    (not_at_b_p2)

                    ; #42193: <==negation-removal== 83526 (pos)
                    (not (at_b_p2))

                    ; #54250: <==negation-removal== 26919 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #29243: origin
                    (at_b_p10)

                    ; #83526: origin
                    (not_at_b_p2)

                    ; #42193: <==negation-removal== 83526 (pos)
                    (not (at_b_p2))

                    ; #56603: <==negation-removal== 29243 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (at_b_p2)
                           (succ_p2_p11)
                           (not (leader_b)))
        :effect (and
                    ; #17659: origin
                    (at_b_p11)

                    ; #83526: origin
                    (not_at_b_p2)

                    ; #42193: <==negation-removal== 83526 (pos)
                    (not (at_b_p2))

                    ; #74546: <==negation-removal== 17659 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12)
                           (not (leader_b)))
        :effect (and
                    ; #60225: origin
                    (at_b_p12)

                    ; #83526: origin
                    (not_at_b_p2)

                    ; #35644: <==negation-removal== 60225 (pos)
                    (not (not_at_b_p12))

                    ; #42193: <==negation-removal== 83526 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2)
                           (not (leader_b)))
        :effect (and
                    ; #42193: origin
                    (at_b_p2)

                    ; #83526: origin
                    (not_at_b_p2)

                    ; #42193: <==negation-removal== 83526 (pos)
                    (not (at_b_p2))

                    ; #83526: <==negation-removal== 42193 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3)
                           (not (leader_b)))
        :effect (and
                    ; #26070: origin
                    (at_b_p3)

                    ; #83526: origin
                    (not_at_b_p2)

                    ; #42193: <==negation-removal== 83526 (pos)
                    (not (at_b_p2))

                    ; #71904: <==negation-removal== 26070 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4)
                           (not (leader_b)))
        :effect (and
                    ; #52705: origin
                    (at_b_p4)

                    ; #83526: origin
                    (not_at_b_p2)

                    ; #42193: <==negation-removal== 83526 (pos)
                    (not (at_b_p2))

                    ; #46174: <==negation-removal== 52705 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5)
                           (not (leader_b)))
        :effect (and
                    ; #55280: origin
                    (at_b_p5)

                    ; #83526: origin
                    (not_at_b_p2)

                    ; #21053: <==negation-removal== 55280 (pos)
                    (not (not_at_b_p5))

                    ; #42193: <==negation-removal== 83526 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6)
                           (not (leader_b)))
        :effect (and
                    ; #62025: origin
                    (at_b_p6)

                    ; #83526: origin
                    (not_at_b_p2)

                    ; #42193: <==negation-removal== 83526 (pos)
                    (not (at_b_p2))

                    ; #46296: <==negation-removal== 62025 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7)
                           (not (leader_b)))
        :effect (and
                    ; #83526: origin
                    (not_at_b_p2)

                    ; #90389: origin
                    (at_b_p7)

                    ; #39886: <==negation-removal== 90389 (pos)
                    (not (not_at_b_p7))

                    ; #42193: <==negation-removal== 83526 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8)
                           (not (leader_b)))
        :effect (and
                    ; #73812: origin
                    (at_b_p8)

                    ; #83526: origin
                    (not_at_b_p2)

                    ; #25425: <==negation-removal== 73812 (pos)
                    (not (not_at_b_p8))

                    ; #42193: <==negation-removal== 83526 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9)
                           (not (leader_b)))
        :effect (and
                    ; #17441: origin
                    (at_b_p9)

                    ; #83526: origin
                    (not_at_b_p2)

                    ; #18882: <==negation-removal== 17441 (pos)
                    (not (not_at_b_p9))

                    ; #42193: <==negation-removal== 83526 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #26919: origin
                    (at_b_p1)

                    ; #71904: origin
                    (not_at_b_p3)

                    ; #26070: <==negation-removal== 71904 (pos)
                    (not (at_b_p3))

                    ; #54250: <==negation-removal== 26919 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #29243: origin
                    (at_b_p10)

                    ; #71904: origin
                    (not_at_b_p3)

                    ; #26070: <==negation-removal== 71904 (pos)
                    (not (at_b_p3))

                    ; #56603: <==negation-removal== 29243 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #17659: origin
                    (at_b_p11)

                    ; #71904: origin
                    (not_at_b_p3)

                    ; #26070: <==negation-removal== 71904 (pos)
                    (not (at_b_p3))

                    ; #74546: <==negation-removal== 17659 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #60225: origin
                    (at_b_p12)

                    ; #71904: origin
                    (not_at_b_p3)

                    ; #26070: <==negation-removal== 71904 (pos)
                    (not (at_b_p3))

                    ; #35644: <==negation-removal== 60225 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #42193: origin
                    (at_b_p2)

                    ; #71904: origin
                    (not_at_b_p3)

                    ; #26070: <==negation-removal== 71904 (pos)
                    (not (at_b_p3))

                    ; #83526: <==negation-removal== 42193 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #26070: origin
                    (at_b_p3)

                    ; #71904: origin
                    (not_at_b_p3)

                    ; #26070: <==negation-removal== 71904 (pos)
                    (not (at_b_p3))

                    ; #71904: <==negation-removal== 26070 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #52705: origin
                    (at_b_p4)

                    ; #71904: origin
                    (not_at_b_p3)

                    ; #26070: <==negation-removal== 71904 (pos)
                    (not (at_b_p3))

                    ; #46174: <==negation-removal== 52705 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #55280: origin
                    (at_b_p5)

                    ; #71904: origin
                    (not_at_b_p3)

                    ; #21053: <==negation-removal== 55280 (pos)
                    (not (not_at_b_p5))

                    ; #26070: <==negation-removal== 71904 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #62025: origin
                    (at_b_p6)

                    ; #71904: origin
                    (not_at_b_p3)

                    ; #26070: <==negation-removal== 71904 (pos)
                    (not (at_b_p3))

                    ; #46296: <==negation-removal== 62025 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7)
                           (not (leader_b)))
        :effect (and
                    ; #71904: origin
                    (not_at_b_p3)

                    ; #90389: origin
                    (at_b_p7)

                    ; #26070: <==negation-removal== 71904 (pos)
                    (not (at_b_p3))

                    ; #39886: <==negation-removal== 90389 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #71904: origin
                    (not_at_b_p3)

                    ; #73812: origin
                    (at_b_p8)

                    ; #25425: <==negation-removal== 73812 (pos)
                    (not (not_at_b_p8))

                    ; #26070: <==negation-removal== 71904 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #17441: origin
                    (at_b_p9)

                    ; #71904: origin
                    (not_at_b_p3)

                    ; #18882: <==negation-removal== 17441 (pos)
                    (not (not_at_b_p9))

                    ; #26070: <==negation-removal== 71904 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #26919: origin
                    (at_b_p1)

                    ; #46174: origin
                    (not_at_b_p4)

                    ; #52705: <==negation-removal== 46174 (pos)
                    (not (at_b_p4))

                    ; #54250: <==negation-removal== 26919 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #29243: origin
                    (at_b_p10)

                    ; #46174: origin
                    (not_at_b_p4)

                    ; #52705: <==negation-removal== 46174 (pos)
                    (not (at_b_p4))

                    ; #56603: <==negation-removal== 29243 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #17659: origin
                    (at_b_p11)

                    ; #46174: origin
                    (not_at_b_p4)

                    ; #52705: <==negation-removal== 46174 (pos)
                    (not (at_b_p4))

                    ; #74546: <==negation-removal== 17659 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #46174: origin
                    (not_at_b_p4)

                    ; #60225: origin
                    (at_b_p12)

                    ; #35644: <==negation-removal== 60225 (pos)
                    (not (not_at_b_p12))

                    ; #52705: <==negation-removal== 46174 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #42193: origin
                    (at_b_p2)

                    ; #46174: origin
                    (not_at_b_p4)

                    ; #52705: <==negation-removal== 46174 (pos)
                    (not (at_b_p4))

                    ; #83526: <==negation-removal== 42193 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #26070: origin
                    (at_b_p3)

                    ; #46174: origin
                    (not_at_b_p4)

                    ; #52705: <==negation-removal== 46174 (pos)
                    (not (at_b_p4))

                    ; #71904: <==negation-removal== 26070 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #46174: origin
                    (not_at_b_p4)

                    ; #52705: origin
                    (at_b_p4)

                    ; #46174: <==negation-removal== 52705 (pos)
                    (not (not_at_b_p4))

                    ; #52705: <==negation-removal== 46174 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #46174: origin
                    (not_at_b_p4)

                    ; #55280: origin
                    (at_b_p5)

                    ; #21053: <==negation-removal== 55280 (pos)
                    (not (not_at_b_p5))

                    ; #52705: <==negation-removal== 46174 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #46174: origin
                    (not_at_b_p4)

                    ; #62025: origin
                    (at_b_p6)

                    ; #46296: <==negation-removal== 62025 (pos)
                    (not (not_at_b_p6))

                    ; #52705: <==negation-removal== 46174 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #46174: origin
                    (not_at_b_p4)

                    ; #90389: origin
                    (at_b_p7)

                    ; #39886: <==negation-removal== 90389 (pos)
                    (not (not_at_b_p7))

                    ; #52705: <==negation-removal== 46174 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #46174: origin
                    (not_at_b_p4)

                    ; #73812: origin
                    (at_b_p8)

                    ; #25425: <==negation-removal== 73812 (pos)
                    (not (not_at_b_p8))

                    ; #52705: <==negation-removal== 46174 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #17441: origin
                    (at_b_p9)

                    ; #46174: origin
                    (not_at_b_p4)

                    ; #18882: <==negation-removal== 17441 (pos)
                    (not (not_at_b_p9))

                    ; #52705: <==negation-removal== 46174 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1)
                           (not (leader_b)))
        :effect (and
                    ; #21053: origin
                    (not_at_b_p5)

                    ; #26919: origin
                    (at_b_p1)

                    ; #54250: <==negation-removal== 26919 (pos)
                    (not (not_at_b_p1))

                    ; #55280: <==negation-removal== 21053 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10)
                           (not (leader_b)))
        :effect (and
                    ; #21053: origin
                    (not_at_b_p5)

                    ; #29243: origin
                    (at_b_p10)

                    ; #55280: <==negation-removal== 21053 (pos)
                    (not (at_b_p5))

                    ; #56603: <==negation-removal== 29243 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11)
                           (not (leader_b)))
        :effect (and
                    ; #17659: origin
                    (at_b_p11)

                    ; #21053: origin
                    (not_at_b_p5)

                    ; #55280: <==negation-removal== 21053 (pos)
                    (not (at_b_p5))

                    ; #74546: <==negation-removal== 17659 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12)
                           (not (leader_b)))
        :effect (and
                    ; #21053: origin
                    (not_at_b_p5)

                    ; #60225: origin
                    (at_b_p12)

                    ; #35644: <==negation-removal== 60225 (pos)
                    (not (not_at_b_p12))

                    ; #55280: <==negation-removal== 21053 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2)
                           (not (leader_b)))
        :effect (and
                    ; #21053: origin
                    (not_at_b_p5)

                    ; #42193: origin
                    (at_b_p2)

                    ; #55280: <==negation-removal== 21053 (pos)
                    (not (at_b_p5))

                    ; #83526: <==negation-removal== 42193 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3)
                           (not (leader_b)))
        :effect (and
                    ; #21053: origin
                    (not_at_b_p5)

                    ; #26070: origin
                    (at_b_p3)

                    ; #55280: <==negation-removal== 21053 (pos)
                    (not (at_b_p5))

                    ; #71904: <==negation-removal== 26070 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4)
                           (not (leader_b)))
        :effect (and
                    ; #21053: origin
                    (not_at_b_p5)

                    ; #52705: origin
                    (at_b_p4)

                    ; #46174: <==negation-removal== 52705 (pos)
                    (not (not_at_b_p4))

                    ; #55280: <==negation-removal== 21053 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5)
                           (not (leader_b)))
        :effect (and
                    ; #21053: origin
                    (not_at_b_p5)

                    ; #55280: origin
                    (at_b_p5)

                    ; #21053: <==negation-removal== 55280 (pos)
                    (not (not_at_b_p5))

                    ; #55280: <==negation-removal== 21053 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6)
                           (not (leader_b)))
        :effect (and
                    ; #21053: origin
                    (not_at_b_p5)

                    ; #62025: origin
                    (at_b_p6)

                    ; #46296: <==negation-removal== 62025 (pos)
                    (not (not_at_b_p6))

                    ; #55280: <==negation-removal== 21053 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7)
                           (not (leader_b)))
        :effect (and
                    ; #21053: origin
                    (not_at_b_p5)

                    ; #90389: origin
                    (at_b_p7)

                    ; #39886: <==negation-removal== 90389 (pos)
                    (not (not_at_b_p7))

                    ; #55280: <==negation-removal== 21053 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8)
                           (not (leader_b)))
        :effect (and
                    ; #21053: origin
                    (not_at_b_p5)

                    ; #73812: origin
                    (at_b_p8)

                    ; #25425: <==negation-removal== 73812 (pos)
                    (not (not_at_b_p8))

                    ; #55280: <==negation-removal== 21053 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9)
                           (not (leader_b)))
        :effect (and
                    ; #17441: origin
                    (at_b_p9)

                    ; #21053: origin
                    (not_at_b_p5)

                    ; #18882: <==negation-removal== 17441 (pos)
                    (not (not_at_b_p9))

                    ; #55280: <==negation-removal== 21053 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #26919: origin
                    (at_b_p1)

                    ; #46296: origin
                    (not_at_b_p6)

                    ; #54250: <==negation-removal== 26919 (pos)
                    (not (not_at_b_p1))

                    ; #62025: <==negation-removal== 46296 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #29243: origin
                    (at_b_p10)

                    ; #46296: origin
                    (not_at_b_p6)

                    ; #56603: <==negation-removal== 29243 (pos)
                    (not (not_at_b_p10))

                    ; #62025: <==negation-removal== 46296 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #17659: origin
                    (at_b_p11)

                    ; #46296: origin
                    (not_at_b_p6)

                    ; #62025: <==negation-removal== 46296 (pos)
                    (not (at_b_p6))

                    ; #74546: <==negation-removal== 17659 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #46296: origin
                    (not_at_b_p6)

                    ; #60225: origin
                    (at_b_p12)

                    ; #35644: <==negation-removal== 60225 (pos)
                    (not (not_at_b_p12))

                    ; #62025: <==negation-removal== 46296 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #42193: origin
                    (at_b_p2)

                    ; #46296: origin
                    (not_at_b_p6)

                    ; #62025: <==negation-removal== 46296 (pos)
                    (not (at_b_p6))

                    ; #83526: <==negation-removal== 42193 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #26070: origin
                    (at_b_p3)

                    ; #46296: origin
                    (not_at_b_p6)

                    ; #62025: <==negation-removal== 46296 (pos)
                    (not (at_b_p6))

                    ; #71904: <==negation-removal== 26070 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4)
                           (not (leader_b)))
        :effect (and
                    ; #46296: origin
                    (not_at_b_p6)

                    ; #52705: origin
                    (at_b_p4)

                    ; #46174: <==negation-removal== 52705 (pos)
                    (not (not_at_b_p4))

                    ; #62025: <==negation-removal== 46296 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5)
                           (not (leader_b)))
        :effect (and
                    ; #46296: origin
                    (not_at_b_p6)

                    ; #55280: origin
                    (at_b_p5)

                    ; #21053: <==negation-removal== 55280 (pos)
                    (not (not_at_b_p5))

                    ; #62025: <==negation-removal== 46296 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #46296: origin
                    (not_at_b_p6)

                    ; #62025: origin
                    (at_b_p6)

                    ; #46296: <==negation-removal== 62025 (pos)
                    (not (not_at_b_p6))

                    ; #62025: <==negation-removal== 46296 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #46296: origin
                    (not_at_b_p6)

                    ; #90389: origin
                    (at_b_p7)

                    ; #39886: <==negation-removal== 90389 (pos)
                    (not (not_at_b_p7))

                    ; #62025: <==negation-removal== 46296 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #46296: origin
                    (not_at_b_p6)

                    ; #73812: origin
                    (at_b_p8)

                    ; #25425: <==negation-removal== 73812 (pos)
                    (not (not_at_b_p8))

                    ; #62025: <==negation-removal== 46296 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #17441: origin
                    (at_b_p9)

                    ; #46296: origin
                    (not_at_b_p6)

                    ; #18882: <==negation-removal== 17441 (pos)
                    (not (not_at_b_p9))

                    ; #62025: <==negation-removal== 46296 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1)
                           (not (leader_b)))
        :effect (and
                    ; #26919: origin
                    (at_b_p1)

                    ; #39886: origin
                    (not_at_b_p7)

                    ; #54250: <==negation-removal== 26919 (pos)
                    (not (not_at_b_p1))

                    ; #90389: <==negation-removal== 39886 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10)
                           (not (leader_b)))
        :effect (and
                    ; #29243: origin
                    (at_b_p10)

                    ; #39886: origin
                    (not_at_b_p7)

                    ; #56603: <==negation-removal== 29243 (pos)
                    (not (not_at_b_p10))

                    ; #90389: <==negation-removal== 39886 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #17659: origin
                    (at_b_p11)

                    ; #39886: origin
                    (not_at_b_p7)

                    ; #74546: <==negation-removal== 17659 (pos)
                    (not (not_at_b_p11))

                    ; #90389: <==negation-removal== 39886 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #39886: origin
                    (not_at_b_p7)

                    ; #60225: origin
                    (at_b_p12)

                    ; #35644: <==negation-removal== 60225 (pos)
                    (not (not_at_b_p12))

                    ; #90389: <==negation-removal== 39886 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2)
                           (not (leader_b)))
        :effect (and
                    ; #39886: origin
                    (not_at_b_p7)

                    ; #42193: origin
                    (at_b_p2)

                    ; #83526: <==negation-removal== 42193 (pos)
                    (not (not_at_b_p2))

                    ; #90389: <==negation-removal== 39886 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #26070: origin
                    (at_b_p3)

                    ; #39886: origin
                    (not_at_b_p7)

                    ; #71904: <==negation-removal== 26070 (pos)
                    (not (not_at_b_p3))

                    ; #90389: <==negation-removal== 39886 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4)
                           (not (leader_b)))
        :effect (and
                    ; #39886: origin
                    (not_at_b_p7)

                    ; #52705: origin
                    (at_b_p4)

                    ; #46174: <==negation-removal== 52705 (pos)
                    (not (not_at_b_p4))

                    ; #90389: <==negation-removal== 39886 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5)
                           (not (leader_b)))
        :effect (and
                    ; #39886: origin
                    (not_at_b_p7)

                    ; #55280: origin
                    (at_b_p5)

                    ; #21053: <==negation-removal== 55280 (pos)
                    (not (not_at_b_p5))

                    ; #90389: <==negation-removal== 39886 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #39886: origin
                    (not_at_b_p7)

                    ; #62025: origin
                    (at_b_p6)

                    ; #46296: <==negation-removal== 62025 (pos)
                    (not (not_at_b_p6))

                    ; #90389: <==negation-removal== 39886 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7)
                           (not (leader_b)))
        :effect (and
                    ; #39886: origin
                    (not_at_b_p7)

                    ; #90389: origin
                    (at_b_p7)

                    ; #39886: <==negation-removal== 90389 (pos)
                    (not (not_at_b_p7))

                    ; #90389: <==negation-removal== 39886 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #39886: origin
                    (not_at_b_p7)

                    ; #73812: origin
                    (at_b_p8)

                    ; #25425: <==negation-removal== 73812 (pos)
                    (not (not_at_b_p8))

                    ; #90389: <==negation-removal== 39886 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #17441: origin
                    (at_b_p9)

                    ; #39886: origin
                    (not_at_b_p7)

                    ; #18882: <==negation-removal== 17441 (pos)
                    (not (not_at_b_p9))

                    ; #90389: <==negation-removal== 39886 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1)
                           (not (leader_b)))
        :effect (and
                    ; #25425: origin
                    (not_at_b_p8)

                    ; #26919: origin
                    (at_b_p1)

                    ; #54250: <==negation-removal== 26919 (pos)
                    (not (not_at_b_p1))

                    ; #73812: <==negation-removal== 25425 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10)
                           (not (leader_b)))
        :effect (and
                    ; #25425: origin
                    (not_at_b_p8)

                    ; #29243: origin
                    (at_b_p10)

                    ; #56603: <==negation-removal== 29243 (pos)
                    (not (not_at_b_p10))

                    ; #73812: <==negation-removal== 25425 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11)
                           (not (leader_b)))
        :effect (and
                    ; #17659: origin
                    (at_b_p11)

                    ; #25425: origin
                    (not_at_b_p8)

                    ; #73812: <==negation-removal== 25425 (pos)
                    (not (at_b_p8))

                    ; #74546: <==negation-removal== 17659 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12)
                           (not (leader_b)))
        :effect (and
                    ; #25425: origin
                    (not_at_b_p8)

                    ; #60225: origin
                    (at_b_p12)

                    ; #35644: <==negation-removal== 60225 (pos)
                    (not (not_at_b_p12))

                    ; #73812: <==negation-removal== 25425 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2)
                           (not (leader_b)))
        :effect (and
                    ; #25425: origin
                    (not_at_b_p8)

                    ; #42193: origin
                    (at_b_p2)

                    ; #73812: <==negation-removal== 25425 (pos)
                    (not (at_b_p8))

                    ; #83526: <==negation-removal== 42193 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3)
                           (not (leader_b)))
        :effect (and
                    ; #25425: origin
                    (not_at_b_p8)

                    ; #26070: origin
                    (at_b_p3)

                    ; #71904: <==negation-removal== 26070 (pos)
                    (not (not_at_b_p3))

                    ; #73812: <==negation-removal== 25425 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4)
                           (not (leader_b)))
        :effect (and
                    ; #25425: origin
                    (not_at_b_p8)

                    ; #52705: origin
                    (at_b_p4)

                    ; #46174: <==negation-removal== 52705 (pos)
                    (not (not_at_b_p4))

                    ; #73812: <==negation-removal== 25425 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5)
                           (not (leader_b)))
        :effect (and
                    ; #25425: origin
                    (not_at_b_p8)

                    ; #55280: origin
                    (at_b_p5)

                    ; #21053: <==negation-removal== 55280 (pos)
                    (not (not_at_b_p5))

                    ; #73812: <==negation-removal== 25425 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6)
                           (not (leader_b)))
        :effect (and
                    ; #25425: origin
                    (not_at_b_p8)

                    ; #62025: origin
                    (at_b_p6)

                    ; #46296: <==negation-removal== 62025 (pos)
                    (not (not_at_b_p6))

                    ; #73812: <==negation-removal== 25425 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7)
                           (not (leader_b)))
        :effect (and
                    ; #25425: origin
                    (not_at_b_p8)

                    ; #90389: origin
                    (at_b_p7)

                    ; #39886: <==negation-removal== 90389 (pos)
                    (not (not_at_b_p7))

                    ; #73812: <==negation-removal== 25425 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8)
                           (not (leader_b)))
        :effect (and
                    ; #25425: origin
                    (not_at_b_p8)

                    ; #73812: origin
                    (at_b_p8)

                    ; #25425: <==negation-removal== 73812 (pos)
                    (not (not_at_b_p8))

                    ; #73812: <==negation-removal== 25425 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9)
                           (not (leader_b)))
        :effect (and
                    ; #17441: origin
                    (at_b_p9)

                    ; #25425: origin
                    (not_at_b_p8)

                    ; #18882: <==negation-removal== 17441 (pos)
                    (not (not_at_b_p9))

                    ; #73812: <==negation-removal== 25425 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1)
                           (not (leader_b)))
        :effect (and
                    ; #18882: origin
                    (not_at_b_p9)

                    ; #26919: origin
                    (at_b_p1)

                    ; #17441: <==negation-removal== 18882 (pos)
                    (not (at_b_p9))

                    ; #54250: <==negation-removal== 26919 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (at_b_p9)
                           (succ_p9_p10)
                           (not (leader_b)))
        :effect (and
                    ; #18882: origin
                    (not_at_b_p9)

                    ; #29243: origin
                    (at_b_p10)

                    ; #17441: <==negation-removal== 18882 (pos)
                    (not (at_b_p9))

                    ; #56603: <==negation-removal== 29243 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #17659: origin
                    (at_b_p11)

                    ; #18882: origin
                    (not_at_b_p9)

                    ; #17441: <==negation-removal== 18882 (pos)
                    (not (at_b_p9))

                    ; #74546: <==negation-removal== 17659 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12)
                           (not (leader_b)))
        :effect (and
                    ; #18882: origin
                    (not_at_b_p9)

                    ; #60225: origin
                    (at_b_p12)

                    ; #17441: <==negation-removal== 18882 (pos)
                    (not (at_b_p9))

                    ; #35644: <==negation-removal== 60225 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #18882: origin
                    (not_at_b_p9)

                    ; #42193: origin
                    (at_b_p2)

                    ; #17441: <==negation-removal== 18882 (pos)
                    (not (at_b_p9))

                    ; #83526: <==negation-removal== 42193 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #18882: origin
                    (not_at_b_p9)

                    ; #26070: origin
                    (at_b_p3)

                    ; #17441: <==negation-removal== 18882 (pos)
                    (not (at_b_p9))

                    ; #71904: <==negation-removal== 26070 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4)
                           (not (leader_b)))
        :effect (and
                    ; #18882: origin
                    (not_at_b_p9)

                    ; #52705: origin
                    (at_b_p4)

                    ; #17441: <==negation-removal== 18882 (pos)
                    (not (at_b_p9))

                    ; #46174: <==negation-removal== 52705 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #18882: origin
                    (not_at_b_p9)

                    ; #55280: origin
                    (at_b_p5)

                    ; #17441: <==negation-removal== 18882 (pos)
                    (not (at_b_p9))

                    ; #21053: <==negation-removal== 55280 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #18882: origin
                    (not_at_b_p9)

                    ; #62025: origin
                    (at_b_p6)

                    ; #17441: <==negation-removal== 18882 (pos)
                    (not (at_b_p9))

                    ; #46296: <==negation-removal== 62025 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #18882: origin
                    (not_at_b_p9)

                    ; #90389: origin
                    (at_b_p7)

                    ; #17441: <==negation-removal== 18882 (pos)
                    (not (at_b_p9))

                    ; #39886: <==negation-removal== 90389 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #18882: origin
                    (not_at_b_p9)

                    ; #73812: origin
                    (at_b_p8)

                    ; #17441: <==negation-removal== 18882 (pos)
                    (not (at_b_p9))

                    ; #25425: <==negation-removal== 73812 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #17441: origin
                    (at_b_p9)

                    ; #18882: origin
                    (not_at_b_p9)

                    ; #17441: <==negation-removal== 18882 (pos)
                    (not (at_b_p9))

                    ; #18882: <==negation-removal== 17441 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #56180: origin
                    (not_at_c_p10)

                    ; #89772: origin
                    (at_c_p1)

                    ; #19345: <==negation-removal== 56180 (pos)
                    (not (at_c_p10))

                    ; #56295: <==negation-removal== 89772 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #19345: origin
                    (at_c_p10)

                    ; #56180: origin
                    (not_at_c_p10)

                    ; #19345: <==negation-removal== 56180 (pos)
                    (not (at_c_p10))

                    ; #56180: <==negation-removal== 19345 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #10509: origin
                    (at_c_p11)

                    ; #56180: origin
                    (not_at_c_p10)

                    ; #19345: <==negation-removal== 56180 (pos)
                    (not (at_c_p10))

                    ; #19620: <==negation-removal== 10509 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12)
                           (not (leader_c)))
        :effect (and
                    ; #56180: origin
                    (not_at_c_p10)

                    ; #99320: origin
                    (at_c_p12)

                    ; #19345: <==negation-removal== 56180 (pos)
                    (not (at_c_p10))

                    ; #35695: <==negation-removal== 99320 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2)
                           (not (leader_c)))
        :effect (and
                    ; #52785: origin
                    (at_c_p2)

                    ; #56180: origin
                    (not_at_c_p10)

                    ; #19345: <==negation-removal== 56180 (pos)
                    (not (at_c_p10))

                    ; #67402: <==negation-removal== 52785 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3)
                           (not (leader_c)))
        :effect (and
                    ; #56180: origin
                    (not_at_c_p10)

                    ; #68795: origin
                    (at_c_p3)

                    ; #10346: <==negation-removal== 68795 (pos)
                    (not (not_at_c_p3))

                    ; #19345: <==negation-removal== 56180 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4)
                           (not (leader_c)))
        :effect (and
                    ; #56180: origin
                    (not_at_c_p10)

                    ; #61240: origin
                    (at_c_p4)

                    ; #18988: <==negation-removal== 61240 (pos)
                    (not (not_at_c_p4))

                    ; #19345: <==negation-removal== 56180 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5)
                           (not (leader_c)))
        :effect (and
                    ; #50665: origin
                    (at_c_p5)

                    ; #56180: origin
                    (not_at_c_p10)

                    ; #10702: <==negation-removal== 50665 (pos)
                    (not (not_at_c_p5))

                    ; #19345: <==negation-removal== 56180 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6)
                           (not (leader_c)))
        :effect (and
                    ; #14908: origin
                    (at_c_p6)

                    ; #56180: origin
                    (not_at_c_p10)

                    ; #19345: <==negation-removal== 56180 (pos)
                    (not (at_c_p10))

                    ; #28022: <==negation-removal== 14908 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7)
                           (not (leader_c)))
        :effect (and
                    ; #56180: origin
                    (not_at_c_p10)

                    ; #57806: origin
                    (at_c_p7)

                    ; #19345: <==negation-removal== 56180 (pos)
                    (not (at_c_p10))

                    ; #26962: <==negation-removal== 57806 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #56180: origin
                    (not_at_c_p10)

                    ; #88270: origin
                    (at_c_p8)

                    ; #19345: <==negation-removal== 56180 (pos)
                    (not (at_c_p10))

                    ; #45552: <==negation-removal== 88270 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #56180: origin
                    (not_at_c_p10)

                    ; #91930: origin
                    (at_c_p9)

                    ; #19345: <==negation-removal== 56180 (pos)
                    (not (at_c_p10))

                    ; #60576: <==negation-removal== 91930 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #19620: origin
                    (not_at_c_p11)

                    ; #89772: origin
                    (at_c_p1)

                    ; #10509: <==negation-removal== 19620 (pos)
                    (not (at_c_p11))

                    ; #56295: <==negation-removal== 89772 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10)
                           (not (leader_c)))
        :effect (and
                    ; #19345: origin
                    (at_c_p10)

                    ; #19620: origin
                    (not_at_c_p11)

                    ; #10509: <==negation-removal== 19620 (pos)
                    (not (at_c_p11))

                    ; #56180: <==negation-removal== 19345 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #10509: origin
                    (at_c_p11)

                    ; #19620: origin
                    (not_at_c_p11)

                    ; #10509: <==negation-removal== 19620 (pos)
                    (not (at_c_p11))

                    ; #19620: <==negation-removal== 10509 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #19620: origin
                    (not_at_c_p11)

                    ; #99320: origin
                    (at_c_p12)

                    ; #10509: <==negation-removal== 19620 (pos)
                    (not (at_c_p11))

                    ; #35695: <==negation-removal== 99320 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #19620: origin
                    (not_at_c_p11)

                    ; #52785: origin
                    (at_c_p2)

                    ; #10509: <==negation-removal== 19620 (pos)
                    (not (at_c_p11))

                    ; #67402: <==negation-removal== 52785 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #19620: origin
                    (not_at_c_p11)

                    ; #68795: origin
                    (at_c_p3)

                    ; #10346: <==negation-removal== 68795 (pos)
                    (not (not_at_c_p3))

                    ; #10509: <==negation-removal== 19620 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #19620: origin
                    (not_at_c_p11)

                    ; #61240: origin
                    (at_c_p4)

                    ; #10509: <==negation-removal== 19620 (pos)
                    (not (at_c_p11))

                    ; #18988: <==negation-removal== 61240 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #19620: origin
                    (not_at_c_p11)

                    ; #50665: origin
                    (at_c_p5)

                    ; #10509: <==negation-removal== 19620 (pos)
                    (not (at_c_p11))

                    ; #10702: <==negation-removal== 50665 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #14908: origin
                    (at_c_p6)

                    ; #19620: origin
                    (not_at_c_p11)

                    ; #10509: <==negation-removal== 19620 (pos)
                    (not (at_c_p11))

                    ; #28022: <==negation-removal== 14908 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #19620: origin
                    (not_at_c_p11)

                    ; #57806: origin
                    (at_c_p7)

                    ; #10509: <==negation-removal== 19620 (pos)
                    (not (at_c_p11))

                    ; #26962: <==negation-removal== 57806 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #19620: origin
                    (not_at_c_p11)

                    ; #88270: origin
                    (at_c_p8)

                    ; #10509: <==negation-removal== 19620 (pos)
                    (not (at_c_p11))

                    ; #45552: <==negation-removal== 88270 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #19620: origin
                    (not_at_c_p11)

                    ; #91930: origin
                    (at_c_p9)

                    ; #10509: <==negation-removal== 19620 (pos)
                    (not (at_c_p11))

                    ; #60576: <==negation-removal== 91930 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1)
                           (not (leader_c)))
        :effect (and
                    ; #35695: origin
                    (not_at_c_p12)

                    ; #89772: origin
                    (at_c_p1)

                    ; #56295: <==negation-removal== 89772 (pos)
                    (not (not_at_c_p1))

                    ; #99320: <==negation-removal== 35695 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10)
                           (not (leader_c)))
        :effect (and
                    ; #19345: origin
                    (at_c_p10)

                    ; #35695: origin
                    (not_at_c_p12)

                    ; #56180: <==negation-removal== 19345 (pos)
                    (not (not_at_c_p10))

                    ; #99320: <==negation-removal== 35695 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11)
                           (not (leader_c)))
        :effect (and
                    ; #10509: origin
                    (at_c_p11)

                    ; #35695: origin
                    (not_at_c_p12)

                    ; #19620: <==negation-removal== 10509 (pos)
                    (not (not_at_c_p11))

                    ; #99320: <==negation-removal== 35695 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12)
                           (not (leader_c)))
        :effect (and
                    ; #35695: origin
                    (not_at_c_p12)

                    ; #99320: origin
                    (at_c_p12)

                    ; #35695: <==negation-removal== 99320 (pos)
                    (not (not_at_c_p12))

                    ; #99320: <==negation-removal== 35695 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (at_c_p12)
                           (succ_p12_p2)
                           (not (leader_c)))
        :effect (and
                    ; #35695: origin
                    (not_at_c_p12)

                    ; #52785: origin
                    (at_c_p2)

                    ; #67402: <==negation-removal== 52785 (pos)
                    (not (not_at_c_p2))

                    ; #99320: <==negation-removal== 35695 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (at_c_p12)
                           (succ_p12_p3)
                           (not (leader_c)))
        :effect (and
                    ; #35695: origin
                    (not_at_c_p12)

                    ; #68795: origin
                    (at_c_p3)

                    ; #10346: <==negation-removal== 68795 (pos)
                    (not (not_at_c_p3))

                    ; #99320: <==negation-removal== 35695 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4)
                           (not (leader_c)))
        :effect (and
                    ; #35695: origin
                    (not_at_c_p12)

                    ; #61240: origin
                    (at_c_p4)

                    ; #18988: <==negation-removal== 61240 (pos)
                    (not (not_at_c_p4))

                    ; #99320: <==negation-removal== 35695 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5)
                           (not (leader_c)))
        :effect (and
                    ; #35695: origin
                    (not_at_c_p12)

                    ; #50665: origin
                    (at_c_p5)

                    ; #10702: <==negation-removal== 50665 (pos)
                    (not (not_at_c_p5))

                    ; #99320: <==negation-removal== 35695 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p6
        :precondition (and (at_c_p12)
                           (succ_p12_p6)
                           (not (leader_c)))
        :effect (and
                    ; #14908: origin
                    (at_c_p6)

                    ; #35695: origin
                    (not_at_c_p12)

                    ; #28022: <==negation-removal== 14908 (pos)
                    (not (not_at_c_p6))

                    ; #99320: <==negation-removal== 35695 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7)
                           (not (leader_c)))
        :effect (and
                    ; #35695: origin
                    (not_at_c_p12)

                    ; #57806: origin
                    (at_c_p7)

                    ; #26962: <==negation-removal== 57806 (pos)
                    (not (not_at_c_p7))

                    ; #99320: <==negation-removal== 35695 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8)
                           (not (leader_c)))
        :effect (and
                    ; #35695: origin
                    (not_at_c_p12)

                    ; #88270: origin
                    (at_c_p8)

                    ; #45552: <==negation-removal== 88270 (pos)
                    (not (not_at_c_p8))

                    ; #99320: <==negation-removal== 35695 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9)
                           (not (leader_c)))
        :effect (and
                    ; #35695: origin
                    (not_at_c_p12)

                    ; #91930: origin
                    (at_c_p9)

                    ; #60576: <==negation-removal== 91930 (pos)
                    (not (not_at_c_p9))

                    ; #99320: <==negation-removal== 35695 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #56295: origin
                    (not_at_c_p1)

                    ; #89772: origin
                    (at_c_p1)

                    ; #56295: <==negation-removal== 89772 (pos)
                    (not (not_at_c_p1))

                    ; #89772: <==negation-removal== 56295 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #19345: origin
                    (at_c_p10)

                    ; #56295: origin
                    (not_at_c_p1)

                    ; #56180: <==negation-removal== 19345 (pos)
                    (not (not_at_c_p10))

                    ; #89772: <==negation-removal== 56295 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10509: origin
                    (at_c_p11)

                    ; #56295: origin
                    (not_at_c_p1)

                    ; #19620: <==negation-removal== 10509 (pos)
                    (not (not_at_c_p11))

                    ; #89772: <==negation-removal== 56295 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #56295: origin
                    (not_at_c_p1)

                    ; #99320: origin
                    (at_c_p12)

                    ; #35695: <==negation-removal== 99320 (pos)
                    (not (not_at_c_p12))

                    ; #89772: <==negation-removal== 56295 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #52785: origin
                    (at_c_p2)

                    ; #56295: origin
                    (not_at_c_p1)

                    ; #67402: <==negation-removal== 52785 (pos)
                    (not (not_at_c_p2))

                    ; #89772: <==negation-removal== 56295 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #56295: origin
                    (not_at_c_p1)

                    ; #68795: origin
                    (at_c_p3)

                    ; #10346: <==negation-removal== 68795 (pos)
                    (not (not_at_c_p3))

                    ; #89772: <==negation-removal== 56295 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #56295: origin
                    (not_at_c_p1)

                    ; #61240: origin
                    (at_c_p4)

                    ; #18988: <==negation-removal== 61240 (pos)
                    (not (not_at_c_p4))

                    ; #89772: <==negation-removal== 56295 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #50665: origin
                    (at_c_p5)

                    ; #56295: origin
                    (not_at_c_p1)

                    ; #10702: <==negation-removal== 50665 (pos)
                    (not (not_at_c_p5))

                    ; #89772: <==negation-removal== 56295 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14908: origin
                    (at_c_p6)

                    ; #56295: origin
                    (not_at_c_p1)

                    ; #28022: <==negation-removal== 14908 (pos)
                    (not (not_at_c_p6))

                    ; #89772: <==negation-removal== 56295 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #56295: origin
                    (not_at_c_p1)

                    ; #57806: origin
                    (at_c_p7)

                    ; #26962: <==negation-removal== 57806 (pos)
                    (not (not_at_c_p7))

                    ; #89772: <==negation-removal== 56295 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #56295: origin
                    (not_at_c_p1)

                    ; #88270: origin
                    (at_c_p8)

                    ; #45552: <==negation-removal== 88270 (pos)
                    (not (not_at_c_p8))

                    ; #89772: <==negation-removal== 56295 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9)
                           (not (leader_c)))
        :effect (and
                    ; #56295: origin
                    (not_at_c_p1)

                    ; #91930: origin
                    (at_c_p9)

                    ; #60576: <==negation-removal== 91930 (pos)
                    (not (not_at_c_p9))

                    ; #89772: <==negation-removal== 56295 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1)
                           (not (leader_c)))
        :effect (and
                    ; #67402: origin
                    (not_at_c_p2)

                    ; #89772: origin
                    (at_c_p1)

                    ; #52785: <==negation-removal== 67402 (pos)
                    (not (at_c_p2))

                    ; #56295: <==negation-removal== 89772 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10)
                           (not (leader_c)))
        :effect (and
                    ; #19345: origin
                    (at_c_p10)

                    ; #67402: origin
                    (not_at_c_p2)

                    ; #52785: <==negation-removal== 67402 (pos)
                    (not (at_c_p2))

                    ; #56180: <==negation-removal== 19345 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (at_c_p2)
                           (succ_p2_p11)
                           (not (leader_c)))
        :effect (and
                    ; #10509: origin
                    (at_c_p11)

                    ; #67402: origin
                    (not_at_c_p2)

                    ; #19620: <==negation-removal== 10509 (pos)
                    (not (not_at_c_p11))

                    ; #52785: <==negation-removal== 67402 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12)
                           (not (leader_c)))
        :effect (and
                    ; #67402: origin
                    (not_at_c_p2)

                    ; #99320: origin
                    (at_c_p12)

                    ; #35695: <==negation-removal== 99320 (pos)
                    (not (not_at_c_p12))

                    ; #52785: <==negation-removal== 67402 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2)
                           (not (leader_c)))
        :effect (and
                    ; #52785: origin
                    (at_c_p2)

                    ; #67402: origin
                    (not_at_c_p2)

                    ; #52785: <==negation-removal== 67402 (pos)
                    (not (at_c_p2))

                    ; #67402: <==negation-removal== 52785 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3)
                           (not (leader_c)))
        :effect (and
                    ; #67402: origin
                    (not_at_c_p2)

                    ; #68795: origin
                    (at_c_p3)

                    ; #10346: <==negation-removal== 68795 (pos)
                    (not (not_at_c_p3))

                    ; #52785: <==negation-removal== 67402 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4)
                           (not (leader_c)))
        :effect (and
                    ; #61240: origin
                    (at_c_p4)

                    ; #67402: origin
                    (not_at_c_p2)

                    ; #18988: <==negation-removal== 61240 (pos)
                    (not (not_at_c_p4))

                    ; #52785: <==negation-removal== 67402 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5)
                           (not (leader_c)))
        :effect (and
                    ; #50665: origin
                    (at_c_p5)

                    ; #67402: origin
                    (not_at_c_p2)

                    ; #10702: <==negation-removal== 50665 (pos)
                    (not (not_at_c_p5))

                    ; #52785: <==negation-removal== 67402 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6)
                           (not (leader_c)))
        :effect (and
                    ; #14908: origin
                    (at_c_p6)

                    ; #67402: origin
                    (not_at_c_p2)

                    ; #28022: <==negation-removal== 14908 (pos)
                    (not (not_at_c_p6))

                    ; #52785: <==negation-removal== 67402 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7)
                           (not (leader_c)))
        :effect (and
                    ; #57806: origin
                    (at_c_p7)

                    ; #67402: origin
                    (not_at_c_p2)

                    ; #26962: <==negation-removal== 57806 (pos)
                    (not (not_at_c_p7))

                    ; #52785: <==negation-removal== 67402 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8)
                           (not (leader_c)))
        :effect (and
                    ; #67402: origin
                    (not_at_c_p2)

                    ; #88270: origin
                    (at_c_p8)

                    ; #45552: <==negation-removal== 88270 (pos)
                    (not (not_at_c_p8))

                    ; #52785: <==negation-removal== 67402 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9)
                           (not (leader_c)))
        :effect (and
                    ; #67402: origin
                    (not_at_c_p2)

                    ; #91930: origin
                    (at_c_p9)

                    ; #52785: <==negation-removal== 67402 (pos)
                    (not (at_c_p2))

                    ; #60576: <==negation-removal== 91930 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10346: origin
                    (not_at_c_p3)

                    ; #89772: origin
                    (at_c_p1)

                    ; #56295: <==negation-removal== 89772 (pos)
                    (not (not_at_c_p1))

                    ; #68795: <==negation-removal== 10346 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10346: origin
                    (not_at_c_p3)

                    ; #19345: origin
                    (at_c_p10)

                    ; #56180: <==negation-removal== 19345 (pos)
                    (not (not_at_c_p10))

                    ; #68795: <==negation-removal== 10346 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10346: origin
                    (not_at_c_p3)

                    ; #10509: origin
                    (at_c_p11)

                    ; #19620: <==negation-removal== 10509 (pos)
                    (not (not_at_c_p11))

                    ; #68795: <==negation-removal== 10346 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10346: origin
                    (not_at_c_p3)

                    ; #99320: origin
                    (at_c_p12)

                    ; #35695: <==negation-removal== 99320 (pos)
                    (not (not_at_c_p12))

                    ; #68795: <==negation-removal== 10346 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10346: origin
                    (not_at_c_p3)

                    ; #52785: origin
                    (at_c_p2)

                    ; #67402: <==negation-removal== 52785 (pos)
                    (not (not_at_c_p2))

                    ; #68795: <==negation-removal== 10346 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10346: origin
                    (not_at_c_p3)

                    ; #68795: origin
                    (at_c_p3)

                    ; #10346: <==negation-removal== 68795 (pos)
                    (not (not_at_c_p3))

                    ; #68795: <==negation-removal== 10346 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10346: origin
                    (not_at_c_p3)

                    ; #61240: origin
                    (at_c_p4)

                    ; #18988: <==negation-removal== 61240 (pos)
                    (not (not_at_c_p4))

                    ; #68795: <==negation-removal== 10346 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10346: origin
                    (not_at_c_p3)

                    ; #50665: origin
                    (at_c_p5)

                    ; #10702: <==negation-removal== 50665 (pos)
                    (not (not_at_c_p5))

                    ; #68795: <==negation-removal== 10346 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10346: origin
                    (not_at_c_p3)

                    ; #14908: origin
                    (at_c_p6)

                    ; #28022: <==negation-removal== 14908 (pos)
                    (not (not_at_c_p6))

                    ; #68795: <==negation-removal== 10346 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10346: origin
                    (not_at_c_p3)

                    ; #57806: origin
                    (at_c_p7)

                    ; #26962: <==negation-removal== 57806 (pos)
                    (not (not_at_c_p7))

                    ; #68795: <==negation-removal== 10346 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10346: origin
                    (not_at_c_p3)

                    ; #88270: origin
                    (at_c_p8)

                    ; #45552: <==negation-removal== 88270 (pos)
                    (not (not_at_c_p8))

                    ; #68795: <==negation-removal== 10346 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10346: origin
                    (not_at_c_p3)

                    ; #91930: origin
                    (at_c_p9)

                    ; #60576: <==negation-removal== 91930 (pos)
                    (not (not_at_c_p9))

                    ; #68795: <==negation-removal== 10346 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1)
                           (not (leader_c)))
        :effect (and
                    ; #18988: origin
                    (not_at_c_p4)

                    ; #89772: origin
                    (at_c_p1)

                    ; #56295: <==negation-removal== 89772 (pos)
                    (not (not_at_c_p1))

                    ; #61240: <==negation-removal== 18988 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10)
                           (not (leader_c)))
        :effect (and
                    ; #18988: origin
                    (not_at_c_p4)

                    ; #19345: origin
                    (at_c_p10)

                    ; #56180: <==negation-removal== 19345 (pos)
                    (not (not_at_c_p10))

                    ; #61240: <==negation-removal== 18988 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11)
                           (not (leader_c)))
        :effect (and
                    ; #10509: origin
                    (at_c_p11)

                    ; #18988: origin
                    (not_at_c_p4)

                    ; #19620: <==negation-removal== 10509 (pos)
                    (not (not_at_c_p11))

                    ; #61240: <==negation-removal== 18988 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12)
                           (not (leader_c)))
        :effect (and
                    ; #18988: origin
                    (not_at_c_p4)

                    ; #99320: origin
                    (at_c_p12)

                    ; #35695: <==negation-removal== 99320 (pos)
                    (not (not_at_c_p12))

                    ; #61240: <==negation-removal== 18988 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2)
                           (not (leader_c)))
        :effect (and
                    ; #18988: origin
                    (not_at_c_p4)

                    ; #52785: origin
                    (at_c_p2)

                    ; #61240: <==negation-removal== 18988 (pos)
                    (not (at_c_p4))

                    ; #67402: <==negation-removal== 52785 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3)
                           (not (leader_c)))
        :effect (and
                    ; #18988: origin
                    (not_at_c_p4)

                    ; #68795: origin
                    (at_c_p3)

                    ; #10346: <==negation-removal== 68795 (pos)
                    (not (not_at_c_p3))

                    ; #61240: <==negation-removal== 18988 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4)
                           (not (leader_c)))
        :effect (and
                    ; #18988: origin
                    (not_at_c_p4)

                    ; #61240: origin
                    (at_c_p4)

                    ; #18988: <==negation-removal== 61240 (pos)
                    (not (not_at_c_p4))

                    ; #61240: <==negation-removal== 18988 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5)
                           (not (leader_c)))
        :effect (and
                    ; #18988: origin
                    (not_at_c_p4)

                    ; #50665: origin
                    (at_c_p5)

                    ; #10702: <==negation-removal== 50665 (pos)
                    (not (not_at_c_p5))

                    ; #61240: <==negation-removal== 18988 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6)
                           (not (leader_c)))
        :effect (and
                    ; #14908: origin
                    (at_c_p6)

                    ; #18988: origin
                    (not_at_c_p4)

                    ; #28022: <==negation-removal== 14908 (pos)
                    (not (not_at_c_p6))

                    ; #61240: <==negation-removal== 18988 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7)
                           (not (leader_c)))
        :effect (and
                    ; #18988: origin
                    (not_at_c_p4)

                    ; #57806: origin
                    (at_c_p7)

                    ; #26962: <==negation-removal== 57806 (pos)
                    (not (not_at_c_p7))

                    ; #61240: <==negation-removal== 18988 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8)
                           (not (leader_c)))
        :effect (and
                    ; #18988: origin
                    (not_at_c_p4)

                    ; #88270: origin
                    (at_c_p8)

                    ; #45552: <==negation-removal== 88270 (pos)
                    (not (not_at_c_p8))

                    ; #61240: <==negation-removal== 18988 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9)
                           (not (leader_c)))
        :effect (and
                    ; #18988: origin
                    (not_at_c_p4)

                    ; #91930: origin
                    (at_c_p9)

                    ; #60576: <==negation-removal== 91930 (pos)
                    (not (not_at_c_p9))

                    ; #61240: <==negation-removal== 18988 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10702: origin
                    (not_at_c_p5)

                    ; #89772: origin
                    (at_c_p1)

                    ; #50665: <==negation-removal== 10702 (pos)
                    (not (at_c_p5))

                    ; #56295: <==negation-removal== 89772 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10)
                           (not (leader_c)))
        :effect (and
                    ; #10702: origin
                    (not_at_c_p5)

                    ; #19345: origin
                    (at_c_p10)

                    ; #50665: <==negation-removal== 10702 (pos)
                    (not (at_c_p5))

                    ; #56180: <==negation-removal== 19345 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #10509: origin
                    (at_c_p11)

                    ; #10702: origin
                    (not_at_c_p5)

                    ; #19620: <==negation-removal== 10509 (pos)
                    (not (not_at_c_p11))

                    ; #50665: <==negation-removal== 10702 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12)
                           (not (leader_c)))
        :effect (and
                    ; #10702: origin
                    (not_at_c_p5)

                    ; #99320: origin
                    (at_c_p12)

                    ; #35695: <==negation-removal== 99320 (pos)
                    (not (not_at_c_p12))

                    ; #50665: <==negation-removal== 10702 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2)
                           (not (leader_c)))
        :effect (and
                    ; #10702: origin
                    (not_at_c_p5)

                    ; #52785: origin
                    (at_c_p2)

                    ; #50665: <==negation-removal== 10702 (pos)
                    (not (at_c_p5))

                    ; #67402: <==negation-removal== 52785 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10702: origin
                    (not_at_c_p5)

                    ; #68795: origin
                    (at_c_p3)

                    ; #10346: <==negation-removal== 68795 (pos)
                    (not (not_at_c_p3))

                    ; #50665: <==negation-removal== 10702 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4)
                           (not (leader_c)))
        :effect (and
                    ; #10702: origin
                    (not_at_c_p5)

                    ; #61240: origin
                    (at_c_p4)

                    ; #18988: <==negation-removal== 61240 (pos)
                    (not (not_at_c_p4))

                    ; #50665: <==negation-removal== 10702 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5)
                           (not (leader_c)))
        :effect (and
                    ; #10702: origin
                    (not_at_c_p5)

                    ; #50665: origin
                    (at_c_p5)

                    ; #10702: <==negation-removal== 50665 (pos)
                    (not (not_at_c_p5))

                    ; #50665: <==negation-removal== 10702 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6)
                           (not (leader_c)))
        :effect (and
                    ; #10702: origin
                    (not_at_c_p5)

                    ; #14908: origin
                    (at_c_p6)

                    ; #28022: <==negation-removal== 14908 (pos)
                    (not (not_at_c_p6))

                    ; #50665: <==negation-removal== 10702 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7)
                           (not (leader_c)))
        :effect (and
                    ; #10702: origin
                    (not_at_c_p5)

                    ; #57806: origin
                    (at_c_p7)

                    ; #26962: <==negation-removal== 57806 (pos)
                    (not (not_at_c_p7))

                    ; #50665: <==negation-removal== 10702 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8)
                           (not (leader_c)))
        :effect (and
                    ; #10702: origin
                    (not_at_c_p5)

                    ; #88270: origin
                    (at_c_p8)

                    ; #45552: <==negation-removal== 88270 (pos)
                    (not (not_at_c_p8))

                    ; #50665: <==negation-removal== 10702 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9)
                           (not (leader_c)))
        :effect (and
                    ; #10702: origin
                    (not_at_c_p5)

                    ; #91930: origin
                    (at_c_p9)

                    ; #50665: <==negation-removal== 10702 (pos)
                    (not (at_c_p5))

                    ; #60576: <==negation-removal== 91930 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1)
                           (not (leader_c)))
        :effect (and
                    ; #28022: origin
                    (not_at_c_p6)

                    ; #89772: origin
                    (at_c_p1)

                    ; #14908: <==negation-removal== 28022 (pos)
                    (not (at_c_p6))

                    ; #56295: <==negation-removal== 89772 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10)
                           (not (leader_c)))
        :effect (and
                    ; #19345: origin
                    (at_c_p10)

                    ; #28022: origin
                    (not_at_c_p6)

                    ; #14908: <==negation-removal== 28022 (pos)
                    (not (at_c_p6))

                    ; #56180: <==negation-removal== 19345 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11)
                           (not (leader_c)))
        :effect (and
                    ; #10509: origin
                    (at_c_p11)

                    ; #28022: origin
                    (not_at_c_p6)

                    ; #14908: <==negation-removal== 28022 (pos)
                    (not (at_c_p6))

                    ; #19620: <==negation-removal== 10509 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12)
                           (not (leader_c)))
        :effect (and
                    ; #28022: origin
                    (not_at_c_p6)

                    ; #99320: origin
                    (at_c_p12)

                    ; #14908: <==negation-removal== 28022 (pos)
                    (not (at_c_p6))

                    ; #35695: <==negation-removal== 99320 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2)
                           (not (leader_c)))
        :effect (and
                    ; #28022: origin
                    (not_at_c_p6)

                    ; #52785: origin
                    (at_c_p2)

                    ; #14908: <==negation-removal== 28022 (pos)
                    (not (at_c_p6))

                    ; #67402: <==negation-removal== 52785 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3)
                           (not (leader_c)))
        :effect (and
                    ; #28022: origin
                    (not_at_c_p6)

                    ; #68795: origin
                    (at_c_p3)

                    ; #10346: <==negation-removal== 68795 (pos)
                    (not (not_at_c_p3))

                    ; #14908: <==negation-removal== 28022 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4)
                           (not (leader_c)))
        :effect (and
                    ; #28022: origin
                    (not_at_c_p6)

                    ; #61240: origin
                    (at_c_p4)

                    ; #14908: <==negation-removal== 28022 (pos)
                    (not (at_c_p6))

                    ; #18988: <==negation-removal== 61240 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5)
                           (not (leader_c)))
        :effect (and
                    ; #28022: origin
                    (not_at_c_p6)

                    ; #50665: origin
                    (at_c_p5)

                    ; #10702: <==negation-removal== 50665 (pos)
                    (not (not_at_c_p5))

                    ; #14908: <==negation-removal== 28022 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6)
                           (not (leader_c)))
        :effect (and
                    ; #14908: origin
                    (at_c_p6)

                    ; #28022: origin
                    (not_at_c_p6)

                    ; #14908: <==negation-removal== 28022 (pos)
                    (not (at_c_p6))

                    ; #28022: <==negation-removal== 14908 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7)
                           (not (leader_c)))
        :effect (and
                    ; #28022: origin
                    (not_at_c_p6)

                    ; #57806: origin
                    (at_c_p7)

                    ; #14908: <==negation-removal== 28022 (pos)
                    (not (at_c_p6))

                    ; #26962: <==negation-removal== 57806 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8)
                           (not (leader_c)))
        :effect (and
                    ; #28022: origin
                    (not_at_c_p6)

                    ; #88270: origin
                    (at_c_p8)

                    ; #14908: <==negation-removal== 28022 (pos)
                    (not (at_c_p6))

                    ; #45552: <==negation-removal== 88270 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9)
                           (not (leader_c)))
        :effect (and
                    ; #28022: origin
                    (not_at_c_p6)

                    ; #91930: origin
                    (at_c_p9)

                    ; #14908: <==negation-removal== 28022 (pos)
                    (not (at_c_p6))

                    ; #60576: <==negation-removal== 91930 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1)
                           (not (leader_c)))
        :effect (and
                    ; #26962: origin
                    (not_at_c_p7)

                    ; #89772: origin
                    (at_c_p1)

                    ; #56295: <==negation-removal== 89772 (pos)
                    (not (not_at_c_p1))

                    ; #57806: <==negation-removal== 26962 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (at_c_p7)
                           (succ_p7_p10)
                           (not (leader_c)))
        :effect (and
                    ; #19345: origin
                    (at_c_p10)

                    ; #26962: origin
                    (not_at_c_p7)

                    ; #56180: <==negation-removal== 19345 (pos)
                    (not (not_at_c_p10))

                    ; #57806: <==negation-removal== 26962 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11)
                           (not (leader_c)))
        :effect (and
                    ; #10509: origin
                    (at_c_p11)

                    ; #26962: origin
                    (not_at_c_p7)

                    ; #19620: <==negation-removal== 10509 (pos)
                    (not (not_at_c_p11))

                    ; #57806: <==negation-removal== 26962 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12)
                           (not (leader_c)))
        :effect (and
                    ; #26962: origin
                    (not_at_c_p7)

                    ; #99320: origin
                    (at_c_p12)

                    ; #35695: <==negation-removal== 99320 (pos)
                    (not (not_at_c_p12))

                    ; #57806: <==negation-removal== 26962 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2)
                           (not (leader_c)))
        :effect (and
                    ; #26962: origin
                    (not_at_c_p7)

                    ; #52785: origin
                    (at_c_p2)

                    ; #57806: <==negation-removal== 26962 (pos)
                    (not (at_c_p7))

                    ; #67402: <==negation-removal== 52785 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3)
                           (not (leader_c)))
        :effect (and
                    ; #26962: origin
                    (not_at_c_p7)

                    ; #68795: origin
                    (at_c_p3)

                    ; #10346: <==negation-removal== 68795 (pos)
                    (not (not_at_c_p3))

                    ; #57806: <==negation-removal== 26962 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4)
                           (not (leader_c)))
        :effect (and
                    ; #26962: origin
                    (not_at_c_p7)

                    ; #61240: origin
                    (at_c_p4)

                    ; #18988: <==negation-removal== 61240 (pos)
                    (not (not_at_c_p4))

                    ; #57806: <==negation-removal== 26962 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5)
                           (not (leader_c)))
        :effect (and
                    ; #26962: origin
                    (not_at_c_p7)

                    ; #50665: origin
                    (at_c_p5)

                    ; #10702: <==negation-removal== 50665 (pos)
                    (not (not_at_c_p5))

                    ; #57806: <==negation-removal== 26962 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6)
                           (not (leader_c)))
        :effect (and
                    ; #14908: origin
                    (at_c_p6)

                    ; #26962: origin
                    (not_at_c_p7)

                    ; #28022: <==negation-removal== 14908 (pos)
                    (not (not_at_c_p6))

                    ; #57806: <==negation-removal== 26962 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7)
                           (not (leader_c)))
        :effect (and
                    ; #26962: origin
                    (not_at_c_p7)

                    ; #57806: origin
                    (at_c_p7)

                    ; #26962: <==negation-removal== 57806 (pos)
                    (not (not_at_c_p7))

                    ; #57806: <==negation-removal== 26962 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8)
                           (not (leader_c)))
        :effect (and
                    ; #26962: origin
                    (not_at_c_p7)

                    ; #88270: origin
                    (at_c_p8)

                    ; #45552: <==negation-removal== 88270 (pos)
                    (not (not_at_c_p8))

                    ; #57806: <==negation-removal== 26962 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9)
                           (not (leader_c)))
        :effect (and
                    ; #26962: origin
                    (not_at_c_p7)

                    ; #91930: origin
                    (at_c_p9)

                    ; #57806: <==negation-removal== 26962 (pos)
                    (not (at_c_p7))

                    ; #60576: <==negation-removal== 91930 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1)
                           (not (leader_c)))
        :effect (and
                    ; #45552: origin
                    (not_at_c_p8)

                    ; #89772: origin
                    (at_c_p1)

                    ; #56295: <==negation-removal== 89772 (pos)
                    (not (not_at_c_p1))

                    ; #88270: <==negation-removal== 45552 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #19345: origin
                    (at_c_p10)

                    ; #45552: origin
                    (not_at_c_p8)

                    ; #56180: <==negation-removal== 19345 (pos)
                    (not (not_at_c_p10))

                    ; #88270: <==negation-removal== 45552 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #10509: origin
                    (at_c_p11)

                    ; #45552: origin
                    (not_at_c_p8)

                    ; #19620: <==negation-removal== 10509 (pos)
                    (not (not_at_c_p11))

                    ; #88270: <==negation-removal== 45552 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12)
                           (not (leader_c)))
        :effect (and
                    ; #45552: origin
                    (not_at_c_p8)

                    ; #99320: origin
                    (at_c_p12)

                    ; #35695: <==negation-removal== 99320 (pos)
                    (not (not_at_c_p12))

                    ; #88270: <==negation-removal== 45552 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2)
                           (not (leader_c)))
        :effect (and
                    ; #45552: origin
                    (not_at_c_p8)

                    ; #52785: origin
                    (at_c_p2)

                    ; #67402: <==negation-removal== 52785 (pos)
                    (not (not_at_c_p2))

                    ; #88270: <==negation-removal== 45552 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3)
                           (not (leader_c)))
        :effect (and
                    ; #45552: origin
                    (not_at_c_p8)

                    ; #68795: origin
                    (at_c_p3)

                    ; #10346: <==negation-removal== 68795 (pos)
                    (not (not_at_c_p3))

                    ; #88270: <==negation-removal== 45552 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #45552: origin
                    (not_at_c_p8)

                    ; #61240: origin
                    (at_c_p4)

                    ; #18988: <==negation-removal== 61240 (pos)
                    (not (not_at_c_p4))

                    ; #88270: <==negation-removal== 45552 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #45552: origin
                    (not_at_c_p8)

                    ; #50665: origin
                    (at_c_p5)

                    ; #10702: <==negation-removal== 50665 (pos)
                    (not (not_at_c_p5))

                    ; #88270: <==negation-removal== 45552 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6)
                           (not (leader_c)))
        :effect (and
                    ; #14908: origin
                    (at_c_p6)

                    ; #45552: origin
                    (not_at_c_p8)

                    ; #28022: <==negation-removal== 14908 (pos)
                    (not (not_at_c_p6))

                    ; #88270: <==negation-removal== 45552 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #45552: origin
                    (not_at_c_p8)

                    ; #57806: origin
                    (at_c_p7)

                    ; #26962: <==negation-removal== 57806 (pos)
                    (not (not_at_c_p7))

                    ; #88270: <==negation-removal== 45552 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8)
                           (not (leader_c)))
        :effect (and
                    ; #45552: origin
                    (not_at_c_p8)

                    ; #88270: origin
                    (at_c_p8)

                    ; #45552: <==negation-removal== 88270 (pos)
                    (not (not_at_c_p8))

                    ; #88270: <==negation-removal== 45552 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9)
                           (not (leader_c)))
        :effect (and
                    ; #45552: origin
                    (not_at_c_p8)

                    ; #91930: origin
                    (at_c_p9)

                    ; #60576: <==negation-removal== 91930 (pos)
                    (not (not_at_c_p9))

                    ; #88270: <==negation-removal== 45552 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1)
                           (not (leader_c)))
        :effect (and
                    ; #60576: origin
                    (not_at_c_p9)

                    ; #89772: origin
                    (at_c_p1)

                    ; #56295: <==negation-removal== 89772 (pos)
                    (not (not_at_c_p1))

                    ; #91930: <==negation-removal== 60576 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10)
                           (not (leader_c)))
        :effect (and
                    ; #19345: origin
                    (at_c_p10)

                    ; #60576: origin
                    (not_at_c_p9)

                    ; #56180: <==negation-removal== 19345 (pos)
                    (not (not_at_c_p10))

                    ; #91930: <==negation-removal== 60576 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #10509: origin
                    (at_c_p11)

                    ; #60576: origin
                    (not_at_c_p9)

                    ; #19620: <==negation-removal== 10509 (pos)
                    (not (not_at_c_p11))

                    ; #91930: <==negation-removal== 60576 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12)
                           (not (leader_c)))
        :effect (and
                    ; #60576: origin
                    (not_at_c_p9)

                    ; #99320: origin
                    (at_c_p12)

                    ; #35695: <==negation-removal== 99320 (pos)
                    (not (not_at_c_p12))

                    ; #91930: <==negation-removal== 60576 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2)
                           (not (leader_c)))
        :effect (and
                    ; #52785: origin
                    (at_c_p2)

                    ; #60576: origin
                    (not_at_c_p9)

                    ; #67402: <==negation-removal== 52785 (pos)
                    (not (not_at_c_p2))

                    ; #91930: <==negation-removal== 60576 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3)
                           (not (leader_c)))
        :effect (and
                    ; #60576: origin
                    (not_at_c_p9)

                    ; #68795: origin
                    (at_c_p3)

                    ; #10346: <==negation-removal== 68795 (pos)
                    (not (not_at_c_p3))

                    ; #91930: <==negation-removal== 60576 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4)
                           (not (leader_c)))
        :effect (and
                    ; #60576: origin
                    (not_at_c_p9)

                    ; #61240: origin
                    (at_c_p4)

                    ; #18988: <==negation-removal== 61240 (pos)
                    (not (not_at_c_p4))

                    ; #91930: <==negation-removal== 60576 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5)
                           (not (leader_c)))
        :effect (and
                    ; #50665: origin
                    (at_c_p5)

                    ; #60576: origin
                    (not_at_c_p9)

                    ; #10702: <==negation-removal== 50665 (pos)
                    (not (not_at_c_p5))

                    ; #91930: <==negation-removal== 60576 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #14908: origin
                    (at_c_p6)

                    ; #60576: origin
                    (not_at_c_p9)

                    ; #28022: <==negation-removal== 14908 (pos)
                    (not (not_at_c_p6))

                    ; #91930: <==negation-removal== 60576 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #57806: origin
                    (at_c_p7)

                    ; #60576: origin
                    (not_at_c_p9)

                    ; #26962: <==negation-removal== 57806 (pos)
                    (not (not_at_c_p7))

                    ; #91930: <==negation-removal== 60576 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8)
                           (not (leader_c)))
        :effect (and
                    ; #60576: origin
                    (not_at_c_p9)

                    ; #88270: origin
                    (at_c_p8)

                    ; #45552: <==negation-removal== 88270 (pos)
                    (not (not_at_c_p8))

                    ; #91930: <==negation-removal== 60576 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9)
                           (not (leader_c)))
        :effect (and
                    ; #60576: origin
                    (not_at_c_p9)

                    ; #91930: origin
                    (at_c_p9)

                    ; #60576: <==negation-removal== 91930 (pos)
                    (not (not_at_c_p9))

                    ; #91930: <==negation-removal== 60576 (pos)
                    (not (at_c_p9))))

    (:action observe_a_p10_s
        :precondition (and (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #11380: <==closure== 64383 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #16083: origin
                    (checked_p10)

                    ; #18982: <==commonly_known== 16083 (pos)
                    (Bc_checked_p10)

                    ; #35609: <==closure== 66816 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #63601: <==commonly_known== 69004 (neg)
                    (Pa_checked_p10)

                    ; #64383: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #66816: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #67000: <==commonly_known== 69004 (neg)
                    (Pc_checked_p10)

                    ; #73554: <==commonly_known== 16083 (pos)
                    (Bb_checked_p10)

                    ; #77335: <==commonly_known== 16083 (pos)
                    (Ba_checked_p10)

                    ; #79456: <==commonly_known== 69004 (neg)
                    (Pb_checked_p10)

                    ; #28515: <==uncertain_firing== 64383 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #45301: <==uncertain_firing== 35609 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #47572: <==uncertain_firing== 11380 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #50638: <==negation-removal== 66816 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #50697: <==negation-removal== 63601 (pos)
                    (not (Ba_not_checked_p10))

                    ; #54979: <==uncertain_firing== 66816 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #68784: <==negation-removal== 77335 (pos)
                    (not (Pa_not_checked_p10))

                    ; #69004: <==negation-removal== 16083 (pos)
                    (not (not_checked_p10))

                    ; #72893: <==negation-removal== 64383 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #74057: <==negation-removal== 35609 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #77762: <==negation-removal== 67000 (pos)
                    (not (Bc_not_checked_p10))

                    ; #78074: <==negation-removal== 73554 (pos)
                    (not (Pb_not_checked_p10))

                    ; #80424: <==negation-removal== 11380 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #86384: <==negation-removal== 79456 (pos)
                    (not (Bb_not_checked_p10))

                    ; #90819: <==negation-removal== 18982 (pos)
                    (not (Pc_not_checked_p10))))

    (:action observe_a_p11_s
        :precondition (and (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #21709: <==commonly_known== 80813 (pos)
                    (Ba_checked_p11)

                    ; #31750: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #32844: <==commonly_known== 80813 (pos)
                    (Bb_checked_p11)

                    ; #55437: <==commonly_known== 18449 (neg)
                    (Pc_checked_p11)

                    ; #60661: <==closure== 31750 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #61121: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #76382: <==commonly_known== 18449 (neg)
                    (Pa_checked_p11)

                    ; #77924: <==closure== 61121 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #80813: origin
                    (checked_p11)

                    ; #82303: <==commonly_known== 18449 (neg)
                    (Pb_checked_p11)

                    ; #85328: <==commonly_known== 80813 (pos)
                    (Bc_checked_p11)

                    ; #10773: <==negation-removal== 77924 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #12441: <==negation-removal== 31750 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #18449: <==negation-removal== 80813 (pos)
                    (not (not_checked_p11))

                    ; #21171: <==negation-removal== 85328 (pos)
                    (not (Pc_not_checked_p11))

                    ; #30818: <==negation-removal== 21709 (pos)
                    (not (Pa_not_checked_p11))

                    ; #30958: <==negation-removal== 60661 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #33782: <==uncertain_firing== 61121 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #34249: <==uncertain_firing== 31750 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #40087: <==negation-removal== 76382 (pos)
                    (not (Ba_not_checked_p11))

                    ; #51343: <==uncertain_firing== 60661 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #68183: <==uncertain_firing== 77924 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #74272: <==negation-removal== 55437 (pos)
                    (not (Bc_not_checked_p11))

                    ; #76236: <==negation-removal== 82303 (pos)
                    (not (Bb_not_checked_p11))

                    ; #76661: <==negation-removal== 61121 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #79704: <==negation-removal== 32844 (pos)
                    (not (Pb_not_checked_p11))))

    (:action observe_a_p12_s
        :precondition (and (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #13489: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #15905: <==commonly_known== 63840 (pos)
                    (Ba_checked_p12)

                    ; #35594: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #41658: <==closure== 35594 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #48527: <==closure== 13489 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #55526: <==commonly_known== 13688 (neg)
                    (Pb_checked_p12)

                    ; #59948: <==commonly_known== 63840 (pos)
                    (Bc_checked_p12)

                    ; #63757: <==commonly_known== 13688 (neg)
                    (Pc_checked_p12)

                    ; #63840: origin
                    (checked_p12)

                    ; #81370: <==commonly_known== 63840 (pos)
                    (Bb_checked_p12)

                    ; #89328: <==commonly_known== 13688 (neg)
                    (Pa_checked_p12)

                    ; #12723: <==uncertain_firing== 41658 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #13688: <==negation-removal== 63840 (pos)
                    (not (not_checked_p12))

                    ; #15720: <==uncertain_firing== 35594 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #17429: <==negation-removal== 63757 (pos)
                    (not (Bc_not_checked_p12))

                    ; #24206: <==negation-removal== 55526 (pos)
                    (not (Bb_not_checked_p12))

                    ; #27837: <==negation-removal== 41658 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #27883: <==negation-removal== 35594 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #29977: <==negation-removal== 81370 (pos)
                    (not (Pb_not_checked_p12))

                    ; #32908: <==negation-removal== 13489 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #53482: <==negation-removal== 59948 (pos)
                    (not (Pc_not_checked_p12))

                    ; #66738: <==uncertain_firing== 48527 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #70829: <==uncertain_firing== 13489 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #72460: <==negation-removal== 15905 (pos)
                    (not (Pa_not_checked_p12))

                    ; #73787: <==negation-removal== 48527 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #79585: <==negation-removal== 89328 (pos)
                    (not (Ba_not_checked_p12))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #30369: <==commonly_known== 12102 (neg)
                    (Pb_checked_p1)

                    ; #41582: <==commonly_known== 77133 (pos)
                    (Bb_checked_p1)

                    ; #52520: <==commonly_known== 12102 (neg)
                    (Pc_checked_p1)

                    ; #55180: <==commonly_known== 77133 (pos)
                    (Bc_checked_p1)

                    ; #59476: <==closure== 72774 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #64475: <==closure== 72497 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #66809: <==commonly_known== 12102 (neg)
                    (Pa_checked_p1)

                    ; #72497: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #72774: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #76152: <==commonly_known== 77133 (pos)
                    (Ba_checked_p1)

                    ; #77133: origin
                    (checked_p1)

                    ; #12102: <==negation-removal== 77133 (pos)
                    (not (not_checked_p1))

                    ; #17251: <==negation-removal== 72774 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #22210: <==negation-removal== 41582 (pos)
                    (not (Pb_not_checked_p1))

                    ; #22237: <==uncertain_firing== 72497 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #22447: <==negation-removal== 66809 (pos)
                    (not (Ba_not_checked_p1))

                    ; #35082: <==negation-removal== 76152 (pos)
                    (not (Pa_not_checked_p1))

                    ; #41994: <==uncertain_firing== 72774 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #55105: <==negation-removal== 52520 (pos)
                    (not (Bc_not_checked_p1))

                    ; #56326: <==uncertain_firing== 59476 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #59048: <==negation-removal== 30369 (pos)
                    (not (Bb_not_checked_p1))

                    ; #68446: <==negation-removal== 55180 (pos)
                    (not (Pc_not_checked_p1))

                    ; #70114: <==uncertain_firing== 64475 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #74955: <==negation-removal== 64475 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #86779: <==negation-removal== 59476 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #89131: <==negation-removal== 72497 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #10480: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #15375: <==closure== 10480 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #24864: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #30316: <==commonly_known== 41451 (neg)
                    (Pc_checked_p2)

                    ; #40770: <==commonly_known== 41451 (neg)
                    (Pa_checked_p2)

                    ; #45693: <==commonly_known== 71950 (pos)
                    (Bc_checked_p2)

                    ; #71950: origin
                    (checked_p2)

                    ; #73749: <==commonly_known== 71950 (pos)
                    (Bb_checked_p2)

                    ; #87470: <==commonly_known== 41451 (neg)
                    (Pb_checked_p2)

                    ; #87839: <==closure== 24864 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #89445: <==commonly_known== 71950 (pos)
                    (Ba_checked_p2)

                    ; #13898: <==uncertain_firing== 87839 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #27879: <==negation-removal== 15375 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #34924: <==uncertain_firing== 10480 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #41451: <==negation-removal== 71950 (pos)
                    (not (not_checked_p2))

                    ; #42136: <==negation-removal== 30316 (pos)
                    (not (Bc_not_checked_p2))

                    ; #45419: <==negation-removal== 87470 (pos)
                    (not (Bb_not_checked_p2))

                    ; #52531: <==negation-removal== 10480 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #58578: <==uncertain_firing== 24864 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #66026: <==negation-removal== 45693 (pos)
                    (not (Pc_not_checked_p2))

                    ; #75821: <==negation-removal== 87839 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #81335: <==negation-removal== 40770 (pos)
                    (not (Ba_not_checked_p2))

                    ; #84386: <==negation-removal== 24864 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #85495: <==negation-removal== 73749 (pos)
                    (not (Pb_not_checked_p2))

                    ; #89124: <==uncertain_firing== 15375 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #89263: <==negation-removal== 89445 (pos)
                    (not (Pa_not_checked_p2))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #18802: origin
                    (checked_p3)

                    ; #26082: <==commonly_known== 18802 (pos)
                    (Bc_checked_p3)

                    ; #40778: <==commonly_known== 18802 (pos)
                    (Ba_checked_p3)

                    ; #41073: <==closure== 78883 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #51116: <==commonly_known== 35764 (neg)
                    (Pc_checked_p3)

                    ; #59512: <==commonly_known== 18802 (pos)
                    (Bb_checked_p3)

                    ; #61768: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #70776: <==commonly_known== 35764 (neg)
                    (Pb_checked_p3)

                    ; #78883: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #81633: <==closure== 61768 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #89652: <==commonly_known== 35764 (neg)
                    (Pa_checked_p3)

                    ; #18727: <==negation-removal== 61768 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #25174: <==negation-removal== 70776 (pos)
                    (not (Bb_not_checked_p3))

                    ; #33145: <==uncertain_firing== 61768 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #35764: <==negation-removal== 18802 (pos)
                    (not (not_checked_p3))

                    ; #36860: <==negation-removal== 78883 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #38094: <==negation-removal== 26082 (pos)
                    (not (Pc_not_checked_p3))

                    ; #43199: <==negation-removal== 40778 (pos)
                    (not (Pa_not_checked_p3))

                    ; #43771: <==negation-removal== 89652 (pos)
                    (not (Ba_not_checked_p3))

                    ; #45088: <==uncertain_firing== 41073 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #61614: <==negation-removal== 51116 (pos)
                    (not (Bc_not_checked_p3))

                    ; #63069: <==negation-removal== 41073 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #76625: <==negation-removal== 59512 (pos)
                    (not (Pb_not_checked_p3))

                    ; #84495: <==uncertain_firing== 78883 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #88620: <==negation-removal== 81633 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #91925: <==uncertain_firing== 81633 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #12690: <==commonly_known== 35099 (pos)
                    (Bc_checked_p4)

                    ; #25113: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #35099: origin
                    (checked_p4)

                    ; #45369: <==commonly_known== 35099 (pos)
                    (Ba_checked_p4)

                    ; #47422: <==commonly_known== 35099 (pos)
                    (Bb_checked_p4)

                    ; #51225: <==commonly_known== 34950 (neg)
                    (Pa_checked_p4)

                    ; #55334: <==closure== 86515 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #67771: <==commonly_known== 34950 (neg)
                    (Pb_checked_p4)

                    ; #78756: <==commonly_known== 34950 (neg)
                    (Pc_checked_p4)

                    ; #78878: <==closure== 25113 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #86515: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #14542: <==uncertain_firing== 55334 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #15161: <==negation-removal== 55334 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #16281: <==negation-removal== 51225 (pos)
                    (not (Ba_not_checked_p4))

                    ; #19911: <==negation-removal== 78756 (pos)
                    (not (Bc_not_checked_p4))

                    ; #20518: <==negation-removal== 12690 (pos)
                    (not (Pc_not_checked_p4))

                    ; #21433: <==uncertain_firing== 25113 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #32497: <==uncertain_firing== 86515 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #34950: <==negation-removal== 35099 (pos)
                    (not (not_checked_p4))

                    ; #58047: <==negation-removal== 78878 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #58492: <==negation-removal== 86515 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #69334: <==negation-removal== 47422 (pos)
                    (not (Pb_not_checked_p4))

                    ; #75810: <==negation-removal== 45369 (pos)
                    (not (Pa_not_checked_p4))

                    ; #79344: <==negation-removal== 67771 (pos)
                    (not (Bb_not_checked_p4))

                    ; #80209: <==negation-removal== 25113 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #86615: <==uncertain_firing== 78878 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #10201: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #12958: <==commonly_known== 17913 (neg)
                    (Pc_checked_p5)

                    ; #27152: <==closure== 10201 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #27733: <==commonly_known== 17913 (neg)
                    (Pa_checked_p5)

                    ; #42035: <==closure== 60989 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #54934: <==commonly_known== 71351 (pos)
                    (Bc_checked_p5)

                    ; #60989: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #71351: origin
                    (checked_p5)

                    ; #76353: <==commonly_known== 17913 (neg)
                    (Pb_checked_p5)

                    ; #85517: <==commonly_known== 71351 (pos)
                    (Ba_checked_p5)

                    ; #87719: <==commonly_known== 71351 (pos)
                    (Bb_checked_p5)

                    ; #17913: <==negation-removal== 71351 (pos)
                    (not (not_checked_p5))

                    ; #21682: <==negation-removal== 87719 (pos)
                    (not (Pb_not_checked_p5))

                    ; #39157: <==negation-removal== 27152 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #44746: <==negation-removal== 10201 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #45959: <==negation-removal== 60989 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #51873: <==negation-removal== 85517 (pos)
                    (not (Pa_not_checked_p5))

                    ; #54804: <==uncertain_firing== 27152 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #57550: <==negation-removal== 27733 (pos)
                    (not (Ba_not_checked_p5))

                    ; #57716: <==negation-removal== 54934 (pos)
                    (not (Pc_not_checked_p5))

                    ; #59581: <==uncertain_firing== 42035 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #60098: <==negation-removal== 76353 (pos)
                    (not (Bb_not_checked_p5))

                    ; #69002: <==uncertain_firing== 60989 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #73112: <==uncertain_firing== 10201 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #90469: <==negation-removal== 42035 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #91481: <==negation-removal== 12958 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #10069: origin
                    (checked_p6)

                    ; #15280: <==commonly_known== 11058 (neg)
                    (Pc_checked_p6)

                    ; #31152: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #38059: <==commonly_known== 11058 (neg)
                    (Pa_checked_p6)

                    ; #39443: <==closure== 42155 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #42155: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #42254: <==commonly_known== 11058 (neg)
                    (Pb_checked_p6)

                    ; #51464: <==commonly_known== 10069 (pos)
                    (Bb_checked_p6)

                    ; #67148: <==commonly_known== 10069 (pos)
                    (Bc_checked_p6)

                    ; #71850: <==closure== 31152 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #87124: <==commonly_known== 10069 (pos)
                    (Ba_checked_p6)

                    ; #11058: <==negation-removal== 10069 (pos)
                    (not (not_checked_p6))

                    ; #15690: <==negation-removal== 87124 (pos)
                    (not (Pa_not_checked_p6))

                    ; #20076: <==uncertain_firing== 31152 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #20814: <==uncertain_firing== 39443 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #22061: <==negation-removal== 39443 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #26916: <==negation-removal== 15280 (pos)
                    (not (Bc_not_checked_p6))

                    ; #31692: <==uncertain_firing== 42155 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #43603: <==negation-removal== 31152 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #53914: <==negation-removal== 67148 (pos)
                    (not (Pc_not_checked_p6))

                    ; #60005: <==negation-removal== 42254 (pos)
                    (not (Bb_not_checked_p6))

                    ; #61742: <==negation-removal== 51464 (pos)
                    (not (Pb_not_checked_p6))

                    ; #62198: <==negation-removal== 71850 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #68069: <==negation-removal== 38059 (pos)
                    (not (Ba_not_checked_p6))

                    ; #75376: <==negation-removal== 42155 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #87830: <==uncertain_firing== 71850 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #10366: <==closure== 53956 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #10373: <==commonly_known== 16076 (neg)
                    (Pc_checked_p7)

                    ; #16726: <==closure== 95343 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #33065: <==commonly_known== 74006 (pos)
                    (Ba_checked_p7)

                    ; #33632: <==commonly_known== 16076 (neg)
                    (Pa_checked_p7)

                    ; #44874: <==commonly_known== 74006 (pos)
                    (Bc_checked_p7)

                    ; #46585: <==commonly_known== 74006 (pos)
                    (Bb_checked_p7)

                    ; #53956: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #54133: <==commonly_known== 16076 (neg)
                    (Pb_checked_p7)

                    ; #74006: origin
                    (checked_p7)

                    ; #95343: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #15341: <==negation-removal== 44874 (pos)
                    (not (Pc_not_checked_p7))

                    ; #16076: <==negation-removal== 74006 (pos)
                    (not (not_checked_p7))

                    ; #16929: <==negation-removal== 95343 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #24873: <==negation-removal== 53956 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #25899: <==negation-removal== 16726 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #27375: <==uncertain_firing== 10366 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #35517: <==uncertain_firing== 16726 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #38224: <==negation-removal== 10366 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #42763: <==negation-removal== 33065 (pos)
                    (not (Pa_not_checked_p7))

                    ; #46503: <==negation-removal== 10373 (pos)
                    (not (Bc_not_checked_p7))

                    ; #59840: <==uncertain_firing== 53956 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #74339: <==uncertain_firing== 95343 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #77412: <==negation-removal== 54133 (pos)
                    (not (Bb_not_checked_p7))

                    ; #82487: <==negation-removal== 46585 (pos)
                    (not (Pb_not_checked_p7))

                    ; #84046: <==negation-removal== 33632 (pos)
                    (not (Ba_not_checked_p7))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #15021: <==closure== 58059 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #33597: <==commonly_known== 85593 (neg)
                    (Pb_checked_p8)

                    ; #41744: <==commonly_known== 79295 (pos)
                    (Ba_checked_p8)

                    ; #55079: <==commonly_known== 79295 (pos)
                    (Bc_checked_p8)

                    ; #58059: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #67381: <==commonly_known== 79295 (pos)
                    (Bb_checked_p8)

                    ; #69573: <==commonly_known== 85593 (neg)
                    (Pc_checked_p8)

                    ; #75701: <==closure== 78740 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #78740: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #79295: origin
                    (checked_p8)

                    ; #87267: <==commonly_known== 85593 (neg)
                    (Pa_checked_p8)

                    ; #18127: <==negation-removal== 41744 (pos)
                    (not (Pa_not_checked_p8))

                    ; #20117: <==uncertain_firing== 15021 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #32797: <==uncertain_firing== 75701 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #39649: <==uncertain_firing== 78740 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #46748: <==uncertain_firing== 58059 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #61514: <==negation-removal== 69573 (pos)
                    (not (Bc_not_checked_p8))

                    ; #61674: <==negation-removal== 15021 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #65739: <==negation-removal== 33597 (pos)
                    (not (Bb_not_checked_p8))

                    ; #68018: <==negation-removal== 87267 (pos)
                    (not (Ba_not_checked_p8))

                    ; #69457: <==negation-removal== 67381 (pos)
                    (not (Pb_not_checked_p8))

                    ; #71302: <==negation-removal== 55079 (pos)
                    (not (Pc_not_checked_p8))

                    ; #72340: <==negation-removal== 78740 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #73059: <==negation-removal== 58059 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #80413: <==negation-removal== 75701 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #85593: <==negation-removal== 79295 (pos)
                    (not (not_checked_p8))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #10554: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #15870: <==commonly_known== 32138 (pos)
                    (Ba_checked_p9)

                    ; #25274: <==commonly_known== 82765 (neg)
                    (Pa_checked_p9)

                    ; #32138: origin
                    (checked_p9)

                    ; #35920: <==commonly_known== 82765 (neg)
                    (Pb_checked_p9)

                    ; #36524: <==commonly_known== 82765 (neg)
                    (Pc_checked_p9)

                    ; #37201: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #46132: <==commonly_known== 32138 (pos)
                    (Bc_checked_p9)

                    ; #72167: <==closure== 10554 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #75607: <==closure== 37201 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #88849: <==commonly_known== 32138 (pos)
                    (Bb_checked_p9)

                    ; #11818: <==negation-removal== 35920 (pos)
                    (not (Bb_not_checked_p9))

                    ; #32258: <==uncertain_firing== 10554 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #34154: <==negation-removal== 37201 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #34703: <==negation-removal== 36524 (pos)
                    (not (Bc_not_checked_p9))

                    ; #44744: <==uncertain_firing== 72167 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #45275: <==negation-removal== 88849 (pos)
                    (not (Pb_not_checked_p9))

                    ; #48080: <==negation-removal== 75607 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #63594: <==negation-removal== 46132 (pos)
                    (not (Pc_not_checked_p9))

                    ; #68149: <==uncertain_firing== 75607 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #73510: <==negation-removal== 15870 (pos)
                    (not (Pa_not_checked_p9))

                    ; #74683: <==negation-removal== 25274 (pos)
                    (not (Ba_not_checked_p9))

                    ; #75540: <==negation-removal== 10554 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #78970: <==uncertain_firing== 37201 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #80457: <==negation-removal== 72167 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #82765: <==negation-removal== 32138 (pos)
                    (not (not_checked_p9))))

    (:action observe_b_p10_s
        :precondition (and (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #16083: origin
                    (checked_p10)

                    ; #18982: <==commonly_known== 16083 (pos)
                    (Bc_checked_p10)

                    ; #21096: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #39607: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #40632: <==closure== 21096 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #63601: <==commonly_known== 69004 (neg)
                    (Pa_checked_p10)

                    ; #67000: <==commonly_known== 69004 (neg)
                    (Pc_checked_p10)

                    ; #73554: <==commonly_known== 16083 (pos)
                    (Bb_checked_p10)

                    ; #77335: <==commonly_known== 16083 (pos)
                    (Ba_checked_p10)

                    ; #79456: <==commonly_known== 69004 (neg)
                    (Pb_checked_p10)

                    ; #90704: <==closure== 39607 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #16854: <==uncertain_firing== 21096 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #21422: <==uncertain_firing== 40632 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #37593: <==negation-removal== 90704 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #46260: <==negation-removal== 39607 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #46929: <==negation-removal== 40632 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #50697: <==negation-removal== 63601 (pos)
                    (not (Ba_not_checked_p10))

                    ; #53933: <==uncertain_firing== 90704 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #55164: <==uncertain_firing== 39607 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #68784: <==negation-removal== 77335 (pos)
                    (not (Pa_not_checked_p10))

                    ; #69004: <==negation-removal== 16083 (pos)
                    (not (not_checked_p10))

                    ; #74790: <==negation-removal== 21096 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #77762: <==negation-removal== 67000 (pos)
                    (not (Bc_not_checked_p10))

                    ; #78074: <==negation-removal== 73554 (pos)
                    (not (Pb_not_checked_p10))

                    ; #86384: <==negation-removal== 79456 (pos)
                    (not (Bb_not_checked_p10))

                    ; #90819: <==negation-removal== 18982 (pos)
                    (not (Pc_not_checked_p10))))

    (:action observe_b_p11_s
        :precondition (and (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #21709: <==commonly_known== 80813 (pos)
                    (Ba_checked_p11)

                    ; #32844: <==commonly_known== 80813 (pos)
                    (Bb_checked_p11)

                    ; #34879: <==closure== 43299 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #43299: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #43858: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #55437: <==commonly_known== 18449 (neg)
                    (Pc_checked_p11)

                    ; #60746: <==closure== 43858 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #76382: <==commonly_known== 18449 (neg)
                    (Pa_checked_p11)

                    ; #80813: origin
                    (checked_p11)

                    ; #82303: <==commonly_known== 18449 (neg)
                    (Pb_checked_p11)

                    ; #85328: <==commonly_known== 80813 (pos)
                    (Bc_checked_p11)

                    ; #18449: <==negation-removal== 80813 (pos)
                    (not (not_checked_p11))

                    ; #21171: <==negation-removal== 85328 (pos)
                    (not (Pc_not_checked_p11))

                    ; #30818: <==negation-removal== 21709 (pos)
                    (not (Pa_not_checked_p11))

                    ; #40087: <==negation-removal== 76382 (pos)
                    (not (Ba_not_checked_p11))

                    ; #48966: <==uncertain_firing== 43299 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #51505: <==negation-removal== 34879 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #59952: <==negation-removal== 60746 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #63493: <==negation-removal== 43299 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #74147: <==uncertain_firing== 60746 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #74272: <==negation-removal== 55437 (pos)
                    (not (Bc_not_checked_p11))

                    ; #76236: <==negation-removal== 82303 (pos)
                    (not (Bb_not_checked_p11))

                    ; #79704: <==negation-removal== 32844 (pos)
                    (not (Pb_not_checked_p11))

                    ; #81570: <==uncertain_firing== 34879 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #81809: <==negation-removal== 43858 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #82765: <==uncertain_firing== 43858 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))))

    (:action observe_b_p12_s
        :precondition (and (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #15905: <==commonly_known== 63840 (pos)
                    (Ba_checked_p12)

                    ; #26326: <==closure== 89223 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #51933: <==closure== 90690 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #55526: <==commonly_known== 13688 (neg)
                    (Pb_checked_p12)

                    ; #59948: <==commonly_known== 63840 (pos)
                    (Bc_checked_p12)

                    ; #63757: <==commonly_known== 13688 (neg)
                    (Pc_checked_p12)

                    ; #63840: origin
                    (checked_p12)

                    ; #81370: <==commonly_known== 63840 (pos)
                    (Bb_checked_p12)

                    ; #89223: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #89328: <==commonly_known== 13688 (neg)
                    (Pa_checked_p12)

                    ; #90690: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #10864: <==negation-removal== 90690 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #13688: <==negation-removal== 63840 (pos)
                    (not (not_checked_p12))

                    ; #17429: <==negation-removal== 63757 (pos)
                    (not (Bc_not_checked_p12))

                    ; #24206: <==negation-removal== 55526 (pos)
                    (not (Bb_not_checked_p12))

                    ; #29977: <==negation-removal== 81370 (pos)
                    (not (Pb_not_checked_p12))

                    ; #44880: <==uncertain_firing== 90690 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #53482: <==negation-removal== 59948 (pos)
                    (not (Pc_not_checked_p12))

                    ; #57274: <==uncertain_firing== 26326 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #62439: <==negation-removal== 51933 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #72460: <==negation-removal== 15905 (pos)
                    (not (Pa_not_checked_p12))

                    ; #79585: <==negation-removal== 89328 (pos)
                    (not (Ba_not_checked_p12))

                    ; #80564: <==uncertain_firing== 51933 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #87596: <==negation-removal== 89223 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #90284: <==uncertain_firing== 89223 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #95204: <==negation-removal== 26326 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #15659: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #25556: <==closure== 15659 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #30369: <==commonly_known== 12102 (neg)
                    (Pb_checked_p1)

                    ; #36233: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #40691: <==closure== 36233 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #41582: <==commonly_known== 77133 (pos)
                    (Bb_checked_p1)

                    ; #52520: <==commonly_known== 12102 (neg)
                    (Pc_checked_p1)

                    ; #55180: <==commonly_known== 77133 (pos)
                    (Bc_checked_p1)

                    ; #66809: <==commonly_known== 12102 (neg)
                    (Pa_checked_p1)

                    ; #76152: <==commonly_known== 77133 (pos)
                    (Ba_checked_p1)

                    ; #77133: origin
                    (checked_p1)

                    ; #12102: <==negation-removal== 77133 (pos)
                    (not (not_checked_p1))

                    ; #12476: <==uncertain_firing== 40691 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #22210: <==negation-removal== 41582 (pos)
                    (not (Pb_not_checked_p1))

                    ; #22447: <==negation-removal== 66809 (pos)
                    (not (Ba_not_checked_p1))

                    ; #31029: <==negation-removal== 36233 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #35082: <==negation-removal== 76152 (pos)
                    (not (Pa_not_checked_p1))

                    ; #37620: <==uncertain_firing== 15659 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #40220: <==negation-removal== 25556 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #41943: <==negation-removal== 40691 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #48458: <==negation-removal== 15659 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #55105: <==negation-removal== 52520 (pos)
                    (not (Bc_not_checked_p1))

                    ; #55383: <==uncertain_firing== 36233 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #59048: <==negation-removal== 30369 (pos)
                    (not (Bb_not_checked_p1))

                    ; #66394: <==uncertain_firing== 25556 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #68446: <==negation-removal== 55180 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #15589: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #19025: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #30316: <==commonly_known== 41451 (neg)
                    (Pc_checked_p2)

                    ; #40770: <==commonly_known== 41451 (neg)
                    (Pa_checked_p2)

                    ; #42630: <==closure== 15589 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #45693: <==commonly_known== 71950 (pos)
                    (Bc_checked_p2)

                    ; #71950: origin
                    (checked_p2)

                    ; #73749: <==commonly_known== 71950 (pos)
                    (Bb_checked_p2)

                    ; #84312: <==closure== 19025 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #87470: <==commonly_known== 41451 (neg)
                    (Pb_checked_p2)

                    ; #89445: <==commonly_known== 71950 (pos)
                    (Ba_checked_p2)

                    ; #16476: <==negation-removal== 84312 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #20665: <==negation-removal== 19025 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #23807: <==uncertain_firing== 15589 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #35630: <==uncertain_firing== 42630 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #41451: <==negation-removal== 71950 (pos)
                    (not (not_checked_p2))

                    ; #42136: <==negation-removal== 30316 (pos)
                    (not (Bc_not_checked_p2))

                    ; #45419: <==negation-removal== 87470 (pos)
                    (not (Bb_not_checked_p2))

                    ; #50332: <==uncertain_firing== 84312 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #53087: <==uncertain_firing== 19025 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #66026: <==negation-removal== 45693 (pos)
                    (not (Pc_not_checked_p2))

                    ; #81335: <==negation-removal== 40770 (pos)
                    (not (Ba_not_checked_p2))

                    ; #84148: <==negation-removal== 42630 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #85495: <==negation-removal== 73749 (pos)
                    (not (Pb_not_checked_p2))

                    ; #89263: <==negation-removal== 89445 (pos)
                    (not (Pa_not_checked_p2))

                    ; #89832: <==negation-removal== 15589 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #18802: origin
                    (checked_p3)

                    ; #26082: <==commonly_known== 18802 (pos)
                    (Bc_checked_p3)

                    ; #28285: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #40778: <==commonly_known== 18802 (pos)
                    (Ba_checked_p3)

                    ; #51116: <==commonly_known== 35764 (neg)
                    (Pc_checked_p3)

                    ; #57921: <==closure== 28285 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #59512: <==commonly_known== 18802 (pos)
                    (Bb_checked_p3)

                    ; #61574: <==closure== 89548 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #70776: <==commonly_known== 35764 (neg)
                    (Pb_checked_p3)

                    ; #89548: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #89652: <==commonly_known== 35764 (neg)
                    (Pa_checked_p3)

                    ; #24291: <==negation-removal== 89548 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #25174: <==negation-removal== 70776 (pos)
                    (not (Bb_not_checked_p3))

                    ; #33092: <==negation-removal== 61574 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #35764: <==negation-removal== 18802 (pos)
                    (not (not_checked_p3))

                    ; #37480: <==negation-removal== 28285 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #38094: <==negation-removal== 26082 (pos)
                    (not (Pc_not_checked_p3))

                    ; #39481: <==uncertain_firing== 28285 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #43199: <==negation-removal== 40778 (pos)
                    (not (Pa_not_checked_p3))

                    ; #43771: <==negation-removal== 89652 (pos)
                    (not (Ba_not_checked_p3))

                    ; #46983: <==negation-removal== 57921 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #56206: <==uncertain_firing== 61574 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #61614: <==negation-removal== 51116 (pos)
                    (not (Bc_not_checked_p3))

                    ; #64308: <==uncertain_firing== 89548 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #76625: <==negation-removal== 59512 (pos)
                    (not (Pb_not_checked_p3))

                    ; #93128: <==uncertain_firing== 57921 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #12315: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #12690: <==commonly_known== 35099 (pos)
                    (Bc_checked_p4)

                    ; #14517: <==closure== 12315 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #35099: origin
                    (checked_p4)

                    ; #45369: <==commonly_known== 35099 (pos)
                    (Ba_checked_p4)

                    ; #47422: <==commonly_known== 35099 (pos)
                    (Bb_checked_p4)

                    ; #51225: <==commonly_known== 34950 (neg)
                    (Pa_checked_p4)

                    ; #59937: <==closure== 60595 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #60595: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #67771: <==commonly_known== 34950 (neg)
                    (Pb_checked_p4)

                    ; #78756: <==commonly_known== 34950 (neg)
                    (Pc_checked_p4)

                    ; #13640: <==negation-removal== 59937 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #16281: <==negation-removal== 51225 (pos)
                    (not (Ba_not_checked_p4))

                    ; #18463: <==uncertain_firing== 60595 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #19911: <==negation-removal== 78756 (pos)
                    (not (Bc_not_checked_p4))

                    ; #20518: <==negation-removal== 12690 (pos)
                    (not (Pc_not_checked_p4))

                    ; #27143: <==uncertain_firing== 59937 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #34950: <==negation-removal== 35099 (pos)
                    (not (not_checked_p4))

                    ; #38272: <==uncertain_firing== 14517 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #42502: <==negation-removal== 60595 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #61985: <==negation-removal== 14517 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #69334: <==negation-removal== 47422 (pos)
                    (not (Pb_not_checked_p4))

                    ; #74135: <==uncertain_firing== 12315 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #75810: <==negation-removal== 45369 (pos)
                    (not (Pa_not_checked_p4))

                    ; #79344: <==negation-removal== 67771 (pos)
                    (not (Bb_not_checked_p4))

                    ; #86042: <==negation-removal== 12315 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #12958: <==commonly_known== 17913 (neg)
                    (Pc_checked_p5)

                    ; #20245: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #27733: <==commonly_known== 17913 (neg)
                    (Pa_checked_p5)

                    ; #54934: <==commonly_known== 71351 (pos)
                    (Bc_checked_p5)

                    ; #58484: <==closure== 20245 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #61245: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #71351: origin
                    (checked_p5)

                    ; #76353: <==commonly_known== 17913 (neg)
                    (Pb_checked_p5)

                    ; #84497: <==closure== 61245 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #85517: <==commonly_known== 71351 (pos)
                    (Ba_checked_p5)

                    ; #87719: <==commonly_known== 71351 (pos)
                    (Bb_checked_p5)

                    ; #11423: <==negation-removal== 20245 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #17913: <==negation-removal== 71351 (pos)
                    (not (not_checked_p5))

                    ; #21682: <==negation-removal== 87719 (pos)
                    (not (Pb_not_checked_p5))

                    ; #49736: <==uncertain_firing== 20245 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #51873: <==negation-removal== 85517 (pos)
                    (not (Pa_not_checked_p5))

                    ; #57550: <==negation-removal== 27733 (pos)
                    (not (Ba_not_checked_p5))

                    ; #57716: <==negation-removal== 54934 (pos)
                    (not (Pc_not_checked_p5))

                    ; #58021: <==uncertain_firing== 58484 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #60098: <==negation-removal== 76353 (pos)
                    (not (Bb_not_checked_p5))

                    ; #63001: <==negation-removal== 58484 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #70813: <==uncertain_firing== 84497 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #71600: <==negation-removal== 84497 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #80012: <==negation-removal== 61245 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #80628: <==uncertain_firing== 61245 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #91481: <==negation-removal== 12958 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #10069: origin
                    (checked_p6)

                    ; #15280: <==commonly_known== 11058 (neg)
                    (Pc_checked_p6)

                    ; #17075: <==closure== 51610 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #38059: <==commonly_known== 11058 (neg)
                    (Pa_checked_p6)

                    ; #42254: <==commonly_known== 11058 (neg)
                    (Pb_checked_p6)

                    ; #51464: <==commonly_known== 10069 (pos)
                    (Bb_checked_p6)

                    ; #51610: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #53602: <==closure== 58528 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #58528: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #67148: <==commonly_known== 10069 (pos)
                    (Bc_checked_p6)

                    ; #87124: <==commonly_known== 10069 (pos)
                    (Ba_checked_p6)

                    ; #11058: <==negation-removal== 10069 (pos)
                    (not (not_checked_p6))

                    ; #15690: <==negation-removal== 87124 (pos)
                    (not (Pa_not_checked_p6))

                    ; #26916: <==negation-removal== 15280 (pos)
                    (not (Bc_not_checked_p6))

                    ; #30074: <==uncertain_firing== 17075 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #36047: <==uncertain_firing== 53602 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #53914: <==negation-removal== 67148 (pos)
                    (not (Pc_not_checked_p6))

                    ; #60005: <==negation-removal== 42254 (pos)
                    (not (Bb_not_checked_p6))

                    ; #61742: <==negation-removal== 51464 (pos)
                    (not (Pb_not_checked_p6))

                    ; #64110: <==negation-removal== 51610 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #68069: <==negation-removal== 38059 (pos)
                    (not (Ba_not_checked_p6))

                    ; #72933: <==uncertain_firing== 51610 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #78401: <==negation-removal== 17075 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #79096: <==negation-removal== 53602 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #88831: <==negation-removal== 58528 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #91147: <==uncertain_firing== 58528 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #10373: <==commonly_known== 16076 (neg)
                    (Pc_checked_p7)

                    ; #21549: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #33065: <==commonly_known== 74006 (pos)
                    (Ba_checked_p7)

                    ; #33632: <==commonly_known== 16076 (neg)
                    (Pa_checked_p7)

                    ; #44874: <==commonly_known== 74006 (pos)
                    (Bc_checked_p7)

                    ; #46009: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #46585: <==commonly_known== 74006 (pos)
                    (Bb_checked_p7)

                    ; #54133: <==commonly_known== 16076 (neg)
                    (Pb_checked_p7)

                    ; #58555: <==closure== 46009 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #74006: origin
                    (checked_p7)

                    ; #78716: <==closure== 21549 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #11209: <==uncertain_firing== 46009 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #15341: <==negation-removal== 44874 (pos)
                    (not (Pc_not_checked_p7))

                    ; #16076: <==negation-removal== 74006 (pos)
                    (not (not_checked_p7))

                    ; #25563: <==uncertain_firing== 21549 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #28656: <==negation-removal== 21549 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #42763: <==negation-removal== 33065 (pos)
                    (not (Pa_not_checked_p7))

                    ; #46503: <==negation-removal== 10373 (pos)
                    (not (Bc_not_checked_p7))

                    ; #59638: <==negation-removal== 58555 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #72881: <==negation-removal== 78716 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #76407: <==uncertain_firing== 58555 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #77412: <==negation-removal== 54133 (pos)
                    (not (Bb_not_checked_p7))

                    ; #82487: <==negation-removal== 46585 (pos)
                    (not (Pb_not_checked_p7))

                    ; #84046: <==negation-removal== 33632 (pos)
                    (not (Ba_not_checked_p7))

                    ; #87953: <==uncertain_firing== 78716 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #90469: <==negation-removal== 46009 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #33597: <==commonly_known== 85593 (neg)
                    (Pb_checked_p8)

                    ; #41744: <==commonly_known== 79295 (pos)
                    (Ba_checked_p8)

                    ; #43764: <==closure== 61907 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #55079: <==commonly_known== 79295 (pos)
                    (Bc_checked_p8)

                    ; #61907: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #67381: <==commonly_known== 79295 (pos)
                    (Bb_checked_p8)

                    ; #69573: <==commonly_known== 85593 (neg)
                    (Pc_checked_p8)

                    ; #69935: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #79295: origin
                    (checked_p8)

                    ; #87267: <==commonly_known== 85593 (neg)
                    (Pa_checked_p8)

                    ; #99571: <==closure== 69935 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #16934: <==uncertain_firing== 43764 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #18127: <==negation-removal== 41744 (pos)
                    (not (Pa_not_checked_p8))

                    ; #27880: <==uncertain_firing== 61907 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #44483: <==negation-removal== 43764 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #48333: <==negation-removal== 61907 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #61356: <==negation-removal== 69935 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #61514: <==negation-removal== 69573 (pos)
                    (not (Bc_not_checked_p8))

                    ; #65739: <==negation-removal== 33597 (pos)
                    (not (Bb_not_checked_p8))

                    ; #68018: <==negation-removal== 87267 (pos)
                    (not (Ba_not_checked_p8))

                    ; #69457: <==negation-removal== 67381 (pos)
                    (not (Pb_not_checked_p8))

                    ; #71302: <==negation-removal== 55079 (pos)
                    (not (Pc_not_checked_p8))

                    ; #71799: <==negation-removal== 99571 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #81216: <==uncertain_firing== 69935 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #82202: <==uncertain_firing== 99571 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #85593: <==negation-removal== 79295 (pos)
                    (not (not_checked_p8))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #15870: <==commonly_known== 32138 (pos)
                    (Ba_checked_p9)

                    ; #25274: <==commonly_known== 82765 (neg)
                    (Pa_checked_p9)

                    ; #30885: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #32138: origin
                    (checked_p9)

                    ; #34503: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #35920: <==commonly_known== 82765 (neg)
                    (Pb_checked_p9)

                    ; #36524: <==commonly_known== 82765 (neg)
                    (Pc_checked_p9)

                    ; #42313: <==closure== 30885 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #46132: <==commonly_known== 32138 (pos)
                    (Bc_checked_p9)

                    ; #76304: <==closure== 34503 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #88849: <==commonly_known== 32138 (pos)
                    (Bb_checked_p9)

                    ; #11395: <==negation-removal== 30885 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #11818: <==negation-removal== 35920 (pos)
                    (not (Bb_not_checked_p9))

                    ; #18054: <==negation-removal== 42313 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #28302: <==uncertain_firing== 42313 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #34703: <==negation-removal== 36524 (pos)
                    (not (Bc_not_checked_p9))

                    ; #38211: <==uncertain_firing== 30885 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #45275: <==negation-removal== 88849 (pos)
                    (not (Pb_not_checked_p9))

                    ; #48089: <==negation-removal== 76304 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #48569: <==uncertain_firing== 34503 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #48954: <==negation-removal== 34503 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #49393: <==uncertain_firing== 76304 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #63594: <==negation-removal== 46132 (pos)
                    (not (Pc_not_checked_p9))

                    ; #73510: <==negation-removal== 15870 (pos)
                    (not (Pa_not_checked_p9))

                    ; #74683: <==negation-removal== 25274 (pos)
                    (not (Ba_not_checked_p9))

                    ; #82765: <==negation-removal== 32138 (pos)
                    (not (not_checked_p9))))

    (:action observe_c_p10_s
        :precondition (and (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #16083: origin
                    (checked_p10)

                    ; #18982: <==commonly_known== 16083 (pos)
                    (Bc_checked_p10)

                    ; #53926: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #59398: <==closure== 89381 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #63601: <==commonly_known== 69004 (neg)
                    (Pa_checked_p10)

                    ; #67000: <==commonly_known== 69004 (neg)
                    (Pc_checked_p10)

                    ; #73554: <==commonly_known== 16083 (pos)
                    (Bb_checked_p10)

                    ; #77335: <==commonly_known== 16083 (pos)
                    (Ba_checked_p10)

                    ; #79456: <==commonly_known== 69004 (neg)
                    (Pb_checked_p10)

                    ; #89381: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #90170: <==closure== 53926 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #14490: <==negation-removal== 53926 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #48289: <==uncertain_firing== 89381 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #50697: <==negation-removal== 63601 (pos)
                    (not (Ba_not_checked_p10))

                    ; #59595: <==negation-removal== 90170 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #68784: <==negation-removal== 77335 (pos)
                    (not (Pa_not_checked_p10))

                    ; #69004: <==negation-removal== 16083 (pos)
                    (not (not_checked_p10))

                    ; #69942: <==uncertain_firing== 53926 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #77762: <==negation-removal== 67000 (pos)
                    (not (Bc_not_checked_p10))

                    ; #78074: <==negation-removal== 73554 (pos)
                    (not (Pb_not_checked_p10))

                    ; #78825: <==negation-removal== 89381 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #79305: <==uncertain_firing== 59398 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #81369: <==negation-removal== 59398 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #86384: <==negation-removal== 79456 (pos)
                    (not (Bb_not_checked_p10))

                    ; #90819: <==negation-removal== 18982 (pos)
                    (not (Pc_not_checked_p10))

                    ; #91426: <==uncertain_firing== 90170 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))))

    (:action observe_c_p11_s
        :precondition (and (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #21709: <==commonly_known== 80813 (pos)
                    (Ba_checked_p11)

                    ; #32844: <==commonly_known== 80813 (pos)
                    (Bb_checked_p11)

                    ; #33335: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #47661: <==closure== 33335 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #55437: <==commonly_known== 18449 (neg)
                    (Pc_checked_p11)

                    ; #68954: <==closure== 81352 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #76382: <==commonly_known== 18449 (neg)
                    (Pa_checked_p11)

                    ; #80813: origin
                    (checked_p11)

                    ; #81352: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #82303: <==commonly_known== 18449 (neg)
                    (Pb_checked_p11)

                    ; #85328: <==commonly_known== 80813 (pos)
                    (Bc_checked_p11)

                    ; #10904: <==negation-removal== 47661 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #11493: <==uncertain_firing== 47661 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #18449: <==negation-removal== 80813 (pos)
                    (not (not_checked_p11))

                    ; #19792: <==uncertain_firing== 81352 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #21171: <==negation-removal== 85328 (pos)
                    (not (Pc_not_checked_p11))

                    ; #30818: <==negation-removal== 21709 (pos)
                    (not (Pa_not_checked_p11))

                    ; #32399: <==uncertain_firing== 33335 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #40087: <==negation-removal== 76382 (pos)
                    (not (Ba_not_checked_p11))

                    ; #44108: <==negation-removal== 68954 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #47128: <==negation-removal== 81352 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #63990: <==uncertain_firing== 68954 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #71438: <==negation-removal== 33335 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #74272: <==negation-removal== 55437 (pos)
                    (not (Bc_not_checked_p11))

                    ; #76236: <==negation-removal== 82303 (pos)
                    (not (Bb_not_checked_p11))

                    ; #79704: <==negation-removal== 32844 (pos)
                    (not (Pb_not_checked_p11))))

    (:action observe_c_p12_s
        :precondition (and (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #15905: <==commonly_known== 63840 (pos)
                    (Ba_checked_p12)

                    ; #24569: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #25963: <==closure== 34323 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #34323: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #55526: <==commonly_known== 13688 (neg)
                    (Pb_checked_p12)

                    ; #59948: <==commonly_known== 63840 (pos)
                    (Bc_checked_p12)

                    ; #63757: <==commonly_known== 13688 (neg)
                    (Pc_checked_p12)

                    ; #63840: origin
                    (checked_p12)

                    ; #66417: <==closure== 24569 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #81370: <==commonly_known== 63840 (pos)
                    (Bb_checked_p12)

                    ; #89328: <==commonly_known== 13688 (neg)
                    (Pa_checked_p12)

                    ; #13688: <==negation-removal== 63840 (pos)
                    (not (not_checked_p12))

                    ; #17429: <==negation-removal== 63757 (pos)
                    (not (Bc_not_checked_p12))

                    ; #20665: <==uncertain_firing== 24569 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #24206: <==negation-removal== 55526 (pos)
                    (not (Bb_not_checked_p12))

                    ; #29977: <==negation-removal== 81370 (pos)
                    (not (Pb_not_checked_p12))

                    ; #37934: <==negation-removal== 24569 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #42744: <==negation-removal== 66417 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #51910: <==negation-removal== 25963 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #53482: <==negation-removal== 59948 (pos)
                    (not (Pc_not_checked_p12))

                    ; #53821: <==uncertain_firing== 34323 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #58762: <==uncertain_firing== 25963 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #72037: <==uncertain_firing== 66417 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #72460: <==negation-removal== 15905 (pos)
                    (not (Pa_not_checked_p12))

                    ; #75477: <==negation-removal== 34323 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #79585: <==negation-removal== 89328 (pos)
                    (not (Ba_not_checked_p12))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #19481: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #30369: <==commonly_known== 12102 (neg)
                    (Pb_checked_p1)

                    ; #41582: <==commonly_known== 77133 (pos)
                    (Bb_checked_p1)

                    ; #52520: <==commonly_known== 12102 (neg)
                    (Pc_checked_p1)

                    ; #55180: <==commonly_known== 77133 (pos)
                    (Bc_checked_p1)

                    ; #56701: <==closure== 71219 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #66809: <==commonly_known== 12102 (neg)
                    (Pa_checked_p1)

                    ; #71219: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #76152: <==commonly_known== 77133 (pos)
                    (Ba_checked_p1)

                    ; #77133: origin
                    (checked_p1)

                    ; #84359: <==closure== 19481 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #12102: <==negation-removal== 77133 (pos)
                    (not (not_checked_p1))

                    ; #22210: <==negation-removal== 41582 (pos)
                    (not (Pb_not_checked_p1))

                    ; #22447: <==negation-removal== 66809 (pos)
                    (not (Ba_not_checked_p1))

                    ; #34723: <==uncertain_firing== 84359 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #34888: <==negation-removal== 56701 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #35082: <==negation-removal== 76152 (pos)
                    (not (Pa_not_checked_p1))

                    ; #45339: <==negation-removal== 19481 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #49291: <==uncertain_firing== 56701 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #49490: <==uncertain_firing== 71219 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #53536: <==negation-removal== 71219 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #55105: <==negation-removal== 52520 (pos)
                    (not (Bc_not_checked_p1))

                    ; #59048: <==negation-removal== 30369 (pos)
                    (not (Bb_not_checked_p1))

                    ; #67103: <==uncertain_firing== 19481 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #68446: <==negation-removal== 55180 (pos)
                    (not (Pc_not_checked_p1))

                    ; #91388: <==negation-removal== 84359 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #30316: <==commonly_known== 41451 (neg)
                    (Pc_checked_p2)

                    ; #40770: <==commonly_known== 41451 (neg)
                    (Pa_checked_p2)

                    ; #44476: <==closure== 58547 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #45693: <==commonly_known== 71950 (pos)
                    (Bc_checked_p2)

                    ; #58547: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #66594: <==closure== 76606 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #71950: origin
                    (checked_p2)

                    ; #73749: <==commonly_known== 71950 (pos)
                    (Bb_checked_p2)

                    ; #76606: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #87470: <==commonly_known== 41451 (neg)
                    (Pb_checked_p2)

                    ; #89445: <==commonly_known== 71950 (pos)
                    (Ba_checked_p2)

                    ; #22499: <==uncertain_firing== 58547 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #39191: <==negation-removal== 58547 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #40856: <==uncertain_firing== 66594 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #41451: <==negation-removal== 71950 (pos)
                    (not (not_checked_p2))

                    ; #42136: <==negation-removal== 30316 (pos)
                    (not (Bc_not_checked_p2))

                    ; #42815: <==uncertain_firing== 44476 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #45419: <==negation-removal== 87470 (pos)
                    (not (Bb_not_checked_p2))

                    ; #47800: <==negation-removal== 76606 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #57924: <==negation-removal== 44476 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #66026: <==negation-removal== 45693 (pos)
                    (not (Pc_not_checked_p2))

                    ; #81335: <==negation-removal== 40770 (pos)
                    (not (Ba_not_checked_p2))

                    ; #85495: <==negation-removal== 73749 (pos)
                    (not (Pb_not_checked_p2))

                    ; #89263: <==negation-removal== 89445 (pos)
                    (not (Pa_not_checked_p2))

                    ; #90947: <==uncertain_firing== 76606 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #91673: <==negation-removal== 66594 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #11074: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #18802: origin
                    (checked_p3)

                    ; #19805: <==closure== 11074 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #26082: <==commonly_known== 18802 (pos)
                    (Bc_checked_p3)

                    ; #40778: <==commonly_known== 18802 (pos)
                    (Ba_checked_p3)

                    ; #46717: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #51116: <==commonly_known== 35764 (neg)
                    (Pc_checked_p3)

                    ; #57870: <==closure== 46717 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #59512: <==commonly_known== 18802 (pos)
                    (Bb_checked_p3)

                    ; #70776: <==commonly_known== 35764 (neg)
                    (Pb_checked_p3)

                    ; #89652: <==commonly_known== 35764 (neg)
                    (Pa_checked_p3)

                    ; #15236: <==uncertain_firing== 11074 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #17305: <==negation-removal== 19805 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #25174: <==negation-removal== 70776 (pos)
                    (not (Bb_not_checked_p3))

                    ; #35764: <==negation-removal== 18802 (pos)
                    (not (not_checked_p3))

                    ; #38094: <==negation-removal== 26082 (pos)
                    (not (Pc_not_checked_p3))

                    ; #43199: <==negation-removal== 40778 (pos)
                    (not (Pa_not_checked_p3))

                    ; #43771: <==negation-removal== 89652 (pos)
                    (not (Ba_not_checked_p3))

                    ; #51190: <==uncertain_firing== 57870 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #61614: <==negation-removal== 51116 (pos)
                    (not (Bc_not_checked_p3))

                    ; #76625: <==negation-removal== 59512 (pos)
                    (not (Pb_not_checked_p3))

                    ; #85456: <==negation-removal== 46717 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #87393: <==negation-removal== 57870 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #87597: <==uncertain_firing== 46717 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #90996: <==uncertain_firing== 19805 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #91918: <==negation-removal== 11074 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #12690: <==commonly_known== 35099 (pos)
                    (Bc_checked_p4)

                    ; #31200: <==closure== 92043 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #35099: origin
                    (checked_p4)

                    ; #45369: <==commonly_known== 35099 (pos)
                    (Ba_checked_p4)

                    ; #46090: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #47422: <==commonly_known== 35099 (pos)
                    (Bb_checked_p4)

                    ; #51225: <==commonly_known== 34950 (neg)
                    (Pa_checked_p4)

                    ; #67771: <==commonly_known== 34950 (neg)
                    (Pb_checked_p4)

                    ; #78756: <==commonly_known== 34950 (neg)
                    (Pc_checked_p4)

                    ; #82566: <==closure== 46090 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #92043: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #15814: <==uncertain_firing== 31200 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #16281: <==negation-removal== 51225 (pos)
                    (not (Ba_not_checked_p4))

                    ; #19911: <==negation-removal== 78756 (pos)
                    (not (Bc_not_checked_p4))

                    ; #20518: <==negation-removal== 12690 (pos)
                    (not (Pc_not_checked_p4))

                    ; #34950: <==negation-removal== 35099 (pos)
                    (not (not_checked_p4))

                    ; #36592: <==negation-removal== 82566 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #42416: <==negation-removal== 92043 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #56165: <==negation-removal== 46090 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #57282: <==uncertain_firing== 82566 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #59575: <==uncertain_firing== 46090 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #64013: <==negation-removal== 31200 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #67239: <==uncertain_firing== 92043 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #69334: <==negation-removal== 47422 (pos)
                    (not (Pb_not_checked_p4))

                    ; #75810: <==negation-removal== 45369 (pos)
                    (not (Pa_not_checked_p4))

                    ; #79344: <==negation-removal== 67771 (pos)
                    (not (Bb_not_checked_p4))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #12958: <==commonly_known== 17913 (neg)
                    (Pc_checked_p5)

                    ; #16684: <==closure== 26788 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #26063: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #26788: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #27733: <==commonly_known== 17913 (neg)
                    (Pa_checked_p5)

                    ; #42379: <==closure== 26063 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #54934: <==commonly_known== 71351 (pos)
                    (Bc_checked_p5)

                    ; #71351: origin
                    (checked_p5)

                    ; #76353: <==commonly_known== 17913 (neg)
                    (Pb_checked_p5)

                    ; #85517: <==commonly_known== 71351 (pos)
                    (Ba_checked_p5)

                    ; #87719: <==commonly_known== 71351 (pos)
                    (Bb_checked_p5)

                    ; #17913: <==negation-removal== 71351 (pos)
                    (not (not_checked_p5))

                    ; #21682: <==negation-removal== 87719 (pos)
                    (not (Pb_not_checked_p5))

                    ; #36311: <==uncertain_firing== 16684 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #37333: <==negation-removal== 26063 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #39062: <==negation-removal== 16684 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #51873: <==negation-removal== 85517 (pos)
                    (not (Pa_not_checked_p5))

                    ; #52427: <==uncertain_firing== 26063 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #57550: <==negation-removal== 27733 (pos)
                    (not (Ba_not_checked_p5))

                    ; #57716: <==negation-removal== 54934 (pos)
                    (not (Pc_not_checked_p5))

                    ; #60098: <==negation-removal== 76353 (pos)
                    (not (Bb_not_checked_p5))

                    ; #72990: <==negation-removal== 42379 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #80755: <==uncertain_firing== 42379 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #83301: <==uncertain_firing== 26788 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #84773: <==negation-removal== 26788 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #91481: <==negation-removal== 12958 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #10069: origin
                    (checked_p6)

                    ; #15280: <==commonly_known== 11058 (neg)
                    (Pc_checked_p6)

                    ; #30378: <==closure== 77109 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #38059: <==commonly_known== 11058 (neg)
                    (Pa_checked_p6)

                    ; #42254: <==commonly_known== 11058 (neg)
                    (Pb_checked_p6)

                    ; #51464: <==commonly_known== 10069 (pos)
                    (Bb_checked_p6)

                    ; #67148: <==commonly_known== 10069 (pos)
                    (Bc_checked_p6)

                    ; #70207: <==closure== 77176 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #77109: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #77176: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #87124: <==commonly_known== 10069 (pos)
                    (Ba_checked_p6)

                    ; #11058: <==negation-removal== 10069 (pos)
                    (not (not_checked_p6))

                    ; #15690: <==negation-removal== 87124 (pos)
                    (not (Pa_not_checked_p6))

                    ; #26916: <==negation-removal== 15280 (pos)
                    (not (Bc_not_checked_p6))

                    ; #33352: <==uncertain_firing== 77109 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #33775: <==negation-removal== 77109 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #37140: <==uncertain_firing== 70207 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #53914: <==negation-removal== 67148 (pos)
                    (not (Pc_not_checked_p6))

                    ; #60005: <==negation-removal== 42254 (pos)
                    (not (Bb_not_checked_p6))

                    ; #60587: <==uncertain_firing== 30378 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #61742: <==negation-removal== 51464 (pos)
                    (not (Pb_not_checked_p6))

                    ; #68069: <==negation-removal== 38059 (pos)
                    (not (Ba_not_checked_p6))

                    ; #73055: <==negation-removal== 77176 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #77255: <==negation-removal== 70207 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #77787: <==negation-removal== 30378 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #80577: <==uncertain_firing== 77176 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #10373: <==commonly_known== 16076 (neg)
                    (Pc_checked_p7)

                    ; #17031: <==closure== 89068 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #33065: <==commonly_known== 74006 (pos)
                    (Ba_checked_p7)

                    ; #33632: <==commonly_known== 16076 (neg)
                    (Pa_checked_p7)

                    ; #41373: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #44874: <==commonly_known== 74006 (pos)
                    (Bc_checked_p7)

                    ; #46585: <==commonly_known== 74006 (pos)
                    (Bb_checked_p7)

                    ; #54133: <==commonly_known== 16076 (neg)
                    (Pb_checked_p7)

                    ; #74006: origin
                    (checked_p7)

                    ; #79183: <==closure== 41373 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #89068: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #13131: <==negation-removal== 89068 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #15341: <==negation-removal== 44874 (pos)
                    (not (Pc_not_checked_p7))

                    ; #16076: <==negation-removal== 74006 (pos)
                    (not (not_checked_p7))

                    ; #26196: <==uncertain_firing== 89068 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #26419: <==negation-removal== 79183 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #28344: <==negation-removal== 17031 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #34653: <==negation-removal== 41373 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #38721: <==uncertain_firing== 17031 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #42763: <==negation-removal== 33065 (pos)
                    (not (Pa_not_checked_p7))

                    ; #46503: <==negation-removal== 10373 (pos)
                    (not (Bc_not_checked_p7))

                    ; #64907: <==uncertain_firing== 41373 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #77412: <==negation-removal== 54133 (pos)
                    (not (Bb_not_checked_p7))

                    ; #82487: <==negation-removal== 46585 (pos)
                    (not (Pb_not_checked_p7))

                    ; #84046: <==negation-removal== 33632 (pos)
                    (not (Ba_not_checked_p7))

                    ; #88636: <==uncertain_firing== 79183 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #23943: <==closure== 40673 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #33597: <==commonly_known== 85593 (neg)
                    (Pb_checked_p8)

                    ; #40673: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #41744: <==commonly_known== 79295 (pos)
                    (Ba_checked_p8)

                    ; #55079: <==commonly_known== 79295 (pos)
                    (Bc_checked_p8)

                    ; #67381: <==commonly_known== 79295 (pos)
                    (Bb_checked_p8)

                    ; #69573: <==commonly_known== 85593 (neg)
                    (Pc_checked_p8)

                    ; #79295: origin
                    (checked_p8)

                    ; #83452: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #85229: <==closure== 83452 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #87267: <==commonly_known== 85593 (neg)
                    (Pa_checked_p8)

                    ; #18127: <==negation-removal== 41744 (pos)
                    (not (Pa_not_checked_p8))

                    ; #31372: <==negation-removal== 83452 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #35636: <==uncertain_firing== 85229 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #39540: <==negation-removal== 85229 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #41231: <==uncertain_firing== 83452 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #56382: <==negation-removal== 23943 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #61514: <==negation-removal== 69573 (pos)
                    (not (Bc_not_checked_p8))

                    ; #63471: <==uncertain_firing== 40673 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #65739: <==negation-removal== 33597 (pos)
                    (not (Bb_not_checked_p8))

                    ; #68018: <==negation-removal== 87267 (pos)
                    (not (Ba_not_checked_p8))

                    ; #69457: <==negation-removal== 67381 (pos)
                    (not (Pb_not_checked_p8))

                    ; #71285: <==negation-removal== 40673 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #71302: <==negation-removal== 55079 (pos)
                    (not (Pc_not_checked_p8))

                    ; #85593: <==negation-removal== 79295 (pos)
                    (not (not_checked_p8))

                    ; #95424: <==uncertain_firing== 23943 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #15870: <==commonly_known== 32138 (pos)
                    (Ba_checked_p9)

                    ; #19741: <==closure== 59362 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #19809: <==closure== 32011 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #25274: <==commonly_known== 82765 (neg)
                    (Pa_checked_p9)

                    ; #32011: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #32138: origin
                    (checked_p9)

                    ; #35920: <==commonly_known== 82765 (neg)
                    (Pb_checked_p9)

                    ; #36524: <==commonly_known== 82765 (neg)
                    (Pc_checked_p9)

                    ; #46132: <==commonly_known== 32138 (pos)
                    (Bc_checked_p9)

                    ; #59362: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #88849: <==commonly_known== 32138 (pos)
                    (Bb_checked_p9)

                    ; #11818: <==negation-removal== 35920 (pos)
                    (not (Bb_not_checked_p9))

                    ; #18635: <==negation-removal== 19809 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #28137: <==negation-removal== 59362 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #34703: <==negation-removal== 36524 (pos)
                    (not (Bc_not_checked_p9))

                    ; #36580: <==uncertain_firing== 19809 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #38129: <==uncertain_firing== 32011 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #45275: <==negation-removal== 88849 (pos)
                    (not (Pb_not_checked_p9))

                    ; #55022: <==uncertain_firing== 19741 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #63594: <==negation-removal== 46132 (pos)
                    (not (Pc_not_checked_p9))

                    ; #71564: <==uncertain_firing== 59362 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #73510: <==negation-removal== 15870 (pos)
                    (not (Pa_not_checked_p9))

                    ; #73567: <==negation-removal== 32011 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #74683: <==negation-removal== 25274 (pos)
                    (not (Ba_not_checked_p9))

                    ; #82393: <==negation-removal== 19741 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #82765: <==negation-removal== 32138 (pos)
                    (not (not_checked_p9))))

)