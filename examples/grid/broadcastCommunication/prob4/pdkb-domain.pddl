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
        :precondition (and (leader_a)
                           (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #19732: <==closure== 51587 (pos)
                    (Pa_survivorat_s_p10)

                    ; #51587: origin
                    (Ba_survivorat_s_p10)

                    ; #29705: <==negation-removal== 51587 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #41798: <==negation-removal== 19732 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_a_b_s
        :precondition (and (leader_b)
                           (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #26612: <==closure== 83033 (pos)
                    (Pb_survivorat_s_p10)

                    ; #83033: origin
                    (Bb_survivorat_s_p10)

                    ; #54067: <==negation-removal== 83033 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #54766: <==negation-removal== 26612 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_a_c_s
        :precondition (and (leader_c)
                           (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #13813: <==closure== 36429 (pos)
                    (Pc_survivorat_s_p10)

                    ; #36429: origin
                    (Bc_survivorat_s_p10)

                    ; #45848: <==negation-removal== 13813 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #68137: <==negation-removal== 36429 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_b_a_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (leader_a))
        :effect (and
                    ; #19732: <==closure== 51587 (pos)
                    (Pa_survivorat_s_p10)

                    ; #51587: origin
                    (Ba_survivorat_s_p10)

                    ; #29705: <==negation-removal== 51587 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #41798: <==negation-removal== 19732 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_b_b_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (leader_b))
        :effect (and
                    ; #26612: <==closure== 83033 (pos)
                    (Pb_survivorat_s_p10)

                    ; #83033: origin
                    (Bb_survivorat_s_p10)

                    ; #54067: <==negation-removal== 83033 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #54766: <==negation-removal== 26612 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_b_c_s
        :precondition (and (leader_c)
                           (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #13813: <==closure== 36429 (pos)
                    (Pc_survivorat_s_p10)

                    ; #36429: origin
                    (Bc_survivorat_s_p10)

                    ; #45848: <==negation-removal== 13813 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #68137: <==negation-removal== 36429 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_c_a_s
        :precondition (and (Pc_survivorat_s_p10)
                           (leader_a)
                           (at_c_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #19732: <==closure== 51587 (pos)
                    (Pa_survivorat_s_p10)

                    ; #51587: origin
                    (Ba_survivorat_s_p10)

                    ; #29705: <==negation-removal== 51587 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #41798: <==negation-removal== 19732 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_c_b_s
        :precondition (and (leader_b)
                           (Pc_survivorat_s_p10)
                           (at_c_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #26612: <==closure== 83033 (pos)
                    (Pb_survivorat_s_p10)

                    ; #83033: origin
                    (Bb_survivorat_s_p10)

                    ; #54067: <==negation-removal== 83033 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #54766: <==negation-removal== 26612 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p10)
                           (at_c_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #13813: <==closure== 36429 (pos)
                    (Pc_survivorat_s_p10)

                    ; #36429: origin
                    (Bc_survivorat_s_p10)

                    ; #45848: <==negation-removal== 13813 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #68137: <==negation-removal== 36429 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p11_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #25156: <==closure== 75472 (pos)
                    (Pa_survivorat_s_p11)

                    ; #75472: origin
                    (Ba_survivorat_s_p11)

                    ; #44678: <==negation-removal== 25156 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #73629: <==negation-removal== 75472 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_a_b_s
        :precondition (and (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (Pa_survivorat_s_p11)
                           (leader_b))
        :effect (and
                    ; #18534: <==closure== 91835 (pos)
                    (Pb_survivorat_s_p11)

                    ; #91835: origin
                    (Bb_survivorat_s_p11)

                    ; #64679: <==negation-removal== 18534 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #82094: <==negation-removal== 91835 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #47167: origin
                    (Bc_survivorat_s_p11)

                    ; #60685: <==closure== 47167 (pos)
                    (Pc_survivorat_s_p11)

                    ; #57095: <==negation-removal== 60685 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #71956: <==negation-removal== 47167 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #25156: <==closure== 75472 (pos)
                    (Pa_survivorat_s_p11)

                    ; #75472: origin
                    (Ba_survivorat_s_p11)

                    ; #44678: <==negation-removal== 25156 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #73629: <==negation-removal== 75472 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #18534: <==closure== 91835 (pos)
                    (Pb_survivorat_s_p11)

                    ; #91835: origin
                    (Bb_survivorat_s_p11)

                    ; #64679: <==negation-removal== 18534 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #82094: <==negation-removal== 91835 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #47167: origin
                    (Bc_survivorat_s_p11)

                    ; #60685: <==closure== 47167 (pos)
                    (Pc_survivorat_s_p11)

                    ; #57095: <==negation-removal== 60685 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #71956: <==negation-removal== 47167 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_c_a_s
        :precondition (and (Pc_survivorat_s_p11)
                           (leader_a)
                           (at_c_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #25156: <==closure== 75472 (pos)
                    (Pa_survivorat_s_p11)

                    ; #75472: origin
                    (Ba_survivorat_s_p11)

                    ; #44678: <==negation-removal== 25156 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #73629: <==negation-removal== 75472 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_c_b_s
        :precondition (and (Pc_survivorat_s_p11)
                           (at_c_p11)
                           (Bc_survivorat_s_p11)
                           (leader_b))
        :effect (and
                    ; #18534: <==closure== 91835 (pos)
                    (Pb_survivorat_s_p11)

                    ; #91835: origin
                    (Bb_survivorat_s_p11)

                    ; #64679: <==negation-removal== 18534 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #82094: <==negation-removal== 91835 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p11)
                           (at_c_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #47167: origin
                    (Bc_survivorat_s_p11)

                    ; #60685: <==closure== 47167 (pos)
                    (Pc_survivorat_s_p11)

                    ; #57095: <==negation-removal== 60685 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #71956: <==negation-removal== 47167 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p12_a_a_s
        :precondition (and (at_a_p12)
                           (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #15165: <==closure== 60503 (pos)
                    (Pa_survivorat_s_p12)

                    ; #60503: origin
                    (Ba_survivorat_s_p12)

                    ; #75936: <==negation-removal== 60503 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #84905: <==negation-removal== 15165 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_a_b_s
        :precondition (and (at_a_p12)
                           (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #47645: origin
                    (Bb_survivorat_s_p12)

                    ; #60288: <==closure== 47645 (pos)
                    (Pb_survivorat_s_p12)

                    ; #62895: <==negation-removal== 47645 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #89394: <==negation-removal== 60288 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_a_c_s
        :precondition (and (leader_c)
                           (at_a_p12)
                           (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12))
        :effect (and
                    ; #63624: <==closure== 80129 (pos)
                    (Pc_survivorat_s_p12)

                    ; #80129: origin
                    (Bc_survivorat_s_p12)

                    ; #30716: <==negation-removal== 63624 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #76859: <==negation-removal== 80129 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_b_a_s
        :precondition (and (leader_a)
                           (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #15165: <==closure== 60503 (pos)
                    (Pa_survivorat_s_p12)

                    ; #60503: origin
                    (Ba_survivorat_s_p12)

                    ; #75936: <==negation-removal== 60503 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #84905: <==negation-removal== 15165 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_b_b_s
        :precondition (and (leader_b)
                           (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #47645: origin
                    (Bb_survivorat_s_p12)

                    ; #60288: <==closure== 47645 (pos)
                    (Pb_survivorat_s_p12)

                    ; #62895: <==negation-removal== 47645 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #89394: <==negation-removal== 60288 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_b_c_s
        :precondition (and (leader_c)
                           (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #63624: <==closure== 80129 (pos)
                    (Pc_survivorat_s_p12)

                    ; #80129: origin
                    (Bc_survivorat_s_p12)

                    ; #30716: <==negation-removal== 63624 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #76859: <==negation-removal== 80129 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_c_a_s
        :precondition (and (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12)
                           (leader_a)
                           (at_c_p12))
        :effect (and
                    ; #15165: <==closure== 60503 (pos)
                    (Pa_survivorat_s_p12)

                    ; #60503: origin
                    (Ba_survivorat_s_p12)

                    ; #75936: <==negation-removal== 60503 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #84905: <==negation-removal== 15165 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_c_b_s
        :precondition (and (Bc_survivorat_s_p12)
                           (leader_b)
                           (Pc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #47645: origin
                    (Bb_survivorat_s_p12)

                    ; #60288: <==closure== 47645 (pos)
                    (Pb_survivorat_s_p12)

                    ; #62895: <==negation-removal== 47645 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #89394: <==negation-removal== 60288 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_c_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12)
                           (leader_c)
                           (at_c_p12))
        :effect (and
                    ; #63624: <==closure== 80129 (pos)
                    (Pc_survivorat_s_p12)

                    ; #80129: origin
                    (Bc_survivorat_s_p12)

                    ; #30716: <==negation-removal== 63624 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #76859: <==negation-removal== 80129 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p1_a_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (leader_a))
        :effect (and
                    ; #15490: <==closure== 48784 (pos)
                    (Pa_survivorat_s_p1)

                    ; #48784: origin
                    (Ba_survivorat_s_p1)

                    ; #50027: <==negation-removal== 48784 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #55539: <==negation-removal== 15490 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #40900: <==closure== 75590 (pos)
                    (Pb_survivorat_s_p1)

                    ; #75590: origin
                    (Bb_survivorat_s_p1)

                    ; #35254: <==negation-removal== 40900 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #44259: <==negation-removal== 75590 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #15460: origin
                    (Bc_survivorat_s_p1)

                    ; #83587: <==closure== 15460 (pos)
                    (Pc_survivorat_s_p1)

                    ; #79268: <==negation-removal== 15460 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #85088: <==negation-removal== 83587 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_a)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #15490: <==closure== 48784 (pos)
                    (Pa_survivorat_s_p1)

                    ; #48784: origin
                    (Ba_survivorat_s_p1)

                    ; #50027: <==negation-removal== 48784 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #55539: <==negation-removal== 15490 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (at_b_p1)
                           (leader_b)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #40900: <==closure== 75590 (pos)
                    (Pb_survivorat_s_p1)

                    ; #75590: origin
                    (Bb_survivorat_s_p1)

                    ; #35254: <==negation-removal== 40900 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #44259: <==negation-removal== 75590 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_c)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #15460: origin
                    (Bc_survivorat_s_p1)

                    ; #83587: <==closure== 15460 (pos)
                    (Pc_survivorat_s_p1)

                    ; #79268: <==negation-removal== 15460 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #85088: <==negation-removal== 83587 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (leader_a)
                           (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #15490: <==closure== 48784 (pos)
                    (Pa_survivorat_s_p1)

                    ; #48784: origin
                    (Ba_survivorat_s_p1)

                    ; #50027: <==negation-removal== 48784 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #55539: <==negation-removal== 15490 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #40900: <==closure== 75590 (pos)
                    (Pb_survivorat_s_p1)

                    ; #75590: origin
                    (Bb_survivorat_s_p1)

                    ; #35254: <==negation-removal== 40900 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #44259: <==negation-removal== 75590 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (leader_c)
                           (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #15460: origin
                    (Bc_survivorat_s_p1)

                    ; #83587: <==closure== 15460 (pos)
                    (Pc_survivorat_s_p1)

                    ; #79268: <==negation-removal== 15460 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #85088: <==negation-removal== 83587 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (at_a_p2)
                           (leader_a)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #20662: origin
                    (Ba_survivorat_s_p2)

                    ; #32912: <==closure== 20662 (pos)
                    (Pa_survivorat_s_p2)

                    ; #35662: <==negation-removal== 20662 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #38773: <==negation-removal== 32912 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (at_a_p2)
                           (leader_b)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #26400: origin
                    (Bb_survivorat_s_p2)

                    ; #86765: <==closure== 26400 (pos)
                    (Pb_survivorat_s_p2)

                    ; #39666: <==negation-removal== 26400 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #88686: <==negation-removal== 86765 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (leader_c)
                           (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #15093: <==closure== 19768 (pos)
                    (Pc_survivorat_s_p2)

                    ; #19768: origin
                    (Bc_survivorat_s_p2)

                    ; #17462: <==negation-removal== 15093 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #70419: <==negation-removal== 19768 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_a))
        :effect (and
                    ; #20662: origin
                    (Ba_survivorat_s_p2)

                    ; #32912: <==closure== 20662 (pos)
                    (Pa_survivorat_s_p2)

                    ; #35662: <==negation-removal== 20662 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #38773: <==negation-removal== 32912 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_b))
        :effect (and
                    ; #26400: origin
                    (Bb_survivorat_s_p2)

                    ; #86765: <==closure== 26400 (pos)
                    (Pb_survivorat_s_p2)

                    ; #39666: <==negation-removal== 26400 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #88686: <==negation-removal== 86765 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #15093: <==closure== 19768 (pos)
                    (Pc_survivorat_s_p2)

                    ; #19768: origin
                    (Bc_survivorat_s_p2)

                    ; #17462: <==negation-removal== 15093 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #70419: <==negation-removal== 19768 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (leader_a)
                           (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #20662: origin
                    (Ba_survivorat_s_p2)

                    ; #32912: <==closure== 20662 (pos)
                    (Pa_survivorat_s_p2)

                    ; #35662: <==negation-removal== 20662 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #38773: <==negation-removal== 32912 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (leader_b)
                           (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #26400: origin
                    (Bb_survivorat_s_p2)

                    ; #86765: <==closure== 26400 (pos)
                    (Pb_survivorat_s_p2)

                    ; #39666: <==negation-removal== 26400 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #88686: <==negation-removal== 86765 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (leader_c)
                           (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #15093: <==closure== 19768 (pos)
                    (Pc_survivorat_s_p2)

                    ; #19768: origin
                    (Bc_survivorat_s_p2)

                    ; #17462: <==negation-removal== 15093 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #70419: <==negation-removal== 19768 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_a))
        :effect (and
                    ; #19473: <==closure== 51897 (pos)
                    (Pa_survivorat_s_p3)

                    ; #51897: origin
                    (Ba_survivorat_s_p3)

                    ; #27594: <==negation-removal== 51897 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #36649: <==negation-removal== 19473 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #53880: <==closure== 74193 (pos)
                    (Pb_survivorat_s_p3)

                    ; #74193: origin
                    (Bb_survivorat_s_p3)

                    ; #45873: <==negation-removal== 53880 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #57754: <==negation-removal== 74193 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (leader_c)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #32654: origin
                    (Bc_survivorat_s_p3)

                    ; #84454: <==closure== 32654 (pos)
                    (Pc_survivorat_s_p3)

                    ; #41359: <==negation-removal== 32654 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #78810: <==negation-removal== 84454 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (Bb_survivorat_s_p3)
                           (leader_a)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #19473: <==closure== 51897 (pos)
                    (Pa_survivorat_s_p3)

                    ; #51897: origin
                    (Ba_survivorat_s_p3)

                    ; #27594: <==negation-removal== 51897 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #36649: <==negation-removal== 19473 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #53880: <==closure== 74193 (pos)
                    (Pb_survivorat_s_p3)

                    ; #74193: origin
                    (Bb_survivorat_s_p3)

                    ; #45873: <==negation-removal== 53880 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #57754: <==negation-removal== 74193 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (Bb_survivorat_s_p3)
                           (leader_c)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #32654: origin
                    (Bc_survivorat_s_p3)

                    ; #84454: <==closure== 32654 (pos)
                    (Pc_survivorat_s_p3)

                    ; #41359: <==negation-removal== 32654 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #78810: <==negation-removal== 84454 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (leader_a)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #19473: <==closure== 51897 (pos)
                    (Pa_survivorat_s_p3)

                    ; #51897: origin
                    (Ba_survivorat_s_p3)

                    ; #27594: <==negation-removal== 51897 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #36649: <==negation-removal== 19473 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (leader_b)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #53880: <==closure== 74193 (pos)
                    (Pb_survivorat_s_p3)

                    ; #74193: origin
                    (Bb_survivorat_s_p3)

                    ; #45873: <==negation-removal== 53880 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #57754: <==negation-removal== 74193 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (leader_c)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #32654: origin
                    (Bc_survivorat_s_p3)

                    ; #84454: <==closure== 32654 (pos)
                    (Pc_survivorat_s_p3)

                    ; #41359: <==negation-removal== 32654 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #78810: <==negation-removal== 84454 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (leader_a)
                           (at_a_p4))
        :effect (and
                    ; #17330: origin
                    (Ba_survivorat_s_p4)

                    ; #82236: <==closure== 17330 (pos)
                    (Pa_survivorat_s_p4)

                    ; #54180: <==negation-removal== 17330 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #61781: <==negation-removal== 82236 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (leader_b))
        :effect (and
                    ; #66308: <==closure== 82772 (pos)
                    (Pb_survivorat_s_p4)

                    ; #82772: origin
                    (Bb_survivorat_s_p4)

                    ; #66885: <==negation-removal== 82772 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #85317: <==negation-removal== 66308 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (leader_c)
                           (at_a_p4))
        :effect (and
                    ; #28928: <==closure== 47925 (pos)
                    (Pc_survivorat_s_p4)

                    ; #47925: origin
                    (Bc_survivorat_s_p4)

                    ; #23459: <==negation-removal== 47925 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #75404: <==negation-removal== 28928 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (Bb_survivorat_s_p4)
                           (leader_a)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #17330: origin
                    (Ba_survivorat_s_p4)

                    ; #82236: <==closure== 17330 (pos)
                    (Pa_survivorat_s_p4)

                    ; #54180: <==negation-removal== 17330 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #61781: <==negation-removal== 82236 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (leader_b)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #66308: <==closure== 82772 (pos)
                    (Pb_survivorat_s_p4)

                    ; #82772: origin
                    (Bb_survivorat_s_p4)

                    ; #66885: <==negation-removal== 82772 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #85317: <==negation-removal== 66308 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #28928: <==closure== 47925 (pos)
                    (Pc_survivorat_s_p4)

                    ; #47925: origin
                    (Bc_survivorat_s_p4)

                    ; #23459: <==negation-removal== 47925 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #75404: <==negation-removal== 28928 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (at_c_p4)
                           (leader_a)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #17330: origin
                    (Ba_survivorat_s_p4)

                    ; #82236: <==closure== 17330 (pos)
                    (Pa_survivorat_s_p4)

                    ; #54180: <==negation-removal== 17330 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #61781: <==negation-removal== 82236 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (leader_b)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #66308: <==closure== 82772 (pos)
                    (Pb_survivorat_s_p4)

                    ; #82772: origin
                    (Bb_survivorat_s_p4)

                    ; #66885: <==negation-removal== 82772 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #85317: <==negation-removal== 66308 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (leader_c)
                           (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #28928: <==closure== 47925 (pos)
                    (Pc_survivorat_s_p4)

                    ; #47925: origin
                    (Bc_survivorat_s_p4)

                    ; #23459: <==negation-removal== 47925 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #75404: <==negation-removal== 28928 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #26771: <==closure== 71378 (pos)
                    (Pa_survivorat_s_p5)

                    ; #71378: origin
                    (Ba_survivorat_s_p5)

                    ; #42780: <==negation-removal== 26771 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #76768: <==negation-removal== 71378 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #16135: origin
                    (Bb_survivorat_s_p5)

                    ; #32151: <==closure== 16135 (pos)
                    (Pb_survivorat_s_p5)

                    ; #18167: <==negation-removal== 16135 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #33299: <==negation-removal== 32151 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #16507: origin
                    (Bc_survivorat_s_p5)

                    ; #41483: <==closure== 16507 (pos)
                    (Pc_survivorat_s_p5)

                    ; #10613: <==negation-removal== 41483 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #78813: <==negation-removal== 16507 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_a)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #26771: <==closure== 71378 (pos)
                    (Pa_survivorat_s_p5)

                    ; #71378: origin
                    (Ba_survivorat_s_p5)

                    ; #42780: <==negation-removal== 26771 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #76768: <==negation-removal== 71378 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (leader_b))
        :effect (and
                    ; #16135: origin
                    (Bb_survivorat_s_p5)

                    ; #32151: <==closure== 16135 (pos)
                    (Pb_survivorat_s_p5)

                    ; #18167: <==negation-removal== 16135 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #33299: <==negation-removal== 32151 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_c)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #16507: origin
                    (Bc_survivorat_s_p5)

                    ; #41483: <==closure== 16507 (pos)
                    (Pc_survivorat_s_p5)

                    ; #10613: <==negation-removal== 41483 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #78813: <==negation-removal== 16507 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (Pc_survivorat_s_p5)
                           (leader_a)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #26771: <==closure== 71378 (pos)
                    (Pa_survivorat_s_p5)

                    ; #71378: origin
                    (Ba_survivorat_s_p5)

                    ; #42780: <==negation-removal== 26771 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #76768: <==negation-removal== 71378 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (Pc_survivorat_s_p5)
                           (leader_b)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #16135: origin
                    (Bb_survivorat_s_p5)

                    ; #32151: <==closure== 16135 (pos)
                    (Pb_survivorat_s_p5)

                    ; #18167: <==negation-removal== 16135 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #33299: <==negation-removal== 32151 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (leader_c)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #16507: origin
                    (Bc_survivorat_s_p5)

                    ; #41483: <==closure== 16507 (pos)
                    (Pc_survivorat_s_p5)

                    ; #10613: <==negation-removal== 41483 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #78813: <==negation-removal== 16507 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (leader_a)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #40460: origin
                    (Ba_survivorat_s_p6)

                    ; #52387: <==closure== 40460 (pos)
                    (Pa_survivorat_s_p6)

                    ; #21040: <==negation-removal== 40460 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #84910: <==negation-removal== 52387 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #30588: origin
                    (Bb_survivorat_s_p6)

                    ; #32181: <==closure== 30588 (pos)
                    (Pb_survivorat_s_p6)

                    ; #23716: <==negation-removal== 30588 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #24143: <==negation-removal== 32181 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (Pa_survivorat_s_p6)
                           (leader_c)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #35510: origin
                    (Bc_survivorat_s_p6)

                    ; #43484: <==closure== 35510 (pos)
                    (Pc_survivorat_s_p6)

                    ; #62605: <==negation-removal== 35510 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #82364: <==negation-removal== 43484 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (Bb_survivorat_s_p6)
                           (leader_a)
                           (Pb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #40460: origin
                    (Ba_survivorat_s_p6)

                    ; #52387: <==closure== 40460 (pos)
                    (Pa_survivorat_s_p6)

                    ; #21040: <==negation-removal== 40460 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #84910: <==negation-removal== 52387 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (leader_b))
        :effect (and
                    ; #30588: origin
                    (Bb_survivorat_s_p6)

                    ; #32181: <==closure== 30588 (pos)
                    (Pb_survivorat_s_p6)

                    ; #23716: <==negation-removal== 30588 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #24143: <==negation-removal== 32181 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (Bb_survivorat_s_p6)
                           (leader_c)
                           (Pb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #35510: origin
                    (Bc_survivorat_s_p6)

                    ; #43484: <==closure== 35510 (pos)
                    (Pc_survivorat_s_p6)

                    ; #62605: <==negation-removal== 35510 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #82364: <==negation-removal== 43484 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (leader_a))
        :effect (and
                    ; #40460: origin
                    (Ba_survivorat_s_p6)

                    ; #52387: <==closure== 40460 (pos)
                    (Pa_survivorat_s_p6)

                    ; #21040: <==negation-removal== 40460 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #84910: <==negation-removal== 52387 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (leader_b))
        :effect (and
                    ; #30588: origin
                    (Bb_survivorat_s_p6)

                    ; #32181: <==closure== 30588 (pos)
                    (Pb_survivorat_s_p6)

                    ; #23716: <==negation-removal== 30588 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #24143: <==negation-removal== 32181 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #35510: origin
                    (Bc_survivorat_s_p6)

                    ; #43484: <==closure== 35510 (pos)
                    (Pc_survivorat_s_p6)

                    ; #62605: <==negation-removal== 35510 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #82364: <==negation-removal== 43484 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_a))
        :effect (and
                    ; #75474: <==closure== 84331 (pos)
                    (Pa_survivorat_s_p7)

                    ; #84331: origin
                    (Ba_survivorat_s_p7)

                    ; #25593: <==negation-removal== 84331 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #28433: <==negation-removal== 75474 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_b))
        :effect (and
                    ; #54294: <==closure== 57800 (pos)
                    (Pb_survivorat_s_p7)

                    ; #57800: origin
                    (Bb_survivorat_s_p7)

                    ; #43010: <==negation-removal== 54294 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #74457: <==negation-removal== 57800 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #20323: <==closure== 59507 (pos)
                    (Pc_survivorat_s_p7)

                    ; #59507: origin
                    (Bc_survivorat_s_p7)

                    ; #26516: <==negation-removal== 59507 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #71918: <==negation-removal== 20323 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (at_b_p7)
                           (leader_a)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #75474: <==closure== 84331 (pos)
                    (Pa_survivorat_s_p7)

                    ; #84331: origin
                    (Ba_survivorat_s_p7)

                    ; #25593: <==negation-removal== 84331 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #28433: <==negation-removal== 75474 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #54294: <==closure== 57800 (pos)
                    (Pb_survivorat_s_p7)

                    ; #57800: origin
                    (Bb_survivorat_s_p7)

                    ; #43010: <==negation-removal== 54294 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #74457: <==negation-removal== 57800 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (at_b_p7)
                           (leader_c)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #20323: <==closure== 59507 (pos)
                    (Pc_survivorat_s_p7)

                    ; #59507: origin
                    (Bc_survivorat_s_p7)

                    ; #26516: <==negation-removal== 59507 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #71918: <==negation-removal== 20323 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (leader_a))
        :effect (and
                    ; #75474: <==closure== 84331 (pos)
                    (Pa_survivorat_s_p7)

                    ; #84331: origin
                    (Ba_survivorat_s_p7)

                    ; #25593: <==negation-removal== 84331 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #28433: <==negation-removal== 75474 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #54294: <==closure== 57800 (pos)
                    (Pb_survivorat_s_p7)

                    ; #57800: origin
                    (Bb_survivorat_s_p7)

                    ; #43010: <==negation-removal== 54294 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #74457: <==negation-removal== 57800 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #20323: <==closure== 59507 (pos)
                    (Pc_survivorat_s_p7)

                    ; #59507: origin
                    (Bc_survivorat_s_p7)

                    ; #26516: <==negation-removal== 59507 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #71918: <==negation-removal== 20323 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (leader_a)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #30237: <==closure== 50756 (pos)
                    (Pa_survivorat_s_p8)

                    ; #50756: origin
                    (Ba_survivorat_s_p8)

                    ; #16672: <==negation-removal== 50756 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #45767: <==negation-removal== 30237 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #44577: origin
                    (Bb_survivorat_s_p8)

                    ; #46371: <==closure== 44577 (pos)
                    (Pb_survivorat_s_p8)

                    ; #23094: <==negation-removal== 46371 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #68647: <==negation-removal== 44577 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (leader_c)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #32458: <==closure== 64958 (pos)
                    (Pc_survivorat_s_p8)

                    ; #64958: origin
                    (Bc_survivorat_s_p8)

                    ; #31680: <==negation-removal== 64958 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #33795: <==negation-removal== 32458 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #30237: <==closure== 50756 (pos)
                    (Pa_survivorat_s_p8)

                    ; #50756: origin
                    (Ba_survivorat_s_p8)

                    ; #16672: <==negation-removal== 50756 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #45767: <==negation-removal== 30237 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #44577: origin
                    (Bb_survivorat_s_p8)

                    ; #46371: <==closure== 44577 (pos)
                    (Pb_survivorat_s_p8)

                    ; #23094: <==negation-removal== 46371 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #68647: <==negation-removal== 44577 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #32458: <==closure== 64958 (pos)
                    (Pc_survivorat_s_p8)

                    ; #64958: origin
                    (Bc_survivorat_s_p8)

                    ; #31680: <==negation-removal== 64958 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #33795: <==negation-removal== 32458 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (Pc_survivorat_s_p8)
                           (leader_a)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #30237: <==closure== 50756 (pos)
                    (Pa_survivorat_s_p8)

                    ; #50756: origin
                    (Ba_survivorat_s_p8)

                    ; #16672: <==negation-removal== 50756 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #45767: <==negation-removal== 30237 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (Pc_survivorat_s_p8)
                           (leader_b)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #44577: origin
                    (Bb_survivorat_s_p8)

                    ; #46371: <==closure== 44577 (pos)
                    (Pb_survivorat_s_p8)

                    ; #23094: <==negation-removal== 46371 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #68647: <==negation-removal== 44577 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (leader_c)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #32458: <==closure== 64958 (pos)
                    (Pc_survivorat_s_p8)

                    ; #64958: origin
                    (Bc_survivorat_s_p8)

                    ; #31680: <==negation-removal== 64958 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #33795: <==negation-removal== 32458 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (leader_a)
                           (at_a_p9))
        :effect (and
                    ; #28392: origin
                    (Ba_survivorat_s_p9)

                    ; #45492: <==closure== 28392 (pos)
                    (Pa_survivorat_s_p9)

                    ; #25736: <==negation-removal== 45492 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #80407: <==negation-removal== 28392 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (leader_b)
                           (at_a_p9))
        :effect (and
                    ; #47498: origin
                    (Bb_survivorat_s_p9)

                    ; #50832: <==closure== 47498 (pos)
                    (Pb_survivorat_s_p9)

                    ; #31320: <==negation-removal== 47498 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #70178: <==negation-removal== 50832 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (leader_c)
                           (at_a_p9))
        :effect (and
                    ; #30518: origin
                    (Bc_survivorat_s_p9)

                    ; #30918: <==closure== 30518 (pos)
                    (Pc_survivorat_s_p9)

                    ; #22202: <==negation-removal== 30918 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #83470: <==negation-removal== 30518 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (leader_a))
        :effect (and
                    ; #28392: origin
                    (Ba_survivorat_s_p9)

                    ; #45492: <==closure== 28392 (pos)
                    (Pa_survivorat_s_p9)

                    ; #25736: <==negation-removal== 45492 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #80407: <==negation-removal== 28392 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (leader_b))
        :effect (and
                    ; #47498: origin
                    (Bb_survivorat_s_p9)

                    ; #50832: <==closure== 47498 (pos)
                    (Pb_survivorat_s_p9)

                    ; #31320: <==negation-removal== 47498 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #70178: <==negation-removal== 50832 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #30518: origin
                    (Bc_survivorat_s_p9)

                    ; #30918: <==closure== 30518 (pos)
                    (Pc_survivorat_s_p9)

                    ; #22202: <==negation-removal== 30918 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #83470: <==negation-removal== 30518 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (at_c_p9)
                           (leader_a)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #28392: origin
                    (Ba_survivorat_s_p9)

                    ; #45492: <==closure== 28392 (pos)
                    (Pa_survivorat_s_p9)

                    ; #25736: <==negation-removal== 45492 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #80407: <==negation-removal== 28392 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #47498: origin
                    (Bb_survivorat_s_p9)

                    ; #50832: <==closure== 47498 (pos)
                    (Pb_survivorat_s_p9)

                    ; #31320: <==negation-removal== 47498 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #70178: <==negation-removal== 50832 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (leader_c)
                           (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #30518: origin
                    (Bc_survivorat_s_p9)

                    ; #30918: <==closure== 30518 (pos)
                    (Pc_survivorat_s_p9)

                    ; #22202: <==negation-removal== 30918 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #83470: <==negation-removal== 30518 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #11620: origin
                    (not_at_a_p10)

                    ; #74665: origin
                    (at_a_p1)

                    ; #29624: <==negation-removal== 11620 (pos)
                    (not (at_a_p10))

                    ; #30677: <==negation-removal== 74665 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (at_a_p10)
                           (succ_p10_p10)
                           (not (leader_a)))
        :effect (and
                    ; #11620: origin
                    (not_at_a_p10)

                    ; #29624: origin
                    (at_a_p10)

                    ; #11620: <==negation-removal== 29624 (pos)
                    (not (not_at_a_p10))

                    ; #29624: <==negation-removal== 11620 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (at_a_p10)
                           (succ_p10_p11)
                           (not (leader_a)))
        :effect (and
                    ; #11620: origin
                    (not_at_a_p10)

                    ; #19324: origin
                    (at_a_p11)

                    ; #29624: <==negation-removal== 11620 (pos)
                    (not (at_a_p10))

                    ; #32589: <==negation-removal== 19324 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #11620: origin
                    (not_at_a_p10)

                    ; #52373: origin
                    (at_a_p12)

                    ; #29624: <==negation-removal== 11620 (pos)
                    (not (at_a_p10))

                    ; #70164: <==negation-removal== 52373 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2)
                           (not (leader_a)))
        :effect (and
                    ; #11620: origin
                    (not_at_a_p10)

                    ; #55948: origin
                    (at_a_p2)

                    ; #29624: <==negation-removal== 11620 (pos)
                    (not (at_a_p10))

                    ; #33502: <==negation-removal== 55948 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (at_a_p10)
                           (succ_p10_p3)
                           (not (leader_a)))
        :effect (and
                    ; #11620: origin
                    (not_at_a_p10)

                    ; #48011: origin
                    (at_a_p3)

                    ; #21485: <==negation-removal== 48011 (pos)
                    (not (not_at_a_p3))

                    ; #29624: <==negation-removal== 11620 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4)
                           (not (leader_a)))
        :effect (and
                    ; #11620: origin
                    (not_at_a_p10)

                    ; #20799: origin
                    (at_a_p4)

                    ; #22220: <==negation-removal== 20799 (pos)
                    (not (not_at_a_p4))

                    ; #29624: <==negation-removal== 11620 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #11620: origin
                    (not_at_a_p10)

                    ; #56180: origin
                    (at_a_p5)

                    ; #29624: <==negation-removal== 11620 (pos)
                    (not (at_a_p10))

                    ; #69010: <==negation-removal== 56180 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #11620: origin
                    (not_at_a_p10)

                    ; #41130: origin
                    (at_a_p6)

                    ; #29624: <==negation-removal== 11620 (pos)
                    (not (at_a_p10))

                    ; #61805: <==negation-removal== 41130 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7)
                           (not (leader_a)))
        :effect (and
                    ; #10791: origin
                    (at_a_p7)

                    ; #11620: origin
                    (not_at_a_p10)

                    ; #29624: <==negation-removal== 11620 (pos)
                    (not (at_a_p10))

                    ; #35963: <==negation-removal== 10791 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #11620: origin
                    (not_at_a_p10)

                    ; #68151: origin
                    (at_a_p8)

                    ; #29624: <==negation-removal== 11620 (pos)
                    (not (at_a_p10))

                    ; #86191: <==negation-removal== 68151 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11620: origin
                    (not_at_a_p10)

                    ; #48926: origin
                    (at_a_p9)

                    ; #29624: <==negation-removal== 11620 (pos)
                    (not (at_a_p10))

                    ; #63833: <==negation-removal== 48926 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #32589: origin
                    (not_at_a_p11)

                    ; #74665: origin
                    (at_a_p1)

                    ; #19324: <==negation-removal== 32589 (pos)
                    (not (at_a_p11))

                    ; #30677: <==negation-removal== 74665 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #29624: origin
                    (at_a_p10)

                    ; #32589: origin
                    (not_at_a_p11)

                    ; #11620: <==negation-removal== 29624 (pos)
                    (not (not_at_a_p10))

                    ; #19324: <==negation-removal== 32589 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #19324: origin
                    (at_a_p11)

                    ; #32589: origin
                    (not_at_a_p11)

                    ; #19324: <==negation-removal== 32589 (pos)
                    (not (at_a_p11))

                    ; #32589: <==negation-removal== 19324 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #32589: origin
                    (not_at_a_p11)

                    ; #52373: origin
                    (at_a_p12)

                    ; #19324: <==negation-removal== 32589 (pos)
                    (not (at_a_p11))

                    ; #70164: <==negation-removal== 52373 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #32589: origin
                    (not_at_a_p11)

                    ; #55948: origin
                    (at_a_p2)

                    ; #19324: <==negation-removal== 32589 (pos)
                    (not (at_a_p11))

                    ; #33502: <==negation-removal== 55948 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3)
                           (not (leader_a)))
        :effect (and
                    ; #32589: origin
                    (not_at_a_p11)

                    ; #48011: origin
                    (at_a_p3)

                    ; #19324: <==negation-removal== 32589 (pos)
                    (not (at_a_p11))

                    ; #21485: <==negation-removal== 48011 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #20799: origin
                    (at_a_p4)

                    ; #32589: origin
                    (not_at_a_p11)

                    ; #19324: <==negation-removal== 32589 (pos)
                    (not (at_a_p11))

                    ; #22220: <==negation-removal== 20799 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #32589: origin
                    (not_at_a_p11)

                    ; #56180: origin
                    (at_a_p5)

                    ; #19324: <==negation-removal== 32589 (pos)
                    (not (at_a_p11))

                    ; #69010: <==negation-removal== 56180 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6)
                           (not (leader_a)))
        :effect (and
                    ; #32589: origin
                    (not_at_a_p11)

                    ; #41130: origin
                    (at_a_p6)

                    ; #19324: <==negation-removal== 32589 (pos)
                    (not (at_a_p11))

                    ; #61805: <==negation-removal== 41130 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #10791: origin
                    (at_a_p7)

                    ; #32589: origin
                    (not_at_a_p11)

                    ; #19324: <==negation-removal== 32589 (pos)
                    (not (at_a_p11))

                    ; #35963: <==negation-removal== 10791 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #32589: origin
                    (not_at_a_p11)

                    ; #68151: origin
                    (at_a_p8)

                    ; #19324: <==negation-removal== 32589 (pos)
                    (not (at_a_p11))

                    ; #86191: <==negation-removal== 68151 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #32589: origin
                    (not_at_a_p11)

                    ; #48926: origin
                    (at_a_p9)

                    ; #19324: <==negation-removal== 32589 (pos)
                    (not (at_a_p11))

                    ; #63833: <==negation-removal== 48926 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #70164: origin
                    (not_at_a_p12)

                    ; #74665: origin
                    (at_a_p1)

                    ; #30677: <==negation-removal== 74665 (pos)
                    (not (not_at_a_p1))

                    ; #52373: <==negation-removal== 70164 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10)
                           (not (leader_a)))
        :effect (and
                    ; #29624: origin
                    (at_a_p10)

                    ; #70164: origin
                    (not_at_a_p12)

                    ; #11620: <==negation-removal== 29624 (pos)
                    (not (not_at_a_p10))

                    ; #52373: <==negation-removal== 70164 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #19324: origin
                    (at_a_p11)

                    ; #70164: origin
                    (not_at_a_p12)

                    ; #32589: <==negation-removal== 19324 (pos)
                    (not (not_at_a_p11))

                    ; #52373: <==negation-removal== 70164 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (at_a_p12)
                           (succ_p12_p12)
                           (not (leader_a)))
        :effect (and
                    ; #52373: origin
                    (at_a_p12)

                    ; #70164: origin
                    (not_at_a_p12)

                    ; #52373: <==negation-removal== 70164 (pos)
                    (not (at_a_p12))

                    ; #70164: <==negation-removal== 52373 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (at_a_p12)
                           (succ_p12_p2)
                           (not (leader_a)))
        :effect (and
                    ; #55948: origin
                    (at_a_p2)

                    ; #70164: origin
                    (not_at_a_p12)

                    ; #33502: <==negation-removal== 55948 (pos)
                    (not (not_at_a_p2))

                    ; #52373: <==negation-removal== 70164 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #48011: origin
                    (at_a_p3)

                    ; #70164: origin
                    (not_at_a_p12)

                    ; #21485: <==negation-removal== 48011 (pos)
                    (not (not_at_a_p3))

                    ; #52373: <==negation-removal== 70164 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (at_a_p12)
                           (succ_p12_p4)
                           (not (leader_a)))
        :effect (and
                    ; #20799: origin
                    (at_a_p4)

                    ; #70164: origin
                    (not_at_a_p12)

                    ; #22220: <==negation-removal== 20799 (pos)
                    (not (not_at_a_p4))

                    ; #52373: <==negation-removal== 70164 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #56180: origin
                    (at_a_p5)

                    ; #70164: origin
                    (not_at_a_p12)

                    ; #52373: <==negation-removal== 70164 (pos)
                    (not (at_a_p12))

                    ; #69010: <==negation-removal== 56180 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6)
                           (not (leader_a)))
        :effect (and
                    ; #41130: origin
                    (at_a_p6)

                    ; #70164: origin
                    (not_at_a_p12)

                    ; #52373: <==negation-removal== 70164 (pos)
                    (not (at_a_p12))

                    ; #61805: <==negation-removal== 41130 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (at_a_p12)
                           (succ_p12_p7)
                           (not (leader_a)))
        :effect (and
                    ; #10791: origin
                    (at_a_p7)

                    ; #70164: origin
                    (not_at_a_p12)

                    ; #35963: <==negation-removal== 10791 (pos)
                    (not (not_at_a_p7))

                    ; #52373: <==negation-removal== 70164 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #68151: origin
                    (at_a_p8)

                    ; #70164: origin
                    (not_at_a_p12)

                    ; #52373: <==negation-removal== 70164 (pos)
                    (not (at_a_p12))

                    ; #86191: <==negation-removal== 68151 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #48926: origin
                    (at_a_p9)

                    ; #70164: origin
                    (not_at_a_p12)

                    ; #52373: <==negation-removal== 70164 (pos)
                    (not (at_a_p12))

                    ; #63833: <==negation-removal== 48926 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #30677: origin
                    (not_at_a_p1)

                    ; #74665: origin
                    (at_a_p1)

                    ; #30677: <==negation-removal== 74665 (pos)
                    (not (not_at_a_p1))

                    ; #74665: <==negation-removal== 30677 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10)
                           (not (leader_a)))
        :effect (and
                    ; #29624: origin
                    (at_a_p10)

                    ; #30677: origin
                    (not_at_a_p1)

                    ; #11620: <==negation-removal== 29624 (pos)
                    (not (not_at_a_p10))

                    ; #74665: <==negation-removal== 30677 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #19324: origin
                    (at_a_p11)

                    ; #30677: origin
                    (not_at_a_p1)

                    ; #32589: <==negation-removal== 19324 (pos)
                    (not (not_at_a_p11))

                    ; #74665: <==negation-removal== 30677 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12)
                           (not (leader_a)))
        :effect (and
                    ; #30677: origin
                    (not_at_a_p1)

                    ; #52373: origin
                    (at_a_p12)

                    ; #70164: <==negation-removal== 52373 (pos)
                    (not (not_at_a_p12))

                    ; #74665: <==negation-removal== 30677 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2)
                           (not (leader_a)))
        :effect (and
                    ; #30677: origin
                    (not_at_a_p1)

                    ; #55948: origin
                    (at_a_p2)

                    ; #33502: <==negation-removal== 55948 (pos)
                    (not (not_at_a_p2))

                    ; #74665: <==negation-removal== 30677 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #30677: origin
                    (not_at_a_p1)

                    ; #48011: origin
                    (at_a_p3)

                    ; #21485: <==negation-removal== 48011 (pos)
                    (not (not_at_a_p3))

                    ; #74665: <==negation-removal== 30677 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4)
                           (not (leader_a)))
        :effect (and
                    ; #20799: origin
                    (at_a_p4)

                    ; #30677: origin
                    (not_at_a_p1)

                    ; #22220: <==negation-removal== 20799 (pos)
                    (not (not_at_a_p4))

                    ; #74665: <==negation-removal== 30677 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5)
                           (not (leader_a)))
        :effect (and
                    ; #30677: origin
                    (not_at_a_p1)

                    ; #56180: origin
                    (at_a_p5)

                    ; #69010: <==negation-removal== 56180 (pos)
                    (not (not_at_a_p5))

                    ; #74665: <==negation-removal== 30677 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #30677: origin
                    (not_at_a_p1)

                    ; #41130: origin
                    (at_a_p6)

                    ; #61805: <==negation-removal== 41130 (pos)
                    (not (not_at_a_p6))

                    ; #74665: <==negation-removal== 30677 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7)
                           (not (leader_a)))
        :effect (and
                    ; #10791: origin
                    (at_a_p7)

                    ; #30677: origin
                    (not_at_a_p1)

                    ; #35963: <==negation-removal== 10791 (pos)
                    (not (not_at_a_p7))

                    ; #74665: <==negation-removal== 30677 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8)
                           (not (leader_a)))
        :effect (and
                    ; #30677: origin
                    (not_at_a_p1)

                    ; #68151: origin
                    (at_a_p8)

                    ; #74665: <==negation-removal== 30677 (pos)
                    (not (at_a_p1))

                    ; #86191: <==negation-removal== 68151 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #30677: origin
                    (not_at_a_p1)

                    ; #48926: origin
                    (at_a_p9)

                    ; #63833: <==negation-removal== 48926 (pos)
                    (not (not_at_a_p9))

                    ; #74665: <==negation-removal== 30677 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1)
                           (not (leader_a)))
        :effect (and
                    ; #33502: origin
                    (not_at_a_p2)

                    ; #74665: origin
                    (at_a_p1)

                    ; #30677: <==negation-removal== 74665 (pos)
                    (not (not_at_a_p1))

                    ; #55948: <==negation-removal== 33502 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #29624: origin
                    (at_a_p10)

                    ; #33502: origin
                    (not_at_a_p2)

                    ; #11620: <==negation-removal== 29624 (pos)
                    (not (not_at_a_p10))

                    ; #55948: <==negation-removal== 33502 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (at_a_p2)
                           (succ_p2_p11)
                           (not (leader_a)))
        :effect (and
                    ; #19324: origin
                    (at_a_p11)

                    ; #33502: origin
                    (not_at_a_p2)

                    ; #32589: <==negation-removal== 19324 (pos)
                    (not (not_at_a_p11))

                    ; #55948: <==negation-removal== 33502 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12)
                           (not (leader_a)))
        :effect (and
                    ; #33502: origin
                    (not_at_a_p2)

                    ; #52373: origin
                    (at_a_p12)

                    ; #55948: <==negation-removal== 33502 (pos)
                    (not (at_a_p2))

                    ; #70164: <==negation-removal== 52373 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2)
                           (not (leader_a)))
        :effect (and
                    ; #33502: origin
                    (not_at_a_p2)

                    ; #55948: origin
                    (at_a_p2)

                    ; #33502: <==negation-removal== 55948 (pos)
                    (not (not_at_a_p2))

                    ; #55948: <==negation-removal== 33502 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3)
                           (not (leader_a)))
        :effect (and
                    ; #33502: origin
                    (not_at_a_p2)

                    ; #48011: origin
                    (at_a_p3)

                    ; #21485: <==negation-removal== 48011 (pos)
                    (not (not_at_a_p3))

                    ; #55948: <==negation-removal== 33502 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4)
                           (not (leader_a)))
        :effect (and
                    ; #20799: origin
                    (at_a_p4)

                    ; #33502: origin
                    (not_at_a_p2)

                    ; #22220: <==negation-removal== 20799 (pos)
                    (not (not_at_a_p4))

                    ; #55948: <==negation-removal== 33502 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5)
                           (not (leader_a)))
        :effect (and
                    ; #33502: origin
                    (not_at_a_p2)

                    ; #56180: origin
                    (at_a_p5)

                    ; #55948: <==negation-removal== 33502 (pos)
                    (not (at_a_p2))

                    ; #69010: <==negation-removal== 56180 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6)
                           (not (leader_a)))
        :effect (and
                    ; #33502: origin
                    (not_at_a_p2)

                    ; #41130: origin
                    (at_a_p6)

                    ; #55948: <==negation-removal== 33502 (pos)
                    (not (at_a_p2))

                    ; #61805: <==negation-removal== 41130 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7)
                           (not (leader_a)))
        :effect (and
                    ; #10791: origin
                    (at_a_p7)

                    ; #33502: origin
                    (not_at_a_p2)

                    ; #35963: <==negation-removal== 10791 (pos)
                    (not (not_at_a_p7))

                    ; #55948: <==negation-removal== 33502 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #33502: origin
                    (not_at_a_p2)

                    ; #68151: origin
                    (at_a_p8)

                    ; #55948: <==negation-removal== 33502 (pos)
                    (not (at_a_p2))

                    ; #86191: <==negation-removal== 68151 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9)
                           (not (leader_a)))
        :effect (and
                    ; #33502: origin
                    (not_at_a_p2)

                    ; #48926: origin
                    (at_a_p9)

                    ; #55948: <==negation-removal== 33502 (pos)
                    (not (at_a_p2))

                    ; #63833: <==negation-removal== 48926 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #21485: origin
                    (not_at_a_p3)

                    ; #74665: origin
                    (at_a_p1)

                    ; #30677: <==negation-removal== 74665 (pos)
                    (not (not_at_a_p1))

                    ; #48011: <==negation-removal== 21485 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10)
                           (not (leader_a)))
        :effect (and
                    ; #21485: origin
                    (not_at_a_p3)

                    ; #29624: origin
                    (at_a_p10)

                    ; #11620: <==negation-removal== 29624 (pos)
                    (not (not_at_a_p10))

                    ; #48011: <==negation-removal== 21485 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #19324: origin
                    (at_a_p11)

                    ; #21485: origin
                    (not_at_a_p3)

                    ; #32589: <==negation-removal== 19324 (pos)
                    (not (not_at_a_p11))

                    ; #48011: <==negation-removal== 21485 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #21485: origin
                    (not_at_a_p3)

                    ; #52373: origin
                    (at_a_p12)

                    ; #48011: <==negation-removal== 21485 (pos)
                    (not (at_a_p3))

                    ; #70164: <==negation-removal== 52373 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2)
                           (not (leader_a)))
        :effect (and
                    ; #21485: origin
                    (not_at_a_p3)

                    ; #55948: origin
                    (at_a_p2)

                    ; #33502: <==negation-removal== 55948 (pos)
                    (not (not_at_a_p2))

                    ; #48011: <==negation-removal== 21485 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3)
                           (not (leader_a)))
        :effect (and
                    ; #21485: origin
                    (not_at_a_p3)

                    ; #48011: origin
                    (at_a_p3)

                    ; #21485: <==negation-removal== 48011 (pos)
                    (not (not_at_a_p3))

                    ; #48011: <==negation-removal== 21485 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4)
                           (not (leader_a)))
        :effect (and
                    ; #20799: origin
                    (at_a_p4)

                    ; #21485: origin
                    (not_at_a_p3)

                    ; #22220: <==negation-removal== 20799 (pos)
                    (not (not_at_a_p4))

                    ; #48011: <==negation-removal== 21485 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #21485: origin
                    (not_at_a_p3)

                    ; #56180: origin
                    (at_a_p5)

                    ; #48011: <==negation-removal== 21485 (pos)
                    (not (at_a_p3))

                    ; #69010: <==negation-removal== 56180 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6)
                           (not (leader_a)))
        :effect (and
                    ; #21485: origin
                    (not_at_a_p3)

                    ; #41130: origin
                    (at_a_p6)

                    ; #48011: <==negation-removal== 21485 (pos)
                    (not (at_a_p3))

                    ; #61805: <==negation-removal== 41130 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7)
                           (not (leader_a)))
        :effect (and
                    ; #10791: origin
                    (at_a_p7)

                    ; #21485: origin
                    (not_at_a_p3)

                    ; #35963: <==negation-removal== 10791 (pos)
                    (not (not_at_a_p7))

                    ; #48011: <==negation-removal== 21485 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8)
                           (not (leader_a)))
        :effect (and
                    ; #21485: origin
                    (not_at_a_p3)

                    ; #68151: origin
                    (at_a_p8)

                    ; #48011: <==negation-removal== 21485 (pos)
                    (not (at_a_p3))

                    ; #86191: <==negation-removal== 68151 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9)
                           (not (leader_a)))
        :effect (and
                    ; #21485: origin
                    (not_at_a_p3)

                    ; #48926: origin
                    (at_a_p9)

                    ; #48011: <==negation-removal== 21485 (pos)
                    (not (at_a_p3))

                    ; #63833: <==negation-removal== 48926 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1)
                           (not (leader_a)))
        :effect (and
                    ; #22220: origin
                    (not_at_a_p4)

                    ; #74665: origin
                    (at_a_p1)

                    ; #20799: <==negation-removal== 22220 (pos)
                    (not (at_a_p4))

                    ; #30677: <==negation-removal== 74665 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #22220: origin
                    (not_at_a_p4)

                    ; #29624: origin
                    (at_a_p10)

                    ; #11620: <==negation-removal== 29624 (pos)
                    (not (not_at_a_p10))

                    ; #20799: <==negation-removal== 22220 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #19324: origin
                    (at_a_p11)

                    ; #22220: origin
                    (not_at_a_p4)

                    ; #20799: <==negation-removal== 22220 (pos)
                    (not (at_a_p4))

                    ; #32589: <==negation-removal== 19324 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #22220: origin
                    (not_at_a_p4)

                    ; #52373: origin
                    (at_a_p12)

                    ; #20799: <==negation-removal== 22220 (pos)
                    (not (at_a_p4))

                    ; #70164: <==negation-removal== 52373 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #22220: origin
                    (not_at_a_p4)

                    ; #55948: origin
                    (at_a_p2)

                    ; #20799: <==negation-removal== 22220 (pos)
                    (not (at_a_p4))

                    ; #33502: <==negation-removal== 55948 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3)
                           (not (leader_a)))
        :effect (and
                    ; #22220: origin
                    (not_at_a_p4)

                    ; #48011: origin
                    (at_a_p3)

                    ; #20799: <==negation-removal== 22220 (pos)
                    (not (at_a_p4))

                    ; #21485: <==negation-removal== 48011 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #20799: origin
                    (at_a_p4)

                    ; #22220: origin
                    (not_at_a_p4)

                    ; #20799: <==negation-removal== 22220 (pos)
                    (not (at_a_p4))

                    ; #22220: <==negation-removal== 20799 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #22220: origin
                    (not_at_a_p4)

                    ; #56180: origin
                    (at_a_p5)

                    ; #20799: <==negation-removal== 22220 (pos)
                    (not (at_a_p4))

                    ; #69010: <==negation-removal== 56180 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #22220: origin
                    (not_at_a_p4)

                    ; #41130: origin
                    (at_a_p6)

                    ; #20799: <==negation-removal== 22220 (pos)
                    (not (at_a_p4))

                    ; #61805: <==negation-removal== 41130 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #10791: origin
                    (at_a_p7)

                    ; #22220: origin
                    (not_at_a_p4)

                    ; #20799: <==negation-removal== 22220 (pos)
                    (not (at_a_p4))

                    ; #35963: <==negation-removal== 10791 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #22220: origin
                    (not_at_a_p4)

                    ; #68151: origin
                    (at_a_p8)

                    ; #20799: <==negation-removal== 22220 (pos)
                    (not (at_a_p4))

                    ; #86191: <==negation-removal== 68151 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #22220: origin
                    (not_at_a_p4)

                    ; #48926: origin
                    (at_a_p9)

                    ; #20799: <==negation-removal== 22220 (pos)
                    (not (at_a_p4))

                    ; #63833: <==negation-removal== 48926 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #69010: origin
                    (not_at_a_p5)

                    ; #74665: origin
                    (at_a_p1)

                    ; #30677: <==negation-removal== 74665 (pos)
                    (not (not_at_a_p1))

                    ; #56180: <==negation-removal== 69010 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #29624: origin
                    (at_a_p10)

                    ; #69010: origin
                    (not_at_a_p5)

                    ; #11620: <==negation-removal== 29624 (pos)
                    (not (not_at_a_p10))

                    ; #56180: <==negation-removal== 69010 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #19324: origin
                    (at_a_p11)

                    ; #69010: origin
                    (not_at_a_p5)

                    ; #32589: <==negation-removal== 19324 (pos)
                    (not (not_at_a_p11))

                    ; #56180: <==negation-removal== 69010 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #52373: origin
                    (at_a_p12)

                    ; #69010: origin
                    (not_at_a_p5)

                    ; #56180: <==negation-removal== 69010 (pos)
                    (not (at_a_p5))

                    ; #70164: <==negation-removal== 52373 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2)
                           (not (leader_a)))
        :effect (and
                    ; #55948: origin
                    (at_a_p2)

                    ; #69010: origin
                    (not_at_a_p5)

                    ; #33502: <==negation-removal== 55948 (pos)
                    (not (not_at_a_p2))

                    ; #56180: <==negation-removal== 69010 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #48011: origin
                    (at_a_p3)

                    ; #69010: origin
                    (not_at_a_p5)

                    ; #21485: <==negation-removal== 48011 (pos)
                    (not (not_at_a_p3))

                    ; #56180: <==negation-removal== 69010 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #20799: origin
                    (at_a_p4)

                    ; #69010: origin
                    (not_at_a_p5)

                    ; #22220: <==negation-removal== 20799 (pos)
                    (not (not_at_a_p4))

                    ; #56180: <==negation-removal== 69010 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #56180: origin
                    (at_a_p5)

                    ; #69010: origin
                    (not_at_a_p5)

                    ; #56180: <==negation-removal== 69010 (pos)
                    (not (at_a_p5))

                    ; #69010: <==negation-removal== 56180 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6)
                           (not (leader_a)))
        :effect (and
                    ; #41130: origin
                    (at_a_p6)

                    ; #69010: origin
                    (not_at_a_p5)

                    ; #56180: <==negation-removal== 69010 (pos)
                    (not (at_a_p5))

                    ; #61805: <==negation-removal== 41130 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #10791: origin
                    (at_a_p7)

                    ; #69010: origin
                    (not_at_a_p5)

                    ; #35963: <==negation-removal== 10791 (pos)
                    (not (not_at_a_p7))

                    ; #56180: <==negation-removal== 69010 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #68151: origin
                    (at_a_p8)

                    ; #69010: origin
                    (not_at_a_p5)

                    ; #56180: <==negation-removal== 69010 (pos)
                    (not (at_a_p5))

                    ; #86191: <==negation-removal== 68151 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #48926: origin
                    (at_a_p9)

                    ; #69010: origin
                    (not_at_a_p5)

                    ; #56180: <==negation-removal== 69010 (pos)
                    (not (at_a_p5))

                    ; #63833: <==negation-removal== 48926 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #61805: origin
                    (not_at_a_p6)

                    ; #74665: origin
                    (at_a_p1)

                    ; #30677: <==negation-removal== 74665 (pos)
                    (not (not_at_a_p1))

                    ; #41130: <==negation-removal== 61805 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10)
                           (not (leader_a)))
        :effect (and
                    ; #29624: origin
                    (at_a_p10)

                    ; #61805: origin
                    (not_at_a_p6)

                    ; #11620: <==negation-removal== 29624 (pos)
                    (not (not_at_a_p10))

                    ; #41130: <==negation-removal== 61805 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #19324: origin
                    (at_a_p11)

                    ; #61805: origin
                    (not_at_a_p6)

                    ; #32589: <==negation-removal== 19324 (pos)
                    (not (not_at_a_p11))

                    ; #41130: <==negation-removal== 61805 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #52373: origin
                    (at_a_p12)

                    ; #61805: origin
                    (not_at_a_p6)

                    ; #41130: <==negation-removal== 61805 (pos)
                    (not (at_a_p6))

                    ; #70164: <==negation-removal== 52373 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #55948: origin
                    (at_a_p2)

                    ; #61805: origin
                    (not_at_a_p6)

                    ; #33502: <==negation-removal== 55948 (pos)
                    (not (not_at_a_p2))

                    ; #41130: <==negation-removal== 61805 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3)
                           (not (leader_a)))
        :effect (and
                    ; #48011: origin
                    (at_a_p3)

                    ; #61805: origin
                    (not_at_a_p6)

                    ; #21485: <==negation-removal== 48011 (pos)
                    (not (not_at_a_p3))

                    ; #41130: <==negation-removal== 61805 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #20799: origin
                    (at_a_p4)

                    ; #61805: origin
                    (not_at_a_p6)

                    ; #22220: <==negation-removal== 20799 (pos)
                    (not (not_at_a_p4))

                    ; #41130: <==negation-removal== 61805 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #56180: origin
                    (at_a_p5)

                    ; #61805: origin
                    (not_at_a_p6)

                    ; #41130: <==negation-removal== 61805 (pos)
                    (not (at_a_p6))

                    ; #69010: <==negation-removal== 56180 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #41130: origin
                    (at_a_p6)

                    ; #61805: origin
                    (not_at_a_p6)

                    ; #41130: <==negation-removal== 61805 (pos)
                    (not (at_a_p6))

                    ; #61805: <==negation-removal== 41130 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7)
                           (not (leader_a)))
        :effect (and
                    ; #10791: origin
                    (at_a_p7)

                    ; #61805: origin
                    (not_at_a_p6)

                    ; #35963: <==negation-removal== 10791 (pos)
                    (not (not_at_a_p7))

                    ; #41130: <==negation-removal== 61805 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #61805: origin
                    (not_at_a_p6)

                    ; #68151: origin
                    (at_a_p8)

                    ; #41130: <==negation-removal== 61805 (pos)
                    (not (at_a_p6))

                    ; #86191: <==negation-removal== 68151 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #48926: origin
                    (at_a_p9)

                    ; #61805: origin
                    (not_at_a_p6)

                    ; #41130: <==negation-removal== 61805 (pos)
                    (not (at_a_p6))

                    ; #63833: <==negation-removal== 48926 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #35963: origin
                    (not_at_a_p7)

                    ; #74665: origin
                    (at_a_p1)

                    ; #10791: <==negation-removal== 35963 (pos)
                    (not (at_a_p7))

                    ; #30677: <==negation-removal== 74665 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #29624: origin
                    (at_a_p10)

                    ; #35963: origin
                    (not_at_a_p7)

                    ; #10791: <==negation-removal== 35963 (pos)
                    (not (at_a_p7))

                    ; #11620: <==negation-removal== 29624 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #19324: origin
                    (at_a_p11)

                    ; #35963: origin
                    (not_at_a_p7)

                    ; #10791: <==negation-removal== 35963 (pos)
                    (not (at_a_p7))

                    ; #32589: <==negation-removal== 19324 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (at_a_p7)
                           (succ_p7_p12)
                           (not (leader_a)))
        :effect (and
                    ; #35963: origin
                    (not_at_a_p7)

                    ; #52373: origin
                    (at_a_p12)

                    ; #10791: <==negation-removal== 35963 (pos)
                    (not (at_a_p7))

                    ; #70164: <==negation-removal== 52373 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #35963: origin
                    (not_at_a_p7)

                    ; #55948: origin
                    (at_a_p2)

                    ; #10791: <==negation-removal== 35963 (pos)
                    (not (at_a_p7))

                    ; #33502: <==negation-removal== 55948 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #35963: origin
                    (not_at_a_p7)

                    ; #48011: origin
                    (at_a_p3)

                    ; #10791: <==negation-removal== 35963 (pos)
                    (not (at_a_p7))

                    ; #21485: <==negation-removal== 48011 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #20799: origin
                    (at_a_p4)

                    ; #35963: origin
                    (not_at_a_p7)

                    ; #10791: <==negation-removal== 35963 (pos)
                    (not (at_a_p7))

                    ; #22220: <==negation-removal== 20799 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5)
                           (not (leader_a)))
        :effect (and
                    ; #35963: origin
                    (not_at_a_p7)

                    ; #56180: origin
                    (at_a_p5)

                    ; #10791: <==negation-removal== 35963 (pos)
                    (not (at_a_p7))

                    ; #69010: <==negation-removal== 56180 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #35963: origin
                    (not_at_a_p7)

                    ; #41130: origin
                    (at_a_p6)

                    ; #10791: <==negation-removal== 35963 (pos)
                    (not (at_a_p7))

                    ; #61805: <==negation-removal== 41130 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7)
                           (not (leader_a)))
        :effect (and
                    ; #10791: origin
                    (at_a_p7)

                    ; #35963: origin
                    (not_at_a_p7)

                    ; #10791: <==negation-removal== 35963 (pos)
                    (not (at_a_p7))

                    ; #35963: <==negation-removal== 10791 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8)
                           (not (leader_a)))
        :effect (and
                    ; #35963: origin
                    (not_at_a_p7)

                    ; #68151: origin
                    (at_a_p8)

                    ; #10791: <==negation-removal== 35963 (pos)
                    (not (at_a_p7))

                    ; #86191: <==negation-removal== 68151 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #35963: origin
                    (not_at_a_p7)

                    ; #48926: origin
                    (at_a_p9)

                    ; #10791: <==negation-removal== 35963 (pos)
                    (not (at_a_p7))

                    ; #63833: <==negation-removal== 48926 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1)
                           (not (leader_a)))
        :effect (and
                    ; #74665: origin
                    (at_a_p1)

                    ; #86191: origin
                    (not_at_a_p8)

                    ; #30677: <==negation-removal== 74665 (pos)
                    (not (not_at_a_p1))

                    ; #68151: <==negation-removal== 86191 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10)
                           (not (leader_a)))
        :effect (and
                    ; #29624: origin
                    (at_a_p10)

                    ; #86191: origin
                    (not_at_a_p8)

                    ; #11620: <==negation-removal== 29624 (pos)
                    (not (not_at_a_p10))

                    ; #68151: <==negation-removal== 86191 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11)
                           (not (leader_a)))
        :effect (and
                    ; #19324: origin
                    (at_a_p11)

                    ; #86191: origin
                    (not_at_a_p8)

                    ; #32589: <==negation-removal== 19324 (pos)
                    (not (not_at_a_p11))

                    ; #68151: <==negation-removal== 86191 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12)
                           (not (leader_a)))
        :effect (and
                    ; #52373: origin
                    (at_a_p12)

                    ; #86191: origin
                    (not_at_a_p8)

                    ; #68151: <==negation-removal== 86191 (pos)
                    (not (at_a_p8))

                    ; #70164: <==negation-removal== 52373 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2)
                           (not (leader_a)))
        :effect (and
                    ; #55948: origin
                    (at_a_p2)

                    ; #86191: origin
                    (not_at_a_p8)

                    ; #33502: <==negation-removal== 55948 (pos)
                    (not (not_at_a_p2))

                    ; #68151: <==negation-removal== 86191 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3)
                           (not (leader_a)))
        :effect (and
                    ; #48011: origin
                    (at_a_p3)

                    ; #86191: origin
                    (not_at_a_p8)

                    ; #21485: <==negation-removal== 48011 (pos)
                    (not (not_at_a_p3))

                    ; #68151: <==negation-removal== 86191 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4)
                           (not (leader_a)))
        :effect (and
                    ; #20799: origin
                    (at_a_p4)

                    ; #86191: origin
                    (not_at_a_p8)

                    ; #22220: <==negation-removal== 20799 (pos)
                    (not (not_at_a_p4))

                    ; #68151: <==negation-removal== 86191 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #56180: origin
                    (at_a_p5)

                    ; #86191: origin
                    (not_at_a_p8)

                    ; #68151: <==negation-removal== 86191 (pos)
                    (not (at_a_p8))

                    ; #69010: <==negation-removal== 56180 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6)
                           (not (leader_a)))
        :effect (and
                    ; #41130: origin
                    (at_a_p6)

                    ; #86191: origin
                    (not_at_a_p8)

                    ; #61805: <==negation-removal== 41130 (pos)
                    (not (not_at_a_p6))

                    ; #68151: <==negation-removal== 86191 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7)
                           (not (leader_a)))
        :effect (and
                    ; #10791: origin
                    (at_a_p7)

                    ; #86191: origin
                    (not_at_a_p8)

                    ; #35963: <==negation-removal== 10791 (pos)
                    (not (not_at_a_p7))

                    ; #68151: <==negation-removal== 86191 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #68151: origin
                    (at_a_p8)

                    ; #86191: origin
                    (not_at_a_p8)

                    ; #68151: <==negation-removal== 86191 (pos)
                    (not (at_a_p8))

                    ; #86191: <==negation-removal== 68151 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #48926: origin
                    (at_a_p9)

                    ; #86191: origin
                    (not_at_a_p8)

                    ; #63833: <==negation-removal== 48926 (pos)
                    (not (not_at_a_p9))

                    ; #68151: <==negation-removal== 86191 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #63833: origin
                    (not_at_a_p9)

                    ; #74665: origin
                    (at_a_p1)

                    ; #30677: <==negation-removal== 74665 (pos)
                    (not (not_at_a_p1))

                    ; #48926: <==negation-removal== 63833 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #29624: origin
                    (at_a_p10)

                    ; #63833: origin
                    (not_at_a_p9)

                    ; #11620: <==negation-removal== 29624 (pos)
                    (not (not_at_a_p10))

                    ; #48926: <==negation-removal== 63833 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #19324: origin
                    (at_a_p11)

                    ; #63833: origin
                    (not_at_a_p9)

                    ; #32589: <==negation-removal== 19324 (pos)
                    (not (not_at_a_p11))

                    ; #48926: <==negation-removal== 63833 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #52373: origin
                    (at_a_p12)

                    ; #63833: origin
                    (not_at_a_p9)

                    ; #48926: <==negation-removal== 63833 (pos)
                    (not (at_a_p9))

                    ; #70164: <==negation-removal== 52373 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #55948: origin
                    (at_a_p2)

                    ; #63833: origin
                    (not_at_a_p9)

                    ; #33502: <==negation-removal== 55948 (pos)
                    (not (not_at_a_p2))

                    ; #48926: <==negation-removal== 63833 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #48011: origin
                    (at_a_p3)

                    ; #63833: origin
                    (not_at_a_p9)

                    ; #21485: <==negation-removal== 48011 (pos)
                    (not (not_at_a_p3))

                    ; #48926: <==negation-removal== 63833 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #20799: origin
                    (at_a_p4)

                    ; #63833: origin
                    (not_at_a_p9)

                    ; #22220: <==negation-removal== 20799 (pos)
                    (not (not_at_a_p4))

                    ; #48926: <==negation-removal== 63833 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #56180: origin
                    (at_a_p5)

                    ; #63833: origin
                    (not_at_a_p9)

                    ; #48926: <==negation-removal== 63833 (pos)
                    (not (at_a_p9))

                    ; #69010: <==negation-removal== 56180 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #41130: origin
                    (at_a_p6)

                    ; #63833: origin
                    (not_at_a_p9)

                    ; #48926: <==negation-removal== 63833 (pos)
                    (not (at_a_p9))

                    ; #61805: <==negation-removal== 41130 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #10791: origin
                    (at_a_p7)

                    ; #63833: origin
                    (not_at_a_p9)

                    ; #35963: <==negation-removal== 10791 (pos)
                    (not (not_at_a_p7))

                    ; #48926: <==negation-removal== 63833 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #63833: origin
                    (not_at_a_p9)

                    ; #68151: origin
                    (at_a_p8)

                    ; #48926: <==negation-removal== 63833 (pos)
                    (not (at_a_p9))

                    ; #86191: <==negation-removal== 68151 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #48926: origin
                    (at_a_p9)

                    ; #63833: origin
                    (not_at_a_p9)

                    ; #48926: <==negation-removal== 63833 (pos)
                    (not (at_a_p9))

                    ; #63833: <==negation-removal== 48926 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1)
                           (not (leader_b)))
        :effect (and
                    ; #11277: origin
                    (at_b_p1)

                    ; #72177: origin
                    (not_at_b_p10)

                    ; #17749: <==negation-removal== 11277 (pos)
                    (not (not_at_b_p1))

                    ; #37153: <==negation-removal== 72177 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10)
                           (not (leader_b)))
        :effect (and
                    ; #37153: origin
                    (at_b_p10)

                    ; #72177: origin
                    (not_at_b_p10)

                    ; #37153: <==negation-removal== 72177 (pos)
                    (not (at_b_p10))

                    ; #72177: <==negation-removal== 37153 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11)
                           (not (leader_b)))
        :effect (and
                    ; #18185: origin
                    (at_b_p11)

                    ; #72177: origin
                    (not_at_b_p10)

                    ; #25509: <==negation-removal== 18185 (pos)
                    (not (not_at_b_p11))

                    ; #37153: <==negation-removal== 72177 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12)
                           (not (leader_b)))
        :effect (and
                    ; #66033: origin
                    (at_b_p12)

                    ; #72177: origin
                    (not_at_b_p10)

                    ; #37153: <==negation-removal== 72177 (pos)
                    (not (at_b_p10))

                    ; #74160: <==negation-removal== 66033 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2)
                           (not (leader_b)))
        :effect (and
                    ; #61849: origin
                    (at_b_p2)

                    ; #72177: origin
                    (not_at_b_p10)

                    ; #37153: <==negation-removal== 72177 (pos)
                    (not (at_b_p10))

                    ; #49593: <==negation-removal== 61849 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3)
                           (not (leader_b)))
        :effect (and
                    ; #34996: origin
                    (at_b_p3)

                    ; #72177: origin
                    (not_at_b_p10)

                    ; #11451: <==negation-removal== 34996 (pos)
                    (not (not_at_b_p3))

                    ; #37153: <==negation-removal== 72177 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4)
                           (not (leader_b)))
        :effect (and
                    ; #55385: origin
                    (at_b_p4)

                    ; #72177: origin
                    (not_at_b_p10)

                    ; #15833: <==negation-removal== 55385 (pos)
                    (not (not_at_b_p4))

                    ; #37153: <==negation-removal== 72177 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5)
                           (not (leader_b)))
        :effect (and
                    ; #51130: origin
                    (at_b_p5)

                    ; #72177: origin
                    (not_at_b_p10)

                    ; #37153: <==negation-removal== 72177 (pos)
                    (not (at_b_p10))

                    ; #44572: <==negation-removal== 51130 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6)
                           (not (leader_b)))
        :effect (and
                    ; #35767: origin
                    (at_b_p6)

                    ; #72177: origin
                    (not_at_b_p10)

                    ; #37153: <==negation-removal== 72177 (pos)
                    (not (at_b_p10))

                    ; #92106: <==negation-removal== 35767 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7)
                           (not (leader_b)))
        :effect (and
                    ; #18247: origin
                    (at_b_p7)

                    ; #72177: origin
                    (not_at_b_p10)

                    ; #36406: <==negation-removal== 18247 (pos)
                    (not (not_at_b_p7))

                    ; #37153: <==negation-removal== 72177 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8)
                           (not (leader_b)))
        :effect (and
                    ; #41386: origin
                    (at_b_p8)

                    ; #72177: origin
                    (not_at_b_p10)

                    ; #37153: <==negation-removal== 72177 (pos)
                    (not (at_b_p10))

                    ; #79736: <==negation-removal== 41386 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9)
                           (not (leader_b)))
        :effect (and
                    ; #49028: origin
                    (at_b_p9)

                    ; #72177: origin
                    (not_at_b_p10)

                    ; #28061: <==negation-removal== 49028 (pos)
                    (not (not_at_b_p9))

                    ; #37153: <==negation-removal== 72177 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #11277: origin
                    (at_b_p1)

                    ; #25509: origin
                    (not_at_b_p11)

                    ; #17749: <==negation-removal== 11277 (pos)
                    (not (not_at_b_p1))

                    ; #18185: <==negation-removal== 25509 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #25509: origin
                    (not_at_b_p11)

                    ; #37153: origin
                    (at_b_p10)

                    ; #18185: <==negation-removal== 25509 (pos)
                    (not (at_b_p11))

                    ; #72177: <==negation-removal== 37153 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #18185: origin
                    (at_b_p11)

                    ; #25509: origin
                    (not_at_b_p11)

                    ; #18185: <==negation-removal== 25509 (pos)
                    (not (at_b_p11))

                    ; #25509: <==negation-removal== 18185 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #25509: origin
                    (not_at_b_p11)

                    ; #66033: origin
                    (at_b_p12)

                    ; #18185: <==negation-removal== 25509 (pos)
                    (not (at_b_p11))

                    ; #74160: <==negation-removal== 66033 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #25509: origin
                    (not_at_b_p11)

                    ; #61849: origin
                    (at_b_p2)

                    ; #18185: <==negation-removal== 25509 (pos)
                    (not (at_b_p11))

                    ; #49593: <==negation-removal== 61849 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #25509: origin
                    (not_at_b_p11)

                    ; #34996: origin
                    (at_b_p3)

                    ; #11451: <==negation-removal== 34996 (pos)
                    (not (not_at_b_p3))

                    ; #18185: <==negation-removal== 25509 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #25509: origin
                    (not_at_b_p11)

                    ; #55385: origin
                    (at_b_p4)

                    ; #15833: <==negation-removal== 55385 (pos)
                    (not (not_at_b_p4))

                    ; #18185: <==negation-removal== 25509 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #25509: origin
                    (not_at_b_p11)

                    ; #51130: origin
                    (at_b_p5)

                    ; #18185: <==negation-removal== 25509 (pos)
                    (not (at_b_p11))

                    ; #44572: <==negation-removal== 51130 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #25509: origin
                    (not_at_b_p11)

                    ; #35767: origin
                    (at_b_p6)

                    ; #18185: <==negation-removal== 25509 (pos)
                    (not (at_b_p11))

                    ; #92106: <==negation-removal== 35767 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #18247: origin
                    (at_b_p7)

                    ; #25509: origin
                    (not_at_b_p11)

                    ; #18185: <==negation-removal== 25509 (pos)
                    (not (at_b_p11))

                    ; #36406: <==negation-removal== 18247 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #25509: origin
                    (not_at_b_p11)

                    ; #41386: origin
                    (at_b_p8)

                    ; #18185: <==negation-removal== 25509 (pos)
                    (not (at_b_p11))

                    ; #79736: <==negation-removal== 41386 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #25509: origin
                    (not_at_b_p11)

                    ; #49028: origin
                    (at_b_p9)

                    ; #18185: <==negation-removal== 25509 (pos)
                    (not (at_b_p11))

                    ; #28061: <==negation-removal== 49028 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #11277: origin
                    (at_b_p1)

                    ; #74160: origin
                    (not_at_b_p12)

                    ; #17749: <==negation-removal== 11277 (pos)
                    (not (not_at_b_p1))

                    ; #66033: <==negation-removal== 74160 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10)
                           (not (leader_b)))
        :effect (and
                    ; #37153: origin
                    (at_b_p10)

                    ; #74160: origin
                    (not_at_b_p12)

                    ; #66033: <==negation-removal== 74160 (pos)
                    (not (at_b_p12))

                    ; #72177: <==negation-removal== 37153 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #18185: origin
                    (at_b_p11)

                    ; #74160: origin
                    (not_at_b_p12)

                    ; #25509: <==negation-removal== 18185 (pos)
                    (not (not_at_b_p11))

                    ; #66033: <==negation-removal== 74160 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12)
                           (not (leader_b)))
        :effect (and
                    ; #66033: origin
                    (at_b_p12)

                    ; #74160: origin
                    (not_at_b_p12)

                    ; #66033: <==negation-removal== 74160 (pos)
                    (not (at_b_p12))

                    ; #74160: <==negation-removal== 66033 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2)
                           (not (leader_b)))
        :effect (and
                    ; #61849: origin
                    (at_b_p2)

                    ; #74160: origin
                    (not_at_b_p12)

                    ; #49593: <==negation-removal== 61849 (pos)
                    (not (not_at_b_p2))

                    ; #66033: <==negation-removal== 74160 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #34996: origin
                    (at_b_p3)

                    ; #74160: origin
                    (not_at_b_p12)

                    ; #11451: <==negation-removal== 34996 (pos)
                    (not (not_at_b_p3))

                    ; #66033: <==negation-removal== 74160 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #55385: origin
                    (at_b_p4)

                    ; #74160: origin
                    (not_at_b_p12)

                    ; #15833: <==negation-removal== 55385 (pos)
                    (not (not_at_b_p4))

                    ; #66033: <==negation-removal== 74160 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #51130: origin
                    (at_b_p5)

                    ; #74160: origin
                    (not_at_b_p12)

                    ; #44572: <==negation-removal== 51130 (pos)
                    (not (not_at_b_p5))

                    ; #66033: <==negation-removal== 74160 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6)
                           (not (leader_b)))
        :effect (and
                    ; #35767: origin
                    (at_b_p6)

                    ; #74160: origin
                    (not_at_b_p12)

                    ; #66033: <==negation-removal== 74160 (pos)
                    (not (at_b_p12))

                    ; #92106: <==negation-removal== 35767 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7)
                           (not (leader_b)))
        :effect (and
                    ; #18247: origin
                    (at_b_p7)

                    ; #74160: origin
                    (not_at_b_p12)

                    ; #36406: <==negation-removal== 18247 (pos)
                    (not (not_at_b_p7))

                    ; #66033: <==negation-removal== 74160 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #41386: origin
                    (at_b_p8)

                    ; #74160: origin
                    (not_at_b_p12)

                    ; #66033: <==negation-removal== 74160 (pos)
                    (not (at_b_p12))

                    ; #79736: <==negation-removal== 41386 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #49028: origin
                    (at_b_p9)

                    ; #74160: origin
                    (not_at_b_p12)

                    ; #28061: <==negation-removal== 49028 (pos)
                    (not (not_at_b_p9))

                    ; #66033: <==negation-removal== 74160 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1)
                           (not (leader_b)))
        :effect (and
                    ; #11277: origin
                    (at_b_p1)

                    ; #17749: origin
                    (not_at_b_p1)

                    ; #11277: <==negation-removal== 17749 (pos)
                    (not (at_b_p1))

                    ; #17749: <==negation-removal== 11277 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (at_b_p1)
                           (succ_p1_p10)
                           (not (leader_b)))
        :effect (and
                    ; #17749: origin
                    (not_at_b_p1)

                    ; #37153: origin
                    (at_b_p10)

                    ; #11277: <==negation-removal== 17749 (pos)
                    (not (at_b_p1))

                    ; #72177: <==negation-removal== 37153 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11)
                           (not (leader_b)))
        :effect (and
                    ; #17749: origin
                    (not_at_b_p1)

                    ; #18185: origin
                    (at_b_p11)

                    ; #11277: <==negation-removal== 17749 (pos)
                    (not (at_b_p1))

                    ; #25509: <==negation-removal== 18185 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12)
                           (not (leader_b)))
        :effect (and
                    ; #17749: origin
                    (not_at_b_p1)

                    ; #66033: origin
                    (at_b_p12)

                    ; #11277: <==negation-removal== 17749 (pos)
                    (not (at_b_p1))

                    ; #74160: <==negation-removal== 66033 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2)
                           (not (leader_b)))
        :effect (and
                    ; #17749: origin
                    (not_at_b_p1)

                    ; #61849: origin
                    (at_b_p2)

                    ; #11277: <==negation-removal== 17749 (pos)
                    (not (at_b_p1))

                    ; #49593: <==negation-removal== 61849 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3)
                           (not (leader_b)))
        :effect (and
                    ; #17749: origin
                    (not_at_b_p1)

                    ; #34996: origin
                    (at_b_p3)

                    ; #11277: <==negation-removal== 17749 (pos)
                    (not (at_b_p1))

                    ; #11451: <==negation-removal== 34996 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4)
                           (not (leader_b)))
        :effect (and
                    ; #17749: origin
                    (not_at_b_p1)

                    ; #55385: origin
                    (at_b_p4)

                    ; #11277: <==negation-removal== 17749 (pos)
                    (not (at_b_p1))

                    ; #15833: <==negation-removal== 55385 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5)
                           (not (leader_b)))
        :effect (and
                    ; #17749: origin
                    (not_at_b_p1)

                    ; #51130: origin
                    (at_b_p5)

                    ; #11277: <==negation-removal== 17749 (pos)
                    (not (at_b_p1))

                    ; #44572: <==negation-removal== 51130 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6)
                           (not (leader_b)))
        :effect (and
                    ; #17749: origin
                    (not_at_b_p1)

                    ; #35767: origin
                    (at_b_p6)

                    ; #11277: <==negation-removal== 17749 (pos)
                    (not (at_b_p1))

                    ; #92106: <==negation-removal== 35767 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7)
                           (not (leader_b)))
        :effect (and
                    ; #17749: origin
                    (not_at_b_p1)

                    ; #18247: origin
                    (at_b_p7)

                    ; #11277: <==negation-removal== 17749 (pos)
                    (not (at_b_p1))

                    ; #36406: <==negation-removal== 18247 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8)
                           (not (leader_b)))
        :effect (and
                    ; #17749: origin
                    (not_at_b_p1)

                    ; #41386: origin
                    (at_b_p8)

                    ; #11277: <==negation-removal== 17749 (pos)
                    (not (at_b_p1))

                    ; #79736: <==negation-removal== 41386 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9)
                           (not (leader_b)))
        :effect (and
                    ; #17749: origin
                    (not_at_b_p1)

                    ; #49028: origin
                    (at_b_p9)

                    ; #11277: <==negation-removal== 17749 (pos)
                    (not (at_b_p1))

                    ; #28061: <==negation-removal== 49028 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1)
                           (not (leader_b)))
        :effect (and
                    ; #11277: origin
                    (at_b_p1)

                    ; #49593: origin
                    (not_at_b_p2)

                    ; #17749: <==negation-removal== 11277 (pos)
                    (not (not_at_b_p1))

                    ; #61849: <==negation-removal== 49593 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #37153: origin
                    (at_b_p10)

                    ; #49593: origin
                    (not_at_b_p2)

                    ; #61849: <==negation-removal== 49593 (pos)
                    (not (at_b_p2))

                    ; #72177: <==negation-removal== 37153 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #18185: origin
                    (at_b_p11)

                    ; #49593: origin
                    (not_at_b_p2)

                    ; #25509: <==negation-removal== 18185 (pos)
                    (not (not_at_b_p11))

                    ; #61849: <==negation-removal== 49593 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #49593: origin
                    (not_at_b_p2)

                    ; #66033: origin
                    (at_b_p12)

                    ; #61849: <==negation-removal== 49593 (pos)
                    (not (at_b_p2))

                    ; #74160: <==negation-removal== 66033 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #49593: origin
                    (not_at_b_p2)

                    ; #61849: origin
                    (at_b_p2)

                    ; #49593: <==negation-removal== 61849 (pos)
                    (not (not_at_b_p2))

                    ; #61849: <==negation-removal== 49593 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #34996: origin
                    (at_b_p3)

                    ; #49593: origin
                    (not_at_b_p2)

                    ; #11451: <==negation-removal== 34996 (pos)
                    (not (not_at_b_p3))

                    ; #61849: <==negation-removal== 49593 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #49593: origin
                    (not_at_b_p2)

                    ; #55385: origin
                    (at_b_p4)

                    ; #15833: <==negation-removal== 55385 (pos)
                    (not (not_at_b_p4))

                    ; #61849: <==negation-removal== 49593 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #49593: origin
                    (not_at_b_p2)

                    ; #51130: origin
                    (at_b_p5)

                    ; #44572: <==negation-removal== 51130 (pos)
                    (not (not_at_b_p5))

                    ; #61849: <==negation-removal== 49593 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #35767: origin
                    (at_b_p6)

                    ; #49593: origin
                    (not_at_b_p2)

                    ; #61849: <==negation-removal== 49593 (pos)
                    (not (at_b_p2))

                    ; #92106: <==negation-removal== 35767 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #18247: origin
                    (at_b_p7)

                    ; #49593: origin
                    (not_at_b_p2)

                    ; #36406: <==negation-removal== 18247 (pos)
                    (not (not_at_b_p7))

                    ; #61849: <==negation-removal== 49593 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #41386: origin
                    (at_b_p8)

                    ; #49593: origin
                    (not_at_b_p2)

                    ; #61849: <==negation-removal== 49593 (pos)
                    (not (at_b_p2))

                    ; #79736: <==negation-removal== 41386 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #49028: origin
                    (at_b_p9)

                    ; #49593: origin
                    (not_at_b_p2)

                    ; #28061: <==negation-removal== 49028 (pos)
                    (not (not_at_b_p9))

                    ; #61849: <==negation-removal== 49593 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #11277: origin
                    (at_b_p1)

                    ; #11451: origin
                    (not_at_b_p3)

                    ; #17749: <==negation-removal== 11277 (pos)
                    (not (not_at_b_p1))

                    ; #34996: <==negation-removal== 11451 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #11451: origin
                    (not_at_b_p3)

                    ; #37153: origin
                    (at_b_p10)

                    ; #34996: <==negation-removal== 11451 (pos)
                    (not (at_b_p3))

                    ; #72177: <==negation-removal== 37153 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #11451: origin
                    (not_at_b_p3)

                    ; #18185: origin
                    (at_b_p11)

                    ; #25509: <==negation-removal== 18185 (pos)
                    (not (not_at_b_p11))

                    ; #34996: <==negation-removal== 11451 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #11451: origin
                    (not_at_b_p3)

                    ; #66033: origin
                    (at_b_p12)

                    ; #34996: <==negation-removal== 11451 (pos)
                    (not (at_b_p3))

                    ; #74160: <==negation-removal== 66033 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2)
                           (not (leader_b)))
        :effect (and
                    ; #11451: origin
                    (not_at_b_p3)

                    ; #61849: origin
                    (at_b_p2)

                    ; #34996: <==negation-removal== 11451 (pos)
                    (not (at_b_p3))

                    ; #49593: <==negation-removal== 61849 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #11451: origin
                    (not_at_b_p3)

                    ; #34996: origin
                    (at_b_p3)

                    ; #11451: <==negation-removal== 34996 (pos)
                    (not (not_at_b_p3))

                    ; #34996: <==negation-removal== 11451 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #11451: origin
                    (not_at_b_p3)

                    ; #55385: origin
                    (at_b_p4)

                    ; #15833: <==negation-removal== 55385 (pos)
                    (not (not_at_b_p4))

                    ; #34996: <==negation-removal== 11451 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #11451: origin
                    (not_at_b_p3)

                    ; #51130: origin
                    (at_b_p5)

                    ; #34996: <==negation-removal== 11451 (pos)
                    (not (at_b_p3))

                    ; #44572: <==negation-removal== 51130 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6)
                           (not (leader_b)))
        :effect (and
                    ; #11451: origin
                    (not_at_b_p3)

                    ; #35767: origin
                    (at_b_p6)

                    ; #34996: <==negation-removal== 11451 (pos)
                    (not (at_b_p3))

                    ; #92106: <==negation-removal== 35767 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #11451: origin
                    (not_at_b_p3)

                    ; #18247: origin
                    (at_b_p7)

                    ; #34996: <==negation-removal== 11451 (pos)
                    (not (at_b_p3))

                    ; #36406: <==negation-removal== 18247 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8)
                           (not (leader_b)))
        :effect (and
                    ; #11451: origin
                    (not_at_b_p3)

                    ; #41386: origin
                    (at_b_p8)

                    ; #34996: <==negation-removal== 11451 (pos)
                    (not (at_b_p3))

                    ; #79736: <==negation-removal== 41386 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #11451: origin
                    (not_at_b_p3)

                    ; #49028: origin
                    (at_b_p9)

                    ; #28061: <==negation-removal== 49028 (pos)
                    (not (not_at_b_p9))

                    ; #34996: <==negation-removal== 11451 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1)
                           (not (leader_b)))
        :effect (and
                    ; #11277: origin
                    (at_b_p1)

                    ; #15833: origin
                    (not_at_b_p4)

                    ; #17749: <==negation-removal== 11277 (pos)
                    (not (not_at_b_p1))

                    ; #55385: <==negation-removal== 15833 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10)
                           (not (leader_b)))
        :effect (and
                    ; #15833: origin
                    (not_at_b_p4)

                    ; #37153: origin
                    (at_b_p10)

                    ; #55385: <==negation-removal== 15833 (pos)
                    (not (at_b_p4))

                    ; #72177: <==negation-removal== 37153 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #15833: origin
                    (not_at_b_p4)

                    ; #18185: origin
                    (at_b_p11)

                    ; #25509: <==negation-removal== 18185 (pos)
                    (not (not_at_b_p11))

                    ; #55385: <==negation-removal== 15833 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #15833: origin
                    (not_at_b_p4)

                    ; #66033: origin
                    (at_b_p12)

                    ; #55385: <==negation-removal== 15833 (pos)
                    (not (at_b_p4))

                    ; #74160: <==negation-removal== 66033 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2)
                           (not (leader_b)))
        :effect (and
                    ; #15833: origin
                    (not_at_b_p4)

                    ; #61849: origin
                    (at_b_p2)

                    ; #49593: <==negation-removal== 61849 (pos)
                    (not (not_at_b_p2))

                    ; #55385: <==negation-removal== 15833 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3)
                           (not (leader_b)))
        :effect (and
                    ; #15833: origin
                    (not_at_b_p4)

                    ; #34996: origin
                    (at_b_p3)

                    ; #11451: <==negation-removal== 34996 (pos)
                    (not (not_at_b_p3))

                    ; #55385: <==negation-removal== 15833 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4)
                           (not (leader_b)))
        :effect (and
                    ; #15833: origin
                    (not_at_b_p4)

                    ; #55385: origin
                    (at_b_p4)

                    ; #15833: <==negation-removal== 55385 (pos)
                    (not (not_at_b_p4))

                    ; #55385: <==negation-removal== 15833 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #15833: origin
                    (not_at_b_p4)

                    ; #51130: origin
                    (at_b_p5)

                    ; #44572: <==negation-removal== 51130 (pos)
                    (not (not_at_b_p5))

                    ; #55385: <==negation-removal== 15833 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6)
                           (not (leader_b)))
        :effect (and
                    ; #15833: origin
                    (not_at_b_p4)

                    ; #35767: origin
                    (at_b_p6)

                    ; #55385: <==negation-removal== 15833 (pos)
                    (not (at_b_p4))

                    ; #92106: <==negation-removal== 35767 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #15833: origin
                    (not_at_b_p4)

                    ; #18247: origin
                    (at_b_p7)

                    ; #36406: <==negation-removal== 18247 (pos)
                    (not (not_at_b_p7))

                    ; #55385: <==negation-removal== 15833 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #15833: origin
                    (not_at_b_p4)

                    ; #41386: origin
                    (at_b_p8)

                    ; #55385: <==negation-removal== 15833 (pos)
                    (not (at_b_p4))

                    ; #79736: <==negation-removal== 41386 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #15833: origin
                    (not_at_b_p4)

                    ; #49028: origin
                    (at_b_p9)

                    ; #28061: <==negation-removal== 49028 (pos)
                    (not (not_at_b_p9))

                    ; #55385: <==negation-removal== 15833 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #11277: origin
                    (at_b_p1)

                    ; #44572: origin
                    (not_at_b_p5)

                    ; #17749: <==negation-removal== 11277 (pos)
                    (not (not_at_b_p1))

                    ; #51130: <==negation-removal== 44572 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #37153: origin
                    (at_b_p10)

                    ; #44572: origin
                    (not_at_b_p5)

                    ; #51130: <==negation-removal== 44572 (pos)
                    (not (at_b_p5))

                    ; #72177: <==negation-removal== 37153 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #18185: origin
                    (at_b_p11)

                    ; #44572: origin
                    (not_at_b_p5)

                    ; #25509: <==negation-removal== 18185 (pos)
                    (not (not_at_b_p11))

                    ; #51130: <==negation-removal== 44572 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #44572: origin
                    (not_at_b_p5)

                    ; #66033: origin
                    (at_b_p12)

                    ; #51130: <==negation-removal== 44572 (pos)
                    (not (at_b_p5))

                    ; #74160: <==negation-removal== 66033 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2)
                           (not (leader_b)))
        :effect (and
                    ; #44572: origin
                    (not_at_b_p5)

                    ; #61849: origin
                    (at_b_p2)

                    ; #49593: <==negation-removal== 61849 (pos)
                    (not (not_at_b_p2))

                    ; #51130: <==negation-removal== 44572 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #34996: origin
                    (at_b_p3)

                    ; #44572: origin
                    (not_at_b_p5)

                    ; #11451: <==negation-removal== 34996 (pos)
                    (not (not_at_b_p3))

                    ; #51130: <==negation-removal== 44572 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #44572: origin
                    (not_at_b_p5)

                    ; #55385: origin
                    (at_b_p4)

                    ; #15833: <==negation-removal== 55385 (pos)
                    (not (not_at_b_p4))

                    ; #51130: <==negation-removal== 44572 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #44572: origin
                    (not_at_b_p5)

                    ; #51130: origin
                    (at_b_p5)

                    ; #44572: <==negation-removal== 51130 (pos)
                    (not (not_at_b_p5))

                    ; #51130: <==negation-removal== 44572 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6)
                           (not (leader_b)))
        :effect (and
                    ; #35767: origin
                    (at_b_p6)

                    ; #44572: origin
                    (not_at_b_p5)

                    ; #51130: <==negation-removal== 44572 (pos)
                    (not (at_b_p5))

                    ; #92106: <==negation-removal== 35767 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #18247: origin
                    (at_b_p7)

                    ; #44572: origin
                    (not_at_b_p5)

                    ; #36406: <==negation-removal== 18247 (pos)
                    (not (not_at_b_p7))

                    ; #51130: <==negation-removal== 44572 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #41386: origin
                    (at_b_p8)

                    ; #44572: origin
                    (not_at_b_p5)

                    ; #51130: <==negation-removal== 44572 (pos)
                    (not (at_b_p5))

                    ; #79736: <==negation-removal== 41386 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #44572: origin
                    (not_at_b_p5)

                    ; #49028: origin
                    (at_b_p9)

                    ; #28061: <==negation-removal== 49028 (pos)
                    (not (not_at_b_p9))

                    ; #51130: <==negation-removal== 44572 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #11277: origin
                    (at_b_p1)

                    ; #92106: origin
                    (not_at_b_p6)

                    ; #17749: <==negation-removal== 11277 (pos)
                    (not (not_at_b_p1))

                    ; #35767: <==negation-removal== 92106 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (at_b_p6)
                           (succ_p6_p10)
                           (not (leader_b)))
        :effect (and
                    ; #37153: origin
                    (at_b_p10)

                    ; #92106: origin
                    (not_at_b_p6)

                    ; #35767: <==negation-removal== 92106 (pos)
                    (not (at_b_p6))

                    ; #72177: <==negation-removal== 37153 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #18185: origin
                    (at_b_p11)

                    ; #92106: origin
                    (not_at_b_p6)

                    ; #25509: <==negation-removal== 18185 (pos)
                    (not (not_at_b_p11))

                    ; #35767: <==negation-removal== 92106 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #66033: origin
                    (at_b_p12)

                    ; #92106: origin
                    (not_at_b_p6)

                    ; #35767: <==negation-removal== 92106 (pos)
                    (not (at_b_p6))

                    ; #74160: <==negation-removal== 66033 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #61849: origin
                    (at_b_p2)

                    ; #92106: origin
                    (not_at_b_p6)

                    ; #35767: <==negation-removal== 92106 (pos)
                    (not (at_b_p6))

                    ; #49593: <==negation-removal== 61849 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #34996: origin
                    (at_b_p3)

                    ; #92106: origin
                    (not_at_b_p6)

                    ; #11451: <==negation-removal== 34996 (pos)
                    (not (not_at_b_p3))

                    ; #35767: <==negation-removal== 92106 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #55385: origin
                    (at_b_p4)

                    ; #92106: origin
                    (not_at_b_p6)

                    ; #15833: <==negation-removal== 55385 (pos)
                    (not (not_at_b_p4))

                    ; #35767: <==negation-removal== 92106 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #51130: origin
                    (at_b_p5)

                    ; #92106: origin
                    (not_at_b_p6)

                    ; #35767: <==negation-removal== 92106 (pos)
                    (not (at_b_p6))

                    ; #44572: <==negation-removal== 51130 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #35767: origin
                    (at_b_p6)

                    ; #92106: origin
                    (not_at_b_p6)

                    ; #35767: <==negation-removal== 92106 (pos)
                    (not (at_b_p6))

                    ; #92106: <==negation-removal== 35767 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #18247: origin
                    (at_b_p7)

                    ; #92106: origin
                    (not_at_b_p6)

                    ; #35767: <==negation-removal== 92106 (pos)
                    (not (at_b_p6))

                    ; #36406: <==negation-removal== 18247 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #41386: origin
                    (at_b_p8)

                    ; #92106: origin
                    (not_at_b_p6)

                    ; #35767: <==negation-removal== 92106 (pos)
                    (not (at_b_p6))

                    ; #79736: <==negation-removal== 41386 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #49028: origin
                    (at_b_p9)

                    ; #92106: origin
                    (not_at_b_p6)

                    ; #28061: <==negation-removal== 49028 (pos)
                    (not (not_at_b_p9))

                    ; #35767: <==negation-removal== 92106 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1)
                           (not (leader_b)))
        :effect (and
                    ; #11277: origin
                    (at_b_p1)

                    ; #36406: origin
                    (not_at_b_p7)

                    ; #17749: <==negation-removal== 11277 (pos)
                    (not (not_at_b_p1))

                    ; #18247: <==negation-removal== 36406 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10)
                           (not (leader_b)))
        :effect (and
                    ; #36406: origin
                    (not_at_b_p7)

                    ; #37153: origin
                    (at_b_p10)

                    ; #18247: <==negation-removal== 36406 (pos)
                    (not (at_b_p7))

                    ; #72177: <==negation-removal== 37153 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11)
                           (not (leader_b)))
        :effect (and
                    ; #18185: origin
                    (at_b_p11)

                    ; #36406: origin
                    (not_at_b_p7)

                    ; #18247: <==negation-removal== 36406 (pos)
                    (not (at_b_p7))

                    ; #25509: <==negation-removal== 18185 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (at_b_p7)
                           (succ_p7_p12)
                           (not (leader_b)))
        :effect (and
                    ; #36406: origin
                    (not_at_b_p7)

                    ; #66033: origin
                    (at_b_p12)

                    ; #18247: <==negation-removal== 36406 (pos)
                    (not (at_b_p7))

                    ; #74160: <==negation-removal== 66033 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2)
                           (not (leader_b)))
        :effect (and
                    ; #36406: origin
                    (not_at_b_p7)

                    ; #61849: origin
                    (at_b_p2)

                    ; #18247: <==negation-removal== 36406 (pos)
                    (not (at_b_p7))

                    ; #49593: <==negation-removal== 61849 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3)
                           (not (leader_b)))
        :effect (and
                    ; #34996: origin
                    (at_b_p3)

                    ; #36406: origin
                    (not_at_b_p7)

                    ; #11451: <==negation-removal== 34996 (pos)
                    (not (not_at_b_p3))

                    ; #18247: <==negation-removal== 36406 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4)
                           (not (leader_b)))
        :effect (and
                    ; #36406: origin
                    (not_at_b_p7)

                    ; #55385: origin
                    (at_b_p4)

                    ; #15833: <==negation-removal== 55385 (pos)
                    (not (not_at_b_p4))

                    ; #18247: <==negation-removal== 36406 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5)
                           (not (leader_b)))
        :effect (and
                    ; #36406: origin
                    (not_at_b_p7)

                    ; #51130: origin
                    (at_b_p5)

                    ; #18247: <==negation-removal== 36406 (pos)
                    (not (at_b_p7))

                    ; #44572: <==negation-removal== 51130 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6)
                           (not (leader_b)))
        :effect (and
                    ; #35767: origin
                    (at_b_p6)

                    ; #36406: origin
                    (not_at_b_p7)

                    ; #18247: <==negation-removal== 36406 (pos)
                    (not (at_b_p7))

                    ; #92106: <==negation-removal== 35767 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7)
                           (not (leader_b)))
        :effect (and
                    ; #18247: origin
                    (at_b_p7)

                    ; #36406: origin
                    (not_at_b_p7)

                    ; #18247: <==negation-removal== 36406 (pos)
                    (not (at_b_p7))

                    ; #36406: <==negation-removal== 18247 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8)
                           (not (leader_b)))
        :effect (and
                    ; #36406: origin
                    (not_at_b_p7)

                    ; #41386: origin
                    (at_b_p8)

                    ; #18247: <==negation-removal== 36406 (pos)
                    (not (at_b_p7))

                    ; #79736: <==negation-removal== 41386 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9)
                           (not (leader_b)))
        :effect (and
                    ; #36406: origin
                    (not_at_b_p7)

                    ; #49028: origin
                    (at_b_p9)

                    ; #18247: <==negation-removal== 36406 (pos)
                    (not (at_b_p7))

                    ; #28061: <==negation-removal== 49028 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1)
                           (not (leader_b)))
        :effect (and
                    ; #11277: origin
                    (at_b_p1)

                    ; #79736: origin
                    (not_at_b_p8)

                    ; #17749: <==negation-removal== 11277 (pos)
                    (not (not_at_b_p1))

                    ; #41386: <==negation-removal== 79736 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #37153: origin
                    (at_b_p10)

                    ; #79736: origin
                    (not_at_b_p8)

                    ; #41386: <==negation-removal== 79736 (pos)
                    (not (at_b_p8))

                    ; #72177: <==negation-removal== 37153 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #18185: origin
                    (at_b_p11)

                    ; #79736: origin
                    (not_at_b_p8)

                    ; #25509: <==negation-removal== 18185 (pos)
                    (not (not_at_b_p11))

                    ; #41386: <==negation-removal== 79736 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #66033: origin
                    (at_b_p12)

                    ; #79736: origin
                    (not_at_b_p8)

                    ; #41386: <==negation-removal== 79736 (pos)
                    (not (at_b_p8))

                    ; #74160: <==negation-removal== 66033 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #61849: origin
                    (at_b_p2)

                    ; #79736: origin
                    (not_at_b_p8)

                    ; #41386: <==negation-removal== 79736 (pos)
                    (not (at_b_p8))

                    ; #49593: <==negation-removal== 61849 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3)
                           (not (leader_b)))
        :effect (and
                    ; #34996: origin
                    (at_b_p3)

                    ; #79736: origin
                    (not_at_b_p8)

                    ; #11451: <==negation-removal== 34996 (pos)
                    (not (not_at_b_p3))

                    ; #41386: <==negation-removal== 79736 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #55385: origin
                    (at_b_p4)

                    ; #79736: origin
                    (not_at_b_p8)

                    ; #15833: <==negation-removal== 55385 (pos)
                    (not (not_at_b_p4))

                    ; #41386: <==negation-removal== 79736 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #51130: origin
                    (at_b_p5)

                    ; #79736: origin
                    (not_at_b_p8)

                    ; #41386: <==negation-removal== 79736 (pos)
                    (not (at_b_p8))

                    ; #44572: <==negation-removal== 51130 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6)
                           (not (leader_b)))
        :effect (and
                    ; #35767: origin
                    (at_b_p6)

                    ; #79736: origin
                    (not_at_b_p8)

                    ; #41386: <==negation-removal== 79736 (pos)
                    (not (at_b_p8))

                    ; #92106: <==negation-removal== 35767 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #18247: origin
                    (at_b_p7)

                    ; #79736: origin
                    (not_at_b_p8)

                    ; #36406: <==negation-removal== 18247 (pos)
                    (not (not_at_b_p7))

                    ; #41386: <==negation-removal== 79736 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #41386: origin
                    (at_b_p8)

                    ; #79736: origin
                    (not_at_b_p8)

                    ; #41386: <==negation-removal== 79736 (pos)
                    (not (at_b_p8))

                    ; #79736: <==negation-removal== 41386 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #49028: origin
                    (at_b_p9)

                    ; #79736: origin
                    (not_at_b_p8)

                    ; #28061: <==negation-removal== 49028 (pos)
                    (not (not_at_b_p9))

                    ; #41386: <==negation-removal== 79736 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #11277: origin
                    (at_b_p1)

                    ; #28061: origin
                    (not_at_b_p9)

                    ; #17749: <==negation-removal== 11277 (pos)
                    (not (not_at_b_p1))

                    ; #49028: <==negation-removal== 28061 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #28061: origin
                    (not_at_b_p9)

                    ; #37153: origin
                    (at_b_p10)

                    ; #49028: <==negation-removal== 28061 (pos)
                    (not (at_b_p9))

                    ; #72177: <==negation-removal== 37153 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #18185: origin
                    (at_b_p11)

                    ; #28061: origin
                    (not_at_b_p9)

                    ; #25509: <==negation-removal== 18185 (pos)
                    (not (not_at_b_p11))

                    ; #49028: <==negation-removal== 28061 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #28061: origin
                    (not_at_b_p9)

                    ; #66033: origin
                    (at_b_p12)

                    ; #49028: <==negation-removal== 28061 (pos)
                    (not (at_b_p9))

                    ; #74160: <==negation-removal== 66033 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2)
                           (not (leader_b)))
        :effect (and
                    ; #28061: origin
                    (not_at_b_p9)

                    ; #61849: origin
                    (at_b_p2)

                    ; #49028: <==negation-removal== 28061 (pos)
                    (not (at_b_p9))

                    ; #49593: <==negation-removal== 61849 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #28061: origin
                    (not_at_b_p9)

                    ; #34996: origin
                    (at_b_p3)

                    ; #11451: <==negation-removal== 34996 (pos)
                    (not (not_at_b_p3))

                    ; #49028: <==negation-removal== 28061 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #28061: origin
                    (not_at_b_p9)

                    ; #55385: origin
                    (at_b_p4)

                    ; #15833: <==negation-removal== 55385 (pos)
                    (not (not_at_b_p4))

                    ; #49028: <==negation-removal== 28061 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #28061: origin
                    (not_at_b_p9)

                    ; #51130: origin
                    (at_b_p5)

                    ; #44572: <==negation-removal== 51130 (pos)
                    (not (not_at_b_p5))

                    ; #49028: <==negation-removal== 28061 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #28061: origin
                    (not_at_b_p9)

                    ; #35767: origin
                    (at_b_p6)

                    ; #49028: <==negation-removal== 28061 (pos)
                    (not (at_b_p9))

                    ; #92106: <==negation-removal== 35767 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #18247: origin
                    (at_b_p7)

                    ; #28061: origin
                    (not_at_b_p9)

                    ; #36406: <==negation-removal== 18247 (pos)
                    (not (not_at_b_p7))

                    ; #49028: <==negation-removal== 28061 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #28061: origin
                    (not_at_b_p9)

                    ; #41386: origin
                    (at_b_p8)

                    ; #49028: <==negation-removal== 28061 (pos)
                    (not (at_b_p9))

                    ; #79736: <==negation-removal== 41386 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #28061: origin
                    (not_at_b_p9)

                    ; #49028: origin
                    (at_b_p9)

                    ; #28061: <==negation-removal== 49028 (pos)
                    (not (not_at_b_p9))

                    ; #49028: <==negation-removal== 28061 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #17669: origin
                    (at_c_p1)

                    ; #41003: origin
                    (not_at_c_p10)

                    ; #25319: <==negation-removal== 17669 (pos)
                    (not (not_at_c_p1))

                    ; #56939: <==negation-removal== 41003 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10)
                           (not (leader_c)))
        :effect (and
                    ; #41003: origin
                    (not_at_c_p10)

                    ; #56939: origin
                    (at_c_p10)

                    ; #41003: <==negation-removal== 56939 (pos)
                    (not (not_at_c_p10))

                    ; #56939: <==negation-removal== 41003 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #41003: origin
                    (not_at_c_p10)

                    ; #54096: origin
                    (at_c_p11)

                    ; #12278: <==negation-removal== 54096 (pos)
                    (not (not_at_c_p11))

                    ; #56939: <==negation-removal== 41003 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #41003: origin
                    (not_at_c_p10)

                    ; #86280: origin
                    (at_c_p12)

                    ; #56939: <==negation-removal== 41003 (pos)
                    (not (at_c_p10))

                    ; #82584: <==negation-removal== 86280 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2)
                           (not (leader_c)))
        :effect (and
                    ; #41003: origin
                    (not_at_c_p10)

                    ; #67560: origin
                    (at_c_p2)

                    ; #52914: <==negation-removal== 67560 (pos)
                    (not (not_at_c_p2))

                    ; #56939: <==negation-removal== 41003 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3)
                           (not (leader_c)))
        :effect (and
                    ; #41003: origin
                    (not_at_c_p10)

                    ; #68418: origin
                    (at_c_p3)

                    ; #12244: <==negation-removal== 68418 (pos)
                    (not (not_at_c_p3))

                    ; #56939: <==negation-removal== 41003 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #41003: origin
                    (not_at_c_p10)

                    ; #82524: origin
                    (at_c_p4)

                    ; #56939: <==negation-removal== 41003 (pos)
                    (not (at_c_p10))

                    ; #78330: <==negation-removal== 82524 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #41003: origin
                    (not_at_c_p10)

                    ; #81129: origin
                    (at_c_p5)

                    ; #56939: <==negation-removal== 41003 (pos)
                    (not (at_c_p10))

                    ; #62145: <==negation-removal== 81129 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #37967: origin
                    (at_c_p6)

                    ; #41003: origin
                    (not_at_c_p10)

                    ; #56939: <==negation-removal== 41003 (pos)
                    (not (at_c_p10))

                    ; #84170: <==negation-removal== 37967 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7)
                           (not (leader_c)))
        :effect (and
                    ; #41003: origin
                    (not_at_c_p10)

                    ; #91679: origin
                    (at_c_p7)

                    ; #11017: <==negation-removal== 91679 (pos)
                    (not (not_at_c_p7))

                    ; #56939: <==negation-removal== 41003 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #41003: origin
                    (not_at_c_p10)

                    ; #86414: origin
                    (at_c_p8)

                    ; #56939: <==negation-removal== 41003 (pos)
                    (not (at_c_p10))

                    ; #57121: <==negation-removal== 86414 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #41003: origin
                    (not_at_c_p10)

                    ; #50436: origin
                    (at_c_p9)

                    ; #17440: <==negation-removal== 50436 (pos)
                    (not (not_at_c_p9))

                    ; #56939: <==negation-removal== 41003 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #12278: origin
                    (not_at_c_p11)

                    ; #17669: origin
                    (at_c_p1)

                    ; #25319: <==negation-removal== 17669 (pos)
                    (not (not_at_c_p1))

                    ; #54096: <==negation-removal== 12278 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #12278: origin
                    (not_at_c_p11)

                    ; #56939: origin
                    (at_c_p10)

                    ; #41003: <==negation-removal== 56939 (pos)
                    (not (not_at_c_p10))

                    ; #54096: <==negation-removal== 12278 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #12278: origin
                    (not_at_c_p11)

                    ; #54096: origin
                    (at_c_p11)

                    ; #12278: <==negation-removal== 54096 (pos)
                    (not (not_at_c_p11))

                    ; #54096: <==negation-removal== 12278 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #12278: origin
                    (not_at_c_p11)

                    ; #86280: origin
                    (at_c_p12)

                    ; #54096: <==negation-removal== 12278 (pos)
                    (not (at_c_p11))

                    ; #82584: <==negation-removal== 86280 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #12278: origin
                    (not_at_c_p11)

                    ; #67560: origin
                    (at_c_p2)

                    ; #52914: <==negation-removal== 67560 (pos)
                    (not (not_at_c_p2))

                    ; #54096: <==negation-removal== 12278 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3)
                           (not (leader_c)))
        :effect (and
                    ; #12278: origin
                    (not_at_c_p11)

                    ; #68418: origin
                    (at_c_p3)

                    ; #12244: <==negation-removal== 68418 (pos)
                    (not (not_at_c_p3))

                    ; #54096: <==negation-removal== 12278 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #12278: origin
                    (not_at_c_p11)

                    ; #82524: origin
                    (at_c_p4)

                    ; #54096: <==negation-removal== 12278 (pos)
                    (not (at_c_p11))

                    ; #78330: <==negation-removal== 82524 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #12278: origin
                    (not_at_c_p11)

                    ; #81129: origin
                    (at_c_p5)

                    ; #54096: <==negation-removal== 12278 (pos)
                    (not (at_c_p11))

                    ; #62145: <==negation-removal== 81129 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6)
                           (not (leader_c)))
        :effect (and
                    ; #12278: origin
                    (not_at_c_p11)

                    ; #37967: origin
                    (at_c_p6)

                    ; #54096: <==negation-removal== 12278 (pos)
                    (not (at_c_p11))

                    ; #84170: <==negation-removal== 37967 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #12278: origin
                    (not_at_c_p11)

                    ; #91679: origin
                    (at_c_p7)

                    ; #11017: <==negation-removal== 91679 (pos)
                    (not (not_at_c_p7))

                    ; #54096: <==negation-removal== 12278 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #12278: origin
                    (not_at_c_p11)

                    ; #86414: origin
                    (at_c_p8)

                    ; #54096: <==negation-removal== 12278 (pos)
                    (not (at_c_p11))

                    ; #57121: <==negation-removal== 86414 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #12278: origin
                    (not_at_c_p11)

                    ; #50436: origin
                    (at_c_p9)

                    ; #17440: <==negation-removal== 50436 (pos)
                    (not (not_at_c_p9))

                    ; #54096: <==negation-removal== 12278 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #17669: origin
                    (at_c_p1)

                    ; #82584: origin
                    (not_at_c_p12)

                    ; #25319: <==negation-removal== 17669 (pos)
                    (not (not_at_c_p1))

                    ; #86280: <==negation-removal== 82584 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #56939: origin
                    (at_c_p10)

                    ; #82584: origin
                    (not_at_c_p12)

                    ; #41003: <==negation-removal== 56939 (pos)
                    (not (not_at_c_p10))

                    ; #86280: <==negation-removal== 82584 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #54096: origin
                    (at_c_p11)

                    ; #82584: origin
                    (not_at_c_p12)

                    ; #12278: <==negation-removal== 54096 (pos)
                    (not (not_at_c_p11))

                    ; #86280: <==negation-removal== 82584 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #82584: origin
                    (not_at_c_p12)

                    ; #86280: origin
                    (at_c_p12)

                    ; #82584: <==negation-removal== 86280 (pos)
                    (not (not_at_c_p12))

                    ; #86280: <==negation-removal== 82584 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #67560: origin
                    (at_c_p2)

                    ; #82584: origin
                    (not_at_c_p12)

                    ; #52914: <==negation-removal== 67560 (pos)
                    (not (not_at_c_p2))

                    ; #86280: <==negation-removal== 82584 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #68418: origin
                    (at_c_p3)

                    ; #82584: origin
                    (not_at_c_p12)

                    ; #12244: <==negation-removal== 68418 (pos)
                    (not (not_at_c_p3))

                    ; #86280: <==negation-removal== 82584 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #82524: origin
                    (at_c_p4)

                    ; #82584: origin
                    (not_at_c_p12)

                    ; #78330: <==negation-removal== 82524 (pos)
                    (not (not_at_c_p4))

                    ; #86280: <==negation-removal== 82584 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #81129: origin
                    (at_c_p5)

                    ; #82584: origin
                    (not_at_c_p12)

                    ; #62145: <==negation-removal== 81129 (pos)
                    (not (not_at_c_p5))

                    ; #86280: <==negation-removal== 82584 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #37967: origin
                    (at_c_p6)

                    ; #82584: origin
                    (not_at_c_p12)

                    ; #84170: <==negation-removal== 37967 (pos)
                    (not (not_at_c_p6))

                    ; #86280: <==negation-removal== 82584 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #82584: origin
                    (not_at_c_p12)

                    ; #91679: origin
                    (at_c_p7)

                    ; #11017: <==negation-removal== 91679 (pos)
                    (not (not_at_c_p7))

                    ; #86280: <==negation-removal== 82584 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #82584: origin
                    (not_at_c_p12)

                    ; #86414: origin
                    (at_c_p8)

                    ; #57121: <==negation-removal== 86414 (pos)
                    (not (not_at_c_p8))

                    ; #86280: <==negation-removal== 82584 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #50436: origin
                    (at_c_p9)

                    ; #82584: origin
                    (not_at_c_p12)

                    ; #17440: <==negation-removal== 50436 (pos)
                    (not (not_at_c_p9))

                    ; #86280: <==negation-removal== 82584 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #17669: origin
                    (at_c_p1)

                    ; #25319: origin
                    (not_at_c_p1)

                    ; #17669: <==negation-removal== 25319 (pos)
                    (not (at_c_p1))

                    ; #25319: <==negation-removal== 17669 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10)
                           (not (leader_c)))
        :effect (and
                    ; #25319: origin
                    (not_at_c_p1)

                    ; #56939: origin
                    (at_c_p10)

                    ; #17669: <==negation-removal== 25319 (pos)
                    (not (at_c_p1))

                    ; #41003: <==negation-removal== 56939 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #25319: origin
                    (not_at_c_p1)

                    ; #54096: origin
                    (at_c_p11)

                    ; #12278: <==negation-removal== 54096 (pos)
                    (not (not_at_c_p11))

                    ; #17669: <==negation-removal== 25319 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #25319: origin
                    (not_at_c_p1)

                    ; #86280: origin
                    (at_c_p12)

                    ; #17669: <==negation-removal== 25319 (pos)
                    (not (at_c_p1))

                    ; #82584: <==negation-removal== 86280 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25319: origin
                    (not_at_c_p1)

                    ; #67560: origin
                    (at_c_p2)

                    ; #17669: <==negation-removal== 25319 (pos)
                    (not (at_c_p1))

                    ; #52914: <==negation-removal== 67560 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #25319: origin
                    (not_at_c_p1)

                    ; #68418: origin
                    (at_c_p3)

                    ; #12244: <==negation-removal== 68418 (pos)
                    (not (not_at_c_p3))

                    ; #17669: <==negation-removal== 25319 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #25319: origin
                    (not_at_c_p1)

                    ; #82524: origin
                    (at_c_p4)

                    ; #17669: <==negation-removal== 25319 (pos)
                    (not (at_c_p1))

                    ; #78330: <==negation-removal== 82524 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #25319: origin
                    (not_at_c_p1)

                    ; #81129: origin
                    (at_c_p5)

                    ; #17669: <==negation-removal== 25319 (pos)
                    (not (at_c_p1))

                    ; #62145: <==negation-removal== 81129 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #25319: origin
                    (not_at_c_p1)

                    ; #37967: origin
                    (at_c_p6)

                    ; #17669: <==negation-removal== 25319 (pos)
                    (not (at_c_p1))

                    ; #84170: <==negation-removal== 37967 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7)
                           (not (leader_c)))
        :effect (and
                    ; #25319: origin
                    (not_at_c_p1)

                    ; #91679: origin
                    (at_c_p7)

                    ; #11017: <==negation-removal== 91679 (pos)
                    (not (not_at_c_p7))

                    ; #17669: <==negation-removal== 25319 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8)
                           (not (leader_c)))
        :effect (and
                    ; #25319: origin
                    (not_at_c_p1)

                    ; #86414: origin
                    (at_c_p8)

                    ; #17669: <==negation-removal== 25319 (pos)
                    (not (at_c_p1))

                    ; #57121: <==negation-removal== 86414 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #25319: origin
                    (not_at_c_p1)

                    ; #50436: origin
                    (at_c_p9)

                    ; #17440: <==negation-removal== 50436 (pos)
                    (not (not_at_c_p9))

                    ; #17669: <==negation-removal== 25319 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1)
                           (not (leader_c)))
        :effect (and
                    ; #17669: origin
                    (at_c_p1)

                    ; #52914: origin
                    (not_at_c_p2)

                    ; #25319: <==negation-removal== 17669 (pos)
                    (not (not_at_c_p1))

                    ; #67560: <==negation-removal== 52914 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #52914: origin
                    (not_at_c_p2)

                    ; #56939: origin
                    (at_c_p10)

                    ; #41003: <==negation-removal== 56939 (pos)
                    (not (not_at_c_p10))

                    ; #67560: <==negation-removal== 52914 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #52914: origin
                    (not_at_c_p2)

                    ; #54096: origin
                    (at_c_p11)

                    ; #12278: <==negation-removal== 54096 (pos)
                    (not (not_at_c_p11))

                    ; #67560: <==negation-removal== 52914 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12)
                           (not (leader_c)))
        :effect (and
                    ; #52914: origin
                    (not_at_c_p2)

                    ; #86280: origin
                    (at_c_p12)

                    ; #67560: <==negation-removal== 52914 (pos)
                    (not (at_c_p2))

                    ; #82584: <==negation-removal== 86280 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #52914: origin
                    (not_at_c_p2)

                    ; #67560: origin
                    (at_c_p2)

                    ; #52914: <==negation-removal== 67560 (pos)
                    (not (not_at_c_p2))

                    ; #67560: <==negation-removal== 52914 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3)
                           (not (leader_c)))
        :effect (and
                    ; #52914: origin
                    (not_at_c_p2)

                    ; #68418: origin
                    (at_c_p3)

                    ; #12244: <==negation-removal== 68418 (pos)
                    (not (not_at_c_p3))

                    ; #67560: <==negation-removal== 52914 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #52914: origin
                    (not_at_c_p2)

                    ; #82524: origin
                    (at_c_p4)

                    ; #67560: <==negation-removal== 52914 (pos)
                    (not (at_c_p2))

                    ; #78330: <==negation-removal== 82524 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #52914: origin
                    (not_at_c_p2)

                    ; #81129: origin
                    (at_c_p5)

                    ; #62145: <==negation-removal== 81129 (pos)
                    (not (not_at_c_p5))

                    ; #67560: <==negation-removal== 52914 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #37967: origin
                    (at_c_p6)

                    ; #52914: origin
                    (not_at_c_p2)

                    ; #67560: <==negation-removal== 52914 (pos)
                    (not (at_c_p2))

                    ; #84170: <==negation-removal== 37967 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #52914: origin
                    (not_at_c_p2)

                    ; #91679: origin
                    (at_c_p7)

                    ; #11017: <==negation-removal== 91679 (pos)
                    (not (not_at_c_p7))

                    ; #67560: <==negation-removal== 52914 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #52914: origin
                    (not_at_c_p2)

                    ; #86414: origin
                    (at_c_p8)

                    ; #57121: <==negation-removal== 86414 (pos)
                    (not (not_at_c_p8))

                    ; #67560: <==negation-removal== 52914 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9)
                           (not (leader_c)))
        :effect (and
                    ; #50436: origin
                    (at_c_p9)

                    ; #52914: origin
                    (not_at_c_p2)

                    ; #17440: <==negation-removal== 50436 (pos)
                    (not (not_at_c_p9))

                    ; #67560: <==negation-removal== 52914 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #12244: origin
                    (not_at_c_p3)

                    ; #17669: origin
                    (at_c_p1)

                    ; #25319: <==negation-removal== 17669 (pos)
                    (not (not_at_c_p1))

                    ; #68418: <==negation-removal== 12244 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #12244: origin
                    (not_at_c_p3)

                    ; #56939: origin
                    (at_c_p10)

                    ; #41003: <==negation-removal== 56939 (pos)
                    (not (not_at_c_p10))

                    ; #68418: <==negation-removal== 12244 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #12244: origin
                    (not_at_c_p3)

                    ; #54096: origin
                    (at_c_p11)

                    ; #12278: <==negation-removal== 54096 (pos)
                    (not (not_at_c_p11))

                    ; #68418: <==negation-removal== 12244 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #12244: origin
                    (not_at_c_p3)

                    ; #86280: origin
                    (at_c_p12)

                    ; #68418: <==negation-removal== 12244 (pos)
                    (not (at_c_p3))

                    ; #82584: <==negation-removal== 86280 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2)
                           (not (leader_c)))
        :effect (and
                    ; #12244: origin
                    (not_at_c_p3)

                    ; #67560: origin
                    (at_c_p2)

                    ; #52914: <==negation-removal== 67560 (pos)
                    (not (not_at_c_p2))

                    ; #68418: <==negation-removal== 12244 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3)
                           (not (leader_c)))
        :effect (and
                    ; #12244: origin
                    (not_at_c_p3)

                    ; #68418: origin
                    (at_c_p3)

                    ; #12244: <==negation-removal== 68418 (pos)
                    (not (not_at_c_p3))

                    ; #68418: <==negation-removal== 12244 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4)
                           (not (leader_c)))
        :effect (and
                    ; #12244: origin
                    (not_at_c_p3)

                    ; #82524: origin
                    (at_c_p4)

                    ; #68418: <==negation-removal== 12244 (pos)
                    (not (at_c_p3))

                    ; #78330: <==negation-removal== 82524 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #12244: origin
                    (not_at_c_p3)

                    ; #81129: origin
                    (at_c_p5)

                    ; #62145: <==negation-removal== 81129 (pos)
                    (not (not_at_c_p5))

                    ; #68418: <==negation-removal== 12244 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6)
                           (not (leader_c)))
        :effect (and
                    ; #12244: origin
                    (not_at_c_p3)

                    ; #37967: origin
                    (at_c_p6)

                    ; #68418: <==negation-removal== 12244 (pos)
                    (not (at_c_p3))

                    ; #84170: <==negation-removal== 37967 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7)
                           (not (leader_c)))
        :effect (and
                    ; #12244: origin
                    (not_at_c_p3)

                    ; #91679: origin
                    (at_c_p7)

                    ; #11017: <==negation-removal== 91679 (pos)
                    (not (not_at_c_p7))

                    ; #68418: <==negation-removal== 12244 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8)
                           (not (leader_c)))
        :effect (and
                    ; #12244: origin
                    (not_at_c_p3)

                    ; #86414: origin
                    (at_c_p8)

                    ; #57121: <==negation-removal== 86414 (pos)
                    (not (not_at_c_p8))

                    ; #68418: <==negation-removal== 12244 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9)
                           (not (leader_c)))
        :effect (and
                    ; #12244: origin
                    (not_at_c_p3)

                    ; #50436: origin
                    (at_c_p9)

                    ; #17440: <==negation-removal== 50436 (pos)
                    (not (not_at_c_p9))

                    ; #68418: <==negation-removal== 12244 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1)
                           (not (leader_c)))
        :effect (and
                    ; #17669: origin
                    (at_c_p1)

                    ; #78330: origin
                    (not_at_c_p4)

                    ; #25319: <==negation-removal== 17669 (pos)
                    (not (not_at_c_p1))

                    ; #82524: <==negation-removal== 78330 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10)
                           (not (leader_c)))
        :effect (and
                    ; #56939: origin
                    (at_c_p10)

                    ; #78330: origin
                    (not_at_c_p4)

                    ; #41003: <==negation-removal== 56939 (pos)
                    (not (not_at_c_p10))

                    ; #82524: <==negation-removal== 78330 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11)
                           (not (leader_c)))
        :effect (and
                    ; #54096: origin
                    (at_c_p11)

                    ; #78330: origin
                    (not_at_c_p4)

                    ; #12278: <==negation-removal== 54096 (pos)
                    (not (not_at_c_p11))

                    ; #82524: <==negation-removal== 78330 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12)
                           (not (leader_c)))
        :effect (and
                    ; #78330: origin
                    (not_at_c_p4)

                    ; #86280: origin
                    (at_c_p12)

                    ; #82524: <==negation-removal== 78330 (pos)
                    (not (at_c_p4))

                    ; #82584: <==negation-removal== 86280 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2)
                           (not (leader_c)))
        :effect (and
                    ; #67560: origin
                    (at_c_p2)

                    ; #78330: origin
                    (not_at_c_p4)

                    ; #52914: <==negation-removal== 67560 (pos)
                    (not (not_at_c_p2))

                    ; #82524: <==negation-removal== 78330 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3)
                           (not (leader_c)))
        :effect (and
                    ; #68418: origin
                    (at_c_p3)

                    ; #78330: origin
                    (not_at_c_p4)

                    ; #12244: <==negation-removal== 68418 (pos)
                    (not (not_at_c_p3))

                    ; #82524: <==negation-removal== 78330 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4)
                           (not (leader_c)))
        :effect (and
                    ; #78330: origin
                    (not_at_c_p4)

                    ; #82524: origin
                    (at_c_p4)

                    ; #78330: <==negation-removal== 82524 (pos)
                    (not (not_at_c_p4))

                    ; #82524: <==negation-removal== 78330 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #78330: origin
                    (not_at_c_p4)

                    ; #81129: origin
                    (at_c_p5)

                    ; #62145: <==negation-removal== 81129 (pos)
                    (not (not_at_c_p5))

                    ; #82524: <==negation-removal== 78330 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6)
                           (not (leader_c)))
        :effect (and
                    ; #37967: origin
                    (at_c_p6)

                    ; #78330: origin
                    (not_at_c_p4)

                    ; #82524: <==negation-removal== 78330 (pos)
                    (not (at_c_p4))

                    ; #84170: <==negation-removal== 37967 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7)
                           (not (leader_c)))
        :effect (and
                    ; #78330: origin
                    (not_at_c_p4)

                    ; #91679: origin
                    (at_c_p7)

                    ; #11017: <==negation-removal== 91679 (pos)
                    (not (not_at_c_p7))

                    ; #82524: <==negation-removal== 78330 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8)
                           (not (leader_c)))
        :effect (and
                    ; #78330: origin
                    (not_at_c_p4)

                    ; #86414: origin
                    (at_c_p8)

                    ; #57121: <==negation-removal== 86414 (pos)
                    (not (not_at_c_p8))

                    ; #82524: <==negation-removal== 78330 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #50436: origin
                    (at_c_p9)

                    ; #78330: origin
                    (not_at_c_p4)

                    ; #17440: <==negation-removal== 50436 (pos)
                    (not (not_at_c_p9))

                    ; #82524: <==negation-removal== 78330 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #17669: origin
                    (at_c_p1)

                    ; #62145: origin
                    (not_at_c_p5)

                    ; #25319: <==negation-removal== 17669 (pos)
                    (not (not_at_c_p1))

                    ; #81129: <==negation-removal== 62145 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #56939: origin
                    (at_c_p10)

                    ; #62145: origin
                    (not_at_c_p5)

                    ; #41003: <==negation-removal== 56939 (pos)
                    (not (not_at_c_p10))

                    ; #81129: <==negation-removal== 62145 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #54096: origin
                    (at_c_p11)

                    ; #62145: origin
                    (not_at_c_p5)

                    ; #12278: <==negation-removal== 54096 (pos)
                    (not (not_at_c_p11))

                    ; #81129: <==negation-removal== 62145 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #62145: origin
                    (not_at_c_p5)

                    ; #86280: origin
                    (at_c_p12)

                    ; #81129: <==negation-removal== 62145 (pos)
                    (not (at_c_p5))

                    ; #82584: <==negation-removal== 86280 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #62145: origin
                    (not_at_c_p5)

                    ; #67560: origin
                    (at_c_p2)

                    ; #52914: <==negation-removal== 67560 (pos)
                    (not (not_at_c_p2))

                    ; #81129: <==negation-removal== 62145 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #62145: origin
                    (not_at_c_p5)

                    ; #68418: origin
                    (at_c_p3)

                    ; #12244: <==negation-removal== 68418 (pos)
                    (not (not_at_c_p3))

                    ; #81129: <==negation-removal== 62145 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #62145: origin
                    (not_at_c_p5)

                    ; #82524: origin
                    (at_c_p4)

                    ; #78330: <==negation-removal== 82524 (pos)
                    (not (not_at_c_p4))

                    ; #81129: <==negation-removal== 62145 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #62145: origin
                    (not_at_c_p5)

                    ; #81129: origin
                    (at_c_p5)

                    ; #62145: <==negation-removal== 81129 (pos)
                    (not (not_at_c_p5))

                    ; #81129: <==negation-removal== 62145 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #37967: origin
                    (at_c_p6)

                    ; #62145: origin
                    (not_at_c_p5)

                    ; #81129: <==negation-removal== 62145 (pos)
                    (not (at_c_p5))

                    ; #84170: <==negation-removal== 37967 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #62145: origin
                    (not_at_c_p5)

                    ; #91679: origin
                    (at_c_p7)

                    ; #11017: <==negation-removal== 91679 (pos)
                    (not (not_at_c_p7))

                    ; #81129: <==negation-removal== 62145 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #62145: origin
                    (not_at_c_p5)

                    ; #86414: origin
                    (at_c_p8)

                    ; #57121: <==negation-removal== 86414 (pos)
                    (not (not_at_c_p8))

                    ; #81129: <==negation-removal== 62145 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #50436: origin
                    (at_c_p9)

                    ; #62145: origin
                    (not_at_c_p5)

                    ; #17440: <==negation-removal== 50436 (pos)
                    (not (not_at_c_p9))

                    ; #81129: <==negation-removal== 62145 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #17669: origin
                    (at_c_p1)

                    ; #84170: origin
                    (not_at_c_p6)

                    ; #25319: <==negation-removal== 17669 (pos)
                    (not (not_at_c_p1))

                    ; #37967: <==negation-removal== 84170 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10)
                           (not (leader_c)))
        :effect (and
                    ; #56939: origin
                    (at_c_p10)

                    ; #84170: origin
                    (not_at_c_p6)

                    ; #37967: <==negation-removal== 84170 (pos)
                    (not (at_c_p6))

                    ; #41003: <==negation-removal== 56939 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #54096: origin
                    (at_c_p11)

                    ; #84170: origin
                    (not_at_c_p6)

                    ; #12278: <==negation-removal== 54096 (pos)
                    (not (not_at_c_p11))

                    ; #37967: <==negation-removal== 84170 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #84170: origin
                    (not_at_c_p6)

                    ; #86280: origin
                    (at_c_p12)

                    ; #37967: <==negation-removal== 84170 (pos)
                    (not (at_c_p6))

                    ; #82584: <==negation-removal== 86280 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #67560: origin
                    (at_c_p2)

                    ; #84170: origin
                    (not_at_c_p6)

                    ; #37967: <==negation-removal== 84170 (pos)
                    (not (at_c_p6))

                    ; #52914: <==negation-removal== 67560 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #68418: origin
                    (at_c_p3)

                    ; #84170: origin
                    (not_at_c_p6)

                    ; #12244: <==negation-removal== 68418 (pos)
                    (not (not_at_c_p3))

                    ; #37967: <==negation-removal== 84170 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #82524: origin
                    (at_c_p4)

                    ; #84170: origin
                    (not_at_c_p6)

                    ; #37967: <==negation-removal== 84170 (pos)
                    (not (at_c_p6))

                    ; #78330: <==negation-removal== 82524 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #81129: origin
                    (at_c_p5)

                    ; #84170: origin
                    (not_at_c_p6)

                    ; #37967: <==negation-removal== 84170 (pos)
                    (not (at_c_p6))

                    ; #62145: <==negation-removal== 81129 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #37967: origin
                    (at_c_p6)

                    ; #84170: origin
                    (not_at_c_p6)

                    ; #37967: <==negation-removal== 84170 (pos)
                    (not (at_c_p6))

                    ; #84170: <==negation-removal== 37967 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #84170: origin
                    (not_at_c_p6)

                    ; #91679: origin
                    (at_c_p7)

                    ; #11017: <==negation-removal== 91679 (pos)
                    (not (not_at_c_p7))

                    ; #37967: <==negation-removal== 84170 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #84170: origin
                    (not_at_c_p6)

                    ; #86414: origin
                    (at_c_p8)

                    ; #37967: <==negation-removal== 84170 (pos)
                    (not (at_c_p6))

                    ; #57121: <==negation-removal== 86414 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #50436: origin
                    (at_c_p9)

                    ; #84170: origin
                    (not_at_c_p6)

                    ; #17440: <==negation-removal== 50436 (pos)
                    (not (not_at_c_p9))

                    ; #37967: <==negation-removal== 84170 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #11017: origin
                    (not_at_c_p7)

                    ; #17669: origin
                    (at_c_p1)

                    ; #25319: <==negation-removal== 17669 (pos)
                    (not (not_at_c_p1))

                    ; #91679: <==negation-removal== 11017 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #11017: origin
                    (not_at_c_p7)

                    ; #56939: origin
                    (at_c_p10)

                    ; #41003: <==negation-removal== 56939 (pos)
                    (not (not_at_c_p10))

                    ; #91679: <==negation-removal== 11017 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #11017: origin
                    (not_at_c_p7)

                    ; #54096: origin
                    (at_c_p11)

                    ; #12278: <==negation-removal== 54096 (pos)
                    (not (not_at_c_p11))

                    ; #91679: <==negation-removal== 11017 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12)
                           (not (leader_c)))
        :effect (and
                    ; #11017: origin
                    (not_at_c_p7)

                    ; #86280: origin
                    (at_c_p12)

                    ; #82584: <==negation-removal== 86280 (pos)
                    (not (not_at_c_p12))

                    ; #91679: <==negation-removal== 11017 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #11017: origin
                    (not_at_c_p7)

                    ; #67560: origin
                    (at_c_p2)

                    ; #52914: <==negation-removal== 67560 (pos)
                    (not (not_at_c_p2))

                    ; #91679: <==negation-removal== 11017 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #11017: origin
                    (not_at_c_p7)

                    ; #68418: origin
                    (at_c_p3)

                    ; #12244: <==negation-removal== 68418 (pos)
                    (not (not_at_c_p3))

                    ; #91679: <==negation-removal== 11017 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4)
                           (not (leader_c)))
        :effect (and
                    ; #11017: origin
                    (not_at_c_p7)

                    ; #82524: origin
                    (at_c_p4)

                    ; #78330: <==negation-removal== 82524 (pos)
                    (not (not_at_c_p4))

                    ; #91679: <==negation-removal== 11017 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5)
                           (not (leader_c)))
        :effect (and
                    ; #11017: origin
                    (not_at_c_p7)

                    ; #81129: origin
                    (at_c_p5)

                    ; #62145: <==negation-removal== 81129 (pos)
                    (not (not_at_c_p5))

                    ; #91679: <==negation-removal== 11017 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #11017: origin
                    (not_at_c_p7)

                    ; #37967: origin
                    (at_c_p6)

                    ; #84170: <==negation-removal== 37967 (pos)
                    (not (not_at_c_p6))

                    ; #91679: <==negation-removal== 11017 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7)
                           (not (leader_c)))
        :effect (and
                    ; #11017: origin
                    (not_at_c_p7)

                    ; #91679: origin
                    (at_c_p7)

                    ; #11017: <==negation-removal== 91679 (pos)
                    (not (not_at_c_p7))

                    ; #91679: <==negation-removal== 11017 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8)
                           (not (leader_c)))
        :effect (and
                    ; #11017: origin
                    (not_at_c_p7)

                    ; #86414: origin
                    (at_c_p8)

                    ; #57121: <==negation-removal== 86414 (pos)
                    (not (not_at_c_p8))

                    ; #91679: <==negation-removal== 11017 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #11017: origin
                    (not_at_c_p7)

                    ; #50436: origin
                    (at_c_p9)

                    ; #17440: <==negation-removal== 50436 (pos)
                    (not (not_at_c_p9))

                    ; #91679: <==negation-removal== 11017 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1)
                           (not (leader_c)))
        :effect (and
                    ; #17669: origin
                    (at_c_p1)

                    ; #57121: origin
                    (not_at_c_p8)

                    ; #25319: <==negation-removal== 17669 (pos)
                    (not (not_at_c_p1))

                    ; #86414: <==negation-removal== 57121 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #56939: origin
                    (at_c_p10)

                    ; #57121: origin
                    (not_at_c_p8)

                    ; #41003: <==negation-removal== 56939 (pos)
                    (not (not_at_c_p10))

                    ; #86414: <==negation-removal== 57121 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11)
                           (not (leader_c)))
        :effect (and
                    ; #54096: origin
                    (at_c_p11)

                    ; #57121: origin
                    (not_at_c_p8)

                    ; #12278: <==negation-removal== 54096 (pos)
                    (not (not_at_c_p11))

                    ; #86414: <==negation-removal== 57121 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12)
                           (not (leader_c)))
        :effect (and
                    ; #57121: origin
                    (not_at_c_p8)

                    ; #86280: origin
                    (at_c_p12)

                    ; #82584: <==negation-removal== 86280 (pos)
                    (not (not_at_c_p12))

                    ; #86414: <==negation-removal== 57121 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2)
                           (not (leader_c)))
        :effect (and
                    ; #57121: origin
                    (not_at_c_p8)

                    ; #67560: origin
                    (at_c_p2)

                    ; #52914: <==negation-removal== 67560 (pos)
                    (not (not_at_c_p2))

                    ; #86414: <==negation-removal== 57121 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3)
                           (not (leader_c)))
        :effect (and
                    ; #57121: origin
                    (not_at_c_p8)

                    ; #68418: origin
                    (at_c_p3)

                    ; #12244: <==negation-removal== 68418 (pos)
                    (not (not_at_c_p3))

                    ; #86414: <==negation-removal== 57121 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #57121: origin
                    (not_at_c_p8)

                    ; #82524: origin
                    (at_c_p4)

                    ; #78330: <==negation-removal== 82524 (pos)
                    (not (not_at_c_p4))

                    ; #86414: <==negation-removal== 57121 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #57121: origin
                    (not_at_c_p8)

                    ; #81129: origin
                    (at_c_p5)

                    ; #62145: <==negation-removal== 81129 (pos)
                    (not (not_at_c_p5))

                    ; #86414: <==negation-removal== 57121 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6)
                           (not (leader_c)))
        :effect (and
                    ; #37967: origin
                    (at_c_p6)

                    ; #57121: origin
                    (not_at_c_p8)

                    ; #84170: <==negation-removal== 37967 (pos)
                    (not (not_at_c_p6))

                    ; #86414: <==negation-removal== 57121 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #57121: origin
                    (not_at_c_p8)

                    ; #91679: origin
                    (at_c_p7)

                    ; #11017: <==negation-removal== 91679 (pos)
                    (not (not_at_c_p7))

                    ; #86414: <==negation-removal== 57121 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #57121: origin
                    (not_at_c_p8)

                    ; #86414: origin
                    (at_c_p8)

                    ; #57121: <==negation-removal== 86414 (pos)
                    (not (not_at_c_p8))

                    ; #86414: <==negation-removal== 57121 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #50436: origin
                    (at_c_p9)

                    ; #57121: origin
                    (not_at_c_p8)

                    ; #17440: <==negation-removal== 50436 (pos)
                    (not (not_at_c_p9))

                    ; #86414: <==negation-removal== 57121 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1)
                           (not (leader_c)))
        :effect (and
                    ; #17440: origin
                    (not_at_c_p9)

                    ; #17669: origin
                    (at_c_p1)

                    ; #25319: <==negation-removal== 17669 (pos)
                    (not (not_at_c_p1))

                    ; #50436: <==negation-removal== 17440 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10)
                           (not (leader_c)))
        :effect (and
                    ; #17440: origin
                    (not_at_c_p9)

                    ; #56939: origin
                    (at_c_p10)

                    ; #41003: <==negation-removal== 56939 (pos)
                    (not (not_at_c_p10))

                    ; #50436: <==negation-removal== 17440 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #17440: origin
                    (not_at_c_p9)

                    ; #54096: origin
                    (at_c_p11)

                    ; #12278: <==negation-removal== 54096 (pos)
                    (not (not_at_c_p11))

                    ; #50436: <==negation-removal== 17440 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12)
                           (not (leader_c)))
        :effect (and
                    ; #17440: origin
                    (not_at_c_p9)

                    ; #86280: origin
                    (at_c_p12)

                    ; #50436: <==negation-removal== 17440 (pos)
                    (not (at_c_p9))

                    ; #82584: <==negation-removal== 86280 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2)
                           (not (leader_c)))
        :effect (and
                    ; #17440: origin
                    (not_at_c_p9)

                    ; #67560: origin
                    (at_c_p2)

                    ; #50436: <==negation-removal== 17440 (pos)
                    (not (at_c_p9))

                    ; #52914: <==negation-removal== 67560 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #17440: origin
                    (not_at_c_p9)

                    ; #68418: origin
                    (at_c_p3)

                    ; #12244: <==negation-removal== 68418 (pos)
                    (not (not_at_c_p3))

                    ; #50436: <==negation-removal== 17440 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4)
                           (not (leader_c)))
        :effect (and
                    ; #17440: origin
                    (not_at_c_p9)

                    ; #82524: origin
                    (at_c_p4)

                    ; #50436: <==negation-removal== 17440 (pos)
                    (not (at_c_p9))

                    ; #78330: <==negation-removal== 82524 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5)
                           (not (leader_c)))
        :effect (and
                    ; #17440: origin
                    (not_at_c_p9)

                    ; #81129: origin
                    (at_c_p5)

                    ; #50436: <==negation-removal== 17440 (pos)
                    (not (at_c_p9))

                    ; #62145: <==negation-removal== 81129 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6)
                           (not (leader_c)))
        :effect (and
                    ; #17440: origin
                    (not_at_c_p9)

                    ; #37967: origin
                    (at_c_p6)

                    ; #50436: <==negation-removal== 17440 (pos)
                    (not (at_c_p9))

                    ; #84170: <==negation-removal== 37967 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7)
                           (not (leader_c)))
        :effect (and
                    ; #17440: origin
                    (not_at_c_p9)

                    ; #91679: origin
                    (at_c_p7)

                    ; #11017: <==negation-removal== 91679 (pos)
                    (not (not_at_c_p7))

                    ; #50436: <==negation-removal== 17440 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8)
                           (not (leader_c)))
        :effect (and
                    ; #17440: origin
                    (not_at_c_p9)

                    ; #86414: origin
                    (at_c_p8)

                    ; #50436: <==negation-removal== 17440 (pos)
                    (not (at_c_p9))

                    ; #57121: <==negation-removal== 86414 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9)
                           (not (leader_c)))
        :effect (and
                    ; #17440: origin
                    (not_at_c_p9)

                    ; #50436: origin
                    (at_c_p9)

                    ; #17440: <==negation-removal== 50436 (pos)
                    (not (not_at_c_p9))

                    ; #50436: <==negation-removal== 17440 (pos)
                    (not (at_c_p9))))

    (:action observe_a_p10_s
        :precondition (and (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #13154: <==commonly_known== 78538 (pos)
                    (Ba_checked_p10)

                    ; #14757: <==closure== 21857 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #16320: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #21857: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #22775: <==commonly_known== 55225 (neg)
                    (Pa_checked_p10)

                    ; #30772: <==commonly_known== 78538 (pos)
                    (Bc_checked_p10)

                    ; #39412: <==commonly_known== 55225 (neg)
                    (Pc_checked_p10)

                    ; #53563: <==commonly_known== 78538 (pos)
                    (Bb_checked_p10)

                    ; #55477: <==commonly_known== 55225 (neg)
                    (Pb_checked_p10)

                    ; #65625: <==closure== 16320 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #78538: origin
                    (checked_p10)

                    ; #11094: <==negation-removal== 55477 (pos)
                    (not (Bb_not_checked_p10))

                    ; #20957: <==negation-removal== 65625 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #25375: <==negation-removal== 53563 (pos)
                    (not (Pb_not_checked_p10))

                    ; #27726: <==uncertain_firing== 16320 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #28941: <==negation-removal== 14757 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #48894: <==uncertain_firing== 65625 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #53583: <==negation-removal== 39412 (pos)
                    (not (Bc_not_checked_p10))

                    ; #55225: <==negation-removal== 78538 (pos)
                    (not (not_checked_p10))

                    ; #59220: <==negation-removal== 30772 (pos)
                    (not (Pc_not_checked_p10))

                    ; #64023: <==negation-removal== 22775 (pos)
                    (not (Ba_not_checked_p10))

                    ; #67581: <==uncertain_firing== 14757 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #69804: <==negation-removal== 21857 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #86369: <==negation-removal== 13154 (pos)
                    (not (Pa_not_checked_p10))

                    ; #91210: <==uncertain_firing== 21857 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #91536: <==negation-removal== 16320 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))))

    (:action observe_a_p11_s
        :precondition (and (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #15236: origin
                    (checked_p11)

                    ; #22708: <==commonly_known== 86570 (neg)
                    (Pc_checked_p11)

                    ; #22759: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #35726: <==commonly_known== 15236 (pos)
                    (Bb_checked_p11)

                    ; #50547: <==closure== 54237 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #54237: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #67574: <==commonly_known== 86570 (neg)
                    (Pb_checked_p11)

                    ; #67737: <==closure== 22759 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #76931: <==commonly_known== 15236 (pos)
                    (Ba_checked_p11)

                    ; #88373: <==commonly_known== 15236 (pos)
                    (Bc_checked_p11)

                    ; #89671: <==commonly_known== 86570 (neg)
                    (Pa_checked_p11)

                    ; #13572: <==uncertain_firing== 50547 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #19681: <==negation-removal== 88373 (pos)
                    (not (Pc_not_checked_p11))

                    ; #29003: <==negation-removal== 22759 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #33730: <==uncertain_firing== 67737 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #36035: <==uncertain_firing== 54237 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #49400: <==negation-removal== 76931 (pos)
                    (not (Pa_not_checked_p11))

                    ; #53946: <==negation-removal== 54237 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #59244: <==negation-removal== 67574 (pos)
                    (not (Bb_not_checked_p11))

                    ; #65464: <==negation-removal== 89671 (pos)
                    (not (Ba_not_checked_p11))

                    ; #76329: <==negation-removal== 22708 (pos)
                    (not (Bc_not_checked_p11))

                    ; #78513: <==negation-removal== 50547 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #80196: <==negation-removal== 67737 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #86570: <==negation-removal== 15236 (pos)
                    (not (not_checked_p11))

                    ; #88420: <==uncertain_firing== 22759 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #91245: <==negation-removal== 35726 (pos)
                    (not (Pb_not_checked_p11))))

    (:action observe_a_p12_s
        :precondition (and (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #10776: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #16421: <==commonly_known== 92146 (neg)
                    (Pa_checked_p12)

                    ; #37917: <==commonly_known== 48014 (pos)
                    (Bb_checked_p12)

                    ; #37983: <==commonly_known== 92146 (neg)
                    (Pb_checked_p12)

                    ; #48014: origin
                    (checked_p12)

                    ; #49813: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #57607: <==closure== 49813 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #62479: <==commonly_known== 48014 (pos)
                    (Ba_checked_p12)

                    ; #67063: <==commonly_known== 92146 (neg)
                    (Pc_checked_p12)

                    ; #67428: <==commonly_known== 48014 (pos)
                    (Bc_checked_p12)

                    ; #91427: <==closure== 10776 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #17144: <==negation-removal== 67063 (pos)
                    (not (Bc_not_checked_p12))

                    ; #23130: <==negation-removal== 67428 (pos)
                    (not (Pc_not_checked_p12))

                    ; #28900: <==uncertain_firing== 91427 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #30273: <==negation-removal== 37917 (pos)
                    (not (Pb_not_checked_p12))

                    ; #42925: <==negation-removal== 49813 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #43500: <==negation-removal== 10776 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #46350: <==negation-removal== 62479 (pos)
                    (not (Pa_not_checked_p12))

                    ; #48957: <==uncertain_firing== 49813 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #56036: <==uncertain_firing== 57607 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #60525: <==negation-removal== 91427 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #62119: <==negation-removal== 57607 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #76872: <==negation-removal== 16421 (pos)
                    (not (Ba_not_checked_p12))

                    ; #87557: <==uncertain_firing== 10776 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #88087: <==negation-removal== 37983 (pos)
                    (not (Bb_not_checked_p12))

                    ; #92146: <==negation-removal== 48014 (pos)
                    (not (not_checked_p12))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #20499: <==commonly_known== 24038 (neg)
                    (Pc_checked_p1)

                    ; #21083: <==commonly_known== 60009 (pos)
                    (Bc_checked_p1)

                    ; #22196: <==commonly_known== 60009 (pos)
                    (Bb_checked_p1)

                    ; #42321: <==commonly_known== 60009 (pos)
                    (Ba_checked_p1)

                    ; #50825: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #55172: <==closure== 58354 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #57938: <==commonly_known== 24038 (neg)
                    (Pb_checked_p1)

                    ; #58354: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #60009: origin
                    (checked_p1)

                    ; #61271: <==commonly_known== 24038 (neg)
                    (Pa_checked_p1)

                    ; #90286: <==closure== 50825 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #10427: <==negation-removal== 21083 (pos)
                    (not (Pc_not_checked_p1))

                    ; #13398: <==negation-removal== 57938 (pos)
                    (not (Bb_not_checked_p1))

                    ; #13445: <==negation-removal== 22196 (pos)
                    (not (Pb_not_checked_p1))

                    ; #19823: <==negation-removal== 58354 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #24038: <==negation-removal== 60009 (pos)
                    (not (not_checked_p1))

                    ; #25431: <==uncertain_firing== 58354 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #26119: <==negation-removal== 50825 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #33551: <==uncertain_firing== 50825 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #39765: <==negation-removal== 55172 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #48539: <==negation-removal== 90286 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #54629: <==negation-removal== 61271 (pos)
                    (not (Ba_not_checked_p1))

                    ; #57814: <==negation-removal== 20499 (pos)
                    (not (Bc_not_checked_p1))

                    ; #79125: <==uncertain_firing== 90286 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #86246: <==uncertain_firing== 55172 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #89831: <==negation-removal== 42321 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #13187: <==commonly_known== 46820 (pos)
                    (Ba_checked_p2)

                    ; #16924: <==commonly_known== 46820 (pos)
                    (Bc_checked_p2)

                    ; #29488: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #33974: <==commonly_known== 27647 (neg)
                    (Pc_checked_p2)

                    ; #37052: <==commonly_known== 27647 (neg)
                    (Pa_checked_p2)

                    ; #46820: origin
                    (checked_p2)

                    ; #65245: <==commonly_known== 46820 (pos)
                    (Bb_checked_p2)

                    ; #70661: <==commonly_known== 27647 (neg)
                    (Pb_checked_p2)

                    ; #75482: <==closure== 29488 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #89502: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #91301: <==closure== 89502 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #16166: <==negation-removal== 89502 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #17529: <==uncertain_firing== 91301 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #20163: <==negation-removal== 29488 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #27647: <==negation-removal== 46820 (pos)
                    (not (not_checked_p2))

                    ; #43981: <==negation-removal== 16924 (pos)
                    (not (Pc_not_checked_p2))

                    ; #46694: <==uncertain_firing== 89502 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #50894: <==negation-removal== 75482 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #55672: <==negation-removal== 91301 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #58265: <==negation-removal== 37052 (pos)
                    (not (Ba_not_checked_p2))

                    ; #62239: <==negation-removal== 33974 (pos)
                    (not (Bc_not_checked_p2))

                    ; #67634: <==negation-removal== 65245 (pos)
                    (not (Pb_not_checked_p2))

                    ; #69195: <==uncertain_firing== 29488 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #70416: <==uncertain_firing== 75482 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #82386: <==negation-removal== 13187 (pos)
                    (not (Pa_not_checked_p2))

                    ; #86872: <==negation-removal== 70661 (pos)
                    (not (Bb_not_checked_p2))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #12422: <==commonly_known== 85621 (pos)
                    (Bc_checked_p3)

                    ; #17090: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #18099: <==commonly_known== 19379 (neg)
                    (Pa_checked_p3)

                    ; #52468: <==commonly_known== 19379 (neg)
                    (Pb_checked_p3)

                    ; #56944: <==commonly_known== 19379 (neg)
                    (Pc_checked_p3)

                    ; #59369: <==commonly_known== 85621 (pos)
                    (Bb_checked_p3)

                    ; #79095: <==commonly_known== 85621 (pos)
                    (Ba_checked_p3)

                    ; #85621: origin
                    (checked_p3)

                    ; #88020: <==closure== 17090 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #89668: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #91193: <==closure== 89668 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #19379: <==negation-removal== 85621 (pos)
                    (not (not_checked_p3))

                    ; #27677: <==uncertain_firing== 88020 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #32646: <==uncertain_firing== 17090 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #35664: <==negation-removal== 89668 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #39681: <==negation-removal== 52468 (pos)
                    (not (Bb_not_checked_p3))

                    ; #43512: <==negation-removal== 18099 (pos)
                    (not (Ba_not_checked_p3))

                    ; #48735: <==negation-removal== 17090 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #49943: <==negation-removal== 59369 (pos)
                    (not (Pb_not_checked_p3))

                    ; #69419: <==negation-removal== 12422 (pos)
                    (not (Pc_not_checked_p3))

                    ; #69771: <==negation-removal== 91193 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #75062: <==negation-removal== 56944 (pos)
                    (not (Bc_not_checked_p3))

                    ; #75562: <==negation-removal== 79095 (pos)
                    (not (Pa_not_checked_p3))

                    ; #78319: <==uncertain_firing== 91193 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #81157: <==uncertain_firing== 89668 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #90741: <==negation-removal== 88020 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #18314: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #23914: <==commonly_known== 47107 (neg)
                    (Pa_checked_p4)

                    ; #25118: <==closure== 18314 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #38848: origin
                    (checked_p4)

                    ; #39400: <==closure== 52277 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #44556: <==commonly_known== 47107 (neg)
                    (Pb_checked_p4)

                    ; #52277: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #59535: <==commonly_known== 47107 (neg)
                    (Pc_checked_p4)

                    ; #68191: <==commonly_known== 38848 (pos)
                    (Ba_checked_p4)

                    ; #85677: <==commonly_known== 38848 (pos)
                    (Bb_checked_p4)

                    ; #89865: <==commonly_known== 38848 (pos)
                    (Bc_checked_p4)

                    ; #11616: <==negation-removal== 68191 (pos)
                    (not (Pa_not_checked_p4))

                    ; #20328: <==negation-removal== 25118 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #20910: <==uncertain_firing== 52277 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #21190: <==negation-removal== 44556 (pos)
                    (not (Bb_not_checked_p4))

                    ; #21575: <==negation-removal== 59535 (pos)
                    (not (Bc_not_checked_p4))

                    ; #30253: <==negation-removal== 39400 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #44705: <==negation-removal== 52277 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #47107: <==negation-removal== 38848 (pos)
                    (not (not_checked_p4))

                    ; #49776: <==uncertain_firing== 18314 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #53045: <==negation-removal== 18314 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #58359: <==negation-removal== 89865 (pos)
                    (not (Pc_not_checked_p4))

                    ; #61633: <==uncertain_firing== 25118 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #79329: <==uncertain_firing== 39400 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #87795: <==negation-removal== 85677 (pos)
                    (not (Pb_not_checked_p4))

                    ; #90580: <==negation-removal== 23914 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #12861: <==commonly_known== 56614 (neg)
                    (Pb_checked_p5)

                    ; #13701: <==commonly_known== 45973 (pos)
                    (Bc_checked_p5)

                    ; #15300: <==commonly_known== 45973 (pos)
                    (Ba_checked_p5)

                    ; #18294: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #45973: origin
                    (checked_p5)

                    ; #57001: <==closure== 18294 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #62149: <==commonly_known== 56614 (neg)
                    (Pc_checked_p5)

                    ; #71319: <==commonly_known== 56614 (neg)
                    (Pa_checked_p5)

                    ; #73188: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #78804: <==closure== 73188 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #86052: <==commonly_known== 45973 (pos)
                    (Bb_checked_p5)

                    ; #17456: <==negation-removal== 86052 (pos)
                    (not (Pb_not_checked_p5))

                    ; #19669: <==negation-removal== 12861 (pos)
                    (not (Bb_not_checked_p5))

                    ; #27933: <==negation-removal== 13701 (pos)
                    (not (Pc_not_checked_p5))

                    ; #40336: <==negation-removal== 78804 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #42672: <==uncertain_firing== 78804 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #43127: <==uncertain_firing== 57001 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #49866: <==uncertain_firing== 18294 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #51551: <==negation-removal== 73188 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #56614: <==negation-removal== 45973 (pos)
                    (not (not_checked_p5))

                    ; #58040: <==negation-removal== 62149 (pos)
                    (not (Bc_not_checked_p5))

                    ; #60684: <==negation-removal== 18294 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #79543: <==negation-removal== 71319 (pos)
                    (not (Ba_not_checked_p5))

                    ; #81639: <==negation-removal== 15300 (pos)
                    (not (Pa_not_checked_p5))

                    ; #82900: <==uncertain_firing== 73188 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #88598: <==negation-removal== 57001 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #36072: <==closure== 77218 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #36968: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #38981: <==commonly_known== 85785 (pos)
                    (Bc_checked_p6)

                    ; #43754: <==commonly_known== 85785 (pos)
                    (Ba_checked_p6)

                    ; #52305: <==commonly_known== 85785 (pos)
                    (Bb_checked_p6)

                    ; #60770: <==commonly_known== 73507 (neg)
                    (Pa_checked_p6)

                    ; #69776: <==closure== 36968 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #74160: <==commonly_known== 73507 (neg)
                    (Pc_checked_p6)

                    ; #75296: <==commonly_known== 73507 (neg)
                    (Pb_checked_p6)

                    ; #77218: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #85785: origin
                    (checked_p6)

                    ; #17381: <==uncertain_firing== 69776 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #17443: <==negation-removal== 69776 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #22752: <==negation-removal== 36072 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #23652: <==negation-removal== 74160 (pos)
                    (not (Bc_not_checked_p6))

                    ; #31925: <==negation-removal== 43754 (pos)
                    (not (Pa_not_checked_p6))

                    ; #34760: <==negation-removal== 38981 (pos)
                    (not (Pc_not_checked_p6))

                    ; #39000: <==uncertain_firing== 77218 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #42484: <==uncertain_firing== 36968 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #48116: <==negation-removal== 75296 (pos)
                    (not (Bb_not_checked_p6))

                    ; #56248: <==negation-removal== 36968 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #69636: <==negation-removal== 60770 (pos)
                    (not (Ba_not_checked_p6))

                    ; #73473: <==negation-removal== 52305 (pos)
                    (not (Pb_not_checked_p6))

                    ; #73507: <==negation-removal== 85785 (pos)
                    (not (not_checked_p6))

                    ; #77206: <==uncertain_firing== 36072 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #99992: <==negation-removal== 77218 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12484: <==commonly_known== 26883 (neg)
                    (Pc_checked_p7)

                    ; #13683: <==commonly_known== 26883 (neg)
                    (Pb_checked_p7)

                    ; #18244: <==closure== 58647 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #36561: <==commonly_known== 51518 (pos)
                    (Bc_checked_p7)

                    ; #37196: <==commonly_known== 51518 (pos)
                    (Bb_checked_p7)

                    ; #51518: origin
                    (checked_p7)

                    ; #58647: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #65347: <==commonly_known== 26883 (neg)
                    (Pa_checked_p7)

                    ; #71767: <==commonly_known== 51518 (pos)
                    (Ba_checked_p7)

                    ; #91286: <==closure== 92018 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #92018: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #20341: <==uncertain_firing== 92018 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #25728: <==negation-removal== 37196 (pos)
                    (not (Pb_not_checked_p7))

                    ; #26883: <==negation-removal== 51518 (pos)
                    (not (not_checked_p7))

                    ; #44185: <==negation-removal== 91286 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #50369: <==uncertain_firing== 58647 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #64338: <==negation-removal== 71767 (pos)
                    (not (Pa_not_checked_p7))

                    ; #66299: <==negation-removal== 58647 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #67441: <==negation-removal== 18244 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #69672: <==negation-removal== 36561 (pos)
                    (not (Pc_not_checked_p7))

                    ; #69838: <==negation-removal== 12484 (pos)
                    (not (Bc_not_checked_p7))

                    ; #78477: <==negation-removal== 92018 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #78715: <==negation-removal== 65347 (pos)
                    (not (Ba_not_checked_p7))

                    ; #79004: <==uncertain_firing== 18244 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #79149: <==uncertain_firing== 91286 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #84500: <==negation-removal== 13683 (pos)
                    (not (Bb_not_checked_p7))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #15656: <==commonly_known== 71668 (pos)
                    (Bb_checked_p8)

                    ; #18279: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #47390: <==commonly_known== 87897 (neg)
                    (Pb_checked_p8)

                    ; #48321: <==closure== 76909 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #54653: <==commonly_known== 87897 (neg)
                    (Pa_checked_p8)

                    ; #55819: <==commonly_known== 87897 (neg)
                    (Pc_checked_p8)

                    ; #57421: <==closure== 18279 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #61083: <==commonly_known== 71668 (pos)
                    (Ba_checked_p8)

                    ; #71668: origin
                    (checked_p8)

                    ; #76909: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #89402: <==commonly_known== 71668 (pos)
                    (Bc_checked_p8)

                    ; #10050: <==negation-removal== 18279 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #10077: <==negation-removal== 15656 (pos)
                    (not (Pb_not_checked_p8))

                    ; #10880: <==uncertain_firing== 57421 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #16538: <==negation-removal== 57421 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #17116: <==negation-removal== 61083 (pos)
                    (not (Pa_not_checked_p8))

                    ; #30722: <==uncertain_firing== 48321 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #39644: <==negation-removal== 55819 (pos)
                    (not (Bc_not_checked_p8))

                    ; #59201: <==uncertain_firing== 18279 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #65888: <==uncertain_firing== 76909 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #71084: <==negation-removal== 47390 (pos)
                    (not (Bb_not_checked_p8))

                    ; #72930: <==negation-removal== 48321 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #78876: <==negation-removal== 54653 (pos)
                    (not (Ba_not_checked_p8))

                    ; #86183: <==negation-removal== 89402 (pos)
                    (not (Pc_not_checked_p8))

                    ; #86751: <==negation-removal== 76909 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #87897: <==negation-removal== 71668 (pos)
                    (not (not_checked_p8))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #29747: <==commonly_known== 87960 (pos)
                    (Ba_checked_p9)

                    ; #33143: <==closure== 57990 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #38603: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #50914: <==commonly_known== 89265 (neg)
                    (Pc_checked_p9)

                    ; #54438: <==commonly_known== 89265 (neg)
                    (Pa_checked_p9)

                    ; #54852: <==commonly_known== 89265 (neg)
                    (Pb_checked_p9)

                    ; #57990: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #60725: <==closure== 38603 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #71770: <==commonly_known== 87960 (pos)
                    (Bc_checked_p9)

                    ; #85347: <==commonly_known== 87960 (pos)
                    (Bb_checked_p9)

                    ; #87960: origin
                    (checked_p9)

                    ; #14811: <==negation-removal== 71770 (pos)
                    (not (Pc_not_checked_p9))

                    ; #22591: <==negation-removal== 85347 (pos)
                    (not (Pb_not_checked_p9))

                    ; #25635: <==negation-removal== 33143 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #27283: <==uncertain_firing== 38603 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #30094: <==negation-removal== 54438 (pos)
                    (not (Ba_not_checked_p9))

                    ; #31531: <==negation-removal== 60725 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #34779: <==negation-removal== 50914 (pos)
                    (not (Bc_not_checked_p9))

                    ; #55821: <==uncertain_firing== 57990 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #63518: <==negation-removal== 57990 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #66607: <==negation-removal== 38603 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #69002: <==uncertain_firing== 60725 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #77079: <==negation-removal== 29747 (pos)
                    (not (Pa_not_checked_p9))

                    ; #79724: <==negation-removal== 54852 (pos)
                    (not (Bb_not_checked_p9))

                    ; #89265: <==negation-removal== 87960 (pos)
                    (not (not_checked_p9))

                    ; #90581: <==uncertain_firing== 33143 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action observe_b_p10_s
        :precondition (and (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #13154: <==commonly_known== 78538 (pos)
                    (Ba_checked_p10)

                    ; #19292: <==closure== 33198 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #22775: <==commonly_known== 55225 (neg)
                    (Pa_checked_p10)

                    ; #30772: <==commonly_known== 78538 (pos)
                    (Bc_checked_p10)

                    ; #33198: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #35214: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #39412: <==commonly_known== 55225 (neg)
                    (Pc_checked_p10)

                    ; #53563: <==commonly_known== 78538 (pos)
                    (Bb_checked_p10)

                    ; #55477: <==commonly_known== 55225 (neg)
                    (Pb_checked_p10)

                    ; #66002: <==closure== 35214 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #78538: origin
                    (checked_p10)

                    ; #11094: <==negation-removal== 55477 (pos)
                    (not (Bb_not_checked_p10))

                    ; #11376: <==uncertain_firing== 66002 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #25375: <==negation-removal== 53563 (pos)
                    (not (Pb_not_checked_p10))

                    ; #25956: <==negation-removal== 33198 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #51285: <==uncertain_firing== 35214 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #53583: <==negation-removal== 39412 (pos)
                    (not (Bc_not_checked_p10))

                    ; #55225: <==negation-removal== 78538 (pos)
                    (not (not_checked_p10))

                    ; #59220: <==negation-removal== 30772 (pos)
                    (not (Pc_not_checked_p10))

                    ; #64023: <==negation-removal== 22775 (pos)
                    (not (Ba_not_checked_p10))

                    ; #66771: <==uncertain_firing== 33198 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #73649: <==negation-removal== 35214 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #74738: <==negation-removal== 19292 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #85317: <==negation-removal== 66002 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #86369: <==negation-removal== 13154 (pos)
                    (not (Pa_not_checked_p10))

                    ; #91640: <==uncertain_firing== 19292 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))))

    (:action observe_b_p11_s
        :precondition (and (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #15236: origin
                    (checked_p11)

                    ; #22089: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #22708: <==commonly_known== 86570 (neg)
                    (Pc_checked_p11)

                    ; #35726: <==commonly_known== 15236 (pos)
                    (Bb_checked_p11)

                    ; #41191: <==closure== 22089 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #67574: <==commonly_known== 86570 (neg)
                    (Pb_checked_p11)

                    ; #70517: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #76931: <==commonly_known== 15236 (pos)
                    (Ba_checked_p11)

                    ; #81727: <==closure== 70517 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #88373: <==commonly_known== 15236 (pos)
                    (Bc_checked_p11)

                    ; #89671: <==commonly_known== 86570 (neg)
                    (Pa_checked_p11)

                    ; #19681: <==negation-removal== 88373 (pos)
                    (not (Pc_not_checked_p11))

                    ; #20653: <==negation-removal== 41191 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #32743: <==negation-removal== 22089 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #33921: <==negation-removal== 81727 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #38742: <==uncertain_firing== 41191 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #43477: <==uncertain_firing== 22089 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #47361: <==negation-removal== 70517 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #49400: <==negation-removal== 76931 (pos)
                    (not (Pa_not_checked_p11))

                    ; #59244: <==negation-removal== 67574 (pos)
                    (not (Bb_not_checked_p11))

                    ; #64596: <==uncertain_firing== 81727 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #65464: <==negation-removal== 89671 (pos)
                    (not (Ba_not_checked_p11))

                    ; #76329: <==negation-removal== 22708 (pos)
                    (not (Bc_not_checked_p11))

                    ; #81308: <==uncertain_firing== 70517 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #86570: <==negation-removal== 15236 (pos)
                    (not (not_checked_p11))

                    ; #91245: <==negation-removal== 35726 (pos)
                    (not (Pb_not_checked_p11))))

    (:action observe_b_p12_s
        :precondition (and (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #16421: <==commonly_known== 92146 (neg)
                    (Pa_checked_p12)

                    ; #35401: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #37917: <==commonly_known== 48014 (pos)
                    (Bb_checked_p12)

                    ; #37983: <==commonly_known== 92146 (neg)
                    (Pb_checked_p12)

                    ; #43884: <==closure== 61106 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #48014: origin
                    (checked_p12)

                    ; #61106: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #62479: <==commonly_known== 48014 (pos)
                    (Ba_checked_p12)

                    ; #67063: <==commonly_known== 92146 (neg)
                    (Pc_checked_p12)

                    ; #67428: <==commonly_known== 48014 (pos)
                    (Bc_checked_p12)

                    ; #84139: <==closure== 35401 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #10416: <==uncertain_firing== 61106 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #16088: <==uncertain_firing== 35401 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #17144: <==negation-removal== 67063 (pos)
                    (not (Bc_not_checked_p12))

                    ; #23130: <==negation-removal== 67428 (pos)
                    (not (Pc_not_checked_p12))

                    ; #30273: <==negation-removal== 37917 (pos)
                    (not (Pb_not_checked_p12))

                    ; #46350: <==negation-removal== 62479 (pos)
                    (not (Pa_not_checked_p12))

                    ; #57286: <==uncertain_firing== 84139 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #73236: <==negation-removal== 35401 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #76479: <==negation-removal== 61106 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #76872: <==negation-removal== 16421 (pos)
                    (not (Ba_not_checked_p12))

                    ; #77531: <==negation-removal== 84139 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #83262: <==uncertain_firing== 43884 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #87408: <==negation-removal== 43884 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #88087: <==negation-removal== 37983 (pos)
                    (not (Bb_not_checked_p12))

                    ; #92146: <==negation-removal== 48014 (pos)
                    (not (not_checked_p12))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #20499: <==commonly_known== 24038 (neg)
                    (Pc_checked_p1)

                    ; #21083: <==commonly_known== 60009 (pos)
                    (Bc_checked_p1)

                    ; #22196: <==commonly_known== 60009 (pos)
                    (Bb_checked_p1)

                    ; #42321: <==commonly_known== 60009 (pos)
                    (Ba_checked_p1)

                    ; #57938: <==commonly_known== 24038 (neg)
                    (Pb_checked_p1)

                    ; #60009: origin
                    (checked_p1)

                    ; #61271: <==commonly_known== 24038 (neg)
                    (Pa_checked_p1)

                    ; #61853: <==closure== 83543 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #75354: <==closure== 89236 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #83543: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #89236: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #10427: <==negation-removal== 21083 (pos)
                    (not (Pc_not_checked_p1))

                    ; #13398: <==negation-removal== 57938 (pos)
                    (not (Bb_not_checked_p1))

                    ; #13445: <==negation-removal== 22196 (pos)
                    (not (Pb_not_checked_p1))

                    ; #16706: <==uncertain_firing== 83543 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #19148: <==uncertain_firing== 75354 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #24038: <==negation-removal== 60009 (pos)
                    (not (not_checked_p1))

                    ; #26598: <==negation-removal== 89236 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #46189: <==uncertain_firing== 61853 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #51238: <==negation-removal== 83543 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #54629: <==negation-removal== 61271 (pos)
                    (not (Ba_not_checked_p1))

                    ; #57814: <==negation-removal== 20499 (pos)
                    (not (Bc_not_checked_p1))

                    ; #63810: <==uncertain_firing== 89236 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #86135: <==negation-removal== 75354 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #88548: <==negation-removal== 61853 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #89831: <==negation-removal== 42321 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #11402: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #13187: <==commonly_known== 46820 (pos)
                    (Ba_checked_p2)

                    ; #15631: <==closure== 11402 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #16924: <==commonly_known== 46820 (pos)
                    (Bc_checked_p2)

                    ; #17679: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #33974: <==commonly_known== 27647 (neg)
                    (Pc_checked_p2)

                    ; #37052: <==commonly_known== 27647 (neg)
                    (Pa_checked_p2)

                    ; #46820: origin
                    (checked_p2)

                    ; #51469: <==closure== 17679 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #65245: <==commonly_known== 46820 (pos)
                    (Bb_checked_p2)

                    ; #70661: <==commonly_known== 27647 (neg)
                    (Pb_checked_p2)

                    ; #16627: <==uncertain_firing== 51469 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #20550: <==negation-removal== 15631 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #26019: <==negation-removal== 17679 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #27647: <==negation-removal== 46820 (pos)
                    (not (not_checked_p2))

                    ; #43981: <==negation-removal== 16924 (pos)
                    (not (Pc_not_checked_p2))

                    ; #54824: <==negation-removal== 11402 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #58265: <==negation-removal== 37052 (pos)
                    (not (Ba_not_checked_p2))

                    ; #62239: <==negation-removal== 33974 (pos)
                    (not (Bc_not_checked_p2))

                    ; #67634: <==negation-removal== 65245 (pos)
                    (not (Pb_not_checked_p2))

                    ; #71228: <==negation-removal== 51469 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #74426: <==uncertain_firing== 11402 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #82386: <==negation-removal== 13187 (pos)
                    (not (Pa_not_checked_p2))

                    ; #82918: <==uncertain_firing== 15631 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #83415: <==uncertain_firing== 17679 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #86872: <==negation-removal== 70661 (pos)
                    (not (Bb_not_checked_p2))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #12422: <==commonly_known== 85621 (pos)
                    (Bc_checked_p3)

                    ; #14206: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #18099: <==commonly_known== 19379 (neg)
                    (Pa_checked_p3)

                    ; #38525: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #52468: <==commonly_known== 19379 (neg)
                    (Pb_checked_p3)

                    ; #56944: <==commonly_known== 19379 (neg)
                    (Pc_checked_p3)

                    ; #59369: <==commonly_known== 85621 (pos)
                    (Bb_checked_p3)

                    ; #63263: <==closure== 38525 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #79095: <==commonly_known== 85621 (pos)
                    (Ba_checked_p3)

                    ; #79324: <==closure== 14206 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #85621: origin
                    (checked_p3)

                    ; #12857: <==negation-removal== 79324 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #19379: <==negation-removal== 85621 (pos)
                    (not (not_checked_p3))

                    ; #25738: <==uncertain_firing== 63263 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #39681: <==negation-removal== 52468 (pos)
                    (not (Bb_not_checked_p3))

                    ; #43512: <==negation-removal== 18099 (pos)
                    (not (Ba_not_checked_p3))

                    ; #44554: <==uncertain_firing== 38525 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #49943: <==negation-removal== 59369 (pos)
                    (not (Pb_not_checked_p3))

                    ; #53448: <==negation-removal== 38525 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #55331: <==uncertain_firing== 14206 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #56981: <==uncertain_firing== 79324 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #59318: <==negation-removal== 63263 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #69419: <==negation-removal== 12422 (pos)
                    (not (Pc_not_checked_p3))

                    ; #75062: <==negation-removal== 56944 (pos)
                    (not (Bc_not_checked_p3))

                    ; #75562: <==negation-removal== 79095 (pos)
                    (not (Pa_not_checked_p3))

                    ; #91564: <==negation-removal== 14206 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #10224: <==closure== 52998 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #23914: <==commonly_known== 47107 (neg)
                    (Pa_checked_p4)

                    ; #38848: origin
                    (checked_p4)

                    ; #44556: <==commonly_known== 47107 (neg)
                    (Pb_checked_p4)

                    ; #52998: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #59535: <==commonly_known== 47107 (neg)
                    (Pc_checked_p4)

                    ; #68191: <==commonly_known== 38848 (pos)
                    (Ba_checked_p4)

                    ; #80363: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #85677: <==commonly_known== 38848 (pos)
                    (Bb_checked_p4)

                    ; #89865: <==commonly_known== 38848 (pos)
                    (Bc_checked_p4)

                    ; #90835: <==closure== 80363 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #11616: <==negation-removal== 68191 (pos)
                    (not (Pa_not_checked_p4))

                    ; #17650: <==uncertain_firing== 10224 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #19611: <==uncertain_firing== 90835 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #21190: <==negation-removal== 44556 (pos)
                    (not (Bb_not_checked_p4))

                    ; #21350: <==negation-removal== 52998 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #21575: <==negation-removal== 59535 (pos)
                    (not (Bc_not_checked_p4))

                    ; #22249: <==uncertain_firing== 80363 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #47107: <==negation-removal== 38848 (pos)
                    (not (not_checked_p4))

                    ; #57866: <==negation-removal== 10224 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #58359: <==negation-removal== 89865 (pos)
                    (not (Pc_not_checked_p4))

                    ; #74945: <==negation-removal== 80363 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #81771: <==uncertain_firing== 52998 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #83656: <==negation-removal== 90835 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #87795: <==negation-removal== 85677 (pos)
                    (not (Pb_not_checked_p4))

                    ; #90580: <==negation-removal== 23914 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #12861: <==commonly_known== 56614 (neg)
                    (Pb_checked_p5)

                    ; #13701: <==commonly_known== 45973 (pos)
                    (Bc_checked_p5)

                    ; #14829: <==closure== 15574 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #15300: <==commonly_known== 45973 (pos)
                    (Ba_checked_p5)

                    ; #15574: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #45973: origin
                    (checked_p5)

                    ; #56511: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #62149: <==commonly_known== 56614 (neg)
                    (Pc_checked_p5)

                    ; #71319: <==commonly_known== 56614 (neg)
                    (Pa_checked_p5)

                    ; #86052: <==commonly_known== 45973 (pos)
                    (Bb_checked_p5)

                    ; #92228: <==closure== 56511 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #10488: <==negation-removal== 15574 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #11817: <==uncertain_firing== 14829 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #17456: <==negation-removal== 86052 (pos)
                    (not (Pb_not_checked_p5))

                    ; #19669: <==negation-removal== 12861 (pos)
                    (not (Bb_not_checked_p5))

                    ; #27933: <==negation-removal== 13701 (pos)
                    (not (Pc_not_checked_p5))

                    ; #31044: <==negation-removal== 14829 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #42197: <==uncertain_firing== 15574 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #44789: <==negation-removal== 92228 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #56614: <==negation-removal== 45973 (pos)
                    (not (not_checked_p5))

                    ; #58040: <==negation-removal== 62149 (pos)
                    (not (Bc_not_checked_p5))

                    ; #62240: <==uncertain_firing== 92228 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #63332: <==uncertain_firing== 56511 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #79543: <==negation-removal== 71319 (pos)
                    (not (Ba_not_checked_p5))

                    ; #81639: <==negation-removal== 15300 (pos)
                    (not (Pa_not_checked_p5))

                    ; #91327: <==negation-removal== 56511 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #20516: <==closure== 68437 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #35644: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #38981: <==commonly_known== 85785 (pos)
                    (Bc_checked_p6)

                    ; #43754: <==commonly_known== 85785 (pos)
                    (Ba_checked_p6)

                    ; #52305: <==commonly_known== 85785 (pos)
                    (Bb_checked_p6)

                    ; #60770: <==commonly_known== 73507 (neg)
                    (Pa_checked_p6)

                    ; #68437: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #74160: <==commonly_known== 73507 (neg)
                    (Pc_checked_p6)

                    ; #75296: <==commonly_known== 73507 (neg)
                    (Pb_checked_p6)

                    ; #76041: <==closure== 35644 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #85785: origin
                    (checked_p6)

                    ; #16980: <==negation-removal== 20516 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #23652: <==negation-removal== 74160 (pos)
                    (not (Bc_not_checked_p6))

                    ; #31925: <==negation-removal== 43754 (pos)
                    (not (Pa_not_checked_p6))

                    ; #34760: <==negation-removal== 38981 (pos)
                    (not (Pc_not_checked_p6))

                    ; #37944: <==uncertain_firing== 68437 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #45637: <==negation-removal== 68437 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #45901: <==uncertain_firing== 20516 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #48116: <==negation-removal== 75296 (pos)
                    (not (Bb_not_checked_p6))

                    ; #49990: <==uncertain_firing== 76041 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #53642: <==negation-removal== 76041 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #69452: <==uncertain_firing== 35644 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #69636: <==negation-removal== 60770 (pos)
                    (not (Ba_not_checked_p6))

                    ; #73473: <==negation-removal== 52305 (pos)
                    (not (Pb_not_checked_p6))

                    ; #73507: <==negation-removal== 85785 (pos)
                    (not (not_checked_p6))

                    ; #73578: <==negation-removal== 35644 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #12484: <==commonly_known== 26883 (neg)
                    (Pc_checked_p7)

                    ; #13683: <==commonly_known== 26883 (neg)
                    (Pb_checked_p7)

                    ; #14635: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #18283: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #36561: <==commonly_known== 51518 (pos)
                    (Bc_checked_p7)

                    ; #37196: <==commonly_known== 51518 (pos)
                    (Bb_checked_p7)

                    ; #51518: origin
                    (checked_p7)

                    ; #56773: <==closure== 18283 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #65347: <==commonly_known== 26883 (neg)
                    (Pa_checked_p7)

                    ; #71767: <==commonly_known== 51518 (pos)
                    (Ba_checked_p7)

                    ; #89810: <==closure== 14635 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #25728: <==negation-removal== 37196 (pos)
                    (not (Pb_not_checked_p7))

                    ; #26883: <==negation-removal== 51518 (pos)
                    (not (not_checked_p7))

                    ; #42847: <==negation-removal== 56773 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #53955: <==uncertain_firing== 56773 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #63747: <==uncertain_firing== 18283 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #64338: <==negation-removal== 71767 (pos)
                    (not (Pa_not_checked_p7))

                    ; #67337: <==negation-removal== 14635 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #69672: <==negation-removal== 36561 (pos)
                    (not (Pc_not_checked_p7))

                    ; #69838: <==negation-removal== 12484 (pos)
                    (not (Bc_not_checked_p7))

                    ; #70687: <==negation-removal== 18283 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #72724: <==uncertain_firing== 14635 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #78715: <==negation-removal== 65347 (pos)
                    (not (Ba_not_checked_p7))

                    ; #81302: <==uncertain_firing== 89810 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #84500: <==negation-removal== 13683 (pos)
                    (not (Bb_not_checked_p7))

                    ; #88917: <==negation-removal== 89810 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #15656: <==commonly_known== 71668 (pos)
                    (Bb_checked_p8)

                    ; #28477: <==closure== 64383 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #47348: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #47390: <==commonly_known== 87897 (neg)
                    (Pb_checked_p8)

                    ; #54653: <==commonly_known== 87897 (neg)
                    (Pa_checked_p8)

                    ; #55819: <==commonly_known== 87897 (neg)
                    (Pc_checked_p8)

                    ; #60856: <==closure== 47348 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #61083: <==commonly_known== 71668 (pos)
                    (Ba_checked_p8)

                    ; #64383: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #71668: origin
                    (checked_p8)

                    ; #89402: <==commonly_known== 71668 (pos)
                    (Bc_checked_p8)

                    ; #10077: <==negation-removal== 15656 (pos)
                    (not (Pb_not_checked_p8))

                    ; #17116: <==negation-removal== 61083 (pos)
                    (not (Pa_not_checked_p8))

                    ; #20839: <==negation-removal== 47348 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #23201: <==uncertain_firing== 28477 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #28836: <==negation-removal== 64383 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #39644: <==negation-removal== 55819 (pos)
                    (not (Bc_not_checked_p8))

                    ; #71084: <==negation-removal== 47390 (pos)
                    (not (Bb_not_checked_p8))

                    ; #75928: <==uncertain_firing== 64383 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #76596: <==negation-removal== 60856 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #78876: <==negation-removal== 54653 (pos)
                    (not (Ba_not_checked_p8))

                    ; #79203: <==uncertain_firing== 60856 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #83336: <==uncertain_firing== 47348 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #86183: <==negation-removal== 89402 (pos)
                    (not (Pc_not_checked_p8))

                    ; #86816: <==negation-removal== 28477 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #87897: <==negation-removal== 71668 (pos)
                    (not (not_checked_p8))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #21476: <==closure== 43915 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #29747: <==commonly_known== 87960 (pos)
                    (Ba_checked_p9)

                    ; #43343: <==closure== 61340 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #43915: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #50914: <==commonly_known== 89265 (neg)
                    (Pc_checked_p9)

                    ; #54438: <==commonly_known== 89265 (neg)
                    (Pa_checked_p9)

                    ; #54852: <==commonly_known== 89265 (neg)
                    (Pb_checked_p9)

                    ; #61340: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #71770: <==commonly_known== 87960 (pos)
                    (Bc_checked_p9)

                    ; #85347: <==commonly_known== 87960 (pos)
                    (Bb_checked_p9)

                    ; #87960: origin
                    (checked_p9)

                    ; #14811: <==negation-removal== 71770 (pos)
                    (not (Pc_not_checked_p9))

                    ; #22591: <==negation-removal== 85347 (pos)
                    (not (Pb_not_checked_p9))

                    ; #29057: <==uncertain_firing== 61340 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #30094: <==negation-removal== 54438 (pos)
                    (not (Ba_not_checked_p9))

                    ; #34779: <==negation-removal== 50914 (pos)
                    (not (Bc_not_checked_p9))

                    ; #40007: <==negation-removal== 61340 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #62707: <==negation-removal== 43343 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #67783: <==uncertain_firing== 21476 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #74878: <==uncertain_firing== 43343 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #76526: <==negation-removal== 43915 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #77079: <==negation-removal== 29747 (pos)
                    (not (Pa_not_checked_p9))

                    ; #79724: <==negation-removal== 54852 (pos)
                    (not (Bb_not_checked_p9))

                    ; #81525: <==negation-removal== 21476 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #82255: <==uncertain_firing== 43915 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #89265: <==negation-removal== 87960 (pos)
                    (not (not_checked_p9))))

    (:action observe_c_p10_s
        :precondition (and (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #13154: <==commonly_known== 78538 (pos)
                    (Ba_checked_p10)

                    ; #13381: <==closure== 19324 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #19324: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #22775: <==commonly_known== 55225 (neg)
                    (Pa_checked_p10)

                    ; #30772: <==commonly_known== 78538 (pos)
                    (Bc_checked_p10)

                    ; #39412: <==commonly_known== 55225 (neg)
                    (Pc_checked_p10)

                    ; #44239: <==closure== 55929 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #53563: <==commonly_known== 78538 (pos)
                    (Bb_checked_p10)

                    ; #55477: <==commonly_known== 55225 (neg)
                    (Pb_checked_p10)

                    ; #55929: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #78538: origin
                    (checked_p10)

                    ; #11094: <==negation-removal== 55477 (pos)
                    (not (Bb_not_checked_p10))

                    ; #25075: <==uncertain_firing== 44239 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #25375: <==negation-removal== 53563 (pos)
                    (not (Pb_not_checked_p10))

                    ; #53583: <==negation-removal== 39412 (pos)
                    (not (Bc_not_checked_p10))

                    ; #54322: <==negation-removal== 13381 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #55225: <==negation-removal== 78538 (pos)
                    (not (not_checked_p10))

                    ; #59220: <==negation-removal== 30772 (pos)
                    (not (Pc_not_checked_p10))

                    ; #61553: <==negation-removal== 55929 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #64023: <==negation-removal== 22775 (pos)
                    (not (Ba_not_checked_p10))

                    ; #64820: <==uncertain_firing== 55929 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #69613: <==negation-removal== 19324 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #69642: <==negation-removal== 44239 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #85348: <==uncertain_firing== 19324 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #86369: <==negation-removal== 13154 (pos)
                    (not (Pa_not_checked_p10))

                    ; #90102: <==uncertain_firing== 13381 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))))

    (:action observe_c_p11_s
        :precondition (and (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15236: origin
                    (checked_p11)

                    ; #22708: <==commonly_known== 86570 (neg)
                    (Pc_checked_p11)

                    ; #32194: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #35726: <==commonly_known== 15236 (pos)
                    (Bb_checked_p11)

                    ; #58452: <==closure== 68269 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #67574: <==commonly_known== 86570 (neg)
                    (Pb_checked_p11)

                    ; #68269: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #76931: <==commonly_known== 15236 (pos)
                    (Ba_checked_p11)

                    ; #80388: <==closure== 32194 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #88373: <==commonly_known== 15236 (pos)
                    (Bc_checked_p11)

                    ; #89671: <==commonly_known== 86570 (neg)
                    (Pa_checked_p11)

                    ; #13588: <==negation-removal== 32194 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #18394: <==uncertain_firing== 58452 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #19681: <==negation-removal== 88373 (pos)
                    (not (Pc_not_checked_p11))

                    ; #22833: <==uncertain_firing== 32194 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #26964: <==negation-removal== 68269 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #49400: <==negation-removal== 76931 (pos)
                    (not (Pa_not_checked_p11))

                    ; #59244: <==negation-removal== 67574 (pos)
                    (not (Bb_not_checked_p11))

                    ; #61894: <==uncertain_firing== 80388 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #63083: <==uncertain_firing== 68269 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #65464: <==negation-removal== 89671 (pos)
                    (not (Ba_not_checked_p11))

                    ; #66329: <==negation-removal== 58452 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #76329: <==negation-removal== 22708 (pos)
                    (not (Bc_not_checked_p11))

                    ; #86570: <==negation-removal== 15236 (pos)
                    (not (not_checked_p11))

                    ; #89465: <==negation-removal== 80388 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #91245: <==negation-removal== 35726 (pos)
                    (not (Pb_not_checked_p11))))

    (:action observe_c_p12_s
        :precondition (and (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #16421: <==commonly_known== 92146 (neg)
                    (Pa_checked_p12)

                    ; #34562: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #37917: <==commonly_known== 48014 (pos)
                    (Bb_checked_p12)

                    ; #37983: <==commonly_known== 92146 (neg)
                    (Pb_checked_p12)

                    ; #45599: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #46416: <==closure== 34562 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #48014: origin
                    (checked_p12)

                    ; #62479: <==commonly_known== 48014 (pos)
                    (Ba_checked_p12)

                    ; #67063: <==commonly_known== 92146 (neg)
                    (Pc_checked_p12)

                    ; #67428: <==commonly_known== 48014 (pos)
                    (Bc_checked_p12)

                    ; #70670: <==closure== 45599 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #17144: <==negation-removal== 67063 (pos)
                    (not (Bc_not_checked_p12))

                    ; #17583: <==negation-removal== 34562 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #23130: <==negation-removal== 67428 (pos)
                    (not (Pc_not_checked_p12))

                    ; #30273: <==negation-removal== 37917 (pos)
                    (not (Pb_not_checked_p12))

                    ; #36870: <==negation-removal== 70670 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #41100: <==negation-removal== 45599 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #42252: <==uncertain_firing== 34562 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #46350: <==negation-removal== 62479 (pos)
                    (not (Pa_not_checked_p12))

                    ; #51384: <==negation-removal== 46416 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #58766: <==uncertain_firing== 70670 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #76872: <==negation-removal== 16421 (pos)
                    (not (Ba_not_checked_p12))

                    ; #86385: <==uncertain_firing== 45599 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #88087: <==negation-removal== 37983 (pos)
                    (not (Bb_not_checked_p12))

                    ; #89036: <==uncertain_firing== 46416 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #92146: <==negation-removal== 48014 (pos)
                    (not (not_checked_p12))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10595: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #20499: <==commonly_known== 24038 (neg)
                    (Pc_checked_p1)

                    ; #21083: <==commonly_known== 60009 (pos)
                    (Bc_checked_p1)

                    ; #22196: <==commonly_known== 60009 (pos)
                    (Bb_checked_p1)

                    ; #36821: <==closure== 10595 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #42321: <==commonly_known== 60009 (pos)
                    (Ba_checked_p1)

                    ; #57938: <==commonly_known== 24038 (neg)
                    (Pb_checked_p1)

                    ; #60009: origin
                    (checked_p1)

                    ; #61271: <==commonly_known== 24038 (neg)
                    (Pa_checked_p1)

                    ; #69175: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #89952: <==closure== 69175 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #10427: <==negation-removal== 21083 (pos)
                    (not (Pc_not_checked_p1))

                    ; #12583: <==uncertain_firing== 69175 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #13398: <==negation-removal== 57938 (pos)
                    (not (Bb_not_checked_p1))

                    ; #13445: <==negation-removal== 22196 (pos)
                    (not (Pb_not_checked_p1))

                    ; #21398: <==negation-removal== 10595 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #24038: <==negation-removal== 60009 (pos)
                    (not (not_checked_p1))

                    ; #37231: <==negation-removal== 36821 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #46919: <==negation-removal== 69175 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #53167: <==uncertain_firing== 89952 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #54629: <==negation-removal== 61271 (pos)
                    (not (Ba_not_checked_p1))

                    ; #57814: <==negation-removal== 20499 (pos)
                    (not (Bc_not_checked_p1))

                    ; #60987: <==uncertain_firing== 10595 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #71588: <==uncertain_firing== 36821 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #76395: <==negation-removal== 89952 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #89831: <==negation-removal== 42321 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #13187: <==commonly_known== 46820 (pos)
                    (Ba_checked_p2)

                    ; #16924: <==commonly_known== 46820 (pos)
                    (Bc_checked_p2)

                    ; #33974: <==commonly_known== 27647 (neg)
                    (Pc_checked_p2)

                    ; #37052: <==commonly_known== 27647 (neg)
                    (Pa_checked_p2)

                    ; #46820: origin
                    (checked_p2)

                    ; #57838: <==closure== 83474 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #65245: <==commonly_known== 46820 (pos)
                    (Bb_checked_p2)

                    ; #70111: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #70661: <==commonly_known== 27647 (neg)
                    (Pb_checked_p2)

                    ; #83474: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #85423: <==closure== 70111 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #27647: <==negation-removal== 46820 (pos)
                    (not (not_checked_p2))

                    ; #40857: <==uncertain_firing== 85423 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #43981: <==negation-removal== 16924 (pos)
                    (not (Pc_not_checked_p2))

                    ; #48622: <==negation-removal== 70111 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #50442: <==negation-removal== 83474 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #57577: <==negation-removal== 85423 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #58265: <==negation-removal== 37052 (pos)
                    (not (Ba_not_checked_p2))

                    ; #61387: <==uncertain_firing== 57838 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #62239: <==negation-removal== 33974 (pos)
                    (not (Bc_not_checked_p2))

                    ; #65040: <==negation-removal== 57838 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #67634: <==negation-removal== 65245 (pos)
                    (not (Pb_not_checked_p2))

                    ; #74459: <==uncertain_firing== 83474 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #82386: <==negation-removal== 13187 (pos)
                    (not (Pa_not_checked_p2))

                    ; #85410: <==uncertain_firing== 70111 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #86872: <==negation-removal== 70661 (pos)
                    (not (Bb_not_checked_p2))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #12422: <==commonly_known== 85621 (pos)
                    (Bc_checked_p3)

                    ; #18099: <==commonly_known== 19379 (neg)
                    (Pa_checked_p3)

                    ; #19446: <==closure== 69952 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #52468: <==commonly_known== 19379 (neg)
                    (Pb_checked_p3)

                    ; #56944: <==commonly_known== 19379 (neg)
                    (Pc_checked_p3)

                    ; #58732: <==closure== 78009 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #59369: <==commonly_known== 85621 (pos)
                    (Bb_checked_p3)

                    ; #69952: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #78009: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #79095: <==commonly_known== 85621 (pos)
                    (Ba_checked_p3)

                    ; #85621: origin
                    (checked_p3)

                    ; #19379: <==negation-removal== 85621 (pos)
                    (not (not_checked_p3))

                    ; #27559: <==uncertain_firing== 78009 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #28742: <==uncertain_firing== 19446 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #35748: <==negation-removal== 78009 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #37433: <==negation-removal== 58732 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #39681: <==negation-removal== 52468 (pos)
                    (not (Bb_not_checked_p3))

                    ; #43217: <==negation-removal== 69952 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #43512: <==negation-removal== 18099 (pos)
                    (not (Ba_not_checked_p3))

                    ; #46537: <==negation-removal== 19446 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #47026: <==uncertain_firing== 58732 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #47953: <==uncertain_firing== 69952 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #49943: <==negation-removal== 59369 (pos)
                    (not (Pb_not_checked_p3))

                    ; #69419: <==negation-removal== 12422 (pos)
                    (not (Pc_not_checked_p3))

                    ; #75062: <==negation-removal== 56944 (pos)
                    (not (Bc_not_checked_p3))

                    ; #75562: <==negation-removal== 79095 (pos)
                    (not (Pa_not_checked_p3))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #11526: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #19621: <==closure== 29568 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #23914: <==commonly_known== 47107 (neg)
                    (Pa_checked_p4)

                    ; #29568: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #38848: origin
                    (checked_p4)

                    ; #44556: <==commonly_known== 47107 (neg)
                    (Pb_checked_p4)

                    ; #59535: <==commonly_known== 47107 (neg)
                    (Pc_checked_p4)

                    ; #68191: <==commonly_known== 38848 (pos)
                    (Ba_checked_p4)

                    ; #79863: <==closure== 11526 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #85677: <==commonly_known== 38848 (pos)
                    (Bb_checked_p4)

                    ; #89865: <==commonly_known== 38848 (pos)
                    (Bc_checked_p4)

                    ; #11616: <==negation-removal== 68191 (pos)
                    (not (Pa_not_checked_p4))

                    ; #12890: <==uncertain_firing== 19621 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #13235: <==negation-removal== 19621 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #21190: <==negation-removal== 44556 (pos)
                    (not (Bb_not_checked_p4))

                    ; #21575: <==negation-removal== 59535 (pos)
                    (not (Bc_not_checked_p4))

                    ; #27264: <==uncertain_firing== 29568 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #32277: <==negation-removal== 11526 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #38757: <==uncertain_firing== 11526 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #47107: <==negation-removal== 38848 (pos)
                    (not (not_checked_p4))

                    ; #58359: <==negation-removal== 89865 (pos)
                    (not (Pc_not_checked_p4))

                    ; #81161: <==uncertain_firing== 79863 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #85927: <==negation-removal== 79863 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #87795: <==negation-removal== 85677 (pos)
                    (not (Pb_not_checked_p4))

                    ; #90580: <==negation-removal== 23914 (pos)
                    (not (Ba_not_checked_p4))

                    ; #92208: <==negation-removal== 29568 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #12861: <==commonly_known== 56614 (neg)
                    (Pb_checked_p5)

                    ; #13701: <==commonly_known== 45973 (pos)
                    (Bc_checked_p5)

                    ; #15300: <==commonly_known== 45973 (pos)
                    (Ba_checked_p5)

                    ; #26978: <==closure== 66166 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #45973: origin
                    (checked_p5)

                    ; #62149: <==commonly_known== 56614 (neg)
                    (Pc_checked_p5)

                    ; #64331: <==closure== 83114 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #66166: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #71319: <==commonly_known== 56614 (neg)
                    (Pa_checked_p5)

                    ; #83114: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #86052: <==commonly_known== 45973 (pos)
                    (Bb_checked_p5)

                    ; #17456: <==negation-removal== 86052 (pos)
                    (not (Pb_not_checked_p5))

                    ; #19669: <==negation-removal== 12861 (pos)
                    (not (Bb_not_checked_p5))

                    ; #27933: <==negation-removal== 13701 (pos)
                    (not (Pc_not_checked_p5))

                    ; #31294: <==negation-removal== 26978 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #37477: <==uncertain_firing== 66166 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #45916: <==uncertain_firing== 64331 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #47247: <==negation-removal== 66166 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #47917: <==negation-removal== 83114 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #56614: <==negation-removal== 45973 (pos)
                    (not (not_checked_p5))

                    ; #58040: <==negation-removal== 62149 (pos)
                    (not (Bc_not_checked_p5))

                    ; #58641: <==uncertain_firing== 83114 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #79543: <==negation-removal== 71319 (pos)
                    (not (Ba_not_checked_p5))

                    ; #81639: <==negation-removal== 15300 (pos)
                    (not (Pa_not_checked_p5))

                    ; #82280: <==uncertain_firing== 26978 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #82616: <==negation-removal== 64331 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #15066: <==closure== 74184 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #16167: <==closure== 43946 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #38981: <==commonly_known== 85785 (pos)
                    (Bc_checked_p6)

                    ; #43754: <==commonly_known== 85785 (pos)
                    (Ba_checked_p6)

                    ; #43946: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #52305: <==commonly_known== 85785 (pos)
                    (Bb_checked_p6)

                    ; #60770: <==commonly_known== 73507 (neg)
                    (Pa_checked_p6)

                    ; #74160: <==commonly_known== 73507 (neg)
                    (Pc_checked_p6)

                    ; #74184: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #75296: <==commonly_known== 73507 (neg)
                    (Pb_checked_p6)

                    ; #85785: origin
                    (checked_p6)

                    ; #23652: <==negation-removal== 74160 (pos)
                    (not (Bc_not_checked_p6))

                    ; #29792: <==uncertain_firing== 16167 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #31925: <==negation-removal== 43754 (pos)
                    (not (Pa_not_checked_p6))

                    ; #34760: <==negation-removal== 38981 (pos)
                    (not (Pc_not_checked_p6))

                    ; #46022: <==negation-removal== 74184 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #48116: <==negation-removal== 75296 (pos)
                    (not (Bb_not_checked_p6))

                    ; #59989: <==uncertain_firing== 43946 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #64942: <==negation-removal== 15066 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #69636: <==negation-removal== 60770 (pos)
                    (not (Ba_not_checked_p6))

                    ; #72129: <==negation-removal== 16167 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #73473: <==negation-removal== 52305 (pos)
                    (not (Pb_not_checked_p6))

                    ; #73507: <==negation-removal== 85785 (pos)
                    (not (not_checked_p6))

                    ; #75391: <==negation-removal== 43946 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #76406: <==uncertain_firing== 15066 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #79984: <==uncertain_firing== 74184 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #12484: <==commonly_known== 26883 (neg)
                    (Pc_checked_p7)

                    ; #13683: <==commonly_known== 26883 (neg)
                    (Pb_checked_p7)

                    ; #36561: <==commonly_known== 51518 (pos)
                    (Bc_checked_p7)

                    ; #37196: <==commonly_known== 51518 (pos)
                    (Bb_checked_p7)

                    ; #51518: origin
                    (checked_p7)

                    ; #51629: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #65347: <==commonly_known== 26883 (neg)
                    (Pa_checked_p7)

                    ; #71767: <==commonly_known== 51518 (pos)
                    (Ba_checked_p7)

                    ; #86077: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #87229: <==closure== 86077 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #90223: <==closure== 51629 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #18818: <==uncertain_firing== 51629 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #22259: <==negation-removal== 86077 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #25728: <==negation-removal== 37196 (pos)
                    (not (Pb_not_checked_p7))

                    ; #26883: <==negation-removal== 51518 (pos)
                    (not (not_checked_p7))

                    ; #33020: <==negation-removal== 51629 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #35957: <==uncertain_firing== 90223 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #43735: <==negation-removal== 90223 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #64338: <==negation-removal== 71767 (pos)
                    (not (Pa_not_checked_p7))

                    ; #69672: <==negation-removal== 36561 (pos)
                    (not (Pc_not_checked_p7))

                    ; #69838: <==negation-removal== 12484 (pos)
                    (not (Bc_not_checked_p7))

                    ; #73928: <==negation-removal== 87229 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #78715: <==negation-removal== 65347 (pos)
                    (not (Ba_not_checked_p7))

                    ; #84500: <==negation-removal== 13683 (pos)
                    (not (Bb_not_checked_p7))

                    ; #88495: <==uncertain_firing== 86077 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #89718: <==uncertain_firing== 87229 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #15656: <==commonly_known== 71668 (pos)
                    (Bb_checked_p8)

                    ; #23017: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #31411: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #35201: <==closure== 23017 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #47390: <==commonly_known== 87897 (neg)
                    (Pb_checked_p8)

                    ; #54653: <==commonly_known== 87897 (neg)
                    (Pa_checked_p8)

                    ; #55819: <==commonly_known== 87897 (neg)
                    (Pc_checked_p8)

                    ; #61083: <==commonly_known== 71668 (pos)
                    (Ba_checked_p8)

                    ; #71668: origin
                    (checked_p8)

                    ; #78849: <==closure== 31411 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #89402: <==commonly_known== 71668 (pos)
                    (Bc_checked_p8)

                    ; #10077: <==negation-removal== 15656 (pos)
                    (not (Pb_not_checked_p8))

                    ; #11580: <==negation-removal== 31411 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #16576: <==uncertain_firing== 23017 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #17116: <==negation-removal== 61083 (pos)
                    (not (Pa_not_checked_p8))

                    ; #23712: <==uncertain_firing== 35201 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #25897: <==negation-removal== 78849 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #39498: <==negation-removal== 35201 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #39644: <==negation-removal== 55819 (pos)
                    (not (Bc_not_checked_p8))

                    ; #53278: <==uncertain_firing== 31411 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #61202: <==negation-removal== 23017 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #71084: <==negation-removal== 47390 (pos)
                    (not (Bb_not_checked_p8))

                    ; #78876: <==negation-removal== 54653 (pos)
                    (not (Ba_not_checked_p8))

                    ; #81628: <==uncertain_firing== 78849 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #86183: <==negation-removal== 89402 (pos)
                    (not (Pc_not_checked_p8))

                    ; #87897: <==negation-removal== 71668 (pos)
                    (not (not_checked_p8))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #15092: <==closure== 76875 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #29747: <==commonly_known== 87960 (pos)
                    (Ba_checked_p9)

                    ; #30672: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #50914: <==commonly_known== 89265 (neg)
                    (Pc_checked_p9)

                    ; #52943: <==closure== 30672 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #54438: <==commonly_known== 89265 (neg)
                    (Pa_checked_p9)

                    ; #54852: <==commonly_known== 89265 (neg)
                    (Pb_checked_p9)

                    ; #71770: <==commonly_known== 87960 (pos)
                    (Bc_checked_p9)

                    ; #76875: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #85347: <==commonly_known== 87960 (pos)
                    (Bb_checked_p9)

                    ; #87960: origin
                    (checked_p9)

                    ; #14811: <==negation-removal== 71770 (pos)
                    (not (Pc_not_checked_p9))

                    ; #22591: <==negation-removal== 85347 (pos)
                    (not (Pb_not_checked_p9))

                    ; #24228: <==uncertain_firing== 76875 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #29946: <==uncertain_firing== 15092 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #30094: <==negation-removal== 54438 (pos)
                    (not (Ba_not_checked_p9))

                    ; #34779: <==negation-removal== 50914 (pos)
                    (not (Bc_not_checked_p9))

                    ; #35641: <==negation-removal== 15092 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #37625: <==uncertain_firing== 52943 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #40710: <==negation-removal== 30672 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #54074: <==negation-removal== 76875 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #71893: <==uncertain_firing== 30672 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #77079: <==negation-removal== 29747 (pos)
                    (not (Pa_not_checked_p9))

                    ; #79724: <==negation-removal== 54852 (pos)
                    (not (Bb_not_checked_p9))

                    ; #89265: <==negation-removal== 87960 (pos)
                    (not (not_checked_p9))

                    ; #91461: <==negation-removal== 52943 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))))

)