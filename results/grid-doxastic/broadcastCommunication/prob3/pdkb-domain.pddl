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
                           (Ba_survivorat_s_p10)
                           (leader_a)
                           (at_a_p10))
        :effect (and
                    ; #43042: <==closure== 60959 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #60959: origin
                    (Ba_not_survivorat_s_p10)

                    ; #49444: <==negation-removal== 43042 (pos)
                    (not (Ba_survivorat_s_p10))

                    ; #91211: <==negation-removal== 60959 (pos)
                    (not (Pa_survivorat_s_p10))))

    (:action badcomm_p10_a_b_s
        :precondition (and (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10)
                           (at_a_p10)
                           (leader_b))
        :effect (and
                    ; #46887: <==closure== 81731 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #81731: origin
                    (Bb_not_survivorat_s_p10)

                    ; #20904: <==negation-removal== 81731 (pos)
                    (not (Pb_survivorat_s_p10))

                    ; #55337: <==negation-removal== 46887 (pos)
                    (not (Bb_survivorat_s_p10))))

    (:action badcomm_p10_a_c_s
        :precondition (and (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10)
                           (leader_c)
                           (at_a_p10))
        :effect (and
                    ; #41934: origin
                    (Bc_not_survivorat_s_p10)

                    ; #71546: <==closure== 41934 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #41523: <==negation-removal== 41934 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #59078: <==negation-removal== 71546 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p10_b_a_s
        :precondition (and (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10)
                           (leader_a)
                           (at_b_p10))
        :effect (and
                    ; #43042: <==closure== 60959 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #60959: origin
                    (Ba_not_survivorat_s_p10)

                    ; #49444: <==negation-removal== 43042 (pos)
                    (not (Ba_survivorat_s_p10))

                    ; #91211: <==negation-removal== 60959 (pos)
                    (not (Pa_survivorat_s_p10))))

    (:action badcomm_p10_b_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_b))
        :effect (and
                    ; #46887: <==closure== 81731 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #81731: origin
                    (Bb_not_survivorat_s_p10)

                    ; #20904: <==negation-removal== 81731 (pos)
                    (not (Pb_survivorat_s_p10))

                    ; #55337: <==negation-removal== 46887 (pos)
                    (not (Bb_survivorat_s_p10))))

    (:action badcomm_p10_b_c_s
        :precondition (and (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10)
                           (leader_c)
                           (at_b_p10))
        :effect (and
                    ; #41934: origin
                    (Bc_not_survivorat_s_p10)

                    ; #71546: <==closure== 41934 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #41523: <==negation-removal== 41934 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #59078: <==negation-removal== 71546 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p10_c_a_s
        :precondition (and (Pc_survivorat_s_p10)
                           (leader_a)
                           (Bc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #43042: <==closure== 60959 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #60959: origin
                    (Ba_not_survivorat_s_p10)

                    ; #49444: <==negation-removal== 43042 (pos)
                    (not (Ba_survivorat_s_p10))

                    ; #91211: <==negation-removal== 60959 (pos)
                    (not (Pa_survivorat_s_p10))))

    (:action badcomm_p10_c_b_s
        :precondition (and (Pc_survivorat_s_p10)
                           (leader_b)
                           (Bc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #46887: <==closure== 81731 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #81731: origin
                    (Bb_not_survivorat_s_p10)

                    ; #20904: <==negation-removal== 81731 (pos)
                    (not (Pb_survivorat_s_p10))

                    ; #55337: <==negation-removal== 46887 (pos)
                    (not (Bb_survivorat_s_p10))))

    (:action badcomm_p10_c_c_s
        :precondition (and (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (leader_c)
                           (at_c_p10))
        :effect (and
                    ; #41934: origin
                    (Bc_not_survivorat_s_p10)

                    ; #71546: <==closure== 41934 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #41523: <==negation-removal== 41934 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #59078: <==negation-removal== 71546 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p11_a_a_s
        :precondition (and (Pa_survivorat_s_p11)
                           (leader_a)
                           (Ba_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #35156: origin
                    (Ba_not_survivorat_s_p11)

                    ; #90914: <==closure== 35156 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #24005: <==negation-removal== 35156 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #31536: <==negation-removal== 90914 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_a_b_s
        :precondition (and (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (leader_b))
        :effect (and
                    ; #27976: <==closure== 68600 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #68600: origin
                    (Bb_not_survivorat_s_p11)

                    ; #22783: <==negation-removal== 27976 (pos)
                    (not (Bb_survivorat_s_p11))

                    ; #86121: <==negation-removal== 68600 (pos)
                    (not (Pb_survivorat_s_p11))))

    (:action badcomm_p11_a_c_s
        :precondition (and (Pa_survivorat_s_p11)
                           (leader_c)
                           (Ba_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #28049: <==closure== 57557 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #57557: origin
                    (Bc_not_survivorat_s_p11)

                    ; #20934: <==negation-removal== 28049 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #61140: <==negation-removal== 57557 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #35156: origin
                    (Ba_not_survivorat_s_p11)

                    ; #90914: <==closure== 35156 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #24005: <==negation-removal== 35156 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #31536: <==negation-removal== 90914 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #27976: <==closure== 68600 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #68600: origin
                    (Bb_not_survivorat_s_p11)

                    ; #22783: <==negation-removal== 27976 (pos)
                    (not (Bb_survivorat_s_p11))

                    ; #86121: <==negation-removal== 68600 (pos)
                    (not (Pb_survivorat_s_p11))))

    (:action badcomm_p11_b_c_s
        :precondition (and (Bb_survivorat_s_p11)
                           (leader_c)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #28049: <==closure== 57557 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #57557: origin
                    (Bc_not_survivorat_s_p11)

                    ; #20934: <==negation-removal== 28049 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #61140: <==negation-removal== 57557 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_c_a_s
        :precondition (and (Bc_survivorat_s_p11)
                           (leader_a)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #35156: origin
                    (Ba_not_survivorat_s_p11)

                    ; #90914: <==closure== 35156 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #24005: <==negation-removal== 35156 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #31536: <==negation-removal== 90914 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_c_b_s
        :precondition (and (Bc_survivorat_s_p11)
                           (leader_b)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #27976: <==closure== 68600 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #68600: origin
                    (Bb_not_survivorat_s_p11)

                    ; #22783: <==negation-removal== 27976 (pos)
                    (not (Bb_survivorat_s_p11))

                    ; #86121: <==negation-removal== 68600 (pos)
                    (not (Pb_survivorat_s_p11))))

    (:action badcomm_p11_c_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (leader_c)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #28049: <==closure== 57557 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #57557: origin
                    (Bc_not_survivorat_s_p11)

                    ; #20934: <==negation-removal== 28049 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #61140: <==negation-removal== 57557 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p12_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #25340: origin
                    (Ba_not_survivorat_s_p12)

                    ; #25805: <==closure== 25340 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #84491: <==negation-removal== 25340 (pos)
                    (not (Pa_survivorat_s_p12))

                    ; #84581: <==negation-removal== 25805 (pos)
                    (not (Ba_survivorat_s_p12))))

    (:action badcomm_p12_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #25668: <==closure== 26019 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #26019: origin
                    (Bb_not_survivorat_s_p12)

                    ; #61597: <==negation-removal== 25668 (pos)
                    (not (Bb_survivorat_s_p12))

                    ; #91314: <==negation-removal== 26019 (pos)
                    (not (Pb_survivorat_s_p12))))

    (:action badcomm_p12_a_c_s
        :precondition (and (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (leader_c)
                           (at_a_p12))
        :effect (and
                    ; #27096: origin
                    (Bc_not_survivorat_s_p12)

                    ; #39357: <==closure== 27096 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #45905: <==negation-removal== 39357 (pos)
                    (not (Bc_survivorat_s_p12))

                    ; #63264: <==negation-removal== 27096 (pos)
                    (not (Pc_survivorat_s_p12))))

    (:action badcomm_p12_b_a_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #25340: origin
                    (Ba_not_survivorat_s_p12)

                    ; #25805: <==closure== 25340 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #84491: <==negation-removal== 25340 (pos)
                    (not (Pa_survivorat_s_p12))

                    ; #84581: <==negation-removal== 25805 (pos)
                    (not (Ba_survivorat_s_p12))))

    (:action badcomm_p12_b_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #25668: <==closure== 26019 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #26019: origin
                    (Bb_not_survivorat_s_p12)

                    ; #61597: <==negation-removal== 25668 (pos)
                    (not (Bb_survivorat_s_p12))

                    ; #91314: <==negation-removal== 26019 (pos)
                    (not (Pb_survivorat_s_p12))))

    (:action badcomm_p12_b_c_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #27096: origin
                    (Bc_not_survivorat_s_p12)

                    ; #39357: <==closure== 27096 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #45905: <==negation-removal== 39357 (pos)
                    (not (Bc_survivorat_s_p12))

                    ; #63264: <==negation-removal== 27096 (pos)
                    (not (Pc_survivorat_s_p12))))

    (:action badcomm_p12_c_a_s
        :precondition (and (Bc_survivorat_s_p12)
                           (leader_a)
                           (at_c_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #25340: origin
                    (Ba_not_survivorat_s_p12)

                    ; #25805: <==closure== 25340 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #84491: <==negation-removal== 25340 (pos)
                    (not (Pa_survivorat_s_p12))

                    ; #84581: <==negation-removal== 25805 (pos)
                    (not (Ba_survivorat_s_p12))))

    (:action badcomm_p12_c_b_s
        :precondition (and (Bc_survivorat_s_p12)
                           (leader_b)
                           (at_c_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #25668: <==closure== 26019 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #26019: origin
                    (Bb_not_survivorat_s_p12)

                    ; #61597: <==negation-removal== 25668 (pos)
                    (not (Bb_survivorat_s_p12))

                    ; #91314: <==negation-removal== 26019 (pos)
                    (not (Pb_survivorat_s_p12))))

    (:action badcomm_p12_c_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #27096: origin
                    (Bc_not_survivorat_s_p12)

                    ; #39357: <==closure== 27096 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #45905: <==negation-removal== 39357 (pos)
                    (not (Bc_survivorat_s_p12))

                    ; #63264: <==negation-removal== 27096 (pos)
                    (not (Pc_survivorat_s_p12))))

    (:action badcomm_p1_a_a_s
        :precondition (and (leader_a)
                           (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #25659: origin
                    (Ba_not_survivorat_s_p1)

                    ; #49732: <==closure== 25659 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #56176: <==negation-removal== 25659 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #70548: <==negation-removal== 49732 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_a_b_s
        :precondition (and (leader_b)
                           (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #44638: <==closure== 64642 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #64642: origin
                    (Bb_not_survivorat_s_p1)

                    ; #79484: <==negation-removal== 44638 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #79505: <==negation-removal== 64642 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_a_c_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #23662: <==closure== 54929 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #54929: origin
                    (Bc_not_survivorat_s_p1)

                    ; #23230: <==negation-removal== 54929 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #68944: <==negation-removal== 23662 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #25659: origin
                    (Ba_not_survivorat_s_p1)

                    ; #49732: <==closure== 25659 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #56176: <==negation-removal== 25659 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #70548: <==negation-removal== 49732 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #44638: <==closure== 64642 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #64642: origin
                    (Bb_not_survivorat_s_p1)

                    ; #79484: <==negation-removal== 44638 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #79505: <==negation-removal== 64642 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_b_c_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (leader_c))
        :effect (and
                    ; #23662: <==closure== 54929 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #54929: origin
                    (Bc_not_survivorat_s_p1)

                    ; #23230: <==negation-removal== 54929 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #68944: <==negation-removal== 23662 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_c_a_s
        :precondition (and (leader_a)
                           (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #25659: origin
                    (Ba_not_survivorat_s_p1)

                    ; #49732: <==closure== 25659 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #56176: <==negation-removal== 25659 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #70548: <==negation-removal== 49732 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_c_b_s
        :precondition (and (leader_b)
                           (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #44638: <==closure== 64642 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #64642: origin
                    (Bb_not_survivorat_s_p1)

                    ; #79484: <==negation-removal== 44638 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #79505: <==negation-removal== 64642 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_c_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_c)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #23662: <==closure== 54929 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #54929: origin
                    (Bc_not_survivorat_s_p1)

                    ; #23230: <==negation-removal== 54929 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #68944: <==negation-removal== 23662 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p2_a_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (leader_a)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #26673: origin
                    (Ba_not_survivorat_s_p2)

                    ; #51163: <==closure== 26673 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #46127: <==negation-removal== 26673 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #82541: <==negation-removal== 51163 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_a_b_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (leader_b)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #34665: <==closure== 45071 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #45071: origin
                    (Bb_not_survivorat_s_p2)

                    ; #76423: <==negation-removal== 45071 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #78654: <==negation-removal== 34665 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_a_c_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (leader_c)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #23356: <==closure== 53060 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #53060: origin
                    (Bc_not_survivorat_s_p2)

                    ; #69404: <==negation-removal== 53060 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #92746: <==negation-removal== 23356 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_b_a_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_a))
        :effect (and
                    ; #26673: origin
                    (Ba_not_survivorat_s_p2)

                    ; #51163: <==closure== 26673 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #46127: <==negation-removal== 26673 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #82541: <==negation-removal== 51163 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_b_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_b))
        :effect (and
                    ; #34665: <==closure== 45071 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #45071: origin
                    (Bb_not_survivorat_s_p2)

                    ; #76423: <==negation-removal== 45071 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #78654: <==negation-removal== 34665 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_b_c_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_c))
        :effect (and
                    ; #23356: <==closure== 53060 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #53060: origin
                    (Bc_not_survivorat_s_p2)

                    ; #69404: <==negation-removal== 53060 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #92746: <==negation-removal== 23356 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_c_a_s
        :precondition (and (Pc_survivorat_s_p2)
                           (leader_a)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #26673: origin
                    (Ba_not_survivorat_s_p2)

                    ; #51163: <==closure== 26673 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #46127: <==negation-removal== 26673 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #82541: <==negation-removal== 51163 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_c_b_s
        :precondition (and (Pc_survivorat_s_p2)
                           (leader_b)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #34665: <==closure== 45071 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #45071: origin
                    (Bb_not_survivorat_s_p2)

                    ; #76423: <==negation-removal== 45071 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #78654: <==negation-removal== 34665 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_c_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (leader_c)
                           (at_c_p2))
        :effect (and
                    ; #23356: <==closure== 53060 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #53060: origin
                    (Bc_not_survivorat_s_p2)

                    ; #69404: <==negation-removal== 53060 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #92746: <==negation-removal== 23356 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p3_a_a_s
        :precondition (and (leader_a)
                           (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #18498: <==closure== 72474 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #72474: origin
                    (Ba_not_survivorat_s_p3)

                    ; #41925: <==negation-removal== 18498 (pos)
                    (not (Ba_survivorat_s_p3))

                    ; #49607: <==negation-removal== 72474 (pos)
                    (not (Pa_survivorat_s_p3))))

    (:action badcomm_p3_a_b_s
        :precondition (and (leader_b)
                           (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #39718: <==closure== 66391 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #66391: origin
                    (Bb_not_survivorat_s_p3)

                    ; #18641: <==negation-removal== 66391 (pos)
                    (not (Pb_survivorat_s_p3))

                    ; #32520: <==negation-removal== 39718 (pos)
                    (not (Bb_survivorat_s_p3))))

    (:action badcomm_p3_a_c_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_c)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #73115: <==closure== 88889 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #88889: origin
                    (Bc_not_survivorat_s_p3)

                    ; #40984: <==negation-removal== 73115 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #70813: <==negation-removal== 88889 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_b_a_s
        :precondition (and (at_b_p3)
                           (leader_a)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #18498: <==closure== 72474 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #72474: origin
                    (Ba_not_survivorat_s_p3)

                    ; #41925: <==negation-removal== 18498 (pos)
                    (not (Ba_survivorat_s_p3))

                    ; #49607: <==negation-removal== 72474 (pos)
                    (not (Pa_survivorat_s_p3))))

    (:action badcomm_p3_b_b_s
        :precondition (and (at_b_p3)
                           (leader_b)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #39718: <==closure== 66391 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #66391: origin
                    (Bb_not_survivorat_s_p3)

                    ; #18641: <==negation-removal== 66391 (pos)
                    (not (Pb_survivorat_s_p3))

                    ; #32520: <==negation-removal== 39718 (pos)
                    (not (Bb_survivorat_s_p3))))

    (:action badcomm_p3_b_c_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (leader_c)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #73115: <==closure== 88889 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #88889: origin
                    (Bc_not_survivorat_s_p3)

                    ; #40984: <==negation-removal== 73115 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #70813: <==negation-removal== 88889 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_c_a_s
        :precondition (and (leader_a)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #18498: <==closure== 72474 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #72474: origin
                    (Ba_not_survivorat_s_p3)

                    ; #41925: <==negation-removal== 18498 (pos)
                    (not (Ba_survivorat_s_p3))

                    ; #49607: <==negation-removal== 72474 (pos)
                    (not (Pa_survivorat_s_p3))))

    (:action badcomm_p3_c_b_s
        :precondition (and (leader_b)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #39718: <==closure== 66391 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #66391: origin
                    (Bb_not_survivorat_s_p3)

                    ; #18641: <==negation-removal== 66391 (pos)
                    (not (Pb_survivorat_s_p3))

                    ; #32520: <==negation-removal== 39718 (pos)
                    (not (Bb_survivorat_s_p3))))

    (:action badcomm_p3_c_c_s
        :precondition (and (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_c)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #73115: <==closure== 88889 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #88889: origin
                    (Bc_not_survivorat_s_p3)

                    ; #40984: <==negation-removal== 73115 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #70813: <==negation-removal== 88889 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p4_a_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (leader_a))
        :effect (and
                    ; #55366: <==closure== 84841 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #84841: origin
                    (Ba_not_survivorat_s_p4)

                    ; #23045: <==negation-removal== 84841 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #27207: <==negation-removal== 55366 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_a_b_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (leader_b))
        :effect (and
                    ; #40034: <==closure== 77335 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #77335: origin
                    (Bb_not_survivorat_s_p4)

                    ; #76036: <==negation-removal== 40034 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #86040: <==negation-removal== 77335 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_a_c_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (leader_c))
        :effect (and
                    ; #25715: origin
                    (Bc_not_survivorat_s_p4)

                    ; #72497: <==closure== 25715 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #56375: <==negation-removal== 25715 (pos)
                    (not (Pc_survivorat_s_p4))

                    ; #65675: <==negation-removal== 72497 (pos)
                    (not (Bc_survivorat_s_p4))))

    (:action badcomm_p4_b_a_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_a)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #55366: <==closure== 84841 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #84841: origin
                    (Ba_not_survivorat_s_p4)

                    ; #23045: <==negation-removal== 84841 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #27207: <==negation-removal== 55366 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_b_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #40034: <==closure== 77335 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #77335: origin
                    (Bb_not_survivorat_s_p4)

                    ; #76036: <==negation-removal== 40034 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #86040: <==negation-removal== 77335 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_b_c_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_c)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #25715: origin
                    (Bc_not_survivorat_s_p4)

                    ; #72497: <==closure== 25715 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #56375: <==negation-removal== 25715 (pos)
                    (not (Pc_survivorat_s_p4))

                    ; #65675: <==negation-removal== 72497 (pos)
                    (not (Bc_survivorat_s_p4))))

    (:action badcomm_p4_c_a_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (leader_a)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #55366: <==closure== 84841 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #84841: origin
                    (Ba_not_survivorat_s_p4)

                    ; #23045: <==negation-removal== 84841 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #27207: <==negation-removal== 55366 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_c_b_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (leader_b)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #40034: <==closure== 77335 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #77335: origin
                    (Bb_not_survivorat_s_p4)

                    ; #76036: <==negation-removal== 40034 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #86040: <==negation-removal== 77335 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_c_c_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (leader_c)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #25715: origin
                    (Bc_not_survivorat_s_p4)

                    ; #72497: <==closure== 25715 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #56375: <==negation-removal== 25715 (pos)
                    (not (Pc_survivorat_s_p4))

                    ; #65675: <==negation-removal== 72497 (pos)
                    (not (Bc_survivorat_s_p4))))

    (:action badcomm_p5_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #14436: <==closure== 89091 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #89091: origin
                    (Ba_not_survivorat_s_p5)

                    ; #24411: <==negation-removal== 14436 (pos)
                    (not (Ba_survivorat_s_p5))

                    ; #75877: <==negation-removal== 89091 (pos)
                    (not (Pa_survivorat_s_p5))))

    (:action badcomm_p5_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #38434: <==closure== 78442 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #78442: origin
                    (Bb_not_survivorat_s_p5)

                    ; #27233: <==negation-removal== 38434 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #64030: <==negation-removal== 78442 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_a_c_s
        :precondition (and (Pa_survivorat_s_p5)
                           (leader_c)
                           (Ba_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #30617: <==closure== 59089 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #59089: origin
                    (Bc_not_survivorat_s_p5)

                    ; #14991: <==negation-removal== 30617 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #72546: <==negation-removal== 59089 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p5_b_a_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_a)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #14436: <==closure== 89091 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #89091: origin
                    (Ba_not_survivorat_s_p5)

                    ; #24411: <==negation-removal== 14436 (pos)
                    (not (Ba_survivorat_s_p5))

                    ; #75877: <==negation-removal== 89091 (pos)
                    (not (Pa_survivorat_s_p5))))

    (:action badcomm_p5_b_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_b)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #38434: <==closure== 78442 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #78442: origin
                    (Bb_not_survivorat_s_p5)

                    ; #27233: <==negation-removal== 38434 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #64030: <==negation-removal== 78442 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_b_c_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (leader_c)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #30617: <==closure== 59089 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #59089: origin
                    (Bc_not_survivorat_s_p5)

                    ; #14991: <==negation-removal== 30617 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #72546: <==negation-removal== 59089 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p5_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #14436: <==closure== 89091 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #89091: origin
                    (Ba_not_survivorat_s_p5)

                    ; #24411: <==negation-removal== 14436 (pos)
                    (not (Ba_survivorat_s_p5))

                    ; #75877: <==negation-removal== 89091 (pos)
                    (not (Pa_survivorat_s_p5))))

    (:action badcomm_p5_c_b_s
        :precondition (and (leader_b)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #38434: <==closure== 78442 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #78442: origin
                    (Bb_not_survivorat_s_p5)

                    ; #27233: <==negation-removal== 38434 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #64030: <==negation-removal== 78442 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_c_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (leader_c)
                           (at_c_p5))
        :effect (and
                    ; #30617: <==closure== 59089 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #59089: origin
                    (Bc_not_survivorat_s_p5)

                    ; #14991: <==negation-removal== 30617 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #72546: <==negation-removal== 59089 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p6_a_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (leader_a))
        :effect (and
                    ; #41391: <==closure== 68498 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #68498: origin
                    (Ba_not_survivorat_s_p6)

                    ; #47649: <==negation-removal== 68498 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #53981: <==negation-removal== 41391 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_a_b_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (leader_b))
        :effect (and
                    ; #55377: origin
                    (Bb_not_survivorat_s_p6)

                    ; #60281: <==closure== 55377 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #19964: <==negation-removal== 60281 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #53012: <==negation-removal== 55377 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_a_c_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (leader_c))
        :effect (and
                    ; #40508: origin
                    (Bc_not_survivorat_s_p6)

                    ; #90468: <==closure== 40508 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #41896: <==negation-removal== 40508 (pos)
                    (not (Pc_survivorat_s_p6))

                    ; #71720: <==negation-removal== 90468 (pos)
                    (not (Bc_survivorat_s_p6))))

    (:action badcomm_p6_b_a_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (leader_a)
                           (at_b_p6))
        :effect (and
                    ; #41391: <==closure== 68498 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #68498: origin
                    (Ba_not_survivorat_s_p6)

                    ; #47649: <==negation-removal== 68498 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #53981: <==negation-removal== 41391 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_b_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (leader_b))
        :effect (and
                    ; #55377: origin
                    (Bb_not_survivorat_s_p6)

                    ; #60281: <==closure== 55377 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #19964: <==negation-removal== 60281 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #53012: <==negation-removal== 55377 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_b_c_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (leader_c)
                           (at_b_p6))
        :effect (and
                    ; #40508: origin
                    (Bc_not_survivorat_s_p6)

                    ; #90468: <==closure== 40508 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #41896: <==negation-removal== 40508 (pos)
                    (not (Pc_survivorat_s_p6))

                    ; #71720: <==negation-removal== 90468 (pos)
                    (not (Bc_survivorat_s_p6))))

    (:action badcomm_p6_c_a_s
        :precondition (and (leader_a)
                           (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #41391: <==closure== 68498 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #68498: origin
                    (Ba_not_survivorat_s_p6)

                    ; #47649: <==negation-removal== 68498 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #53981: <==negation-removal== 41391 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_c_b_s
        :precondition (and (leader_b)
                           (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #55377: origin
                    (Bb_not_survivorat_s_p6)

                    ; #60281: <==closure== 55377 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #19964: <==negation-removal== 60281 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #53012: <==negation-removal== 55377 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_c_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #40508: origin
                    (Bc_not_survivorat_s_p6)

                    ; #90468: <==closure== 40508 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #41896: <==negation-removal== 40508 (pos)
                    (not (Pc_survivorat_s_p6))

                    ; #71720: <==negation-removal== 90468 (pos)
                    (not (Bc_survivorat_s_p6))))

    (:action badcomm_p7_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #25051: <==closure== 44405 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #44405: origin
                    (Ba_not_survivorat_s_p7)

                    ; #46957: <==negation-removal== 44405 (pos)
                    (not (Pa_survivorat_s_p7))

                    ; #48849: <==negation-removal== 25051 (pos)
                    (not (Ba_survivorat_s_p7))))

    (:action badcomm_p7_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #54607: origin
                    (Bb_not_survivorat_s_p7)

                    ; #66468: <==closure== 54607 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #73943: <==negation-removal== 66468 (pos)
                    (not (Bb_survivorat_s_p7))

                    ; #80358: <==negation-removal== 54607 (pos)
                    (not (Pb_survivorat_s_p7))))

    (:action badcomm_p7_a_c_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (leader_c)
                           (at_a_p7))
        :effect (and
                    ; #14404: origin
                    (Bc_not_survivorat_s_p7)

                    ; #75784: <==closure== 14404 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #63335: <==negation-removal== 14404 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #85043: <==negation-removal== 75784 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_b_a_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (leader_a))
        :effect (and
                    ; #25051: <==closure== 44405 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #44405: origin
                    (Ba_not_survivorat_s_p7)

                    ; #46957: <==negation-removal== 44405 (pos)
                    (not (Pa_survivorat_s_p7))

                    ; #48849: <==negation-removal== 25051 (pos)
                    (not (Ba_survivorat_s_p7))))

    (:action badcomm_p7_b_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #54607: origin
                    (Bb_not_survivorat_s_p7)

                    ; #66468: <==closure== 54607 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #73943: <==negation-removal== 66468 (pos)
                    (not (Bb_survivorat_s_p7))

                    ; #80358: <==negation-removal== 54607 (pos)
                    (not (Pb_survivorat_s_p7))))

    (:action badcomm_p7_b_c_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #14404: origin
                    (Bc_not_survivorat_s_p7)

                    ; #75784: <==closure== 14404 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #63335: <==negation-removal== 14404 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #85043: <==negation-removal== 75784 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_c_a_s
        :precondition (and (Bc_survivorat_s_p7)
                           (leader_a)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #25051: <==closure== 44405 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #44405: origin
                    (Ba_not_survivorat_s_p7)

                    ; #46957: <==negation-removal== 44405 (pos)
                    (not (Pa_survivorat_s_p7))

                    ; #48849: <==negation-removal== 25051 (pos)
                    (not (Ba_survivorat_s_p7))))

    (:action badcomm_p7_c_b_s
        :precondition (and (Bc_survivorat_s_p7)
                           (leader_b)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #54607: origin
                    (Bb_not_survivorat_s_p7)

                    ; #66468: <==closure== 54607 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #73943: <==negation-removal== 66468 (pos)
                    (not (Bb_survivorat_s_p7))

                    ; #80358: <==negation-removal== 54607 (pos)
                    (not (Pb_survivorat_s_p7))))

    (:action badcomm_p7_c_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #14404: origin
                    (Bc_not_survivorat_s_p7)

                    ; #75784: <==closure== 14404 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #63335: <==negation-removal== 14404 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #85043: <==negation-removal== 75784 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p8_a_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (leader_a)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #44398: origin
                    (Ba_not_survivorat_s_p8)

                    ; #82872: <==closure== 44398 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #44023: <==negation-removal== 44398 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #52891: <==negation-removal== 82872 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_a_b_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #23235: origin
                    (Bb_not_survivorat_s_p8)

                    ; #53370: <==closure== 23235 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #24403: <==negation-removal== 53370 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #39775: <==negation-removal== 23235 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_a_c_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (leader_c)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #39330: <==closure== 85833 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #85833: origin
                    (Bc_not_survivorat_s_p8)

                    ; #17462: <==negation-removal== 39330 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #53538: <==negation-removal== 85833 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #44398: origin
                    (Ba_not_survivorat_s_p8)

                    ; #82872: <==closure== 44398 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #44023: <==negation-removal== 44398 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #52891: <==negation-removal== 82872 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #23235: origin
                    (Bb_not_survivorat_s_p8)

                    ; #53370: <==closure== 23235 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #24403: <==negation-removal== 53370 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #39775: <==negation-removal== 23235 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_b_c_s
        :precondition (and (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (leader_c)
                           (at_b_p8))
        :effect (and
                    ; #39330: <==closure== 85833 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #85833: origin
                    (Bc_not_survivorat_s_p8)

                    ; #17462: <==negation-removal== 39330 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #53538: <==negation-removal== 85833 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #44398: origin
                    (Ba_not_survivorat_s_p8)

                    ; #82872: <==closure== 44398 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #44023: <==negation-removal== 44398 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #52891: <==negation-removal== 82872 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_c_b_s
        :precondition (and (leader_b)
                           (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #23235: origin
                    (Bb_not_survivorat_s_p8)

                    ; #53370: <==closure== 23235 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #24403: <==negation-removal== 53370 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #39775: <==negation-removal== 23235 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_c_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (leader_c)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #39330: <==closure== 85833 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #85833: origin
                    (Bc_not_survivorat_s_p8)

                    ; #17462: <==negation-removal== 39330 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #53538: <==negation-removal== 85833 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p9_a_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (leader_a)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #45492: origin
                    (Ba_not_survivorat_s_p9)

                    ; #84212: <==closure== 45492 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #25766: <==negation-removal== 45492 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #51571: <==negation-removal== 84212 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_a_b_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (leader_b)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #46257: origin
                    (Bb_not_survivorat_s_p9)

                    ; #59810: <==closure== 46257 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #40738: <==negation-removal== 59810 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #73136: <==negation-removal== 46257 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_a_c_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (leader_c)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #11666: <==closure== 24108 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #24108: origin
                    (Bc_not_survivorat_s_p9)

                    ; #32843: <==negation-removal== 11666 (pos)
                    (not (Bc_survivorat_s_p9))

                    ; #34125: <==negation-removal== 24108 (pos)
                    (not (Pc_survivorat_s_p9))))

    (:action badcomm_p9_b_a_s
        :precondition (and (Bb_survivorat_s_p9)
                           (leader_a)
                           (Pb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #45492: origin
                    (Ba_not_survivorat_s_p9)

                    ; #84212: <==closure== 45492 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #25766: <==negation-removal== 45492 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #51571: <==negation-removal== 84212 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_b_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (leader_b)
                           (Pb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #46257: origin
                    (Bb_not_survivorat_s_p9)

                    ; #59810: <==closure== 46257 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #40738: <==negation-removal== 59810 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #73136: <==negation-removal== 46257 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_b_c_s
        :precondition (and (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (leader_c))
        :effect (and
                    ; #11666: <==closure== 24108 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #24108: origin
                    (Bc_not_survivorat_s_p9)

                    ; #32843: <==negation-removal== 11666 (pos)
                    (not (Bc_survivorat_s_p9))

                    ; #34125: <==negation-removal== 24108 (pos)
                    (not (Pc_survivorat_s_p9))))

    (:action badcomm_p9_c_a_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_a))
        :effect (and
                    ; #45492: origin
                    (Ba_not_survivorat_s_p9)

                    ; #84212: <==closure== 45492 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #25766: <==negation-removal== 45492 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #51571: <==negation-removal== 84212 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_c_b_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #46257: origin
                    (Bb_not_survivorat_s_p9)

                    ; #59810: <==closure== 46257 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #40738: <==negation-removal== 59810 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #73136: <==negation-removal== 46257 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_c_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_c))
        :effect (and
                    ; #11666: <==closure== 24108 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #24108: origin
                    (Bc_not_survivorat_s_p9)

                    ; #32843: <==negation-removal== 11666 (pos)
                    (not (Bc_survivorat_s_p9))

                    ; #34125: <==negation-removal== 24108 (pos)
                    (not (Pc_survivorat_s_p9))))

    (:action comm_p10_a_a_s
        :precondition (and (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10)
                           (leader_a)
                           (at_a_p10))
        :effect (and
                    ; #49444: origin
                    (Ba_survivorat_s_p10)

                    ; #91211: <==closure== 49444 (pos)
                    (Pa_survivorat_s_p10)

                    ; #43042: <==negation-removal== 49444 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #60959: <==negation-removal== 91211 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_a_b_s
        :precondition (and (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10)
                           (at_a_p10)
                           (leader_b))
        :effect (and
                    ; #20904: <==closure== 55337 (pos)
                    (Pb_survivorat_s_p10)

                    ; #55337: origin
                    (Bb_survivorat_s_p10)

                    ; #46887: <==negation-removal== 55337 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #81731: <==negation-removal== 20904 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_a_c_s
        :precondition (and (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10)
                           (leader_c)
                           (at_a_p10))
        :effect (and
                    ; #41523: <==closure== 59078 (pos)
                    (Pc_survivorat_s_p10)

                    ; #59078: origin
                    (Bc_survivorat_s_p10)

                    ; #41934: <==negation-removal== 41523 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #71546: <==negation-removal== 59078 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_b_a_s
        :precondition (and (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10)
                           (leader_a)
                           (at_b_p10))
        :effect (and
                    ; #49444: origin
                    (Ba_survivorat_s_p10)

                    ; #91211: <==closure== 49444 (pos)
                    (Pa_survivorat_s_p10)

                    ; #43042: <==negation-removal== 49444 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #60959: <==negation-removal== 91211 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_b_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_b))
        :effect (and
                    ; #20904: <==closure== 55337 (pos)
                    (Pb_survivorat_s_p10)

                    ; #55337: origin
                    (Bb_survivorat_s_p10)

                    ; #46887: <==negation-removal== 55337 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #81731: <==negation-removal== 20904 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_b_c_s
        :precondition (and (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10)
                           (leader_c)
                           (at_b_p10))
        :effect (and
                    ; #41523: <==closure== 59078 (pos)
                    (Pc_survivorat_s_p10)

                    ; #59078: origin
                    (Bc_survivorat_s_p10)

                    ; #41934: <==negation-removal== 41523 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #71546: <==negation-removal== 59078 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_c_a_s
        :precondition (and (Pc_survivorat_s_p10)
                           (leader_a)
                           (Bc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #49444: origin
                    (Ba_survivorat_s_p10)

                    ; #91211: <==closure== 49444 (pos)
                    (Pa_survivorat_s_p10)

                    ; #43042: <==negation-removal== 49444 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #60959: <==negation-removal== 91211 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_c_b_s
        :precondition (and (Pc_survivorat_s_p10)
                           (leader_b)
                           (Bc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #20904: <==closure== 55337 (pos)
                    (Pb_survivorat_s_p10)

                    ; #55337: origin
                    (Bb_survivorat_s_p10)

                    ; #46887: <==negation-removal== 55337 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #81731: <==negation-removal== 20904 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_c_c_s
        :precondition (and (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (leader_c)
                           (at_c_p10))
        :effect (and
                    ; #41523: <==closure== 59078 (pos)
                    (Pc_survivorat_s_p10)

                    ; #59078: origin
                    (Bc_survivorat_s_p10)

                    ; #41934: <==negation-removal== 41523 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #71546: <==negation-removal== 59078 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p11_a_a_s
        :precondition (and (Pa_survivorat_s_p11)
                           (leader_a)
                           (Ba_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #24005: <==closure== 31536 (pos)
                    (Pa_survivorat_s_p11)

                    ; #31536: origin
                    (Ba_survivorat_s_p11)

                    ; #35156: <==negation-removal== 24005 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #90914: <==negation-removal== 31536 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_a_b_s
        :precondition (and (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (leader_b))
        :effect (and
                    ; #22783: origin
                    (Bb_survivorat_s_p11)

                    ; #86121: <==closure== 22783 (pos)
                    (Pb_survivorat_s_p11)

                    ; #27976: <==negation-removal== 22783 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #68600: <==negation-removal== 86121 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_a_c_s
        :precondition (and (Pa_survivorat_s_p11)
                           (leader_c)
                           (Ba_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #20934: origin
                    (Bc_survivorat_s_p11)

                    ; #61140: <==closure== 20934 (pos)
                    (Pc_survivorat_s_p11)

                    ; #28049: <==negation-removal== 20934 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #57557: <==negation-removal== 61140 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #24005: <==closure== 31536 (pos)
                    (Pa_survivorat_s_p11)

                    ; #31536: origin
                    (Ba_survivorat_s_p11)

                    ; #35156: <==negation-removal== 24005 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #90914: <==negation-removal== 31536 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #22783: origin
                    (Bb_survivorat_s_p11)

                    ; #86121: <==closure== 22783 (pos)
                    (Pb_survivorat_s_p11)

                    ; #27976: <==negation-removal== 22783 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #68600: <==negation-removal== 86121 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_b_c_s
        :precondition (and (Bb_survivorat_s_p11)
                           (leader_c)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #20934: origin
                    (Bc_survivorat_s_p11)

                    ; #61140: <==closure== 20934 (pos)
                    (Pc_survivorat_s_p11)

                    ; #28049: <==negation-removal== 20934 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #57557: <==negation-removal== 61140 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_c_a_s
        :precondition (and (Bc_survivorat_s_p11)
                           (leader_a)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #24005: <==closure== 31536 (pos)
                    (Pa_survivorat_s_p11)

                    ; #31536: origin
                    (Ba_survivorat_s_p11)

                    ; #35156: <==negation-removal== 24005 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #90914: <==negation-removal== 31536 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_c_b_s
        :precondition (and (Bc_survivorat_s_p11)
                           (leader_b)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #22783: origin
                    (Bb_survivorat_s_p11)

                    ; #86121: <==closure== 22783 (pos)
                    (Pb_survivorat_s_p11)

                    ; #27976: <==negation-removal== 22783 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #68600: <==negation-removal== 86121 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_c_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (leader_c)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #20934: origin
                    (Bc_survivorat_s_p11)

                    ; #61140: <==closure== 20934 (pos)
                    (Pc_survivorat_s_p11)

                    ; #28049: <==negation-removal== 20934 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #57557: <==negation-removal== 61140 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p12_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #84491: <==closure== 84581 (pos)
                    (Pa_survivorat_s_p12)

                    ; #84581: origin
                    (Ba_survivorat_s_p12)

                    ; #25340: <==negation-removal== 84491 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #25805: <==negation-removal== 84581 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #61597: origin
                    (Bb_survivorat_s_p12)

                    ; #91314: <==closure== 61597 (pos)
                    (Pb_survivorat_s_p12)

                    ; #25668: <==negation-removal== 61597 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #26019: <==negation-removal== 91314 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_a_c_s
        :precondition (and (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (leader_c)
                           (at_a_p12))
        :effect (and
                    ; #45905: origin
                    (Bc_survivorat_s_p12)

                    ; #63264: <==closure== 45905 (pos)
                    (Pc_survivorat_s_p12)

                    ; #27096: <==negation-removal== 63264 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #39357: <==negation-removal== 45905 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_b_a_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #84491: <==closure== 84581 (pos)
                    (Pa_survivorat_s_p12)

                    ; #84581: origin
                    (Ba_survivorat_s_p12)

                    ; #25340: <==negation-removal== 84491 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #25805: <==negation-removal== 84581 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_b_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #61597: origin
                    (Bb_survivorat_s_p12)

                    ; #91314: <==closure== 61597 (pos)
                    (Pb_survivorat_s_p12)

                    ; #25668: <==negation-removal== 61597 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #26019: <==negation-removal== 91314 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_b_c_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #45905: origin
                    (Bc_survivorat_s_p12)

                    ; #63264: <==closure== 45905 (pos)
                    (Pc_survivorat_s_p12)

                    ; #27096: <==negation-removal== 63264 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #39357: <==negation-removal== 45905 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_c_a_s
        :precondition (and (Bc_survivorat_s_p12)
                           (leader_a)
                           (at_c_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #84491: <==closure== 84581 (pos)
                    (Pa_survivorat_s_p12)

                    ; #84581: origin
                    (Ba_survivorat_s_p12)

                    ; #25340: <==negation-removal== 84491 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #25805: <==negation-removal== 84581 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_c_b_s
        :precondition (and (Bc_survivorat_s_p12)
                           (leader_b)
                           (at_c_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #61597: origin
                    (Bb_survivorat_s_p12)

                    ; #91314: <==closure== 61597 (pos)
                    (Pb_survivorat_s_p12)

                    ; #25668: <==negation-removal== 61597 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #26019: <==negation-removal== 91314 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_c_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #45905: origin
                    (Bc_survivorat_s_p12)

                    ; #63264: <==closure== 45905 (pos)
                    (Pc_survivorat_s_p12)

                    ; #27096: <==negation-removal== 63264 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #39357: <==negation-removal== 45905 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p1_a_a_s
        :precondition (and (leader_a)
                           (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #56176: <==closure== 70548 (pos)
                    (Pa_survivorat_s_p1)

                    ; #70548: origin
                    (Ba_survivorat_s_p1)

                    ; #25659: <==negation-removal== 56176 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #49732: <==negation-removal== 70548 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (leader_b)
                           (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #79484: origin
                    (Bb_survivorat_s_p1)

                    ; #79505: <==closure== 79484 (pos)
                    (Pb_survivorat_s_p1)

                    ; #44638: <==negation-removal== 79484 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #64642: <==negation-removal== 79505 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #23230: <==closure== 68944 (pos)
                    (Pc_survivorat_s_p1)

                    ; #68944: origin
                    (Bc_survivorat_s_p1)

                    ; #23662: <==negation-removal== 68944 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #54929: <==negation-removal== 23230 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #56176: <==closure== 70548 (pos)
                    (Pa_survivorat_s_p1)

                    ; #70548: origin
                    (Ba_survivorat_s_p1)

                    ; #25659: <==negation-removal== 56176 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #49732: <==negation-removal== 70548 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #79484: origin
                    (Bb_survivorat_s_p1)

                    ; #79505: <==closure== 79484 (pos)
                    (Pb_survivorat_s_p1)

                    ; #44638: <==negation-removal== 79484 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #64642: <==negation-removal== 79505 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (leader_c))
        :effect (and
                    ; #23230: <==closure== 68944 (pos)
                    (Pc_survivorat_s_p1)

                    ; #68944: origin
                    (Bc_survivorat_s_p1)

                    ; #23662: <==negation-removal== 68944 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #54929: <==negation-removal== 23230 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (leader_a)
                           (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #56176: <==closure== 70548 (pos)
                    (Pa_survivorat_s_p1)

                    ; #70548: origin
                    (Ba_survivorat_s_p1)

                    ; #25659: <==negation-removal== 56176 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #49732: <==negation-removal== 70548 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (leader_b)
                           (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #79484: origin
                    (Bb_survivorat_s_p1)

                    ; #79505: <==closure== 79484 (pos)
                    (Pb_survivorat_s_p1)

                    ; #44638: <==negation-removal== 79484 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #64642: <==negation-removal== 79505 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_c)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #23230: <==closure== 68944 (pos)
                    (Pc_survivorat_s_p1)

                    ; #68944: origin
                    (Bc_survivorat_s_p1)

                    ; #23662: <==negation-removal== 68944 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #54929: <==negation-removal== 23230 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (leader_a)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #46127: <==closure== 82541 (pos)
                    (Pa_survivorat_s_p2)

                    ; #82541: origin
                    (Ba_survivorat_s_p2)

                    ; #26673: <==negation-removal== 46127 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #51163: <==negation-removal== 82541 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (leader_b)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #76423: <==closure== 78654 (pos)
                    (Pb_survivorat_s_p2)

                    ; #78654: origin
                    (Bb_survivorat_s_p2)

                    ; #34665: <==negation-removal== 78654 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #45071: <==negation-removal== 76423 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (leader_c)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #69404: <==closure== 92746 (pos)
                    (Pc_survivorat_s_p2)

                    ; #92746: origin
                    (Bc_survivorat_s_p2)

                    ; #23356: <==negation-removal== 92746 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #53060: <==negation-removal== 69404 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_a))
        :effect (and
                    ; #46127: <==closure== 82541 (pos)
                    (Pa_survivorat_s_p2)

                    ; #82541: origin
                    (Ba_survivorat_s_p2)

                    ; #26673: <==negation-removal== 46127 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #51163: <==negation-removal== 82541 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_b))
        :effect (and
                    ; #76423: <==closure== 78654 (pos)
                    (Pb_survivorat_s_p2)

                    ; #78654: origin
                    (Bb_survivorat_s_p2)

                    ; #34665: <==negation-removal== 78654 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #45071: <==negation-removal== 76423 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_c))
        :effect (and
                    ; #69404: <==closure== 92746 (pos)
                    (Pc_survivorat_s_p2)

                    ; #92746: origin
                    (Bc_survivorat_s_p2)

                    ; #23356: <==negation-removal== 92746 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #53060: <==negation-removal== 69404 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (Pc_survivorat_s_p2)
                           (leader_a)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #46127: <==closure== 82541 (pos)
                    (Pa_survivorat_s_p2)

                    ; #82541: origin
                    (Ba_survivorat_s_p2)

                    ; #26673: <==negation-removal== 46127 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #51163: <==negation-removal== 82541 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (Pc_survivorat_s_p2)
                           (leader_b)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #76423: <==closure== 78654 (pos)
                    (Pb_survivorat_s_p2)

                    ; #78654: origin
                    (Bb_survivorat_s_p2)

                    ; #34665: <==negation-removal== 78654 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #45071: <==negation-removal== 76423 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (leader_c)
                           (at_c_p2))
        :effect (and
                    ; #69404: <==closure== 92746 (pos)
                    (Pc_survivorat_s_p2)

                    ; #92746: origin
                    (Bc_survivorat_s_p2)

                    ; #23356: <==negation-removal== 92746 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #53060: <==negation-removal== 69404 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (leader_a)
                           (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #41925: origin
                    (Ba_survivorat_s_p3)

                    ; #49607: <==closure== 41925 (pos)
                    (Pa_survivorat_s_p3)

                    ; #18498: <==negation-removal== 41925 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #72474: <==negation-removal== 49607 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (leader_b)
                           (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #18641: <==closure== 32520 (pos)
                    (Pb_survivorat_s_p3)

                    ; #32520: origin
                    (Bb_survivorat_s_p3)

                    ; #39718: <==negation-removal== 32520 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #66391: <==negation-removal== 18641 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_c)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #40984: origin
                    (Bc_survivorat_s_p3)

                    ; #70813: <==closure== 40984 (pos)
                    (Pc_survivorat_s_p3)

                    ; #73115: <==negation-removal== 40984 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #88889: <==negation-removal== 70813 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (at_b_p3)
                           (leader_a)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #41925: origin
                    (Ba_survivorat_s_p3)

                    ; #49607: <==closure== 41925 (pos)
                    (Pa_survivorat_s_p3)

                    ; #18498: <==negation-removal== 41925 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #72474: <==negation-removal== 49607 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (at_b_p3)
                           (leader_b)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #18641: <==closure== 32520 (pos)
                    (Pb_survivorat_s_p3)

                    ; #32520: origin
                    (Bb_survivorat_s_p3)

                    ; #39718: <==negation-removal== 32520 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #66391: <==negation-removal== 18641 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (leader_c)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #40984: origin
                    (Bc_survivorat_s_p3)

                    ; #70813: <==closure== 40984 (pos)
                    (Pc_survivorat_s_p3)

                    ; #73115: <==negation-removal== 40984 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #88889: <==negation-removal== 70813 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (leader_a)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #41925: origin
                    (Ba_survivorat_s_p3)

                    ; #49607: <==closure== 41925 (pos)
                    (Pa_survivorat_s_p3)

                    ; #18498: <==negation-removal== 41925 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #72474: <==negation-removal== 49607 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (leader_b)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #18641: <==closure== 32520 (pos)
                    (Pb_survivorat_s_p3)

                    ; #32520: origin
                    (Bb_survivorat_s_p3)

                    ; #39718: <==negation-removal== 32520 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #66391: <==negation-removal== 18641 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_c)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #40984: origin
                    (Bc_survivorat_s_p3)

                    ; #70813: <==closure== 40984 (pos)
                    (Pc_survivorat_s_p3)

                    ; #73115: <==negation-removal== 40984 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #88889: <==negation-removal== 70813 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (leader_a))
        :effect (and
                    ; #23045: <==closure== 27207 (pos)
                    (Pa_survivorat_s_p4)

                    ; #27207: origin
                    (Ba_survivorat_s_p4)

                    ; #55366: <==negation-removal== 27207 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #84841: <==negation-removal== 23045 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (leader_b))
        :effect (and
                    ; #76036: origin
                    (Bb_survivorat_s_p4)

                    ; #86040: <==closure== 76036 (pos)
                    (Pb_survivorat_s_p4)

                    ; #40034: <==negation-removal== 76036 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #77335: <==negation-removal== 86040 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (leader_c))
        :effect (and
                    ; #56375: <==closure== 65675 (pos)
                    (Pc_survivorat_s_p4)

                    ; #65675: origin
                    (Bc_survivorat_s_p4)

                    ; #25715: <==negation-removal== 56375 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #72497: <==negation-removal== 65675 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_a)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #23045: <==closure== 27207 (pos)
                    (Pa_survivorat_s_p4)

                    ; #27207: origin
                    (Ba_survivorat_s_p4)

                    ; #55366: <==negation-removal== 27207 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #84841: <==negation-removal== 23045 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #76036: origin
                    (Bb_survivorat_s_p4)

                    ; #86040: <==closure== 76036 (pos)
                    (Pb_survivorat_s_p4)

                    ; #40034: <==negation-removal== 76036 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #77335: <==negation-removal== 86040 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_c)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #56375: <==closure== 65675 (pos)
                    (Pc_survivorat_s_p4)

                    ; #65675: origin
                    (Bc_survivorat_s_p4)

                    ; #25715: <==negation-removal== 56375 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #72497: <==negation-removal== 65675 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (leader_a)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #23045: <==closure== 27207 (pos)
                    (Pa_survivorat_s_p4)

                    ; #27207: origin
                    (Ba_survivorat_s_p4)

                    ; #55366: <==negation-removal== 27207 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #84841: <==negation-removal== 23045 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (leader_b)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #76036: origin
                    (Bb_survivorat_s_p4)

                    ; #86040: <==closure== 76036 (pos)
                    (Pb_survivorat_s_p4)

                    ; #40034: <==negation-removal== 76036 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #77335: <==negation-removal== 86040 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (leader_c)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #56375: <==closure== 65675 (pos)
                    (Pc_survivorat_s_p4)

                    ; #65675: origin
                    (Bc_survivorat_s_p4)

                    ; #25715: <==negation-removal== 56375 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #72497: <==negation-removal== 65675 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #24411: origin
                    (Ba_survivorat_s_p5)

                    ; #75877: <==closure== 24411 (pos)
                    (Pa_survivorat_s_p5)

                    ; #14436: <==negation-removal== 24411 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #89091: <==negation-removal== 75877 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #27233: origin
                    (Bb_survivorat_s_p5)

                    ; #64030: <==closure== 27233 (pos)
                    (Pb_survivorat_s_p5)

                    ; #38434: <==negation-removal== 27233 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #78442: <==negation-removal== 64030 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (Pa_survivorat_s_p5)
                           (leader_c)
                           (Ba_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #14991: origin
                    (Bc_survivorat_s_p5)

                    ; #72546: <==closure== 14991 (pos)
                    (Pc_survivorat_s_p5)

                    ; #30617: <==negation-removal== 14991 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #59089: <==negation-removal== 72546 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_a)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #24411: origin
                    (Ba_survivorat_s_p5)

                    ; #75877: <==closure== 24411 (pos)
                    (Pa_survivorat_s_p5)

                    ; #14436: <==negation-removal== 24411 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #89091: <==negation-removal== 75877 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_b)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #27233: origin
                    (Bb_survivorat_s_p5)

                    ; #64030: <==closure== 27233 (pos)
                    (Pb_survivorat_s_p5)

                    ; #38434: <==negation-removal== 27233 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #78442: <==negation-removal== 64030 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (leader_c)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #14991: origin
                    (Bc_survivorat_s_p5)

                    ; #72546: <==closure== 14991 (pos)
                    (Pc_survivorat_s_p5)

                    ; #30617: <==negation-removal== 14991 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #59089: <==negation-removal== 72546 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #24411: origin
                    (Ba_survivorat_s_p5)

                    ; #75877: <==closure== 24411 (pos)
                    (Pa_survivorat_s_p5)

                    ; #14436: <==negation-removal== 24411 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #89091: <==negation-removal== 75877 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (leader_b)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #27233: origin
                    (Bb_survivorat_s_p5)

                    ; #64030: <==closure== 27233 (pos)
                    (Pb_survivorat_s_p5)

                    ; #38434: <==negation-removal== 27233 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #78442: <==negation-removal== 64030 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (leader_c)
                           (at_c_p5))
        :effect (and
                    ; #14991: origin
                    (Bc_survivorat_s_p5)

                    ; #72546: <==closure== 14991 (pos)
                    (Pc_survivorat_s_p5)

                    ; #30617: <==negation-removal== 14991 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #59089: <==negation-removal== 72546 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (leader_a))
        :effect (and
                    ; #47649: <==closure== 53981 (pos)
                    (Pa_survivorat_s_p6)

                    ; #53981: origin
                    (Ba_survivorat_s_p6)

                    ; #41391: <==negation-removal== 53981 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #68498: <==negation-removal== 47649 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (leader_b))
        :effect (and
                    ; #19964: origin
                    (Bb_survivorat_s_p6)

                    ; #53012: <==closure== 19964 (pos)
                    (Pb_survivorat_s_p6)

                    ; #55377: <==negation-removal== 53012 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #60281: <==negation-removal== 19964 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (leader_c))
        :effect (and
                    ; #41896: <==closure== 71720 (pos)
                    (Pc_survivorat_s_p6)

                    ; #71720: origin
                    (Bc_survivorat_s_p6)

                    ; #40508: <==negation-removal== 41896 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #90468: <==negation-removal== 71720 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (leader_a)
                           (at_b_p6))
        :effect (and
                    ; #47649: <==closure== 53981 (pos)
                    (Pa_survivorat_s_p6)

                    ; #53981: origin
                    (Ba_survivorat_s_p6)

                    ; #41391: <==negation-removal== 53981 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #68498: <==negation-removal== 47649 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (leader_b))
        :effect (and
                    ; #19964: origin
                    (Bb_survivorat_s_p6)

                    ; #53012: <==closure== 19964 (pos)
                    (Pb_survivorat_s_p6)

                    ; #55377: <==negation-removal== 53012 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #60281: <==negation-removal== 19964 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (leader_c)
                           (at_b_p6))
        :effect (and
                    ; #41896: <==closure== 71720 (pos)
                    (Pc_survivorat_s_p6)

                    ; #71720: origin
                    (Bc_survivorat_s_p6)

                    ; #40508: <==negation-removal== 41896 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #90468: <==negation-removal== 71720 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (leader_a)
                           (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #47649: <==closure== 53981 (pos)
                    (Pa_survivorat_s_p6)

                    ; #53981: origin
                    (Ba_survivorat_s_p6)

                    ; #41391: <==negation-removal== 53981 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #68498: <==negation-removal== 47649 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (leader_b)
                           (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #19964: origin
                    (Bb_survivorat_s_p6)

                    ; #53012: <==closure== 19964 (pos)
                    (Pb_survivorat_s_p6)

                    ; #55377: <==negation-removal== 53012 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #60281: <==negation-removal== 19964 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #41896: <==closure== 71720 (pos)
                    (Pc_survivorat_s_p6)

                    ; #71720: origin
                    (Bc_survivorat_s_p6)

                    ; #40508: <==negation-removal== 41896 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #90468: <==negation-removal== 71720 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #46957: <==closure== 48849 (pos)
                    (Pa_survivorat_s_p7)

                    ; #48849: origin
                    (Ba_survivorat_s_p7)

                    ; #25051: <==negation-removal== 48849 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #44405: <==negation-removal== 46957 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #73943: origin
                    (Bb_survivorat_s_p7)

                    ; #80358: <==closure== 73943 (pos)
                    (Pb_survivorat_s_p7)

                    ; #54607: <==negation-removal== 80358 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #66468: <==negation-removal== 73943 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (leader_c)
                           (at_a_p7))
        :effect (and
                    ; #63335: <==closure== 85043 (pos)
                    (Pc_survivorat_s_p7)

                    ; #85043: origin
                    (Bc_survivorat_s_p7)

                    ; #14404: <==negation-removal== 63335 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #75784: <==negation-removal== 85043 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (leader_a))
        :effect (and
                    ; #46957: <==closure== 48849 (pos)
                    (Pa_survivorat_s_p7)

                    ; #48849: origin
                    (Ba_survivorat_s_p7)

                    ; #25051: <==negation-removal== 48849 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #44405: <==negation-removal== 46957 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #73943: origin
                    (Bb_survivorat_s_p7)

                    ; #80358: <==closure== 73943 (pos)
                    (Pb_survivorat_s_p7)

                    ; #54607: <==negation-removal== 80358 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #66468: <==negation-removal== 73943 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #63335: <==closure== 85043 (pos)
                    (Pc_survivorat_s_p7)

                    ; #85043: origin
                    (Bc_survivorat_s_p7)

                    ; #14404: <==negation-removal== 63335 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #75784: <==negation-removal== 85043 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (Bc_survivorat_s_p7)
                           (leader_a)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #46957: <==closure== 48849 (pos)
                    (Pa_survivorat_s_p7)

                    ; #48849: origin
                    (Ba_survivorat_s_p7)

                    ; #25051: <==negation-removal== 48849 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #44405: <==negation-removal== 46957 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (Bc_survivorat_s_p7)
                           (leader_b)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #73943: origin
                    (Bb_survivorat_s_p7)

                    ; #80358: <==closure== 73943 (pos)
                    (Pb_survivorat_s_p7)

                    ; #54607: <==negation-removal== 80358 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #66468: <==negation-removal== 73943 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #63335: <==closure== 85043 (pos)
                    (Pc_survivorat_s_p7)

                    ; #85043: origin
                    (Bc_survivorat_s_p7)

                    ; #14404: <==negation-removal== 63335 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #75784: <==negation-removal== 85043 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (leader_a)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #44023: <==closure== 52891 (pos)
                    (Pa_survivorat_s_p8)

                    ; #52891: origin
                    (Ba_survivorat_s_p8)

                    ; #44398: <==negation-removal== 44023 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #82872: <==negation-removal== 52891 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #24403: origin
                    (Bb_survivorat_s_p8)

                    ; #39775: <==closure== 24403 (pos)
                    (Pb_survivorat_s_p8)

                    ; #23235: <==negation-removal== 39775 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #53370: <==negation-removal== 24403 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (leader_c)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #17462: origin
                    (Bc_survivorat_s_p8)

                    ; #53538: <==closure== 17462 (pos)
                    (Pc_survivorat_s_p8)

                    ; #39330: <==negation-removal== 17462 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #85833: <==negation-removal== 53538 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #44023: <==closure== 52891 (pos)
                    (Pa_survivorat_s_p8)

                    ; #52891: origin
                    (Ba_survivorat_s_p8)

                    ; #44398: <==negation-removal== 44023 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #82872: <==negation-removal== 52891 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #24403: origin
                    (Bb_survivorat_s_p8)

                    ; #39775: <==closure== 24403 (pos)
                    (Pb_survivorat_s_p8)

                    ; #23235: <==negation-removal== 39775 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #53370: <==negation-removal== 24403 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (leader_c)
                           (at_b_p8))
        :effect (and
                    ; #17462: origin
                    (Bc_survivorat_s_p8)

                    ; #53538: <==closure== 17462 (pos)
                    (Pc_survivorat_s_p8)

                    ; #39330: <==negation-removal== 17462 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #85833: <==negation-removal== 53538 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #44023: <==closure== 52891 (pos)
                    (Pa_survivorat_s_p8)

                    ; #52891: origin
                    (Ba_survivorat_s_p8)

                    ; #44398: <==negation-removal== 44023 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #82872: <==negation-removal== 52891 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (leader_b)
                           (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #24403: origin
                    (Bb_survivorat_s_p8)

                    ; #39775: <==closure== 24403 (pos)
                    (Pb_survivorat_s_p8)

                    ; #23235: <==negation-removal== 39775 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #53370: <==negation-removal== 24403 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (leader_c)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #17462: origin
                    (Bc_survivorat_s_p8)

                    ; #53538: <==closure== 17462 (pos)
                    (Pc_survivorat_s_p8)

                    ; #39330: <==negation-removal== 17462 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #85833: <==negation-removal== 53538 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (leader_a)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #25766: <==closure== 51571 (pos)
                    (Pa_survivorat_s_p9)

                    ; #51571: origin
                    (Ba_survivorat_s_p9)

                    ; #45492: <==negation-removal== 25766 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #84212: <==negation-removal== 51571 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (leader_b)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #40738: origin
                    (Bb_survivorat_s_p9)

                    ; #73136: <==closure== 40738 (pos)
                    (Pb_survivorat_s_p9)

                    ; #46257: <==negation-removal== 73136 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #59810: <==negation-removal== 40738 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (leader_c)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #32843: origin
                    (Bc_survivorat_s_p9)

                    ; #34125: <==closure== 32843 (pos)
                    (Pc_survivorat_s_p9)

                    ; #11666: <==negation-removal== 32843 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #24108: <==negation-removal== 34125 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (Bb_survivorat_s_p9)
                           (leader_a)
                           (Pb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #25766: <==closure== 51571 (pos)
                    (Pa_survivorat_s_p9)

                    ; #51571: origin
                    (Ba_survivorat_s_p9)

                    ; #45492: <==negation-removal== 25766 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #84212: <==negation-removal== 51571 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (leader_b)
                           (Pb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #40738: origin
                    (Bb_survivorat_s_p9)

                    ; #73136: <==closure== 40738 (pos)
                    (Pb_survivorat_s_p9)

                    ; #46257: <==negation-removal== 73136 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #59810: <==negation-removal== 40738 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (leader_c))
        :effect (and
                    ; #32843: origin
                    (Bc_survivorat_s_p9)

                    ; #34125: <==closure== 32843 (pos)
                    (Pc_survivorat_s_p9)

                    ; #11666: <==negation-removal== 32843 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #24108: <==negation-removal== 34125 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_a))
        :effect (and
                    ; #25766: <==closure== 51571 (pos)
                    (Pa_survivorat_s_p9)

                    ; #51571: origin
                    (Ba_survivorat_s_p9)

                    ; #45492: <==negation-removal== 25766 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #84212: <==negation-removal== 51571 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #40738: origin
                    (Bb_survivorat_s_p9)

                    ; #73136: <==closure== 40738 (pos)
                    (Pb_survivorat_s_p9)

                    ; #46257: <==negation-removal== 73136 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #59810: <==negation-removal== 40738 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_c))
        :effect (and
                    ; #32843: origin
                    (Bc_survivorat_s_p9)

                    ; #34125: <==closure== 32843 (pos)
                    (Pc_survivorat_s_p9)

                    ; #11666: <==negation-removal== 32843 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #24108: <==negation-removal== 34125 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #61150: origin
                    (at_a_p1)

                    ; #78243: origin
                    (not_at_a_p10)

                    ; #50469: <==negation-removal== 61150 (pos)
                    (not (not_at_a_p1))

                    ; #57891: <==negation-removal== 78243 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (at_a_p10)
                           (succ_p10_p10)
                           (not (leader_a)))
        :effect (and
                    ; #57891: origin
                    (at_a_p10)

                    ; #78243: origin
                    (not_at_a_p10)

                    ; #57891: <==negation-removal== 78243 (pos)
                    (not (at_a_p10))

                    ; #78243: <==negation-removal== 57891 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #45040: origin
                    (at_a_p11)

                    ; #78243: origin
                    (not_at_a_p10)

                    ; #39478: <==negation-removal== 45040 (pos)
                    (not (not_at_a_p11))

                    ; #57891: <==negation-removal== 78243 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #38910: origin
                    (at_a_p12)

                    ; #78243: origin
                    (not_at_a_p10)

                    ; #51572: <==negation-removal== 38910 (pos)
                    (not (not_at_a_p12))

                    ; #57891: <==negation-removal== 78243 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #78243: origin
                    (not_at_a_p10)

                    ; #81434: origin
                    (at_a_p2)

                    ; #39999: <==negation-removal== 81434 (pos)
                    (not (not_at_a_p2))

                    ; #57891: <==negation-removal== 78243 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #42177: origin
                    (at_a_p3)

                    ; #78243: origin
                    (not_at_a_p10)

                    ; #40841: <==negation-removal== 42177 (pos)
                    (not (not_at_a_p3))

                    ; #57891: <==negation-removal== 78243 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4)
                           (not (leader_a)))
        :effect (and
                    ; #51559: origin
                    (at_a_p4)

                    ; #78243: origin
                    (not_at_a_p10)

                    ; #13062: <==negation-removal== 51559 (pos)
                    (not (not_at_a_p4))

                    ; #57891: <==negation-removal== 78243 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #64620: origin
                    (at_a_p5)

                    ; #78243: origin
                    (not_at_a_p10)

                    ; #15391: <==negation-removal== 64620 (pos)
                    (not (not_at_a_p5))

                    ; #57891: <==negation-removal== 78243 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6)
                           (not (leader_a)))
        :effect (and
                    ; #27373: origin
                    (at_a_p6)

                    ; #78243: origin
                    (not_at_a_p10)

                    ; #16008: <==negation-removal== 27373 (pos)
                    (not (not_at_a_p6))

                    ; #57891: <==negation-removal== 78243 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #57005: origin
                    (at_a_p7)

                    ; #78243: origin
                    (not_at_a_p10)

                    ; #30465: <==negation-removal== 57005 (pos)
                    (not (not_at_a_p7))

                    ; #57891: <==negation-removal== 78243 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #53940: origin
                    (at_a_p8)

                    ; #78243: origin
                    (not_at_a_p10)

                    ; #57891: <==negation-removal== 78243 (pos)
                    (not (at_a_p10))

                    ; #88108: <==negation-removal== 53940 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9)
                           (not (leader_a)))
        :effect (and
                    ; #15413: origin
                    (at_a_p9)

                    ; #78243: origin
                    (not_at_a_p10)

                    ; #49010: <==negation-removal== 15413 (pos)
                    (not (not_at_a_p9))

                    ; #57891: <==negation-removal== 78243 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #39478: origin
                    (not_at_a_p11)

                    ; #61150: origin
                    (at_a_p1)

                    ; #45040: <==negation-removal== 39478 (pos)
                    (not (at_a_p11))

                    ; #50469: <==negation-removal== 61150 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #39478: origin
                    (not_at_a_p11)

                    ; #57891: origin
                    (at_a_p10)

                    ; #45040: <==negation-removal== 39478 (pos)
                    (not (at_a_p11))

                    ; #78243: <==negation-removal== 57891 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11)
                           (not (leader_a)))
        :effect (and
                    ; #39478: origin
                    (not_at_a_p11)

                    ; #45040: origin
                    (at_a_p11)

                    ; #39478: <==negation-removal== 45040 (pos)
                    (not (not_at_a_p11))

                    ; #45040: <==negation-removal== 39478 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #38910: origin
                    (at_a_p12)

                    ; #39478: origin
                    (not_at_a_p11)

                    ; #45040: <==negation-removal== 39478 (pos)
                    (not (at_a_p11))

                    ; #51572: <==negation-removal== 38910 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #39478: origin
                    (not_at_a_p11)

                    ; #81434: origin
                    (at_a_p2)

                    ; #39999: <==negation-removal== 81434 (pos)
                    (not (not_at_a_p2))

                    ; #45040: <==negation-removal== 39478 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #39478: origin
                    (not_at_a_p11)

                    ; #42177: origin
                    (at_a_p3)

                    ; #40841: <==negation-removal== 42177 (pos)
                    (not (not_at_a_p3))

                    ; #45040: <==negation-removal== 39478 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #39478: origin
                    (not_at_a_p11)

                    ; #51559: origin
                    (at_a_p4)

                    ; #13062: <==negation-removal== 51559 (pos)
                    (not (not_at_a_p4))

                    ; #45040: <==negation-removal== 39478 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #39478: origin
                    (not_at_a_p11)

                    ; #64620: origin
                    (at_a_p5)

                    ; #15391: <==negation-removal== 64620 (pos)
                    (not (not_at_a_p5))

                    ; #45040: <==negation-removal== 39478 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #27373: origin
                    (at_a_p6)

                    ; #39478: origin
                    (not_at_a_p11)

                    ; #16008: <==negation-removal== 27373 (pos)
                    (not (not_at_a_p6))

                    ; #45040: <==negation-removal== 39478 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #39478: origin
                    (not_at_a_p11)

                    ; #57005: origin
                    (at_a_p7)

                    ; #30465: <==negation-removal== 57005 (pos)
                    (not (not_at_a_p7))

                    ; #45040: <==negation-removal== 39478 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #39478: origin
                    (not_at_a_p11)

                    ; #53940: origin
                    (at_a_p8)

                    ; #45040: <==negation-removal== 39478 (pos)
                    (not (at_a_p11))

                    ; #88108: <==negation-removal== 53940 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #15413: origin
                    (at_a_p9)

                    ; #39478: origin
                    (not_at_a_p11)

                    ; #45040: <==negation-removal== 39478 (pos)
                    (not (at_a_p11))

                    ; #49010: <==negation-removal== 15413 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #51572: origin
                    (not_at_a_p12)

                    ; #61150: origin
                    (at_a_p1)

                    ; #38910: <==negation-removal== 51572 (pos)
                    (not (at_a_p12))

                    ; #50469: <==negation-removal== 61150 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #51572: origin
                    (not_at_a_p12)

                    ; #57891: origin
                    (at_a_p10)

                    ; #38910: <==negation-removal== 51572 (pos)
                    (not (at_a_p12))

                    ; #78243: <==negation-removal== 57891 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #45040: origin
                    (at_a_p11)

                    ; #51572: origin
                    (not_at_a_p12)

                    ; #38910: <==negation-removal== 51572 (pos)
                    (not (at_a_p12))

                    ; #39478: <==negation-removal== 45040 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #38910: origin
                    (at_a_p12)

                    ; #51572: origin
                    (not_at_a_p12)

                    ; #38910: <==negation-removal== 51572 (pos)
                    (not (at_a_p12))

                    ; #51572: <==negation-removal== 38910 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #51572: origin
                    (not_at_a_p12)

                    ; #81434: origin
                    (at_a_p2)

                    ; #38910: <==negation-removal== 51572 (pos)
                    (not (at_a_p12))

                    ; #39999: <==negation-removal== 81434 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #42177: origin
                    (at_a_p3)

                    ; #51572: origin
                    (not_at_a_p12)

                    ; #38910: <==negation-removal== 51572 (pos)
                    (not (at_a_p12))

                    ; #40841: <==negation-removal== 42177 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #51559: origin
                    (at_a_p4)

                    ; #51572: origin
                    (not_at_a_p12)

                    ; #13062: <==negation-removal== 51559 (pos)
                    (not (not_at_a_p4))

                    ; #38910: <==negation-removal== 51572 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #51572: origin
                    (not_at_a_p12)

                    ; #64620: origin
                    (at_a_p5)

                    ; #15391: <==negation-removal== 64620 (pos)
                    (not (not_at_a_p5))

                    ; #38910: <==negation-removal== 51572 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #27373: origin
                    (at_a_p6)

                    ; #51572: origin
                    (not_at_a_p12)

                    ; #16008: <==negation-removal== 27373 (pos)
                    (not (not_at_a_p6))

                    ; #38910: <==negation-removal== 51572 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #51572: origin
                    (not_at_a_p12)

                    ; #57005: origin
                    (at_a_p7)

                    ; #30465: <==negation-removal== 57005 (pos)
                    (not (not_at_a_p7))

                    ; #38910: <==negation-removal== 51572 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #51572: origin
                    (not_at_a_p12)

                    ; #53940: origin
                    (at_a_p8)

                    ; #38910: <==negation-removal== 51572 (pos)
                    (not (at_a_p12))

                    ; #88108: <==negation-removal== 53940 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #15413: origin
                    (at_a_p9)

                    ; #51572: origin
                    (not_at_a_p12)

                    ; #38910: <==negation-removal== 51572 (pos)
                    (not (at_a_p12))

                    ; #49010: <==negation-removal== 15413 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1)
                           (not (leader_a)))
        :effect (and
                    ; #50469: origin
                    (not_at_a_p1)

                    ; #61150: origin
                    (at_a_p1)

                    ; #50469: <==negation-removal== 61150 (pos)
                    (not (not_at_a_p1))

                    ; #61150: <==negation-removal== 50469 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10)
                           (not (leader_a)))
        :effect (and
                    ; #50469: origin
                    (not_at_a_p1)

                    ; #57891: origin
                    (at_a_p10)

                    ; #61150: <==negation-removal== 50469 (pos)
                    (not (at_a_p1))

                    ; #78243: <==negation-removal== 57891 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11)
                           (not (leader_a)))
        :effect (and
                    ; #45040: origin
                    (at_a_p11)

                    ; #50469: origin
                    (not_at_a_p1)

                    ; #39478: <==negation-removal== 45040 (pos)
                    (not (not_at_a_p11))

                    ; #61150: <==negation-removal== 50469 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12)
                           (not (leader_a)))
        :effect (and
                    ; #38910: origin
                    (at_a_p12)

                    ; #50469: origin
                    (not_at_a_p1)

                    ; #51572: <==negation-removal== 38910 (pos)
                    (not (not_at_a_p12))

                    ; #61150: <==negation-removal== 50469 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2)
                           (not (leader_a)))
        :effect (and
                    ; #50469: origin
                    (not_at_a_p1)

                    ; #81434: origin
                    (at_a_p2)

                    ; #39999: <==negation-removal== 81434 (pos)
                    (not (not_at_a_p2))

                    ; #61150: <==negation-removal== 50469 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3)
                           (not (leader_a)))
        :effect (and
                    ; #42177: origin
                    (at_a_p3)

                    ; #50469: origin
                    (not_at_a_p1)

                    ; #40841: <==negation-removal== 42177 (pos)
                    (not (not_at_a_p3))

                    ; #61150: <==negation-removal== 50469 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #50469: origin
                    (not_at_a_p1)

                    ; #51559: origin
                    (at_a_p4)

                    ; #13062: <==negation-removal== 51559 (pos)
                    (not (not_at_a_p4))

                    ; #61150: <==negation-removal== 50469 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5)
                           (not (leader_a)))
        :effect (and
                    ; #50469: origin
                    (not_at_a_p1)

                    ; #64620: origin
                    (at_a_p5)

                    ; #15391: <==negation-removal== 64620 (pos)
                    (not (not_at_a_p5))

                    ; #61150: <==negation-removal== 50469 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #27373: origin
                    (at_a_p6)

                    ; #50469: origin
                    (not_at_a_p1)

                    ; #16008: <==negation-removal== 27373 (pos)
                    (not (not_at_a_p6))

                    ; #61150: <==negation-removal== 50469 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7)
                           (not (leader_a)))
        :effect (and
                    ; #50469: origin
                    (not_at_a_p1)

                    ; #57005: origin
                    (at_a_p7)

                    ; #30465: <==negation-removal== 57005 (pos)
                    (not (not_at_a_p7))

                    ; #61150: <==negation-removal== 50469 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8)
                           (not (leader_a)))
        :effect (and
                    ; #50469: origin
                    (not_at_a_p1)

                    ; #53940: origin
                    (at_a_p8)

                    ; #61150: <==negation-removal== 50469 (pos)
                    (not (at_a_p1))

                    ; #88108: <==negation-removal== 53940 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9)
                           (not (leader_a)))
        :effect (and
                    ; #15413: origin
                    (at_a_p9)

                    ; #50469: origin
                    (not_at_a_p1)

                    ; #49010: <==negation-removal== 15413 (pos)
                    (not (not_at_a_p9))

                    ; #61150: <==negation-removal== 50469 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #39999: origin
                    (not_at_a_p2)

                    ; #61150: origin
                    (at_a_p1)

                    ; #50469: <==negation-removal== 61150 (pos)
                    (not (not_at_a_p1))

                    ; #81434: <==negation-removal== 39999 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #39999: origin
                    (not_at_a_p2)

                    ; #57891: origin
                    (at_a_p10)

                    ; #78243: <==negation-removal== 57891 (pos)
                    (not (not_at_a_p10))

                    ; #81434: <==negation-removal== 39999 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (at_a_p2)
                           (succ_p2_p11)
                           (not (leader_a)))
        :effect (and
                    ; #39999: origin
                    (not_at_a_p2)

                    ; #45040: origin
                    (at_a_p11)

                    ; #39478: <==negation-removal== 45040 (pos)
                    (not (not_at_a_p11))

                    ; #81434: <==negation-removal== 39999 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12)
                           (not (leader_a)))
        :effect (and
                    ; #38910: origin
                    (at_a_p12)

                    ; #39999: origin
                    (not_at_a_p2)

                    ; #51572: <==negation-removal== 38910 (pos)
                    (not (not_at_a_p12))

                    ; #81434: <==negation-removal== 39999 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2)
                           (not (leader_a)))
        :effect (and
                    ; #39999: origin
                    (not_at_a_p2)

                    ; #81434: origin
                    (at_a_p2)

                    ; #39999: <==negation-removal== 81434 (pos)
                    (not (not_at_a_p2))

                    ; #81434: <==negation-removal== 39999 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3)
                           (not (leader_a)))
        :effect (and
                    ; #39999: origin
                    (not_at_a_p2)

                    ; #42177: origin
                    (at_a_p3)

                    ; #40841: <==negation-removal== 42177 (pos)
                    (not (not_at_a_p3))

                    ; #81434: <==negation-removal== 39999 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4)
                           (not (leader_a)))
        :effect (and
                    ; #39999: origin
                    (not_at_a_p2)

                    ; #51559: origin
                    (at_a_p4)

                    ; #13062: <==negation-removal== 51559 (pos)
                    (not (not_at_a_p4))

                    ; #81434: <==negation-removal== 39999 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5)
                           (not (leader_a)))
        :effect (and
                    ; #39999: origin
                    (not_at_a_p2)

                    ; #64620: origin
                    (at_a_p5)

                    ; #15391: <==negation-removal== 64620 (pos)
                    (not (not_at_a_p5))

                    ; #81434: <==negation-removal== 39999 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #27373: origin
                    (at_a_p6)

                    ; #39999: origin
                    (not_at_a_p2)

                    ; #16008: <==negation-removal== 27373 (pos)
                    (not (not_at_a_p6))

                    ; #81434: <==negation-removal== 39999 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7)
                           (not (leader_a)))
        :effect (and
                    ; #39999: origin
                    (not_at_a_p2)

                    ; #57005: origin
                    (at_a_p7)

                    ; #30465: <==negation-removal== 57005 (pos)
                    (not (not_at_a_p7))

                    ; #81434: <==negation-removal== 39999 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8)
                           (not (leader_a)))
        :effect (and
                    ; #39999: origin
                    (not_at_a_p2)

                    ; #53940: origin
                    (at_a_p8)

                    ; #81434: <==negation-removal== 39999 (pos)
                    (not (at_a_p2))

                    ; #88108: <==negation-removal== 53940 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #15413: origin
                    (at_a_p9)

                    ; #39999: origin
                    (not_at_a_p2)

                    ; #49010: <==negation-removal== 15413 (pos)
                    (not (not_at_a_p9))

                    ; #81434: <==negation-removal== 39999 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1)
                           (not (leader_a)))
        :effect (and
                    ; #40841: origin
                    (not_at_a_p3)

                    ; #61150: origin
                    (at_a_p1)

                    ; #42177: <==negation-removal== 40841 (pos)
                    (not (at_a_p3))

                    ; #50469: <==negation-removal== 61150 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10)
                           (not (leader_a)))
        :effect (and
                    ; #40841: origin
                    (not_at_a_p3)

                    ; #57891: origin
                    (at_a_p10)

                    ; #42177: <==negation-removal== 40841 (pos)
                    (not (at_a_p3))

                    ; #78243: <==negation-removal== 57891 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11)
                           (not (leader_a)))
        :effect (and
                    ; #40841: origin
                    (not_at_a_p3)

                    ; #45040: origin
                    (at_a_p11)

                    ; #39478: <==negation-removal== 45040 (pos)
                    (not (not_at_a_p11))

                    ; #42177: <==negation-removal== 40841 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #38910: origin
                    (at_a_p12)

                    ; #40841: origin
                    (not_at_a_p3)

                    ; #42177: <==negation-removal== 40841 (pos)
                    (not (at_a_p3))

                    ; #51572: <==negation-removal== 38910 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2)
                           (not (leader_a)))
        :effect (and
                    ; #40841: origin
                    (not_at_a_p3)

                    ; #81434: origin
                    (at_a_p2)

                    ; #39999: <==negation-removal== 81434 (pos)
                    (not (not_at_a_p2))

                    ; #42177: <==negation-removal== 40841 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #40841: origin
                    (not_at_a_p3)

                    ; #42177: origin
                    (at_a_p3)

                    ; #40841: <==negation-removal== 42177 (pos)
                    (not (not_at_a_p3))

                    ; #42177: <==negation-removal== 40841 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4)
                           (not (leader_a)))
        :effect (and
                    ; #40841: origin
                    (not_at_a_p3)

                    ; #51559: origin
                    (at_a_p4)

                    ; #13062: <==negation-removal== 51559 (pos)
                    (not (not_at_a_p4))

                    ; #42177: <==negation-removal== 40841 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #40841: origin
                    (not_at_a_p3)

                    ; #64620: origin
                    (at_a_p5)

                    ; #15391: <==negation-removal== 64620 (pos)
                    (not (not_at_a_p5))

                    ; #42177: <==negation-removal== 40841 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6)
                           (not (leader_a)))
        :effect (and
                    ; #27373: origin
                    (at_a_p6)

                    ; #40841: origin
                    (not_at_a_p3)

                    ; #16008: <==negation-removal== 27373 (pos)
                    (not (not_at_a_p6))

                    ; #42177: <==negation-removal== 40841 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7)
                           (not (leader_a)))
        :effect (and
                    ; #40841: origin
                    (not_at_a_p3)

                    ; #57005: origin
                    (at_a_p7)

                    ; #30465: <==negation-removal== 57005 (pos)
                    (not (not_at_a_p7))

                    ; #42177: <==negation-removal== 40841 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8)
                           (not (leader_a)))
        :effect (and
                    ; #40841: origin
                    (not_at_a_p3)

                    ; #53940: origin
                    (at_a_p8)

                    ; #42177: <==negation-removal== 40841 (pos)
                    (not (at_a_p3))

                    ; #88108: <==negation-removal== 53940 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9)
                           (not (leader_a)))
        :effect (and
                    ; #15413: origin
                    (at_a_p9)

                    ; #40841: origin
                    (not_at_a_p3)

                    ; #42177: <==negation-removal== 40841 (pos)
                    (not (at_a_p3))

                    ; #49010: <==negation-removal== 15413 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #13062: origin
                    (not_at_a_p4)

                    ; #61150: origin
                    (at_a_p1)

                    ; #50469: <==negation-removal== 61150 (pos)
                    (not (not_at_a_p1))

                    ; #51559: <==negation-removal== 13062 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #13062: origin
                    (not_at_a_p4)

                    ; #57891: origin
                    (at_a_p10)

                    ; #51559: <==negation-removal== 13062 (pos)
                    (not (at_a_p4))

                    ; #78243: <==negation-removal== 57891 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #13062: origin
                    (not_at_a_p4)

                    ; #45040: origin
                    (at_a_p11)

                    ; #39478: <==negation-removal== 45040 (pos)
                    (not (not_at_a_p11))

                    ; #51559: <==negation-removal== 13062 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12)
                           (not (leader_a)))
        :effect (and
                    ; #13062: origin
                    (not_at_a_p4)

                    ; #38910: origin
                    (at_a_p12)

                    ; #51559: <==negation-removal== 13062 (pos)
                    (not (at_a_p4))

                    ; #51572: <==negation-removal== 38910 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #13062: origin
                    (not_at_a_p4)

                    ; #81434: origin
                    (at_a_p2)

                    ; #39999: <==negation-removal== 81434 (pos)
                    (not (not_at_a_p2))

                    ; #51559: <==negation-removal== 13062 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3)
                           (not (leader_a)))
        :effect (and
                    ; #13062: origin
                    (not_at_a_p4)

                    ; #42177: origin
                    (at_a_p3)

                    ; #40841: <==negation-removal== 42177 (pos)
                    (not (not_at_a_p3))

                    ; #51559: <==negation-removal== 13062 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #13062: origin
                    (not_at_a_p4)

                    ; #51559: origin
                    (at_a_p4)

                    ; #13062: <==negation-removal== 51559 (pos)
                    (not (not_at_a_p4))

                    ; #51559: <==negation-removal== 13062 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5)
                           (not (leader_a)))
        :effect (and
                    ; #13062: origin
                    (not_at_a_p4)

                    ; #64620: origin
                    (at_a_p5)

                    ; #15391: <==negation-removal== 64620 (pos)
                    (not (not_at_a_p5))

                    ; #51559: <==negation-removal== 13062 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6)
                           (not (leader_a)))
        :effect (and
                    ; #13062: origin
                    (not_at_a_p4)

                    ; #27373: origin
                    (at_a_p6)

                    ; #16008: <==negation-removal== 27373 (pos)
                    (not (not_at_a_p6))

                    ; #51559: <==negation-removal== 13062 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #13062: origin
                    (not_at_a_p4)

                    ; #57005: origin
                    (at_a_p7)

                    ; #30465: <==negation-removal== 57005 (pos)
                    (not (not_at_a_p7))

                    ; #51559: <==negation-removal== 13062 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8)
                           (not (leader_a)))
        :effect (and
                    ; #13062: origin
                    (not_at_a_p4)

                    ; #53940: origin
                    (at_a_p8)

                    ; #51559: <==negation-removal== 13062 (pos)
                    (not (at_a_p4))

                    ; #88108: <==negation-removal== 53940 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9)
                           (not (leader_a)))
        :effect (and
                    ; #13062: origin
                    (not_at_a_p4)

                    ; #15413: origin
                    (at_a_p9)

                    ; #49010: <==negation-removal== 15413 (pos)
                    (not (not_at_a_p9))

                    ; #51559: <==negation-removal== 13062 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #15391: origin
                    (not_at_a_p5)

                    ; #61150: origin
                    (at_a_p1)

                    ; #50469: <==negation-removal== 61150 (pos)
                    (not (not_at_a_p1))

                    ; #64620: <==negation-removal== 15391 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #15391: origin
                    (not_at_a_p5)

                    ; #57891: origin
                    (at_a_p10)

                    ; #64620: <==negation-removal== 15391 (pos)
                    (not (at_a_p5))

                    ; #78243: <==negation-removal== 57891 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #15391: origin
                    (not_at_a_p5)

                    ; #45040: origin
                    (at_a_p11)

                    ; #39478: <==negation-removal== 45040 (pos)
                    (not (not_at_a_p11))

                    ; #64620: <==negation-removal== 15391 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #15391: origin
                    (not_at_a_p5)

                    ; #38910: origin
                    (at_a_p12)

                    ; #51572: <==negation-removal== 38910 (pos)
                    (not (not_at_a_p12))

                    ; #64620: <==negation-removal== 15391 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #15391: origin
                    (not_at_a_p5)

                    ; #81434: origin
                    (at_a_p2)

                    ; #39999: <==negation-removal== 81434 (pos)
                    (not (not_at_a_p2))

                    ; #64620: <==negation-removal== 15391 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #15391: origin
                    (not_at_a_p5)

                    ; #42177: origin
                    (at_a_p3)

                    ; #40841: <==negation-removal== 42177 (pos)
                    (not (not_at_a_p3))

                    ; #64620: <==negation-removal== 15391 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #15391: origin
                    (not_at_a_p5)

                    ; #51559: origin
                    (at_a_p4)

                    ; #13062: <==negation-removal== 51559 (pos)
                    (not (not_at_a_p4))

                    ; #64620: <==negation-removal== 15391 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #15391: origin
                    (not_at_a_p5)

                    ; #64620: origin
                    (at_a_p5)

                    ; #15391: <==negation-removal== 64620 (pos)
                    (not (not_at_a_p5))

                    ; #64620: <==negation-removal== 15391 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6)
                           (not (leader_a)))
        :effect (and
                    ; #15391: origin
                    (not_at_a_p5)

                    ; #27373: origin
                    (at_a_p6)

                    ; #16008: <==negation-removal== 27373 (pos)
                    (not (not_at_a_p6))

                    ; #64620: <==negation-removal== 15391 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #15391: origin
                    (not_at_a_p5)

                    ; #57005: origin
                    (at_a_p7)

                    ; #30465: <==negation-removal== 57005 (pos)
                    (not (not_at_a_p7))

                    ; #64620: <==negation-removal== 15391 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #15391: origin
                    (not_at_a_p5)

                    ; #53940: origin
                    (at_a_p8)

                    ; #64620: <==negation-removal== 15391 (pos)
                    (not (at_a_p5))

                    ; #88108: <==negation-removal== 53940 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #15391: origin
                    (not_at_a_p5)

                    ; #15413: origin
                    (at_a_p9)

                    ; #49010: <==negation-removal== 15413 (pos)
                    (not (not_at_a_p9))

                    ; #64620: <==negation-removal== 15391 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1)
                           (not (leader_a)))
        :effect (and
                    ; #16008: origin
                    (not_at_a_p6)

                    ; #61150: origin
                    (at_a_p1)

                    ; #27373: <==negation-removal== 16008 (pos)
                    (not (at_a_p6))

                    ; #50469: <==negation-removal== 61150 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #16008: origin
                    (not_at_a_p6)

                    ; #57891: origin
                    (at_a_p10)

                    ; #27373: <==negation-removal== 16008 (pos)
                    (not (at_a_p6))

                    ; #78243: <==negation-removal== 57891 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #16008: origin
                    (not_at_a_p6)

                    ; #45040: origin
                    (at_a_p11)

                    ; #27373: <==negation-removal== 16008 (pos)
                    (not (at_a_p6))

                    ; #39478: <==negation-removal== 45040 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #16008: origin
                    (not_at_a_p6)

                    ; #38910: origin
                    (at_a_p12)

                    ; #27373: <==negation-removal== 16008 (pos)
                    (not (at_a_p6))

                    ; #51572: <==negation-removal== 38910 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2)
                           (not (leader_a)))
        :effect (and
                    ; #16008: origin
                    (not_at_a_p6)

                    ; #81434: origin
                    (at_a_p2)

                    ; #27373: <==negation-removal== 16008 (pos)
                    (not (at_a_p6))

                    ; #39999: <==negation-removal== 81434 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #16008: origin
                    (not_at_a_p6)

                    ; #42177: origin
                    (at_a_p3)

                    ; #27373: <==negation-removal== 16008 (pos)
                    (not (at_a_p6))

                    ; #40841: <==negation-removal== 42177 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #16008: origin
                    (not_at_a_p6)

                    ; #51559: origin
                    (at_a_p4)

                    ; #13062: <==negation-removal== 51559 (pos)
                    (not (not_at_a_p4))

                    ; #27373: <==negation-removal== 16008 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #16008: origin
                    (not_at_a_p6)

                    ; #64620: origin
                    (at_a_p5)

                    ; #15391: <==negation-removal== 64620 (pos)
                    (not (not_at_a_p5))

                    ; #27373: <==negation-removal== 16008 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #16008: origin
                    (not_at_a_p6)

                    ; #27373: origin
                    (at_a_p6)

                    ; #16008: <==negation-removal== 27373 (pos)
                    (not (not_at_a_p6))

                    ; #27373: <==negation-removal== 16008 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7)
                           (not (leader_a)))
        :effect (and
                    ; #16008: origin
                    (not_at_a_p6)

                    ; #57005: origin
                    (at_a_p7)

                    ; #27373: <==negation-removal== 16008 (pos)
                    (not (at_a_p6))

                    ; #30465: <==negation-removal== 57005 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #16008: origin
                    (not_at_a_p6)

                    ; #53940: origin
                    (at_a_p8)

                    ; #27373: <==negation-removal== 16008 (pos)
                    (not (at_a_p6))

                    ; #88108: <==negation-removal== 53940 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9)
                           (not (leader_a)))
        :effect (and
                    ; #15413: origin
                    (at_a_p9)

                    ; #16008: origin
                    (not_at_a_p6)

                    ; #27373: <==negation-removal== 16008 (pos)
                    (not (at_a_p6))

                    ; #49010: <==negation-removal== 15413 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #30465: origin
                    (not_at_a_p7)

                    ; #61150: origin
                    (at_a_p1)

                    ; #50469: <==negation-removal== 61150 (pos)
                    (not (not_at_a_p1))

                    ; #57005: <==negation-removal== 30465 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #30465: origin
                    (not_at_a_p7)

                    ; #57891: origin
                    (at_a_p10)

                    ; #57005: <==negation-removal== 30465 (pos)
                    (not (at_a_p7))

                    ; #78243: <==negation-removal== 57891 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #30465: origin
                    (not_at_a_p7)

                    ; #45040: origin
                    (at_a_p11)

                    ; #39478: <==negation-removal== 45040 (pos)
                    (not (not_at_a_p11))

                    ; #57005: <==negation-removal== 30465 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #30465: origin
                    (not_at_a_p7)

                    ; #38910: origin
                    (at_a_p12)

                    ; #51572: <==negation-removal== 38910 (pos)
                    (not (not_at_a_p12))

                    ; #57005: <==negation-removal== 30465 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #30465: origin
                    (not_at_a_p7)

                    ; #81434: origin
                    (at_a_p2)

                    ; #39999: <==negation-removal== 81434 (pos)
                    (not (not_at_a_p2))

                    ; #57005: <==negation-removal== 30465 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #30465: origin
                    (not_at_a_p7)

                    ; #42177: origin
                    (at_a_p3)

                    ; #40841: <==negation-removal== 42177 (pos)
                    (not (not_at_a_p3))

                    ; #57005: <==negation-removal== 30465 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #30465: origin
                    (not_at_a_p7)

                    ; #51559: origin
                    (at_a_p4)

                    ; #13062: <==negation-removal== 51559 (pos)
                    (not (not_at_a_p4))

                    ; #57005: <==negation-removal== 30465 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #30465: origin
                    (not_at_a_p7)

                    ; #64620: origin
                    (at_a_p5)

                    ; #15391: <==negation-removal== 64620 (pos)
                    (not (not_at_a_p5))

                    ; #57005: <==negation-removal== 30465 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #27373: origin
                    (at_a_p6)

                    ; #30465: origin
                    (not_at_a_p7)

                    ; #16008: <==negation-removal== 27373 (pos)
                    (not (not_at_a_p6))

                    ; #57005: <==negation-removal== 30465 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #30465: origin
                    (not_at_a_p7)

                    ; #57005: origin
                    (at_a_p7)

                    ; #30465: <==negation-removal== 57005 (pos)
                    (not (not_at_a_p7))

                    ; #57005: <==negation-removal== 30465 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #30465: origin
                    (not_at_a_p7)

                    ; #53940: origin
                    (at_a_p8)

                    ; #57005: <==negation-removal== 30465 (pos)
                    (not (at_a_p7))

                    ; #88108: <==negation-removal== 53940 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #15413: origin
                    (at_a_p9)

                    ; #30465: origin
                    (not_at_a_p7)

                    ; #49010: <==negation-removal== 15413 (pos)
                    (not (not_at_a_p9))

                    ; #57005: <==negation-removal== 30465 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1)
                           (not (leader_a)))
        :effect (and
                    ; #61150: origin
                    (at_a_p1)

                    ; #88108: origin
                    (not_at_a_p8)

                    ; #50469: <==negation-removal== 61150 (pos)
                    (not (not_at_a_p1))

                    ; #53940: <==negation-removal== 88108 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10)
                           (not (leader_a)))
        :effect (and
                    ; #57891: origin
                    (at_a_p10)

                    ; #88108: origin
                    (not_at_a_p8)

                    ; #53940: <==negation-removal== 88108 (pos)
                    (not (at_a_p8))

                    ; #78243: <==negation-removal== 57891 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #45040: origin
                    (at_a_p11)

                    ; #88108: origin
                    (not_at_a_p8)

                    ; #39478: <==negation-removal== 45040 (pos)
                    (not (not_at_a_p11))

                    ; #53940: <==negation-removal== 88108 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12)
                           (not (leader_a)))
        :effect (and
                    ; #38910: origin
                    (at_a_p12)

                    ; #88108: origin
                    (not_at_a_p8)

                    ; #51572: <==negation-removal== 38910 (pos)
                    (not (not_at_a_p12))

                    ; #53940: <==negation-removal== 88108 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #81434: origin
                    (at_a_p2)

                    ; #88108: origin
                    (not_at_a_p8)

                    ; #39999: <==negation-removal== 81434 (pos)
                    (not (not_at_a_p2))

                    ; #53940: <==negation-removal== 88108 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3)
                           (not (leader_a)))
        :effect (and
                    ; #42177: origin
                    (at_a_p3)

                    ; #88108: origin
                    (not_at_a_p8)

                    ; #40841: <==negation-removal== 42177 (pos)
                    (not (not_at_a_p3))

                    ; #53940: <==negation-removal== 88108 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4)
                           (not (leader_a)))
        :effect (and
                    ; #51559: origin
                    (at_a_p4)

                    ; #88108: origin
                    (not_at_a_p8)

                    ; #13062: <==negation-removal== 51559 (pos)
                    (not (not_at_a_p4))

                    ; #53940: <==negation-removal== 88108 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5)
                           (not (leader_a)))
        :effect (and
                    ; #64620: origin
                    (at_a_p5)

                    ; #88108: origin
                    (not_at_a_p8)

                    ; #15391: <==negation-removal== 64620 (pos)
                    (not (not_at_a_p5))

                    ; #53940: <==negation-removal== 88108 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6)
                           (not (leader_a)))
        :effect (and
                    ; #27373: origin
                    (at_a_p6)

                    ; #88108: origin
                    (not_at_a_p8)

                    ; #16008: <==negation-removal== 27373 (pos)
                    (not (not_at_a_p6))

                    ; #53940: <==negation-removal== 88108 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7)
                           (not (leader_a)))
        :effect (and
                    ; #57005: origin
                    (at_a_p7)

                    ; #88108: origin
                    (not_at_a_p8)

                    ; #30465: <==negation-removal== 57005 (pos)
                    (not (not_at_a_p7))

                    ; #53940: <==negation-removal== 88108 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8)
                           (not (leader_a)))
        :effect (and
                    ; #53940: origin
                    (at_a_p8)

                    ; #88108: origin
                    (not_at_a_p8)

                    ; #53940: <==negation-removal== 88108 (pos)
                    (not (at_a_p8))

                    ; #88108: <==negation-removal== 53940 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9)
                           (not (leader_a)))
        :effect (and
                    ; #15413: origin
                    (at_a_p9)

                    ; #88108: origin
                    (not_at_a_p8)

                    ; #49010: <==negation-removal== 15413 (pos)
                    (not (not_at_a_p9))

                    ; #53940: <==negation-removal== 88108 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1)
                           (not (leader_a)))
        :effect (and
                    ; #49010: origin
                    (not_at_a_p9)

                    ; #61150: origin
                    (at_a_p1)

                    ; #15413: <==negation-removal== 49010 (pos)
                    (not (at_a_p9))

                    ; #50469: <==negation-removal== 61150 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (at_a_p9)
                           (succ_p9_p10)
                           (not (leader_a)))
        :effect (and
                    ; #49010: origin
                    (not_at_a_p9)

                    ; #57891: origin
                    (at_a_p10)

                    ; #15413: <==negation-removal== 49010 (pos)
                    (not (at_a_p9))

                    ; #78243: <==negation-removal== 57891 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #45040: origin
                    (at_a_p11)

                    ; #49010: origin
                    (not_at_a_p9)

                    ; #15413: <==negation-removal== 49010 (pos)
                    (not (at_a_p9))

                    ; #39478: <==negation-removal== 45040 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12)
                           (not (leader_a)))
        :effect (and
                    ; #38910: origin
                    (at_a_p12)

                    ; #49010: origin
                    (not_at_a_p9)

                    ; #15413: <==negation-removal== 49010 (pos)
                    (not (at_a_p9))

                    ; #51572: <==negation-removal== 38910 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2)
                           (not (leader_a)))
        :effect (and
                    ; #49010: origin
                    (not_at_a_p9)

                    ; #81434: origin
                    (at_a_p2)

                    ; #15413: <==negation-removal== 49010 (pos)
                    (not (at_a_p9))

                    ; #39999: <==negation-removal== 81434 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3)
                           (not (leader_a)))
        :effect (and
                    ; #42177: origin
                    (at_a_p3)

                    ; #49010: origin
                    (not_at_a_p9)

                    ; #15413: <==negation-removal== 49010 (pos)
                    (not (at_a_p9))

                    ; #40841: <==negation-removal== 42177 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #49010: origin
                    (not_at_a_p9)

                    ; #51559: origin
                    (at_a_p4)

                    ; #13062: <==negation-removal== 51559 (pos)
                    (not (not_at_a_p4))

                    ; #15413: <==negation-removal== 49010 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5)
                           (not (leader_a)))
        :effect (and
                    ; #49010: origin
                    (not_at_a_p9)

                    ; #64620: origin
                    (at_a_p5)

                    ; #15391: <==negation-removal== 64620 (pos)
                    (not (not_at_a_p5))

                    ; #15413: <==negation-removal== 49010 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #27373: origin
                    (at_a_p6)

                    ; #49010: origin
                    (not_at_a_p9)

                    ; #15413: <==negation-removal== 49010 (pos)
                    (not (at_a_p9))

                    ; #16008: <==negation-removal== 27373 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7)
                           (not (leader_a)))
        :effect (and
                    ; #49010: origin
                    (not_at_a_p9)

                    ; #57005: origin
                    (at_a_p7)

                    ; #15413: <==negation-removal== 49010 (pos)
                    (not (at_a_p9))

                    ; #30465: <==negation-removal== 57005 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8)
                           (not (leader_a)))
        :effect (and
                    ; #49010: origin
                    (not_at_a_p9)

                    ; #53940: origin
                    (at_a_p8)

                    ; #15413: <==negation-removal== 49010 (pos)
                    (not (at_a_p9))

                    ; #88108: <==negation-removal== 53940 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9)
                           (not (leader_a)))
        :effect (and
                    ; #15413: origin
                    (at_a_p9)

                    ; #49010: origin
                    (not_at_a_p9)

                    ; #15413: <==negation-removal== 49010 (pos)
                    (not (at_a_p9))

                    ; #49010: <==negation-removal== 15413 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #30467: origin
                    (at_b_p1)

                    ; #42114: origin
                    (not_at_b_p10)

                    ; #55212: <==negation-removal== 30467 (pos)
                    (not (not_at_b_p1))

                    ; #75013: <==negation-removal== 42114 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10)
                           (not (leader_b)))
        :effect (and
                    ; #42114: origin
                    (not_at_b_p10)

                    ; #75013: origin
                    (at_b_p10)

                    ; #42114: <==negation-removal== 75013 (pos)
                    (not (not_at_b_p10))

                    ; #75013: <==negation-removal== 42114 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #42114: origin
                    (not_at_b_p10)

                    ; #82395: origin
                    (at_b_p11)

                    ; #29043: <==negation-removal== 82395 (pos)
                    (not (not_at_b_p11))

                    ; #75013: <==negation-removal== 42114 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #20357: origin
                    (at_b_p12)

                    ; #42114: origin
                    (not_at_b_p10)

                    ; #41563: <==negation-removal== 20357 (pos)
                    (not (not_at_b_p12))

                    ; #75013: <==negation-removal== 42114 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #25749: origin
                    (at_b_p2)

                    ; #42114: origin
                    (not_at_b_p10)

                    ; #75013: <==negation-removal== 42114 (pos)
                    (not (at_b_p10))

                    ; #91811: <==negation-removal== 25749 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #42114: origin
                    (not_at_b_p10)

                    ; #80644: origin
                    (at_b_p3)

                    ; #24063: <==negation-removal== 80644 (pos)
                    (not (not_at_b_p3))

                    ; #75013: <==negation-removal== 42114 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4)
                           (not (leader_b)))
        :effect (and
                    ; #42114: origin
                    (not_at_b_p10)

                    ; #54690: origin
                    (at_b_p4)

                    ; #72532: <==negation-removal== 54690 (pos)
                    (not (not_at_b_p4))

                    ; #75013: <==negation-removal== 42114 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #42114: origin
                    (not_at_b_p10)

                    ; #52578: origin
                    (at_b_p5)

                    ; #58053: <==negation-removal== 52578 (pos)
                    (not (not_at_b_p5))

                    ; #75013: <==negation-removal== 42114 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6)
                           (not (leader_b)))
        :effect (and
                    ; #42114: origin
                    (not_at_b_p10)

                    ; #75836: origin
                    (at_b_p6)

                    ; #73009: <==negation-removal== 75836 (pos)
                    (not (not_at_b_p6))

                    ; #75013: <==negation-removal== 42114 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #42114: origin
                    (not_at_b_p10)

                    ; #74133: origin
                    (at_b_p7)

                    ; #15174: <==negation-removal== 74133 (pos)
                    (not (not_at_b_p7))

                    ; #75013: <==negation-removal== 42114 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #37557: origin
                    (at_b_p8)

                    ; #42114: origin
                    (not_at_b_p10)

                    ; #48205: <==negation-removal== 37557 (pos)
                    (not (not_at_b_p8))

                    ; #75013: <==negation-removal== 42114 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9)
                           (not (leader_b)))
        :effect (and
                    ; #42114: origin
                    (not_at_b_p10)

                    ; #42696: origin
                    (at_b_p9)

                    ; #15006: <==negation-removal== 42696 (pos)
                    (not (not_at_b_p9))

                    ; #75013: <==negation-removal== 42114 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #29043: origin
                    (not_at_b_p11)

                    ; #30467: origin
                    (at_b_p1)

                    ; #55212: <==negation-removal== 30467 (pos)
                    (not (not_at_b_p1))

                    ; #82395: <==negation-removal== 29043 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #29043: origin
                    (not_at_b_p11)

                    ; #75013: origin
                    (at_b_p10)

                    ; #42114: <==negation-removal== 75013 (pos)
                    (not (not_at_b_p10))

                    ; #82395: <==negation-removal== 29043 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11)
                           (not (leader_b)))
        :effect (and
                    ; #29043: origin
                    (not_at_b_p11)

                    ; #82395: origin
                    (at_b_p11)

                    ; #29043: <==negation-removal== 82395 (pos)
                    (not (not_at_b_p11))

                    ; #82395: <==negation-removal== 29043 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #20357: origin
                    (at_b_p12)

                    ; #29043: origin
                    (not_at_b_p11)

                    ; #41563: <==negation-removal== 20357 (pos)
                    (not (not_at_b_p12))

                    ; #82395: <==negation-removal== 29043 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #25749: origin
                    (at_b_p2)

                    ; #29043: origin
                    (not_at_b_p11)

                    ; #82395: <==negation-removal== 29043 (pos)
                    (not (at_b_p11))

                    ; #91811: <==negation-removal== 25749 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #29043: origin
                    (not_at_b_p11)

                    ; #80644: origin
                    (at_b_p3)

                    ; #24063: <==negation-removal== 80644 (pos)
                    (not (not_at_b_p3))

                    ; #82395: <==negation-removal== 29043 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #29043: origin
                    (not_at_b_p11)

                    ; #54690: origin
                    (at_b_p4)

                    ; #72532: <==negation-removal== 54690 (pos)
                    (not (not_at_b_p4))

                    ; #82395: <==negation-removal== 29043 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #29043: origin
                    (not_at_b_p11)

                    ; #52578: origin
                    (at_b_p5)

                    ; #58053: <==negation-removal== 52578 (pos)
                    (not (not_at_b_p5))

                    ; #82395: <==negation-removal== 29043 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #29043: origin
                    (not_at_b_p11)

                    ; #75836: origin
                    (at_b_p6)

                    ; #73009: <==negation-removal== 75836 (pos)
                    (not (not_at_b_p6))

                    ; #82395: <==negation-removal== 29043 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #29043: origin
                    (not_at_b_p11)

                    ; #74133: origin
                    (at_b_p7)

                    ; #15174: <==negation-removal== 74133 (pos)
                    (not (not_at_b_p7))

                    ; #82395: <==negation-removal== 29043 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #29043: origin
                    (not_at_b_p11)

                    ; #37557: origin
                    (at_b_p8)

                    ; #48205: <==negation-removal== 37557 (pos)
                    (not (not_at_b_p8))

                    ; #82395: <==negation-removal== 29043 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #29043: origin
                    (not_at_b_p11)

                    ; #42696: origin
                    (at_b_p9)

                    ; #15006: <==negation-removal== 42696 (pos)
                    (not (not_at_b_p9))

                    ; #82395: <==negation-removal== 29043 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #30467: origin
                    (at_b_p1)

                    ; #41563: origin
                    (not_at_b_p12)

                    ; #20357: <==negation-removal== 41563 (pos)
                    (not (at_b_p12))

                    ; #55212: <==negation-removal== 30467 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10)
                           (not (leader_b)))
        :effect (and
                    ; #41563: origin
                    (not_at_b_p12)

                    ; #75013: origin
                    (at_b_p10)

                    ; #20357: <==negation-removal== 41563 (pos)
                    (not (at_b_p12))

                    ; #42114: <==negation-removal== 75013 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11)
                           (not (leader_b)))
        :effect (and
                    ; #41563: origin
                    (not_at_b_p12)

                    ; #82395: origin
                    (at_b_p11)

                    ; #20357: <==negation-removal== 41563 (pos)
                    (not (at_b_p12))

                    ; #29043: <==negation-removal== 82395 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12)
                           (not (leader_b)))
        :effect (and
                    ; #20357: origin
                    (at_b_p12)

                    ; #41563: origin
                    (not_at_b_p12)

                    ; #20357: <==negation-removal== 41563 (pos)
                    (not (at_b_p12))

                    ; #41563: <==negation-removal== 20357 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2)
                           (not (leader_b)))
        :effect (and
                    ; #25749: origin
                    (at_b_p2)

                    ; #41563: origin
                    (not_at_b_p12)

                    ; #20357: <==negation-removal== 41563 (pos)
                    (not (at_b_p12))

                    ; #91811: <==negation-removal== 25749 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3)
                           (not (leader_b)))
        :effect (and
                    ; #41563: origin
                    (not_at_b_p12)

                    ; #80644: origin
                    (at_b_p3)

                    ; #20357: <==negation-removal== 41563 (pos)
                    (not (at_b_p12))

                    ; #24063: <==negation-removal== 80644 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4)
                           (not (leader_b)))
        :effect (and
                    ; #41563: origin
                    (not_at_b_p12)

                    ; #54690: origin
                    (at_b_p4)

                    ; #20357: <==negation-removal== 41563 (pos)
                    (not (at_b_p12))

                    ; #72532: <==negation-removal== 54690 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5)
                           (not (leader_b)))
        :effect (and
                    ; #41563: origin
                    (not_at_b_p12)

                    ; #52578: origin
                    (at_b_p5)

                    ; #20357: <==negation-removal== 41563 (pos)
                    (not (at_b_p12))

                    ; #58053: <==negation-removal== 52578 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6)
                           (not (leader_b)))
        :effect (and
                    ; #41563: origin
                    (not_at_b_p12)

                    ; #75836: origin
                    (at_b_p6)

                    ; #20357: <==negation-removal== 41563 (pos)
                    (not (at_b_p12))

                    ; #73009: <==negation-removal== 75836 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #41563: origin
                    (not_at_b_p12)

                    ; #74133: origin
                    (at_b_p7)

                    ; #15174: <==negation-removal== 74133 (pos)
                    (not (not_at_b_p7))

                    ; #20357: <==negation-removal== 41563 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8)
                           (not (leader_b)))
        :effect (and
                    ; #37557: origin
                    (at_b_p8)

                    ; #41563: origin
                    (not_at_b_p12)

                    ; #20357: <==negation-removal== 41563 (pos)
                    (not (at_b_p12))

                    ; #48205: <==negation-removal== 37557 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9)
                           (not (leader_b)))
        :effect (and
                    ; #41563: origin
                    (not_at_b_p12)

                    ; #42696: origin
                    (at_b_p9)

                    ; #15006: <==negation-removal== 42696 (pos)
                    (not (not_at_b_p9))

                    ; #20357: <==negation-removal== 41563 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #30467: origin
                    (at_b_p1)

                    ; #55212: origin
                    (not_at_b_p1)

                    ; #30467: <==negation-removal== 55212 (pos)
                    (not (at_b_p1))

                    ; #55212: <==negation-removal== 30467 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (at_b_p1)
                           (succ_p1_p10)
                           (not (leader_b)))
        :effect (and
                    ; #55212: origin
                    (not_at_b_p1)

                    ; #75013: origin
                    (at_b_p10)

                    ; #30467: <==negation-removal== 55212 (pos)
                    (not (at_b_p1))

                    ; #42114: <==negation-removal== 75013 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11)
                           (not (leader_b)))
        :effect (and
                    ; #55212: origin
                    (not_at_b_p1)

                    ; #82395: origin
                    (at_b_p11)

                    ; #29043: <==negation-removal== 82395 (pos)
                    (not (not_at_b_p11))

                    ; #30467: <==negation-removal== 55212 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #20357: origin
                    (at_b_p12)

                    ; #55212: origin
                    (not_at_b_p1)

                    ; #30467: <==negation-removal== 55212 (pos)
                    (not (at_b_p1))

                    ; #41563: <==negation-removal== 20357 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #25749: origin
                    (at_b_p2)

                    ; #55212: origin
                    (not_at_b_p1)

                    ; #30467: <==negation-removal== 55212 (pos)
                    (not (at_b_p1))

                    ; #91811: <==negation-removal== 25749 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3)
                           (not (leader_b)))
        :effect (and
                    ; #55212: origin
                    (not_at_b_p1)

                    ; #80644: origin
                    (at_b_p3)

                    ; #24063: <==negation-removal== 80644 (pos)
                    (not (not_at_b_p3))

                    ; #30467: <==negation-removal== 55212 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #54690: origin
                    (at_b_p4)

                    ; #55212: origin
                    (not_at_b_p1)

                    ; #30467: <==negation-removal== 55212 (pos)
                    (not (at_b_p1))

                    ; #72532: <==negation-removal== 54690 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #52578: origin
                    (at_b_p5)

                    ; #55212: origin
                    (not_at_b_p1)

                    ; #30467: <==negation-removal== 55212 (pos)
                    (not (at_b_p1))

                    ; #58053: <==negation-removal== 52578 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #55212: origin
                    (not_at_b_p1)

                    ; #75836: origin
                    (at_b_p6)

                    ; #30467: <==negation-removal== 55212 (pos)
                    (not (at_b_p1))

                    ; #73009: <==negation-removal== 75836 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #55212: origin
                    (not_at_b_p1)

                    ; #74133: origin
                    (at_b_p7)

                    ; #15174: <==negation-removal== 74133 (pos)
                    (not (not_at_b_p7))

                    ; #30467: <==negation-removal== 55212 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #37557: origin
                    (at_b_p8)

                    ; #55212: origin
                    (not_at_b_p1)

                    ; #30467: <==negation-removal== 55212 (pos)
                    (not (at_b_p1))

                    ; #48205: <==negation-removal== 37557 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #42696: origin
                    (at_b_p9)

                    ; #55212: origin
                    (not_at_b_p1)

                    ; #15006: <==negation-removal== 42696 (pos)
                    (not (not_at_b_p9))

                    ; #30467: <==negation-removal== 55212 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #30467: origin
                    (at_b_p1)

                    ; #91811: origin
                    (not_at_b_p2)

                    ; #25749: <==negation-removal== 91811 (pos)
                    (not (at_b_p2))

                    ; #55212: <==negation-removal== 30467 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #75013: origin
                    (at_b_p10)

                    ; #91811: origin
                    (not_at_b_p2)

                    ; #25749: <==negation-removal== 91811 (pos)
                    (not (at_b_p2))

                    ; #42114: <==negation-removal== 75013 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #82395: origin
                    (at_b_p11)

                    ; #91811: origin
                    (not_at_b_p2)

                    ; #25749: <==negation-removal== 91811 (pos)
                    (not (at_b_p2))

                    ; #29043: <==negation-removal== 82395 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #20357: origin
                    (at_b_p12)

                    ; #91811: origin
                    (not_at_b_p2)

                    ; #25749: <==negation-removal== 91811 (pos)
                    (not (at_b_p2))

                    ; #41563: <==negation-removal== 20357 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2)
                           (not (leader_b)))
        :effect (and
                    ; #25749: origin
                    (at_b_p2)

                    ; #91811: origin
                    (not_at_b_p2)

                    ; #25749: <==negation-removal== 91811 (pos)
                    (not (at_b_p2))

                    ; #91811: <==negation-removal== 25749 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #80644: origin
                    (at_b_p3)

                    ; #91811: origin
                    (not_at_b_p2)

                    ; #24063: <==negation-removal== 80644 (pos)
                    (not (not_at_b_p3))

                    ; #25749: <==negation-removal== 91811 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4)
                           (not (leader_b)))
        :effect (and
                    ; #54690: origin
                    (at_b_p4)

                    ; #91811: origin
                    (not_at_b_p2)

                    ; #25749: <==negation-removal== 91811 (pos)
                    (not (at_b_p2))

                    ; #72532: <==negation-removal== 54690 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5)
                           (not (leader_b)))
        :effect (and
                    ; #52578: origin
                    (at_b_p5)

                    ; #91811: origin
                    (not_at_b_p2)

                    ; #25749: <==negation-removal== 91811 (pos)
                    (not (at_b_p2))

                    ; #58053: <==negation-removal== 52578 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #75836: origin
                    (at_b_p6)

                    ; #91811: origin
                    (not_at_b_p2)

                    ; #25749: <==negation-removal== 91811 (pos)
                    (not (at_b_p2))

                    ; #73009: <==negation-removal== 75836 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #74133: origin
                    (at_b_p7)

                    ; #91811: origin
                    (not_at_b_p2)

                    ; #15174: <==negation-removal== 74133 (pos)
                    (not (not_at_b_p7))

                    ; #25749: <==negation-removal== 91811 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #37557: origin
                    (at_b_p8)

                    ; #91811: origin
                    (not_at_b_p2)

                    ; #25749: <==negation-removal== 91811 (pos)
                    (not (at_b_p2))

                    ; #48205: <==negation-removal== 37557 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #42696: origin
                    (at_b_p9)

                    ; #91811: origin
                    (not_at_b_p2)

                    ; #15006: <==negation-removal== 42696 (pos)
                    (not (not_at_b_p9))

                    ; #25749: <==negation-removal== 91811 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1)
                           (not (leader_b)))
        :effect (and
                    ; #24063: origin
                    (not_at_b_p3)

                    ; #30467: origin
                    (at_b_p1)

                    ; #55212: <==negation-removal== 30467 (pos)
                    (not (not_at_b_p1))

                    ; #80644: <==negation-removal== 24063 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10)
                           (not (leader_b)))
        :effect (and
                    ; #24063: origin
                    (not_at_b_p3)

                    ; #75013: origin
                    (at_b_p10)

                    ; #42114: <==negation-removal== 75013 (pos)
                    (not (not_at_b_p10))

                    ; #80644: <==negation-removal== 24063 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11)
                           (not (leader_b)))
        :effect (and
                    ; #24063: origin
                    (not_at_b_p3)

                    ; #82395: origin
                    (at_b_p11)

                    ; #29043: <==negation-removal== 82395 (pos)
                    (not (not_at_b_p11))

                    ; #80644: <==negation-removal== 24063 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12)
                           (not (leader_b)))
        :effect (and
                    ; #20357: origin
                    (at_b_p12)

                    ; #24063: origin
                    (not_at_b_p3)

                    ; #41563: <==negation-removal== 20357 (pos)
                    (not (not_at_b_p12))

                    ; #80644: <==negation-removal== 24063 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2)
                           (not (leader_b)))
        :effect (and
                    ; #24063: origin
                    (not_at_b_p3)

                    ; #25749: origin
                    (at_b_p2)

                    ; #80644: <==negation-removal== 24063 (pos)
                    (not (at_b_p3))

                    ; #91811: <==negation-removal== 25749 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3)
                           (not (leader_b)))
        :effect (and
                    ; #24063: origin
                    (not_at_b_p3)

                    ; #80644: origin
                    (at_b_p3)

                    ; #24063: <==negation-removal== 80644 (pos)
                    (not (not_at_b_p3))

                    ; #80644: <==negation-removal== 24063 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4)
                           (not (leader_b)))
        :effect (and
                    ; #24063: origin
                    (not_at_b_p3)

                    ; #54690: origin
                    (at_b_p4)

                    ; #72532: <==negation-removal== 54690 (pos)
                    (not (not_at_b_p4))

                    ; #80644: <==negation-removal== 24063 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5)
                           (not (leader_b)))
        :effect (and
                    ; #24063: origin
                    (not_at_b_p3)

                    ; #52578: origin
                    (at_b_p5)

                    ; #58053: <==negation-removal== 52578 (pos)
                    (not (not_at_b_p5))

                    ; #80644: <==negation-removal== 24063 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6)
                           (not (leader_b)))
        :effect (and
                    ; #24063: origin
                    (not_at_b_p3)

                    ; #75836: origin
                    (at_b_p6)

                    ; #73009: <==negation-removal== 75836 (pos)
                    (not (not_at_b_p6))

                    ; #80644: <==negation-removal== 24063 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7)
                           (not (leader_b)))
        :effect (and
                    ; #24063: origin
                    (not_at_b_p3)

                    ; #74133: origin
                    (at_b_p7)

                    ; #15174: <==negation-removal== 74133 (pos)
                    (not (not_at_b_p7))

                    ; #80644: <==negation-removal== 24063 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8)
                           (not (leader_b)))
        :effect (and
                    ; #24063: origin
                    (not_at_b_p3)

                    ; #37557: origin
                    (at_b_p8)

                    ; #48205: <==negation-removal== 37557 (pos)
                    (not (not_at_b_p8))

                    ; #80644: <==negation-removal== 24063 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9)
                           (not (leader_b)))
        :effect (and
                    ; #24063: origin
                    (not_at_b_p3)

                    ; #42696: origin
                    (at_b_p9)

                    ; #15006: <==negation-removal== 42696 (pos)
                    (not (not_at_b_p9))

                    ; #80644: <==negation-removal== 24063 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #30467: origin
                    (at_b_p1)

                    ; #72532: origin
                    (not_at_b_p4)

                    ; #54690: <==negation-removal== 72532 (pos)
                    (not (at_b_p4))

                    ; #55212: <==negation-removal== 30467 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #72532: origin
                    (not_at_b_p4)

                    ; #75013: origin
                    (at_b_p10)

                    ; #42114: <==negation-removal== 75013 (pos)
                    (not (not_at_b_p10))

                    ; #54690: <==negation-removal== 72532 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #72532: origin
                    (not_at_b_p4)

                    ; #82395: origin
                    (at_b_p11)

                    ; #29043: <==negation-removal== 82395 (pos)
                    (not (not_at_b_p11))

                    ; #54690: <==negation-removal== 72532 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12)
                           (not (leader_b)))
        :effect (and
                    ; #20357: origin
                    (at_b_p12)

                    ; #72532: origin
                    (not_at_b_p4)

                    ; #41563: <==negation-removal== 20357 (pos)
                    (not (not_at_b_p12))

                    ; #54690: <==negation-removal== 72532 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2)
                           (not (leader_b)))
        :effect (and
                    ; #25749: origin
                    (at_b_p2)

                    ; #72532: origin
                    (not_at_b_p4)

                    ; #54690: <==negation-removal== 72532 (pos)
                    (not (at_b_p4))

                    ; #91811: <==negation-removal== 25749 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3)
                           (not (leader_b)))
        :effect (and
                    ; #72532: origin
                    (not_at_b_p4)

                    ; #80644: origin
                    (at_b_p3)

                    ; #24063: <==negation-removal== 80644 (pos)
                    (not (not_at_b_p3))

                    ; #54690: <==negation-removal== 72532 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #54690: origin
                    (at_b_p4)

                    ; #72532: origin
                    (not_at_b_p4)

                    ; #54690: <==negation-removal== 72532 (pos)
                    (not (at_b_p4))

                    ; #72532: <==negation-removal== 54690 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5)
                           (not (leader_b)))
        :effect (and
                    ; #52578: origin
                    (at_b_p5)

                    ; #72532: origin
                    (not_at_b_p4)

                    ; #54690: <==negation-removal== 72532 (pos)
                    (not (at_b_p4))

                    ; #58053: <==negation-removal== 52578 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6)
                           (not (leader_b)))
        :effect (and
                    ; #72532: origin
                    (not_at_b_p4)

                    ; #75836: origin
                    (at_b_p6)

                    ; #54690: <==negation-removal== 72532 (pos)
                    (not (at_b_p4))

                    ; #73009: <==negation-removal== 75836 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #72532: origin
                    (not_at_b_p4)

                    ; #74133: origin
                    (at_b_p7)

                    ; #15174: <==negation-removal== 74133 (pos)
                    (not (not_at_b_p7))

                    ; #54690: <==negation-removal== 72532 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8)
                           (not (leader_b)))
        :effect (and
                    ; #37557: origin
                    (at_b_p8)

                    ; #72532: origin
                    (not_at_b_p4)

                    ; #48205: <==negation-removal== 37557 (pos)
                    (not (not_at_b_p8))

                    ; #54690: <==negation-removal== 72532 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9)
                           (not (leader_b)))
        :effect (and
                    ; #42696: origin
                    (at_b_p9)

                    ; #72532: origin
                    (not_at_b_p4)

                    ; #15006: <==negation-removal== 42696 (pos)
                    (not (not_at_b_p9))

                    ; #54690: <==negation-removal== 72532 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #30467: origin
                    (at_b_p1)

                    ; #58053: origin
                    (not_at_b_p5)

                    ; #52578: <==negation-removal== 58053 (pos)
                    (not (at_b_p5))

                    ; #55212: <==negation-removal== 30467 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #58053: origin
                    (not_at_b_p5)

                    ; #75013: origin
                    (at_b_p10)

                    ; #42114: <==negation-removal== 75013 (pos)
                    (not (not_at_b_p10))

                    ; #52578: <==negation-removal== 58053 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #58053: origin
                    (not_at_b_p5)

                    ; #82395: origin
                    (at_b_p11)

                    ; #29043: <==negation-removal== 82395 (pos)
                    (not (not_at_b_p11))

                    ; #52578: <==negation-removal== 58053 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #20357: origin
                    (at_b_p12)

                    ; #58053: origin
                    (not_at_b_p5)

                    ; #41563: <==negation-removal== 20357 (pos)
                    (not (not_at_b_p12))

                    ; #52578: <==negation-removal== 58053 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #25749: origin
                    (at_b_p2)

                    ; #58053: origin
                    (not_at_b_p5)

                    ; #52578: <==negation-removal== 58053 (pos)
                    (not (at_b_p5))

                    ; #91811: <==negation-removal== 25749 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #58053: origin
                    (not_at_b_p5)

                    ; #80644: origin
                    (at_b_p3)

                    ; #24063: <==negation-removal== 80644 (pos)
                    (not (not_at_b_p3))

                    ; #52578: <==negation-removal== 58053 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #54690: origin
                    (at_b_p4)

                    ; #58053: origin
                    (not_at_b_p5)

                    ; #52578: <==negation-removal== 58053 (pos)
                    (not (at_b_p5))

                    ; #72532: <==negation-removal== 54690 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #52578: origin
                    (at_b_p5)

                    ; #58053: origin
                    (not_at_b_p5)

                    ; #52578: <==negation-removal== 58053 (pos)
                    (not (at_b_p5))

                    ; #58053: <==negation-removal== 52578 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6)
                           (not (leader_b)))
        :effect (and
                    ; #58053: origin
                    (not_at_b_p5)

                    ; #75836: origin
                    (at_b_p6)

                    ; #52578: <==negation-removal== 58053 (pos)
                    (not (at_b_p5))

                    ; #73009: <==negation-removal== 75836 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7)
                           (not (leader_b)))
        :effect (and
                    ; #58053: origin
                    (not_at_b_p5)

                    ; #74133: origin
                    (at_b_p7)

                    ; #15174: <==negation-removal== 74133 (pos)
                    (not (not_at_b_p7))

                    ; #52578: <==negation-removal== 58053 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #37557: origin
                    (at_b_p8)

                    ; #58053: origin
                    (not_at_b_p5)

                    ; #48205: <==negation-removal== 37557 (pos)
                    (not (not_at_b_p8))

                    ; #52578: <==negation-removal== 58053 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #42696: origin
                    (at_b_p9)

                    ; #58053: origin
                    (not_at_b_p5)

                    ; #15006: <==negation-removal== 42696 (pos)
                    (not (not_at_b_p9))

                    ; #52578: <==negation-removal== 58053 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #30467: origin
                    (at_b_p1)

                    ; #73009: origin
                    (not_at_b_p6)

                    ; #55212: <==negation-removal== 30467 (pos)
                    (not (not_at_b_p1))

                    ; #75836: <==negation-removal== 73009 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #73009: origin
                    (not_at_b_p6)

                    ; #75013: origin
                    (at_b_p10)

                    ; #42114: <==negation-removal== 75013 (pos)
                    (not (not_at_b_p10))

                    ; #75836: <==negation-removal== 73009 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #73009: origin
                    (not_at_b_p6)

                    ; #82395: origin
                    (at_b_p11)

                    ; #29043: <==negation-removal== 82395 (pos)
                    (not (not_at_b_p11))

                    ; #75836: <==negation-removal== 73009 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #20357: origin
                    (at_b_p12)

                    ; #73009: origin
                    (not_at_b_p6)

                    ; #41563: <==negation-removal== 20357 (pos)
                    (not (not_at_b_p12))

                    ; #75836: <==negation-removal== 73009 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2)
                           (not (leader_b)))
        :effect (and
                    ; #25749: origin
                    (at_b_p2)

                    ; #73009: origin
                    (not_at_b_p6)

                    ; #75836: <==negation-removal== 73009 (pos)
                    (not (at_b_p6))

                    ; #91811: <==negation-removal== 25749 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #73009: origin
                    (not_at_b_p6)

                    ; #80644: origin
                    (at_b_p3)

                    ; #24063: <==negation-removal== 80644 (pos)
                    (not (not_at_b_p3))

                    ; #75836: <==negation-removal== 73009 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #54690: origin
                    (at_b_p4)

                    ; #73009: origin
                    (not_at_b_p6)

                    ; #72532: <==negation-removal== 54690 (pos)
                    (not (not_at_b_p4))

                    ; #75836: <==negation-removal== 73009 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #52578: origin
                    (at_b_p5)

                    ; #73009: origin
                    (not_at_b_p6)

                    ; #58053: <==negation-removal== 52578 (pos)
                    (not (not_at_b_p5))

                    ; #75836: <==negation-removal== 73009 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #73009: origin
                    (not_at_b_p6)

                    ; #75836: origin
                    (at_b_p6)

                    ; #73009: <==negation-removal== 75836 (pos)
                    (not (not_at_b_p6))

                    ; #75836: <==negation-removal== 73009 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #73009: origin
                    (not_at_b_p6)

                    ; #74133: origin
                    (at_b_p7)

                    ; #15174: <==negation-removal== 74133 (pos)
                    (not (not_at_b_p7))

                    ; #75836: <==negation-removal== 73009 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #37557: origin
                    (at_b_p8)

                    ; #73009: origin
                    (not_at_b_p6)

                    ; #48205: <==negation-removal== 37557 (pos)
                    (not (not_at_b_p8))

                    ; #75836: <==negation-removal== 73009 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9)
                           (not (leader_b)))
        :effect (and
                    ; #42696: origin
                    (at_b_p9)

                    ; #73009: origin
                    (not_at_b_p6)

                    ; #15006: <==negation-removal== 42696 (pos)
                    (not (not_at_b_p9))

                    ; #75836: <==negation-removal== 73009 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1)
                           (not (leader_b)))
        :effect (and
                    ; #15174: origin
                    (not_at_b_p7)

                    ; #30467: origin
                    (at_b_p1)

                    ; #55212: <==negation-removal== 30467 (pos)
                    (not (not_at_b_p1))

                    ; #74133: <==negation-removal== 15174 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #15174: origin
                    (not_at_b_p7)

                    ; #75013: origin
                    (at_b_p10)

                    ; #42114: <==negation-removal== 75013 (pos)
                    (not (not_at_b_p10))

                    ; #74133: <==negation-removal== 15174 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #15174: origin
                    (not_at_b_p7)

                    ; #82395: origin
                    (at_b_p11)

                    ; #29043: <==negation-removal== 82395 (pos)
                    (not (not_at_b_p11))

                    ; #74133: <==negation-removal== 15174 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (at_b_p7)
                           (succ_p7_p12)
                           (not (leader_b)))
        :effect (and
                    ; #15174: origin
                    (not_at_b_p7)

                    ; #20357: origin
                    (at_b_p12)

                    ; #41563: <==negation-removal== 20357 (pos)
                    (not (not_at_b_p12))

                    ; #74133: <==negation-removal== 15174 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #15174: origin
                    (not_at_b_p7)

                    ; #25749: origin
                    (at_b_p2)

                    ; #74133: <==negation-removal== 15174 (pos)
                    (not (at_b_p7))

                    ; #91811: <==negation-removal== 25749 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #15174: origin
                    (not_at_b_p7)

                    ; #80644: origin
                    (at_b_p3)

                    ; #24063: <==negation-removal== 80644 (pos)
                    (not (not_at_b_p3))

                    ; #74133: <==negation-removal== 15174 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #15174: origin
                    (not_at_b_p7)

                    ; #54690: origin
                    (at_b_p4)

                    ; #72532: <==negation-removal== 54690 (pos)
                    (not (not_at_b_p4))

                    ; #74133: <==negation-removal== 15174 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #15174: origin
                    (not_at_b_p7)

                    ; #52578: origin
                    (at_b_p5)

                    ; #58053: <==negation-removal== 52578 (pos)
                    (not (not_at_b_p5))

                    ; #74133: <==negation-removal== 15174 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #15174: origin
                    (not_at_b_p7)

                    ; #75836: origin
                    (at_b_p6)

                    ; #73009: <==negation-removal== 75836 (pos)
                    (not (not_at_b_p6))

                    ; #74133: <==negation-removal== 15174 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7)
                           (not (leader_b)))
        :effect (and
                    ; #15174: origin
                    (not_at_b_p7)

                    ; #74133: origin
                    (at_b_p7)

                    ; #15174: <==negation-removal== 74133 (pos)
                    (not (not_at_b_p7))

                    ; #74133: <==negation-removal== 15174 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #15174: origin
                    (not_at_b_p7)

                    ; #37557: origin
                    (at_b_p8)

                    ; #48205: <==negation-removal== 37557 (pos)
                    (not (not_at_b_p8))

                    ; #74133: <==negation-removal== 15174 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #15174: origin
                    (not_at_b_p7)

                    ; #42696: origin
                    (at_b_p9)

                    ; #15006: <==negation-removal== 42696 (pos)
                    (not (not_at_b_p9))

                    ; #74133: <==negation-removal== 15174 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #30467: origin
                    (at_b_p1)

                    ; #48205: origin
                    (not_at_b_p8)

                    ; #37557: <==negation-removal== 48205 (pos)
                    (not (at_b_p8))

                    ; #55212: <==negation-removal== 30467 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #48205: origin
                    (not_at_b_p8)

                    ; #75013: origin
                    (at_b_p10)

                    ; #37557: <==negation-removal== 48205 (pos)
                    (not (at_b_p8))

                    ; #42114: <==negation-removal== 75013 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #48205: origin
                    (not_at_b_p8)

                    ; #82395: origin
                    (at_b_p11)

                    ; #29043: <==negation-removal== 82395 (pos)
                    (not (not_at_b_p11))

                    ; #37557: <==negation-removal== 48205 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #20357: origin
                    (at_b_p12)

                    ; #48205: origin
                    (not_at_b_p8)

                    ; #37557: <==negation-removal== 48205 (pos)
                    (not (at_b_p8))

                    ; #41563: <==negation-removal== 20357 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #25749: origin
                    (at_b_p2)

                    ; #48205: origin
                    (not_at_b_p8)

                    ; #37557: <==negation-removal== 48205 (pos)
                    (not (at_b_p8))

                    ; #91811: <==negation-removal== 25749 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #48205: origin
                    (not_at_b_p8)

                    ; #80644: origin
                    (at_b_p3)

                    ; #24063: <==negation-removal== 80644 (pos)
                    (not (not_at_b_p3))

                    ; #37557: <==negation-removal== 48205 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #48205: origin
                    (not_at_b_p8)

                    ; #54690: origin
                    (at_b_p4)

                    ; #37557: <==negation-removal== 48205 (pos)
                    (not (at_b_p8))

                    ; #72532: <==negation-removal== 54690 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #48205: origin
                    (not_at_b_p8)

                    ; #52578: origin
                    (at_b_p5)

                    ; #37557: <==negation-removal== 48205 (pos)
                    (not (at_b_p8))

                    ; #58053: <==negation-removal== 52578 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #48205: origin
                    (not_at_b_p8)

                    ; #75836: origin
                    (at_b_p6)

                    ; #37557: <==negation-removal== 48205 (pos)
                    (not (at_b_p8))

                    ; #73009: <==negation-removal== 75836 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #48205: origin
                    (not_at_b_p8)

                    ; #74133: origin
                    (at_b_p7)

                    ; #15174: <==negation-removal== 74133 (pos)
                    (not (not_at_b_p7))

                    ; #37557: <==negation-removal== 48205 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #37557: origin
                    (at_b_p8)

                    ; #48205: origin
                    (not_at_b_p8)

                    ; #37557: <==negation-removal== 48205 (pos)
                    (not (at_b_p8))

                    ; #48205: <==negation-removal== 37557 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #42696: origin
                    (at_b_p9)

                    ; #48205: origin
                    (not_at_b_p8)

                    ; #15006: <==negation-removal== 42696 (pos)
                    (not (not_at_b_p9))

                    ; #37557: <==negation-removal== 48205 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #15006: origin
                    (not_at_b_p9)

                    ; #30467: origin
                    (at_b_p1)

                    ; #42696: <==negation-removal== 15006 (pos)
                    (not (at_b_p9))

                    ; #55212: <==negation-removal== 30467 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #15006: origin
                    (not_at_b_p9)

                    ; #75013: origin
                    (at_b_p10)

                    ; #42114: <==negation-removal== 75013 (pos)
                    (not (not_at_b_p10))

                    ; #42696: <==negation-removal== 15006 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #15006: origin
                    (not_at_b_p9)

                    ; #82395: origin
                    (at_b_p11)

                    ; #29043: <==negation-removal== 82395 (pos)
                    (not (not_at_b_p11))

                    ; #42696: <==negation-removal== 15006 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #15006: origin
                    (not_at_b_p9)

                    ; #20357: origin
                    (at_b_p12)

                    ; #41563: <==negation-removal== 20357 (pos)
                    (not (not_at_b_p12))

                    ; #42696: <==negation-removal== 15006 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2)
                           (not (leader_b)))
        :effect (and
                    ; #15006: origin
                    (not_at_b_p9)

                    ; #25749: origin
                    (at_b_p2)

                    ; #42696: <==negation-removal== 15006 (pos)
                    (not (at_b_p9))

                    ; #91811: <==negation-removal== 25749 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #15006: origin
                    (not_at_b_p9)

                    ; #80644: origin
                    (at_b_p3)

                    ; #24063: <==negation-removal== 80644 (pos)
                    (not (not_at_b_p3))

                    ; #42696: <==negation-removal== 15006 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #15006: origin
                    (not_at_b_p9)

                    ; #54690: origin
                    (at_b_p4)

                    ; #42696: <==negation-removal== 15006 (pos)
                    (not (at_b_p9))

                    ; #72532: <==negation-removal== 54690 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #15006: origin
                    (not_at_b_p9)

                    ; #52578: origin
                    (at_b_p5)

                    ; #42696: <==negation-removal== 15006 (pos)
                    (not (at_b_p9))

                    ; #58053: <==negation-removal== 52578 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #15006: origin
                    (not_at_b_p9)

                    ; #75836: origin
                    (at_b_p6)

                    ; #42696: <==negation-removal== 15006 (pos)
                    (not (at_b_p9))

                    ; #73009: <==negation-removal== 75836 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #15006: origin
                    (not_at_b_p9)

                    ; #74133: origin
                    (at_b_p7)

                    ; #15174: <==negation-removal== 74133 (pos)
                    (not (not_at_b_p7))

                    ; #42696: <==negation-removal== 15006 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8)
                           (not (leader_b)))
        :effect (and
                    ; #15006: origin
                    (not_at_b_p9)

                    ; #37557: origin
                    (at_b_p8)

                    ; #42696: <==negation-removal== 15006 (pos)
                    (not (at_b_p9))

                    ; #48205: <==negation-removal== 37557 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #15006: origin
                    (not_at_b_p9)

                    ; #42696: origin
                    (at_b_p9)

                    ; #15006: <==negation-removal== 42696 (pos)
                    (not (not_at_b_p9))

                    ; #42696: <==negation-removal== 15006 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #35866: origin
                    (at_c_p1)

                    ; #50445: origin
                    (not_at_c_p10)

                    ; #69308: <==negation-removal== 50445 (pos)
                    (not (at_c_p10))

                    ; #83619: <==negation-removal== 35866 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10)
                           (not (leader_c)))
        :effect (and
                    ; #50445: origin
                    (not_at_c_p10)

                    ; #69308: origin
                    (at_c_p10)

                    ; #50445: <==negation-removal== 69308 (pos)
                    (not (not_at_c_p10))

                    ; #69308: <==negation-removal== 50445 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #28776: origin
                    (at_c_p11)

                    ; #50445: origin
                    (not_at_c_p10)

                    ; #69308: <==negation-removal== 50445 (pos)
                    (not (at_c_p10))

                    ; #85957: <==negation-removal== 28776 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #50445: origin
                    (not_at_c_p10)

                    ; #89812: origin
                    (at_c_p12)

                    ; #34025: <==negation-removal== 89812 (pos)
                    (not (not_at_c_p12))

                    ; #69308: <==negation-removal== 50445 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #42478: origin
                    (at_c_p2)

                    ; #50445: origin
                    (not_at_c_p10)

                    ; #35195: <==negation-removal== 42478 (pos)
                    (not (not_at_c_p2))

                    ; #69308: <==negation-removal== 50445 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #40317: origin
                    (at_c_p3)

                    ; #50445: origin
                    (not_at_c_p10)

                    ; #69308: <==negation-removal== 50445 (pos)
                    (not (at_c_p10))

                    ; #83037: <==negation-removal== 40317 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4)
                           (not (leader_c)))
        :effect (and
                    ; #24081: origin
                    (at_c_p4)

                    ; #50445: origin
                    (not_at_c_p10)

                    ; #69308: <==negation-removal== 50445 (pos)
                    (not (at_c_p10))

                    ; #76171: <==negation-removal== 24081 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #25586: origin
                    (at_c_p5)

                    ; #50445: origin
                    (not_at_c_p10)

                    ; #64553: <==negation-removal== 25586 (pos)
                    (not (not_at_c_p5))

                    ; #69308: <==negation-removal== 50445 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6)
                           (not (leader_c)))
        :effect (and
                    ; #28440: origin
                    (at_c_p6)

                    ; #50445: origin
                    (not_at_c_p10)

                    ; #33742: <==negation-removal== 28440 (pos)
                    (not (not_at_c_p6))

                    ; #69308: <==negation-removal== 50445 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #50445: origin
                    (not_at_c_p10)

                    ; #62109: origin
                    (at_c_p7)

                    ; #48782: <==negation-removal== 62109 (pos)
                    (not (not_at_c_p7))

                    ; #69308: <==negation-removal== 50445 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #50445: origin
                    (not_at_c_p10)

                    ; #84514: origin
                    (at_c_p8)

                    ; #44649: <==negation-removal== 84514 (pos)
                    (not (not_at_c_p8))

                    ; #69308: <==negation-removal== 50445 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9)
                           (not (leader_c)))
        :effect (and
                    ; #50445: origin
                    (not_at_c_p10)

                    ; #51984: origin
                    (at_c_p9)

                    ; #11369: <==negation-removal== 51984 (pos)
                    (not (not_at_c_p9))

                    ; #69308: <==negation-removal== 50445 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #35866: origin
                    (at_c_p1)

                    ; #85957: origin
                    (not_at_c_p11)

                    ; #28776: <==negation-removal== 85957 (pos)
                    (not (at_c_p11))

                    ; #83619: <==negation-removal== 35866 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #69308: origin
                    (at_c_p10)

                    ; #85957: origin
                    (not_at_c_p11)

                    ; #28776: <==negation-removal== 85957 (pos)
                    (not (at_c_p11))

                    ; #50445: <==negation-removal== 69308 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11)
                           (not (leader_c)))
        :effect (and
                    ; #28776: origin
                    (at_c_p11)

                    ; #85957: origin
                    (not_at_c_p11)

                    ; #28776: <==negation-removal== 85957 (pos)
                    (not (at_c_p11))

                    ; #85957: <==negation-removal== 28776 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12)
                           (not (leader_c)))
        :effect (and
                    ; #85957: origin
                    (not_at_c_p11)

                    ; #89812: origin
                    (at_c_p12)

                    ; #28776: <==negation-removal== 85957 (pos)
                    (not (at_c_p11))

                    ; #34025: <==negation-removal== 89812 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #42478: origin
                    (at_c_p2)

                    ; #85957: origin
                    (not_at_c_p11)

                    ; #28776: <==negation-removal== 85957 (pos)
                    (not (at_c_p11))

                    ; #35195: <==negation-removal== 42478 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #40317: origin
                    (at_c_p3)

                    ; #85957: origin
                    (not_at_c_p11)

                    ; #28776: <==negation-removal== 85957 (pos)
                    (not (at_c_p11))

                    ; #83037: <==negation-removal== 40317 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #24081: origin
                    (at_c_p4)

                    ; #85957: origin
                    (not_at_c_p11)

                    ; #28776: <==negation-removal== 85957 (pos)
                    (not (at_c_p11))

                    ; #76171: <==negation-removal== 24081 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #25586: origin
                    (at_c_p5)

                    ; #85957: origin
                    (not_at_c_p11)

                    ; #28776: <==negation-removal== 85957 (pos)
                    (not (at_c_p11))

                    ; #64553: <==negation-removal== 25586 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #28440: origin
                    (at_c_p6)

                    ; #85957: origin
                    (not_at_c_p11)

                    ; #28776: <==negation-removal== 85957 (pos)
                    (not (at_c_p11))

                    ; #33742: <==negation-removal== 28440 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #62109: origin
                    (at_c_p7)

                    ; #85957: origin
                    (not_at_c_p11)

                    ; #28776: <==negation-removal== 85957 (pos)
                    (not (at_c_p11))

                    ; #48782: <==negation-removal== 62109 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #84514: origin
                    (at_c_p8)

                    ; #85957: origin
                    (not_at_c_p11)

                    ; #28776: <==negation-removal== 85957 (pos)
                    (not (at_c_p11))

                    ; #44649: <==negation-removal== 84514 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #51984: origin
                    (at_c_p9)

                    ; #85957: origin
                    (not_at_c_p11)

                    ; #11369: <==negation-removal== 51984 (pos)
                    (not (not_at_c_p9))

                    ; #28776: <==negation-removal== 85957 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #34025: origin
                    (not_at_c_p12)

                    ; #35866: origin
                    (at_c_p1)

                    ; #83619: <==negation-removal== 35866 (pos)
                    (not (not_at_c_p1))

                    ; #89812: <==negation-removal== 34025 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10)
                           (not (leader_c)))
        :effect (and
                    ; #34025: origin
                    (not_at_c_p12)

                    ; #69308: origin
                    (at_c_p10)

                    ; #50445: <==negation-removal== 69308 (pos)
                    (not (not_at_c_p10))

                    ; #89812: <==negation-removal== 34025 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11)
                           (not (leader_c)))
        :effect (and
                    ; #28776: origin
                    (at_c_p11)

                    ; #34025: origin
                    (not_at_c_p12)

                    ; #85957: <==negation-removal== 28776 (pos)
                    (not (not_at_c_p11))

                    ; #89812: <==negation-removal== 34025 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #34025: origin
                    (not_at_c_p12)

                    ; #89812: origin
                    (at_c_p12)

                    ; #34025: <==negation-removal== 89812 (pos)
                    (not (not_at_c_p12))

                    ; #89812: <==negation-removal== 34025 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (at_c_p12)
                           (succ_p12_p2)
                           (not (leader_c)))
        :effect (and
                    ; #34025: origin
                    (not_at_c_p12)

                    ; #42478: origin
                    (at_c_p2)

                    ; #35195: <==negation-removal== 42478 (pos)
                    (not (not_at_c_p2))

                    ; #89812: <==negation-removal== 34025 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (at_c_p12)
                           (succ_p12_p3)
                           (not (leader_c)))
        :effect (and
                    ; #34025: origin
                    (not_at_c_p12)

                    ; #40317: origin
                    (at_c_p3)

                    ; #83037: <==negation-removal== 40317 (pos)
                    (not (not_at_c_p3))

                    ; #89812: <==negation-removal== 34025 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #24081: origin
                    (at_c_p4)

                    ; #34025: origin
                    (not_at_c_p12)

                    ; #76171: <==negation-removal== 24081 (pos)
                    (not (not_at_c_p4))

                    ; #89812: <==negation-removal== 34025 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5)
                           (not (leader_c)))
        :effect (and
                    ; #25586: origin
                    (at_c_p5)

                    ; #34025: origin
                    (not_at_c_p12)

                    ; #64553: <==negation-removal== 25586 (pos)
                    (not (not_at_c_p5))

                    ; #89812: <==negation-removal== 34025 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p6
        :precondition (and (at_c_p12)
                           (succ_p12_p6)
                           (not (leader_c)))
        :effect (and
                    ; #28440: origin
                    (at_c_p6)

                    ; #34025: origin
                    (not_at_c_p12)

                    ; #33742: <==negation-removal== 28440 (pos)
                    (not (not_at_c_p6))

                    ; #89812: <==negation-removal== 34025 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #34025: origin
                    (not_at_c_p12)

                    ; #62109: origin
                    (at_c_p7)

                    ; #48782: <==negation-removal== 62109 (pos)
                    (not (not_at_c_p7))

                    ; #89812: <==negation-removal== 34025 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #34025: origin
                    (not_at_c_p12)

                    ; #84514: origin
                    (at_c_p8)

                    ; #44649: <==negation-removal== 84514 (pos)
                    (not (not_at_c_p8))

                    ; #89812: <==negation-removal== 34025 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9)
                           (not (leader_c)))
        :effect (and
                    ; #34025: origin
                    (not_at_c_p12)

                    ; #51984: origin
                    (at_c_p9)

                    ; #11369: <==negation-removal== 51984 (pos)
                    (not (not_at_c_p9))

                    ; #89812: <==negation-removal== 34025 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #35866: origin
                    (at_c_p1)

                    ; #83619: origin
                    (not_at_c_p1)

                    ; #35866: <==negation-removal== 83619 (pos)
                    (not (at_c_p1))

                    ; #83619: <==negation-removal== 35866 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10)
                           (not (leader_c)))
        :effect (and
                    ; #69308: origin
                    (at_c_p10)

                    ; #83619: origin
                    (not_at_c_p1)

                    ; #35866: <==negation-removal== 83619 (pos)
                    (not (at_c_p1))

                    ; #50445: <==negation-removal== 69308 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11)
                           (not (leader_c)))
        :effect (and
                    ; #28776: origin
                    (at_c_p11)

                    ; #83619: origin
                    (not_at_c_p1)

                    ; #35866: <==negation-removal== 83619 (pos)
                    (not (at_c_p1))

                    ; #85957: <==negation-removal== 28776 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #83619: origin
                    (not_at_c_p1)

                    ; #89812: origin
                    (at_c_p12)

                    ; #34025: <==negation-removal== 89812 (pos)
                    (not (not_at_c_p12))

                    ; #35866: <==negation-removal== 83619 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2)
                           (not (leader_c)))
        :effect (and
                    ; #42478: origin
                    (at_c_p2)

                    ; #83619: origin
                    (not_at_c_p1)

                    ; #35195: <==negation-removal== 42478 (pos)
                    (not (not_at_c_p2))

                    ; #35866: <==negation-removal== 83619 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3)
                           (not (leader_c)))
        :effect (and
                    ; #40317: origin
                    (at_c_p3)

                    ; #83619: origin
                    (not_at_c_p1)

                    ; #35866: <==negation-removal== 83619 (pos)
                    (not (at_c_p1))

                    ; #83037: <==negation-removal== 40317 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #24081: origin
                    (at_c_p4)

                    ; #83619: origin
                    (not_at_c_p1)

                    ; #35866: <==negation-removal== 83619 (pos)
                    (not (at_c_p1))

                    ; #76171: <==negation-removal== 24081 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #25586: origin
                    (at_c_p5)

                    ; #83619: origin
                    (not_at_c_p1)

                    ; #35866: <==negation-removal== 83619 (pos)
                    (not (at_c_p1))

                    ; #64553: <==negation-removal== 25586 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #28440: origin
                    (at_c_p6)

                    ; #83619: origin
                    (not_at_c_p1)

                    ; #33742: <==negation-removal== 28440 (pos)
                    (not (not_at_c_p6))

                    ; #35866: <==negation-removal== 83619 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #62109: origin
                    (at_c_p7)

                    ; #83619: origin
                    (not_at_c_p1)

                    ; #35866: <==negation-removal== 83619 (pos)
                    (not (at_c_p1))

                    ; #48782: <==negation-removal== 62109 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #83619: origin
                    (not_at_c_p1)

                    ; #84514: origin
                    (at_c_p8)

                    ; #35866: <==negation-removal== 83619 (pos)
                    (not (at_c_p1))

                    ; #44649: <==negation-removal== 84514 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9)
                           (not (leader_c)))
        :effect (and
                    ; #51984: origin
                    (at_c_p9)

                    ; #83619: origin
                    (not_at_c_p1)

                    ; #11369: <==negation-removal== 51984 (pos)
                    (not (not_at_c_p9))

                    ; #35866: <==negation-removal== 83619 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #35195: origin
                    (not_at_c_p2)

                    ; #35866: origin
                    (at_c_p1)

                    ; #42478: <==negation-removal== 35195 (pos)
                    (not (at_c_p2))

                    ; #83619: <==negation-removal== 35866 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #35195: origin
                    (not_at_c_p2)

                    ; #69308: origin
                    (at_c_p10)

                    ; #42478: <==negation-removal== 35195 (pos)
                    (not (at_c_p2))

                    ; #50445: <==negation-removal== 69308 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #28776: origin
                    (at_c_p11)

                    ; #35195: origin
                    (not_at_c_p2)

                    ; #42478: <==negation-removal== 35195 (pos)
                    (not (at_c_p2))

                    ; #85957: <==negation-removal== 28776 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #35195: origin
                    (not_at_c_p2)

                    ; #89812: origin
                    (at_c_p12)

                    ; #34025: <==negation-removal== 89812 (pos)
                    (not (not_at_c_p12))

                    ; #42478: <==negation-removal== 35195 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #35195: origin
                    (not_at_c_p2)

                    ; #42478: origin
                    (at_c_p2)

                    ; #35195: <==negation-removal== 42478 (pos)
                    (not (not_at_c_p2))

                    ; #42478: <==negation-removal== 35195 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #35195: origin
                    (not_at_c_p2)

                    ; #40317: origin
                    (at_c_p3)

                    ; #42478: <==negation-removal== 35195 (pos)
                    (not (at_c_p2))

                    ; #83037: <==negation-removal== 40317 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #24081: origin
                    (at_c_p4)

                    ; #35195: origin
                    (not_at_c_p2)

                    ; #42478: <==negation-removal== 35195 (pos)
                    (not (at_c_p2))

                    ; #76171: <==negation-removal== 24081 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25586: origin
                    (at_c_p5)

                    ; #35195: origin
                    (not_at_c_p2)

                    ; #42478: <==negation-removal== 35195 (pos)
                    (not (at_c_p2))

                    ; #64553: <==negation-removal== 25586 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #28440: origin
                    (at_c_p6)

                    ; #35195: origin
                    (not_at_c_p2)

                    ; #33742: <==negation-removal== 28440 (pos)
                    (not (not_at_c_p6))

                    ; #42478: <==negation-removal== 35195 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #35195: origin
                    (not_at_c_p2)

                    ; #62109: origin
                    (at_c_p7)

                    ; #42478: <==negation-removal== 35195 (pos)
                    (not (at_c_p2))

                    ; #48782: <==negation-removal== 62109 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #35195: origin
                    (not_at_c_p2)

                    ; #84514: origin
                    (at_c_p8)

                    ; #42478: <==negation-removal== 35195 (pos)
                    (not (at_c_p2))

                    ; #44649: <==negation-removal== 84514 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #35195: origin
                    (not_at_c_p2)

                    ; #51984: origin
                    (at_c_p9)

                    ; #11369: <==negation-removal== 51984 (pos)
                    (not (not_at_c_p9))

                    ; #42478: <==negation-removal== 35195 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1)
                           (not (leader_c)))
        :effect (and
                    ; #35866: origin
                    (at_c_p1)

                    ; #83037: origin
                    (not_at_c_p3)

                    ; #40317: <==negation-removal== 83037 (pos)
                    (not (at_c_p3))

                    ; #83619: <==negation-removal== 35866 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10)
                           (not (leader_c)))
        :effect (and
                    ; #69308: origin
                    (at_c_p10)

                    ; #83037: origin
                    (not_at_c_p3)

                    ; #40317: <==negation-removal== 83037 (pos)
                    (not (at_c_p3))

                    ; #50445: <==negation-removal== 69308 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11)
                           (not (leader_c)))
        :effect (and
                    ; #28776: origin
                    (at_c_p11)

                    ; #83037: origin
                    (not_at_c_p3)

                    ; #40317: <==negation-removal== 83037 (pos)
                    (not (at_c_p3))

                    ; #85957: <==negation-removal== 28776 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12)
                           (not (leader_c)))
        :effect (and
                    ; #83037: origin
                    (not_at_c_p3)

                    ; #89812: origin
                    (at_c_p12)

                    ; #34025: <==negation-removal== 89812 (pos)
                    (not (not_at_c_p12))

                    ; #40317: <==negation-removal== 83037 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2)
                           (not (leader_c)))
        :effect (and
                    ; #42478: origin
                    (at_c_p2)

                    ; #83037: origin
                    (not_at_c_p3)

                    ; #35195: <==negation-removal== 42478 (pos)
                    (not (not_at_c_p2))

                    ; #40317: <==negation-removal== 83037 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3)
                           (not (leader_c)))
        :effect (and
                    ; #40317: origin
                    (at_c_p3)

                    ; #83037: origin
                    (not_at_c_p3)

                    ; #40317: <==negation-removal== 83037 (pos)
                    (not (at_c_p3))

                    ; #83037: <==negation-removal== 40317 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4)
                           (not (leader_c)))
        :effect (and
                    ; #24081: origin
                    (at_c_p4)

                    ; #83037: origin
                    (not_at_c_p3)

                    ; #40317: <==negation-removal== 83037 (pos)
                    (not (at_c_p3))

                    ; #76171: <==negation-removal== 24081 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #25586: origin
                    (at_c_p5)

                    ; #83037: origin
                    (not_at_c_p3)

                    ; #40317: <==negation-removal== 83037 (pos)
                    (not (at_c_p3))

                    ; #64553: <==negation-removal== 25586 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6)
                           (not (leader_c)))
        :effect (and
                    ; #28440: origin
                    (at_c_p6)

                    ; #83037: origin
                    (not_at_c_p3)

                    ; #33742: <==negation-removal== 28440 (pos)
                    (not (not_at_c_p6))

                    ; #40317: <==negation-removal== 83037 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7)
                           (not (leader_c)))
        :effect (and
                    ; #62109: origin
                    (at_c_p7)

                    ; #83037: origin
                    (not_at_c_p3)

                    ; #40317: <==negation-removal== 83037 (pos)
                    (not (at_c_p3))

                    ; #48782: <==negation-removal== 62109 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8)
                           (not (leader_c)))
        :effect (and
                    ; #83037: origin
                    (not_at_c_p3)

                    ; #84514: origin
                    (at_c_p8)

                    ; #40317: <==negation-removal== 83037 (pos)
                    (not (at_c_p3))

                    ; #44649: <==negation-removal== 84514 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9)
                           (not (leader_c)))
        :effect (and
                    ; #51984: origin
                    (at_c_p9)

                    ; #83037: origin
                    (not_at_c_p3)

                    ; #11369: <==negation-removal== 51984 (pos)
                    (not (not_at_c_p9))

                    ; #40317: <==negation-removal== 83037 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1)
                           (not (leader_c)))
        :effect (and
                    ; #35866: origin
                    (at_c_p1)

                    ; #76171: origin
                    (not_at_c_p4)

                    ; #24081: <==negation-removal== 76171 (pos)
                    (not (at_c_p4))

                    ; #83619: <==negation-removal== 35866 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10)
                           (not (leader_c)))
        :effect (and
                    ; #69308: origin
                    (at_c_p10)

                    ; #76171: origin
                    (not_at_c_p4)

                    ; #24081: <==negation-removal== 76171 (pos)
                    (not (at_c_p4))

                    ; #50445: <==negation-removal== 69308 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11)
                           (not (leader_c)))
        :effect (and
                    ; #28776: origin
                    (at_c_p11)

                    ; #76171: origin
                    (not_at_c_p4)

                    ; #24081: <==negation-removal== 76171 (pos)
                    (not (at_c_p4))

                    ; #85957: <==negation-removal== 28776 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12)
                           (not (leader_c)))
        :effect (and
                    ; #76171: origin
                    (not_at_c_p4)

                    ; #89812: origin
                    (at_c_p12)

                    ; #24081: <==negation-removal== 76171 (pos)
                    (not (at_c_p4))

                    ; #34025: <==negation-removal== 89812 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2)
                           (not (leader_c)))
        :effect (and
                    ; #42478: origin
                    (at_c_p2)

                    ; #76171: origin
                    (not_at_c_p4)

                    ; #24081: <==negation-removal== 76171 (pos)
                    (not (at_c_p4))

                    ; #35195: <==negation-removal== 42478 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3)
                           (not (leader_c)))
        :effect (and
                    ; #40317: origin
                    (at_c_p3)

                    ; #76171: origin
                    (not_at_c_p4)

                    ; #24081: <==negation-removal== 76171 (pos)
                    (not (at_c_p4))

                    ; #83037: <==negation-removal== 40317 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4)
                           (not (leader_c)))
        :effect (and
                    ; #24081: origin
                    (at_c_p4)

                    ; #76171: origin
                    (not_at_c_p4)

                    ; #24081: <==negation-removal== 76171 (pos)
                    (not (at_c_p4))

                    ; #76171: <==negation-removal== 24081 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5)
                           (not (leader_c)))
        :effect (and
                    ; #25586: origin
                    (at_c_p5)

                    ; #76171: origin
                    (not_at_c_p4)

                    ; #24081: <==negation-removal== 76171 (pos)
                    (not (at_c_p4))

                    ; #64553: <==negation-removal== 25586 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6)
                           (not (leader_c)))
        :effect (and
                    ; #28440: origin
                    (at_c_p6)

                    ; #76171: origin
                    (not_at_c_p4)

                    ; #24081: <==negation-removal== 76171 (pos)
                    (not (at_c_p4))

                    ; #33742: <==negation-removal== 28440 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #62109: origin
                    (at_c_p7)

                    ; #76171: origin
                    (not_at_c_p4)

                    ; #24081: <==negation-removal== 76171 (pos)
                    (not (at_c_p4))

                    ; #48782: <==negation-removal== 62109 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8)
                           (not (leader_c)))
        :effect (and
                    ; #76171: origin
                    (not_at_c_p4)

                    ; #84514: origin
                    (at_c_p8)

                    ; #24081: <==negation-removal== 76171 (pos)
                    (not (at_c_p4))

                    ; #44649: <==negation-removal== 84514 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9)
                           (not (leader_c)))
        :effect (and
                    ; #51984: origin
                    (at_c_p9)

                    ; #76171: origin
                    (not_at_c_p4)

                    ; #11369: <==negation-removal== 51984 (pos)
                    (not (not_at_c_p9))

                    ; #24081: <==negation-removal== 76171 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #35866: origin
                    (at_c_p1)

                    ; #64553: origin
                    (not_at_c_p5)

                    ; #25586: <==negation-removal== 64553 (pos)
                    (not (at_c_p5))

                    ; #83619: <==negation-removal== 35866 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #64553: origin
                    (not_at_c_p5)

                    ; #69308: origin
                    (at_c_p10)

                    ; #25586: <==negation-removal== 64553 (pos)
                    (not (at_c_p5))

                    ; #50445: <==negation-removal== 69308 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #28776: origin
                    (at_c_p11)

                    ; #64553: origin
                    (not_at_c_p5)

                    ; #25586: <==negation-removal== 64553 (pos)
                    (not (at_c_p5))

                    ; #85957: <==negation-removal== 28776 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #64553: origin
                    (not_at_c_p5)

                    ; #89812: origin
                    (at_c_p12)

                    ; #25586: <==negation-removal== 64553 (pos)
                    (not (at_c_p5))

                    ; #34025: <==negation-removal== 89812 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #42478: origin
                    (at_c_p2)

                    ; #64553: origin
                    (not_at_c_p5)

                    ; #25586: <==negation-removal== 64553 (pos)
                    (not (at_c_p5))

                    ; #35195: <==negation-removal== 42478 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #40317: origin
                    (at_c_p3)

                    ; #64553: origin
                    (not_at_c_p5)

                    ; #25586: <==negation-removal== 64553 (pos)
                    (not (at_c_p5))

                    ; #83037: <==negation-removal== 40317 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #24081: origin
                    (at_c_p4)

                    ; #64553: origin
                    (not_at_c_p5)

                    ; #25586: <==negation-removal== 64553 (pos)
                    (not (at_c_p5))

                    ; #76171: <==negation-removal== 24081 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #25586: origin
                    (at_c_p5)

                    ; #64553: origin
                    (not_at_c_p5)

                    ; #25586: <==negation-removal== 64553 (pos)
                    (not (at_c_p5))

                    ; #64553: <==negation-removal== 25586 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #28440: origin
                    (at_c_p6)

                    ; #64553: origin
                    (not_at_c_p5)

                    ; #25586: <==negation-removal== 64553 (pos)
                    (not (at_c_p5))

                    ; #33742: <==negation-removal== 28440 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #62109: origin
                    (at_c_p7)

                    ; #64553: origin
                    (not_at_c_p5)

                    ; #25586: <==negation-removal== 64553 (pos)
                    (not (at_c_p5))

                    ; #48782: <==negation-removal== 62109 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #64553: origin
                    (not_at_c_p5)

                    ; #84514: origin
                    (at_c_p8)

                    ; #25586: <==negation-removal== 64553 (pos)
                    (not (at_c_p5))

                    ; #44649: <==negation-removal== 84514 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #51984: origin
                    (at_c_p9)

                    ; #64553: origin
                    (not_at_c_p5)

                    ; #11369: <==negation-removal== 51984 (pos)
                    (not (not_at_c_p9))

                    ; #25586: <==negation-removal== 64553 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1)
                           (not (leader_c)))
        :effect (and
                    ; #33742: origin
                    (not_at_c_p6)

                    ; #35866: origin
                    (at_c_p1)

                    ; #28440: <==negation-removal== 33742 (pos)
                    (not (at_c_p6))

                    ; #83619: <==negation-removal== 35866 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #33742: origin
                    (not_at_c_p6)

                    ; #69308: origin
                    (at_c_p10)

                    ; #28440: <==negation-removal== 33742 (pos)
                    (not (at_c_p6))

                    ; #50445: <==negation-removal== 69308 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11)
                           (not (leader_c)))
        :effect (and
                    ; #28776: origin
                    (at_c_p11)

                    ; #33742: origin
                    (not_at_c_p6)

                    ; #28440: <==negation-removal== 33742 (pos)
                    (not (at_c_p6))

                    ; #85957: <==negation-removal== 28776 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12)
                           (not (leader_c)))
        :effect (and
                    ; #33742: origin
                    (not_at_c_p6)

                    ; #89812: origin
                    (at_c_p12)

                    ; #28440: <==negation-removal== 33742 (pos)
                    (not (at_c_p6))

                    ; #34025: <==negation-removal== 89812 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2)
                           (not (leader_c)))
        :effect (and
                    ; #33742: origin
                    (not_at_c_p6)

                    ; #42478: origin
                    (at_c_p2)

                    ; #28440: <==negation-removal== 33742 (pos)
                    (not (at_c_p6))

                    ; #35195: <==negation-removal== 42478 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #33742: origin
                    (not_at_c_p6)

                    ; #40317: origin
                    (at_c_p3)

                    ; #28440: <==negation-removal== 33742 (pos)
                    (not (at_c_p6))

                    ; #83037: <==negation-removal== 40317 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #24081: origin
                    (at_c_p4)

                    ; #33742: origin
                    (not_at_c_p6)

                    ; #28440: <==negation-removal== 33742 (pos)
                    (not (at_c_p6))

                    ; #76171: <==negation-removal== 24081 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #25586: origin
                    (at_c_p5)

                    ; #33742: origin
                    (not_at_c_p6)

                    ; #28440: <==negation-removal== 33742 (pos)
                    (not (at_c_p6))

                    ; #64553: <==negation-removal== 25586 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6)
                           (not (leader_c)))
        :effect (and
                    ; #28440: origin
                    (at_c_p6)

                    ; #33742: origin
                    (not_at_c_p6)

                    ; #28440: <==negation-removal== 33742 (pos)
                    (not (at_c_p6))

                    ; #33742: <==negation-removal== 28440 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7)
                           (not (leader_c)))
        :effect (and
                    ; #33742: origin
                    (not_at_c_p6)

                    ; #62109: origin
                    (at_c_p7)

                    ; #28440: <==negation-removal== 33742 (pos)
                    (not (at_c_p6))

                    ; #48782: <==negation-removal== 62109 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8)
                           (not (leader_c)))
        :effect (and
                    ; #33742: origin
                    (not_at_c_p6)

                    ; #84514: origin
                    (at_c_p8)

                    ; #28440: <==negation-removal== 33742 (pos)
                    (not (at_c_p6))

                    ; #44649: <==negation-removal== 84514 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9)
                           (not (leader_c)))
        :effect (and
                    ; #33742: origin
                    (not_at_c_p6)

                    ; #51984: origin
                    (at_c_p9)

                    ; #11369: <==negation-removal== 51984 (pos)
                    (not (not_at_c_p9))

                    ; #28440: <==negation-removal== 33742 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1)
                           (not (leader_c)))
        :effect (and
                    ; #35866: origin
                    (at_c_p1)

                    ; #48782: origin
                    (not_at_c_p7)

                    ; #62109: <==negation-removal== 48782 (pos)
                    (not (at_c_p7))

                    ; #83619: <==negation-removal== 35866 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #48782: origin
                    (not_at_c_p7)

                    ; #69308: origin
                    (at_c_p10)

                    ; #50445: <==negation-removal== 69308 (pos)
                    (not (not_at_c_p10))

                    ; #62109: <==negation-removal== 48782 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11)
                           (not (leader_c)))
        :effect (and
                    ; #28776: origin
                    (at_c_p11)

                    ; #48782: origin
                    (not_at_c_p7)

                    ; #62109: <==negation-removal== 48782 (pos)
                    (not (at_c_p7))

                    ; #85957: <==negation-removal== 28776 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12)
                           (not (leader_c)))
        :effect (and
                    ; #48782: origin
                    (not_at_c_p7)

                    ; #89812: origin
                    (at_c_p12)

                    ; #34025: <==negation-removal== 89812 (pos)
                    (not (not_at_c_p12))

                    ; #62109: <==negation-removal== 48782 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2)
                           (not (leader_c)))
        :effect (and
                    ; #42478: origin
                    (at_c_p2)

                    ; #48782: origin
                    (not_at_c_p7)

                    ; #35195: <==negation-removal== 42478 (pos)
                    (not (not_at_c_p2))

                    ; #62109: <==negation-removal== 48782 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #40317: origin
                    (at_c_p3)

                    ; #48782: origin
                    (not_at_c_p7)

                    ; #62109: <==negation-removal== 48782 (pos)
                    (not (at_c_p7))

                    ; #83037: <==negation-removal== 40317 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4)
                           (not (leader_c)))
        :effect (and
                    ; #24081: origin
                    (at_c_p4)

                    ; #48782: origin
                    (not_at_c_p7)

                    ; #62109: <==negation-removal== 48782 (pos)
                    (not (at_c_p7))

                    ; #76171: <==negation-removal== 24081 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #25586: origin
                    (at_c_p5)

                    ; #48782: origin
                    (not_at_c_p7)

                    ; #62109: <==negation-removal== 48782 (pos)
                    (not (at_c_p7))

                    ; #64553: <==negation-removal== 25586 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #28440: origin
                    (at_c_p6)

                    ; #48782: origin
                    (not_at_c_p7)

                    ; #33742: <==negation-removal== 28440 (pos)
                    (not (not_at_c_p6))

                    ; #62109: <==negation-removal== 48782 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7)
                           (not (leader_c)))
        :effect (and
                    ; #48782: origin
                    (not_at_c_p7)

                    ; #62109: origin
                    (at_c_p7)

                    ; #48782: <==negation-removal== 62109 (pos)
                    (not (not_at_c_p7))

                    ; #62109: <==negation-removal== 48782 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #48782: origin
                    (not_at_c_p7)

                    ; #84514: origin
                    (at_c_p8)

                    ; #44649: <==negation-removal== 84514 (pos)
                    (not (not_at_c_p8))

                    ; #62109: <==negation-removal== 48782 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #48782: origin
                    (not_at_c_p7)

                    ; #51984: origin
                    (at_c_p9)

                    ; #11369: <==negation-removal== 51984 (pos)
                    (not (not_at_c_p9))

                    ; #62109: <==negation-removal== 48782 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1)
                           (not (leader_c)))
        :effect (and
                    ; #35866: origin
                    (at_c_p1)

                    ; #44649: origin
                    (not_at_c_p8)

                    ; #83619: <==negation-removal== 35866 (pos)
                    (not (not_at_c_p1))

                    ; #84514: <==negation-removal== 44649 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10)
                           (not (leader_c)))
        :effect (and
                    ; #44649: origin
                    (not_at_c_p8)

                    ; #69308: origin
                    (at_c_p10)

                    ; #50445: <==negation-removal== 69308 (pos)
                    (not (not_at_c_p10))

                    ; #84514: <==negation-removal== 44649 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #28776: origin
                    (at_c_p11)

                    ; #44649: origin
                    (not_at_c_p8)

                    ; #84514: <==negation-removal== 44649 (pos)
                    (not (at_c_p8))

                    ; #85957: <==negation-removal== 28776 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #44649: origin
                    (not_at_c_p8)

                    ; #89812: origin
                    (at_c_p12)

                    ; #34025: <==negation-removal== 89812 (pos)
                    (not (not_at_c_p12))

                    ; #84514: <==negation-removal== 44649 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #42478: origin
                    (at_c_p2)

                    ; #44649: origin
                    (not_at_c_p8)

                    ; #35195: <==negation-removal== 42478 (pos)
                    (not (not_at_c_p2))

                    ; #84514: <==negation-removal== 44649 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #40317: origin
                    (at_c_p3)

                    ; #44649: origin
                    (not_at_c_p8)

                    ; #83037: <==negation-removal== 40317 (pos)
                    (not (not_at_c_p3))

                    ; #84514: <==negation-removal== 44649 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #24081: origin
                    (at_c_p4)

                    ; #44649: origin
                    (not_at_c_p8)

                    ; #76171: <==negation-removal== 24081 (pos)
                    (not (not_at_c_p4))

                    ; #84514: <==negation-removal== 44649 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #25586: origin
                    (at_c_p5)

                    ; #44649: origin
                    (not_at_c_p8)

                    ; #64553: <==negation-removal== 25586 (pos)
                    (not (not_at_c_p5))

                    ; #84514: <==negation-removal== 44649 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #28440: origin
                    (at_c_p6)

                    ; #44649: origin
                    (not_at_c_p8)

                    ; #33742: <==negation-removal== 28440 (pos)
                    (not (not_at_c_p6))

                    ; #84514: <==negation-removal== 44649 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #44649: origin
                    (not_at_c_p8)

                    ; #62109: origin
                    (at_c_p7)

                    ; #48782: <==negation-removal== 62109 (pos)
                    (not (not_at_c_p7))

                    ; #84514: <==negation-removal== 44649 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #44649: origin
                    (not_at_c_p8)

                    ; #84514: origin
                    (at_c_p8)

                    ; #44649: <==negation-removal== 84514 (pos)
                    (not (not_at_c_p8))

                    ; #84514: <==negation-removal== 44649 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #44649: origin
                    (not_at_c_p8)

                    ; #51984: origin
                    (at_c_p9)

                    ; #11369: <==negation-removal== 51984 (pos)
                    (not (not_at_c_p9))

                    ; #84514: <==negation-removal== 44649 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1)
                           (not (leader_c)))
        :effect (and
                    ; #11369: origin
                    (not_at_c_p9)

                    ; #35866: origin
                    (at_c_p1)

                    ; #51984: <==negation-removal== 11369 (pos)
                    (not (at_c_p9))

                    ; #83619: <==negation-removal== 35866 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10)
                           (not (leader_c)))
        :effect (and
                    ; #11369: origin
                    (not_at_c_p9)

                    ; #69308: origin
                    (at_c_p10)

                    ; #50445: <==negation-removal== 69308 (pos)
                    (not (not_at_c_p10))

                    ; #51984: <==negation-removal== 11369 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11369: origin
                    (not_at_c_p9)

                    ; #28776: origin
                    (at_c_p11)

                    ; #51984: <==negation-removal== 11369 (pos)
                    (not (at_c_p9))

                    ; #85957: <==negation-removal== 28776 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12)
                           (not (leader_c)))
        :effect (and
                    ; #11369: origin
                    (not_at_c_p9)

                    ; #89812: origin
                    (at_c_p12)

                    ; #34025: <==negation-removal== 89812 (pos)
                    (not (not_at_c_p12))

                    ; #51984: <==negation-removal== 11369 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2)
                           (not (leader_c)))
        :effect (and
                    ; #11369: origin
                    (not_at_c_p9)

                    ; #42478: origin
                    (at_c_p2)

                    ; #35195: <==negation-removal== 42478 (pos)
                    (not (not_at_c_p2))

                    ; #51984: <==negation-removal== 11369 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3)
                           (not (leader_c)))
        :effect (and
                    ; #11369: origin
                    (not_at_c_p9)

                    ; #40317: origin
                    (at_c_p3)

                    ; #51984: <==negation-removal== 11369 (pos)
                    (not (at_c_p9))

                    ; #83037: <==negation-removal== 40317 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11369: origin
                    (not_at_c_p9)

                    ; #24081: origin
                    (at_c_p4)

                    ; #51984: <==negation-removal== 11369 (pos)
                    (not (at_c_p9))

                    ; #76171: <==negation-removal== 24081 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5)
                           (not (leader_c)))
        :effect (and
                    ; #11369: origin
                    (not_at_c_p9)

                    ; #25586: origin
                    (at_c_p5)

                    ; #51984: <==negation-removal== 11369 (pos)
                    (not (at_c_p9))

                    ; #64553: <==negation-removal== 25586 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11369: origin
                    (not_at_c_p9)

                    ; #28440: origin
                    (at_c_p6)

                    ; #33742: <==negation-removal== 28440 (pos)
                    (not (not_at_c_p6))

                    ; #51984: <==negation-removal== 11369 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7)
                           (not (leader_c)))
        :effect (and
                    ; #11369: origin
                    (not_at_c_p9)

                    ; #62109: origin
                    (at_c_p7)

                    ; #48782: <==negation-removal== 62109 (pos)
                    (not (not_at_c_p7))

                    ; #51984: <==negation-removal== 11369 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8)
                           (not (leader_c)))
        :effect (and
                    ; #11369: origin
                    (not_at_c_p9)

                    ; #84514: origin
                    (at_c_p8)

                    ; #44649: <==negation-removal== 84514 (pos)
                    (not (not_at_c_p8))

                    ; #51984: <==negation-removal== 11369 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11369: origin
                    (not_at_c_p9)

                    ; #51984: origin
                    (at_c_p9)

                    ; #11369: <==negation-removal== 51984 (pos)
                    (not (not_at_c_p9))

                    ; #51984: <==negation-removal== 11369 (pos)
                    (not (at_c_p9))))

    (:action observe_a_p10_s
        :precondition (and (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #32405: origin
                    (checked_p10)

                    ; #41774: <==closure== 83505 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #50694: <==commonly_known== 78274 (neg)
                    (Pb_checked_p10)

                    ; #51178: <==closure== 69922 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #61238: <==commonly_known== 32405 (pos)
                    (Ba_checked_p10)

                    ; #69922: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #73137: <==commonly_known== 78274 (neg)
                    (Pc_checked_p10)

                    ; #73992: <==commonly_known== 78274 (neg)
                    (Pa_checked_p10)

                    ; #83505: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #86880: <==commonly_known== 32405 (pos)
                    (Bc_checked_p10)

                    ; #88706: <==commonly_known== 32405 (pos)
                    (Bb_checked_p10)

                    ; #15142: <==uncertain_firing== 83505 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #16846: <==negation-removal== 41774 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #22858: <==negation-removal== 73137 (pos)
                    (not (Bc_not_checked_p10))

                    ; #23875: <==uncertain_firing== 69922 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #24100: <==uncertain_firing== 41774 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #24419: <==negation-removal== 83505 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #27076: <==negation-removal== 50694 (pos)
                    (not (Bb_not_checked_p10))

                    ; #29507: <==negation-removal== 51178 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #30995: <==uncertain_firing== 51178 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #44454: <==negation-removal== 73992 (pos)
                    (not (Ba_not_checked_p10))

                    ; #51969: <==negation-removal== 88706 (pos)
                    (not (Pb_not_checked_p10))

                    ; #73737: <==negation-removal== 69922 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #78274: <==negation-removal== 32405 (pos)
                    (not (not_checked_p10))

                    ; #79853: <==negation-removal== 61238 (pos)
                    (not (Pa_not_checked_p10))

                    ; #91267: <==negation-removal== 86880 (pos)
                    (not (Pc_not_checked_p10))))

    (:action observe_a_p11_s
        :precondition (and (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #11814: <==closure== 16226 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #16226: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #20621: <==commonly_known== 47039 (pos)
                    (Ba_checked_p11)

                    ; #22342: <==commonly_known== 47039 (pos)
                    (Bb_checked_p11)

                    ; #30936: <==commonly_known== 47039 (pos)
                    (Bc_checked_p11)

                    ; #31155: <==closure== 91363 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #34047: <==commonly_known== 88957 (neg)
                    (Pa_checked_p11)

                    ; #47039: origin
                    (checked_p11)

                    ; #84799: <==commonly_known== 88957 (neg)
                    (Pb_checked_p11)

                    ; #86552: <==commonly_known== 88957 (neg)
                    (Pc_checked_p11)

                    ; #91363: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #17831: <==uncertain_firing== 16226 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #30811: <==uncertain_firing== 91363 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #35108: <==negation-removal== 86552 (pos)
                    (not (Bc_not_checked_p11))

                    ; #43466: <==uncertain_firing== 31155 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #52841: <==negation-removal== 31155 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #53462: <==negation-removal== 84799 (pos)
                    (not (Bb_not_checked_p11))

                    ; #54079: <==negation-removal== 16226 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #58903: <==negation-removal== 30936 (pos)
                    (not (Pc_not_checked_p11))

                    ; #61883: <==negation-removal== 22342 (pos)
                    (not (Pb_not_checked_p11))

                    ; #70729: <==negation-removal== 91363 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #73924: <==uncertain_firing== 11814 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #80171: <==negation-removal== 20621 (pos)
                    (not (Pa_not_checked_p11))

                    ; #84214: <==negation-removal== 34047 (pos)
                    (not (Ba_not_checked_p11))

                    ; #88957: <==negation-removal== 47039 (pos)
                    (not (not_checked_p11))

                    ; #90069: <==negation-removal== 11814 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))))

    (:action observe_a_p12_s
        :precondition (and (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #10389: origin
                    (checked_p12)

                    ; #12768: <==commonly_known== 66812 (neg)
                    (Pa_checked_p12)

                    ; #30105: <==closure== 73787 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #51564: <==commonly_known== 10389 (pos)
                    (Bb_checked_p12)

                    ; #55081: <==closure== 59045 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #59045: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #66559: <==commonly_known== 66812 (neg)
                    (Pb_checked_p12)

                    ; #71844: <==commonly_known== 10389 (pos)
                    (Ba_checked_p12)

                    ; #73787: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #75485: <==commonly_known== 10389 (pos)
                    (Bc_checked_p12)

                    ; #97083: <==commonly_known== 66812 (neg)
                    (Pc_checked_p12)

                    ; #10425: <==negation-removal== 73787 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #13679: <==negation-removal== 66559 (pos)
                    (not (Bb_not_checked_p12))

                    ; #14419: <==uncertain_firing== 59045 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #19408: <==negation-removal== 59045 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #25076: <==uncertain_firing== 30105 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #26696: <==uncertain_firing== 73787 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #31995: <==uncertain_firing== 55081 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #32462: <==negation-removal== 30105 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #38093: <==negation-removal== 51564 (pos)
                    (not (Pb_not_checked_p12))

                    ; #54674: <==negation-removal== 71844 (pos)
                    (not (Pa_not_checked_p12))

                    ; #62656: <==negation-removal== 97083 (pos)
                    (not (Bc_not_checked_p12))

                    ; #66812: <==negation-removal== 10389 (pos)
                    (not (not_checked_p12))

                    ; #72728: <==negation-removal== 12768 (pos)
                    (not (Ba_not_checked_p12))

                    ; #75399: <==negation-removal== 75485 (pos)
                    (not (Pc_not_checked_p12))

                    ; #89580: <==negation-removal== 55081 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #10275: <==commonly_known== 35434 (pos)
                    (Bb_checked_p1)

                    ; #28312: <==commonly_known== 35434 (pos)
                    (Bc_checked_p1)

                    ; #29641: <==commonly_known== 10989 (neg)
                    (Pc_checked_p1)

                    ; #35434: origin
                    (checked_p1)

                    ; #39419: <==commonly_known== 10989 (neg)
                    (Pb_checked_p1)

                    ; #42258: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #43276: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #47422: <==closure== 43276 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #48361: <==commonly_known== 35434 (pos)
                    (Ba_checked_p1)

                    ; #52478: <==commonly_known== 10989 (neg)
                    (Pa_checked_p1)

                    ; #85495: <==closure== 42258 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #10989: <==negation-removal== 35434 (pos)
                    (not (not_checked_p1))

                    ; #23708: <==negation-removal== 43276 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #42299: <==uncertain_firing== 47422 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #47453: <==negation-removal== 47422 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #48830: <==negation-removal== 10275 (pos)
                    (not (Pb_not_checked_p1))

                    ; #50687: <==uncertain_firing== 43276 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #55693: <==negation-removal== 29641 (pos)
                    (not (Bc_not_checked_p1))

                    ; #59577: <==negation-removal== 48361 (pos)
                    (not (Pa_not_checked_p1))

                    ; #67611: <==negation-removal== 42258 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #78376: <==uncertain_firing== 42258 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #80483: <==negation-removal== 28312 (pos)
                    (not (Pc_not_checked_p1))

                    ; #82101: <==negation-removal== 85495 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #86340: <==negation-removal== 39419 (pos)
                    (not (Bb_not_checked_p1))

                    ; #86636: <==uncertain_firing== 85495 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #89433: <==negation-removal== 52478 (pos)
                    (not (Ba_not_checked_p1))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #10936: <==closure== 62135 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #23463: <==closure== 78558 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #36351: <==commonly_known== 55742 (pos)
                    (Ba_checked_p2)

                    ; #47165: <==commonly_known== 75861 (neg)
                    (Pc_checked_p2)

                    ; #55742: origin
                    (checked_p2)

                    ; #62135: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #63347: <==commonly_known== 75861 (neg)
                    (Pb_checked_p2)

                    ; #64589: <==commonly_known== 55742 (pos)
                    (Bc_checked_p2)

                    ; #78558: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #87555: <==commonly_known== 55742 (pos)
                    (Bb_checked_p2)

                    ; #90965: <==commonly_known== 75861 (neg)
                    (Pa_checked_p2)

                    ; #10733: <==negation-removal== 47165 (pos)
                    (not (Bc_not_checked_p2))

                    ; #12335: <==uncertain_firing== 23463 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #12559: <==uncertain_firing== 62135 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #14390: <==negation-removal== 90965 (pos)
                    (not (Ba_not_checked_p2))

                    ; #17476: <==uncertain_firing== 10936 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #28338: <==negation-removal== 63347 (pos)
                    (not (Bb_not_checked_p2))

                    ; #32984: <==negation-removal== 64589 (pos)
                    (not (Pc_not_checked_p2))

                    ; #34602: <==negation-removal== 62135 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #36415: <==negation-removal== 87555 (pos)
                    (not (Pb_not_checked_p2))

                    ; #46538: <==uncertain_firing== 78558 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #51601: <==negation-removal== 78558 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #70165: <==negation-removal== 36351 (pos)
                    (not (Pa_not_checked_p2))

                    ; #75861: <==negation-removal== 55742 (pos)
                    (not (not_checked_p2))

                    ; #83273: <==negation-removal== 23463 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #92024: <==negation-removal== 10936 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #12773: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #26555: <==commonly_known== 63335 (pos)
                    (Bb_checked_p3)

                    ; #30435: <==commonly_known== 63335 (pos)
                    (Ba_checked_p3)

                    ; #35598: <==commonly_known== 14563 (neg)
                    (Pa_checked_p3)

                    ; #51205: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #52595: <==commonly_known== 63335 (pos)
                    (Bc_checked_p3)

                    ; #61551: <==closure== 51205 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #63335: origin
                    (checked_p3)

                    ; #65809: <==commonly_known== 14563 (neg)
                    (Pb_checked_p3)

                    ; #67737: <==closure== 12773 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #69198: <==commonly_known== 14563 (neg)
                    (Pc_checked_p3)

                    ; #11458: <==uncertain_firing== 51205 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #11965: <==negation-removal== 35598 (pos)
                    (not (Ba_not_checked_p3))

                    ; #14563: <==negation-removal== 63335 (pos)
                    (not (not_checked_p3))

                    ; #16141: <==uncertain_firing== 67737 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #29841: <==negation-removal== 69198 (pos)
                    (not (Bc_not_checked_p3))

                    ; #33837: <==negation-removal== 61551 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #36776: <==negation-removal== 26555 (pos)
                    (not (Pb_not_checked_p3))

                    ; #41245: <==negation-removal== 52595 (pos)
                    (not (Pc_not_checked_p3))

                    ; #41642: <==uncertain_firing== 12773 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #43396: <==uncertain_firing== 61551 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #48604: <==negation-removal== 65809 (pos)
                    (not (Bb_not_checked_p3))

                    ; #76012: <==negation-removal== 51205 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #79041: <==negation-removal== 67737 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #90642: <==negation-removal== 12773 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #90843: <==negation-removal== 30435 (pos)
                    (not (Pa_not_checked_p3))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #11322: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #24205: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #25564: <==commonly_known== 66549 (neg)
                    (Pa_checked_p4)

                    ; #53482: <==commonly_known== 76717 (pos)
                    (Ba_checked_p4)

                    ; #56568: <==closure== 11322 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #58329: <==commonly_known== 76717 (pos)
                    (Bc_checked_p4)

                    ; #64740: <==commonly_known== 66549 (neg)
                    (Pb_checked_p4)

                    ; #65855: <==commonly_known== 76717 (pos)
                    (Bb_checked_p4)

                    ; #76717: origin
                    (checked_p4)

                    ; #79778: <==closure== 24205 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #83953: <==commonly_known== 66549 (neg)
                    (Pc_checked_p4)

                    ; #17050: <==negation-removal== 24205 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #18787: <==negation-removal== 65855 (pos)
                    (not (Pb_not_checked_p4))

                    ; #19201: <==negation-removal== 64740 (pos)
                    (not (Bb_not_checked_p4))

                    ; #22066: <==negation-removal== 83953 (pos)
                    (not (Bc_not_checked_p4))

                    ; #23531: <==uncertain_firing== 56568 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #35428: <==uncertain_firing== 79778 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #39803: <==negation-removal== 56568 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #40209: <==uncertain_firing== 11322 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #42549: <==negation-removal== 11322 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #66549: <==negation-removal== 76717 (pos)
                    (not (not_checked_p4))

                    ; #75243: <==negation-removal== 53482 (pos)
                    (not (Pa_not_checked_p4))

                    ; #81377: <==negation-removal== 58329 (pos)
                    (not (Pc_not_checked_p4))

                    ; #84430: <==uncertain_firing== 24205 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #84880: <==negation-removal== 79778 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #86612: <==negation-removal== 25564 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #12250: <==commonly_known== 74609 (pos)
                    (Bc_checked_p5)

                    ; #13557: <==closure== 58745 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #14443: <==commonly_known== 52357 (neg)
                    (Pc_checked_p5)

                    ; #47871: <==commonly_known== 74609 (pos)
                    (Ba_checked_p5)

                    ; #47986: <==commonly_known== 74609 (pos)
                    (Bb_checked_p5)

                    ; #55231: <==commonly_known== 52357 (neg)
                    (Pb_checked_p5)

                    ; #58745: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #74283: <==closure== 88453 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #74609: origin
                    (checked_p5)

                    ; #79585: <==commonly_known== 52357 (neg)
                    (Pa_checked_p5)

                    ; #88453: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #10418: <==uncertain_firing== 74283 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #25573: <==negation-removal== 74283 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #27886: <==negation-removal== 47986 (pos)
                    (not (Pb_not_checked_p5))

                    ; #39014: <==uncertain_firing== 58745 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #45400: <==negation-removal== 13557 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #45613: <==negation-removal== 88453 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #48397: <==negation-removal== 55231 (pos)
                    (not (Bb_not_checked_p5))

                    ; #52357: <==negation-removal== 74609 (pos)
                    (not (not_checked_p5))

                    ; #53715: <==uncertain_firing== 13557 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #56370: <==uncertain_firing== 88453 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #62441: <==negation-removal== 79585 (pos)
                    (not (Ba_not_checked_p5))

                    ; #69251: <==negation-removal== 12250 (pos)
                    (not (Pc_not_checked_p5))

                    ; #82918: <==negation-removal== 47871 (pos)
                    (not (Pa_not_checked_p5))

                    ; #90526: <==negation-removal== 14443 (pos)
                    (not (Bc_not_checked_p5))

                    ; #90921: <==negation-removal== 58745 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #12507: <==commonly_known== 38844 (pos)
                    (Ba_checked_p6)

                    ; #24236: <==commonly_known== 38844 (pos)
                    (Bc_checked_p6)

                    ; #35125: <==commonly_known== 47052 (neg)
                    (Pc_checked_p6)

                    ; #38844: origin
                    (checked_p6)

                    ; #38898: <==commonly_known== 38844 (pos)
                    (Bb_checked_p6)

                    ; #49259: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #56308: <==commonly_known== 47052 (neg)
                    (Pa_checked_p6)

                    ; #64330: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #68075: <==commonly_known== 47052 (neg)
                    (Pb_checked_p6)

                    ; #71776: <==closure== 49259 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #93156: <==closure== 64330 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #13609: <==uncertain_firing== 64330 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #13912: <==uncertain_firing== 49259 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #14877: <==negation-removal== 93156 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #29320: <==negation-removal== 64330 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #31083: <==negation-removal== 49259 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #47052: <==negation-removal== 38844 (pos)
                    (not (not_checked_p6))

                    ; #47826: <==negation-removal== 12507 (pos)
                    (not (Pa_not_checked_p6))

                    ; #51716: <==negation-removal== 56308 (pos)
                    (not (Ba_not_checked_p6))

                    ; #53120: <==negation-removal== 68075 (pos)
                    (not (Bb_not_checked_p6))

                    ; #58080: <==negation-removal== 38898 (pos)
                    (not (Pb_not_checked_p6))

                    ; #64539: <==negation-removal== 35125 (pos)
                    (not (Bc_not_checked_p6))

                    ; #65469: <==negation-removal== 24236 (pos)
                    (not (Pc_not_checked_p6))

                    ; #72351: <==uncertain_firing== 71776 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #74929: <==uncertain_firing== 93156 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #91513: <==negation-removal== 71776 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #10966: <==commonly_known== 48759 (pos)
                    (Bc_checked_p7)

                    ; #14239: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #18373: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #40200: <==commonly_known== 48124 (neg)
                    (Pc_checked_p7)

                    ; #41984: <==commonly_known== 48759 (pos)
                    (Bb_checked_p7)

                    ; #44752: <==commonly_known== 48759 (pos)
                    (Ba_checked_p7)

                    ; #47861: <==closure== 14239 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #48759: origin
                    (checked_p7)

                    ; #63475: <==commonly_known== 48124 (neg)
                    (Pa_checked_p7)

                    ; #67723: <==closure== 18373 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #73852: <==commonly_known== 48124 (neg)
                    (Pb_checked_p7)

                    ; #16679: <==uncertain_firing== 18373 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #17299: <==negation-removal== 73852 (pos)
                    (not (Bb_not_checked_p7))

                    ; #19325: <==negation-removal== 10966 (pos)
                    (not (Pc_not_checked_p7))

                    ; #33727: <==negation-removal== 14239 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #43966: <==negation-removal== 67723 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #46013: <==negation-removal== 63475 (pos)
                    (not (Ba_not_checked_p7))

                    ; #48062: <==negation-removal== 40200 (pos)
                    (not (Bc_not_checked_p7))

                    ; #48124: <==negation-removal== 48759 (pos)
                    (not (not_checked_p7))

                    ; #58598: <==uncertain_firing== 14239 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #68328: <==negation-removal== 47861 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #76904: <==negation-removal== 41984 (pos)
                    (not (Pb_not_checked_p7))

                    ; #83795: <==negation-removal== 44752 (pos)
                    (not (Pa_not_checked_p7))

                    ; #85153: <==uncertain_firing== 67723 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #87613: <==uncertain_firing== 47861 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #91953: <==negation-removal== 18373 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #10582: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #15486: <==commonly_known== 77628 (neg)
                    (Pa_checked_p8)

                    ; #27668: <==commonly_known== 81557 (pos)
                    (Bb_checked_p8)

                    ; #46867: <==closure== 10582 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #54729: <==closure== 73329 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #55741: <==commonly_known== 81557 (pos)
                    (Bc_checked_p8)

                    ; #58976: <==commonly_known== 81557 (pos)
                    (Ba_checked_p8)

                    ; #73329: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #73619: <==commonly_known== 77628 (neg)
                    (Pb_checked_p8)

                    ; #81557: origin
                    (checked_p8)

                    ; #88018: <==commonly_known== 77628 (neg)
                    (Pc_checked_p8)

                    ; #22290: <==negation-removal== 88018 (pos)
                    (not (Bc_not_checked_p8))

                    ; #23566: <==negation-removal== 58976 (pos)
                    (not (Pa_not_checked_p8))

                    ; #32179: <==uncertain_firing== 73329 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #33829: <==uncertain_firing== 10582 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #40718: <==negation-removal== 10582 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #41780: <==uncertain_firing== 46867 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #41917: <==negation-removal== 15486 (pos)
                    (not (Ba_not_checked_p8))

                    ; #42409: <==negation-removal== 73619 (pos)
                    (not (Bb_not_checked_p8))

                    ; #43401: <==negation-removal== 55741 (pos)
                    (not (Pc_not_checked_p8))

                    ; #47013: <==negation-removal== 46867 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #50635: <==negation-removal== 54729 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #57378: <==negation-removal== 27668 (pos)
                    (not (Pb_not_checked_p8))

                    ; #76532: <==uncertain_firing== 54729 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #77360: <==negation-removal== 73329 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #77628: <==negation-removal== 81557 (pos)
                    (not (not_checked_p8))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #29611: <==closure== 90655 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #33027: origin
                    (checked_p9)

                    ; #33830: <==commonly_known== 12248 (neg)
                    (Pc_checked_p9)

                    ; #36175: <==commonly_known== 33027 (pos)
                    (Ba_checked_p9)

                    ; #42988: <==commonly_known== 12248 (neg)
                    (Pa_checked_p9)

                    ; #65153: <==commonly_known== 12248 (neg)
                    (Pb_checked_p9)

                    ; #79470: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #84989: <==closure== 79470 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #85412: <==commonly_known== 33027 (pos)
                    (Bb_checked_p9)

                    ; #90655: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #91583: <==commonly_known== 33027 (pos)
                    (Bc_checked_p9)

                    ; #11139: <==uncertain_firing== 84989 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #12248: <==negation-removal== 33027 (pos)
                    (not (not_checked_p9))

                    ; #25712: <==uncertain_firing== 79470 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #26214: <==negation-removal== 42988 (pos)
                    (not (Ba_not_checked_p9))

                    ; #49214: <==negation-removal== 84989 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #59745: <==uncertain_firing== 29611 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #75963: <==negation-removal== 90655 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #79595: <==negation-removal== 85412 (pos)
                    (not (Pb_not_checked_p9))

                    ; #82563: <==negation-removal== 36175 (pos)
                    (not (Pa_not_checked_p9))

                    ; #83932: <==negation-removal== 79470 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #85193: <==uncertain_firing== 90655 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #86820: <==negation-removal== 65153 (pos)
                    (not (Bb_not_checked_p9))

                    ; #90024: <==negation-removal== 33830 (pos)
                    (not (Bc_not_checked_p9))

                    ; #91175: <==negation-removal== 29611 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #91859: <==negation-removal== 91583 (pos)
                    (not (Pc_not_checked_p9))))

    (:action observe_b_p10_s
        :precondition (and (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #32405: origin
                    (checked_p10)

                    ; #32926: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #36253: <==closure== 32926 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #43109: <==closure== 77438 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #50694: <==commonly_known== 78274 (neg)
                    (Pb_checked_p10)

                    ; #61238: <==commonly_known== 32405 (pos)
                    (Ba_checked_p10)

                    ; #73137: <==commonly_known== 78274 (neg)
                    (Pc_checked_p10)

                    ; #73992: <==commonly_known== 78274 (neg)
                    (Pa_checked_p10)

                    ; #77438: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #86880: <==commonly_known== 32405 (pos)
                    (Bc_checked_p10)

                    ; #88706: <==commonly_known== 32405 (pos)
                    (Bb_checked_p10)

                    ; #20503: <==negation-removal== 43109 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #22858: <==negation-removal== 73137 (pos)
                    (not (Bc_not_checked_p10))

                    ; #27076: <==negation-removal== 50694 (pos)
                    (not (Bb_not_checked_p10))

                    ; #34627: <==negation-removal== 32926 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #44454: <==negation-removal== 73992 (pos)
                    (not (Ba_not_checked_p10))

                    ; #51969: <==negation-removal== 88706 (pos)
                    (not (Pb_not_checked_p10))

                    ; #52580: <==uncertain_firing== 43109 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #53017: <==uncertain_firing== 77438 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #63947: <==uncertain_firing== 32926 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #76718: <==negation-removal== 36253 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #78274: <==negation-removal== 32405 (pos)
                    (not (not_checked_p10))

                    ; #79853: <==negation-removal== 61238 (pos)
                    (not (Pa_not_checked_p10))

                    ; #80739: <==negation-removal== 77438 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #90816: <==uncertain_firing== 36253 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #91267: <==negation-removal== 86880 (pos)
                    (not (Pc_not_checked_p10))))

    (:action observe_b_p11_s
        :precondition (and (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #17644: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #20621: <==commonly_known== 47039 (pos)
                    (Ba_checked_p11)

                    ; #22342: <==commonly_known== 47039 (pos)
                    (Bb_checked_p11)

                    ; #30698: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #30936: <==commonly_known== 47039 (pos)
                    (Bc_checked_p11)

                    ; #34047: <==commonly_known== 88957 (neg)
                    (Pa_checked_p11)

                    ; #47039: origin
                    (checked_p11)

                    ; #50650: <==closure== 30698 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #67483: <==closure== 17644 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #84799: <==commonly_known== 88957 (neg)
                    (Pb_checked_p11)

                    ; #86552: <==commonly_known== 88957 (neg)
                    (Pc_checked_p11)

                    ; #15033: <==negation-removal== 17644 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #23204: <==uncertain_firing== 50650 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #27398: <==uncertain_firing== 67483 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #35108: <==negation-removal== 86552 (pos)
                    (not (Bc_not_checked_p11))

                    ; #42749: <==negation-removal== 50650 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #53462: <==negation-removal== 84799 (pos)
                    (not (Bb_not_checked_p11))

                    ; #57729: <==negation-removal== 67483 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #58903: <==negation-removal== 30936 (pos)
                    (not (Pc_not_checked_p11))

                    ; #61883: <==negation-removal== 22342 (pos)
                    (not (Pb_not_checked_p11))

                    ; #73803: <==uncertain_firing== 30698 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #78856: <==uncertain_firing== 17644 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #80171: <==negation-removal== 20621 (pos)
                    (not (Pa_not_checked_p11))

                    ; #82589: <==negation-removal== 30698 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #84214: <==negation-removal== 34047 (pos)
                    (not (Ba_not_checked_p11))

                    ; #88957: <==negation-removal== 47039 (pos)
                    (not (not_checked_p11))))

    (:action observe_b_p12_s
        :precondition (and (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #10389: origin
                    (checked_p12)

                    ; #12768: <==commonly_known== 66812 (neg)
                    (Pa_checked_p12)

                    ; #51564: <==commonly_known== 10389 (pos)
                    (Bb_checked_p12)

                    ; #66559: <==commonly_known== 66812 (neg)
                    (Pb_checked_p12)

                    ; #71844: <==commonly_known== 10389 (pos)
                    (Ba_checked_p12)

                    ; #75485: <==commonly_known== 10389 (pos)
                    (Bc_checked_p12)

                    ; #79938: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #85667: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #87989: <==closure== 79938 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #90168: <==closure== 85667 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #97083: <==commonly_known== 66812 (neg)
                    (Pc_checked_p12)

                    ; #13639: <==uncertain_firing== 87989 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #13679: <==negation-removal== 66559 (pos)
                    (not (Bb_not_checked_p12))

                    ; #15106: <==uncertain_firing== 90168 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #23207: <==negation-removal== 90168 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #27120: <==uncertain_firing== 85667 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #38093: <==negation-removal== 51564 (pos)
                    (not (Pb_not_checked_p12))

                    ; #40070: <==negation-removal== 85667 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #54674: <==negation-removal== 71844 (pos)
                    (not (Pa_not_checked_p12))

                    ; #62656: <==negation-removal== 97083 (pos)
                    (not (Bc_not_checked_p12))

                    ; #66812: <==negation-removal== 10389 (pos)
                    (not (not_checked_p12))

                    ; #72728: <==negation-removal== 12768 (pos)
                    (not (Ba_not_checked_p12))

                    ; #75399: <==negation-removal== 75485 (pos)
                    (not (Pc_not_checked_p12))

                    ; #82892: <==negation-removal== 79938 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #87062: <==negation-removal== 87989 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #88327: <==uncertain_firing== 79938 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #10275: <==commonly_known== 35434 (pos)
                    (Bb_checked_p1)

                    ; #16523: <==closure== 44968 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #28312: <==commonly_known== 35434 (pos)
                    (Bc_checked_p1)

                    ; #29641: <==commonly_known== 10989 (neg)
                    (Pc_checked_p1)

                    ; #35434: origin
                    (checked_p1)

                    ; #38635: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #39419: <==commonly_known== 10989 (neg)
                    (Pb_checked_p1)

                    ; #44968: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #48361: <==commonly_known== 35434 (pos)
                    (Ba_checked_p1)

                    ; #52478: <==commonly_known== 10989 (neg)
                    (Pa_checked_p1)

                    ; #67832: <==closure== 38635 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #10989: <==negation-removal== 35434 (pos)
                    (not (not_checked_p1))

                    ; #21862: <==negation-removal== 38635 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #35922: <==uncertain_firing== 38635 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #39871: <==uncertain_firing== 44968 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #47948: <==uncertain_firing== 16523 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #48830: <==negation-removal== 10275 (pos)
                    (not (Pb_not_checked_p1))

                    ; #55693: <==negation-removal== 29641 (pos)
                    (not (Bc_not_checked_p1))

                    ; #59577: <==negation-removal== 48361 (pos)
                    (not (Pa_not_checked_p1))

                    ; #68731: <==negation-removal== 44968 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #72131: <==uncertain_firing== 67832 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #74947: <==negation-removal== 67832 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #80129: <==negation-removal== 16523 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #80483: <==negation-removal== 28312 (pos)
                    (not (Pc_not_checked_p1))

                    ; #86340: <==negation-removal== 39419 (pos)
                    (not (Bb_not_checked_p1))

                    ; #89433: <==negation-removal== 52478 (pos)
                    (not (Ba_not_checked_p1))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #36351: <==commonly_known== 55742 (pos)
                    (Ba_checked_p2)

                    ; #47165: <==commonly_known== 75861 (neg)
                    (Pc_checked_p2)

                    ; #55742: origin
                    (checked_p2)

                    ; #58369: <==closure== 61396 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #61396: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #63347: <==commonly_known== 75861 (neg)
                    (Pb_checked_p2)

                    ; #64589: <==commonly_known== 55742 (pos)
                    (Bc_checked_p2)

                    ; #82145: <==closure== 85931 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #85931: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #87555: <==commonly_known== 55742 (pos)
                    (Bb_checked_p2)

                    ; #90965: <==commonly_known== 75861 (neg)
                    (Pa_checked_p2)

                    ; #10508: <==uncertain_firing== 58369 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #10733: <==negation-removal== 47165 (pos)
                    (not (Bc_not_checked_p2))

                    ; #14390: <==negation-removal== 90965 (pos)
                    (not (Ba_not_checked_p2))

                    ; #16607: <==uncertain_firing== 82145 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #17890: <==uncertain_firing== 61396 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #24694: <==negation-removal== 85931 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #28338: <==negation-removal== 63347 (pos)
                    (not (Bb_not_checked_p2))

                    ; #32984: <==negation-removal== 64589 (pos)
                    (not (Pc_not_checked_p2))

                    ; #36415: <==negation-removal== 87555 (pos)
                    (not (Pb_not_checked_p2))

                    ; #48559: <==negation-removal== 82145 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #64393: <==negation-removal== 61396 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #70165: <==negation-removal== 36351 (pos)
                    (not (Pa_not_checked_p2))

                    ; #73285: <==uncertain_firing== 85931 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #73523: <==negation-removal== 58369 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #75861: <==negation-removal== 55742 (pos)
                    (not (not_checked_p2))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #10378: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #26555: <==commonly_known== 63335 (pos)
                    (Bb_checked_p3)

                    ; #30435: <==commonly_known== 63335 (pos)
                    (Ba_checked_p3)

                    ; #32098: <==closure== 52308 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #35598: <==commonly_known== 14563 (neg)
                    (Pa_checked_p3)

                    ; #44913: <==closure== 10378 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #52308: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #52595: <==commonly_known== 63335 (pos)
                    (Bc_checked_p3)

                    ; #63335: origin
                    (checked_p3)

                    ; #65809: <==commonly_known== 14563 (neg)
                    (Pb_checked_p3)

                    ; #69198: <==commonly_known== 14563 (neg)
                    (Pc_checked_p3)

                    ; #11965: <==negation-removal== 35598 (pos)
                    (not (Ba_not_checked_p3))

                    ; #14563: <==negation-removal== 63335 (pos)
                    (not (not_checked_p3))

                    ; #28471: <==uncertain_firing== 32098 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #29841: <==negation-removal== 69198 (pos)
                    (not (Bc_not_checked_p3))

                    ; #36165: <==negation-removal== 44913 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #36776: <==negation-removal== 26555 (pos)
                    (not (Pb_not_checked_p3))

                    ; #41245: <==negation-removal== 52595 (pos)
                    (not (Pc_not_checked_p3))

                    ; #48434: <==negation-removal== 52308 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #48604: <==negation-removal== 65809 (pos)
                    (not (Bb_not_checked_p3))

                    ; #58970: <==uncertain_firing== 10378 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #66570: <==negation-removal== 32098 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #70704: <==negation-removal== 10378 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #88182: <==uncertain_firing== 44913 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #90130: <==uncertain_firing== 52308 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #90843: <==negation-removal== 30435 (pos)
                    (not (Pa_not_checked_p3))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #25564: <==commonly_known== 66549 (neg)
                    (Pa_checked_p4)

                    ; #30237: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #35363: <==closure== 80547 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #53482: <==commonly_known== 76717 (pos)
                    (Ba_checked_p4)

                    ; #58329: <==commonly_known== 76717 (pos)
                    (Bc_checked_p4)

                    ; #64740: <==commonly_known== 66549 (neg)
                    (Pb_checked_p4)

                    ; #65855: <==commonly_known== 76717 (pos)
                    (Bb_checked_p4)

                    ; #76717: origin
                    (checked_p4)

                    ; #80547: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #83953: <==commonly_known== 66549 (neg)
                    (Pc_checked_p4)

                    ; #89660: <==closure== 30237 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #18787: <==negation-removal== 65855 (pos)
                    (not (Pb_not_checked_p4))

                    ; #19201: <==negation-removal== 64740 (pos)
                    (not (Bb_not_checked_p4))

                    ; #22066: <==negation-removal== 83953 (pos)
                    (not (Bc_not_checked_p4))

                    ; #24432: <==uncertain_firing== 30237 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #25513: <==negation-removal== 35363 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #45869: <==uncertain_firing== 35363 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #48010: <==uncertain_firing== 80547 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #49382: <==uncertain_firing== 89660 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #57175: <==negation-removal== 89660 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #61267: <==negation-removal== 80547 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #66549: <==negation-removal== 76717 (pos)
                    (not (not_checked_p4))

                    ; #75243: <==negation-removal== 53482 (pos)
                    (not (Pa_not_checked_p4))

                    ; #77464: <==negation-removal== 30237 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #81377: <==negation-removal== 58329 (pos)
                    (not (Pc_not_checked_p4))

                    ; #86612: <==negation-removal== 25564 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #11651: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #12250: <==commonly_known== 74609 (pos)
                    (Bc_checked_p5)

                    ; #14443: <==commonly_known== 52357 (neg)
                    (Pc_checked_p5)

                    ; #23692: <==closure== 38894 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #38894: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #47871: <==commonly_known== 74609 (pos)
                    (Ba_checked_p5)

                    ; #47986: <==commonly_known== 74609 (pos)
                    (Bb_checked_p5)

                    ; #55231: <==commonly_known== 52357 (neg)
                    (Pb_checked_p5)

                    ; #74609: origin
                    (checked_p5)

                    ; #79585: <==commonly_known== 52357 (neg)
                    (Pa_checked_p5)

                    ; #86365: <==closure== 11651 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #10668: <==uncertain_firing== 11651 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #12553: <==uncertain_firing== 86365 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #14196: <==uncertain_firing== 23692 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #22689: <==negation-removal== 11651 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #27886: <==negation-removal== 47986 (pos)
                    (not (Pb_not_checked_p5))

                    ; #42298: <==uncertain_firing== 38894 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #48397: <==negation-removal== 55231 (pos)
                    (not (Bb_not_checked_p5))

                    ; #52357: <==negation-removal== 74609 (pos)
                    (not (not_checked_p5))

                    ; #55160: <==negation-removal== 23692 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #62441: <==negation-removal== 79585 (pos)
                    (not (Ba_not_checked_p5))

                    ; #69251: <==negation-removal== 12250 (pos)
                    (not (Pc_not_checked_p5))

                    ; #69989: <==negation-removal== 38894 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #82918: <==negation-removal== 47871 (pos)
                    (not (Pa_not_checked_p5))

                    ; #86084: <==negation-removal== 86365 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #90526: <==negation-removal== 14443 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #12507: <==commonly_known== 38844 (pos)
                    (Ba_checked_p6)

                    ; #24236: <==commonly_known== 38844 (pos)
                    (Bc_checked_p6)

                    ; #35125: <==commonly_known== 47052 (neg)
                    (Pc_checked_p6)

                    ; #38844: origin
                    (checked_p6)

                    ; #38898: <==commonly_known== 38844 (pos)
                    (Bb_checked_p6)

                    ; #50708: <==closure== 68464 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #53097: <==closure== 73981 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #56308: <==commonly_known== 47052 (neg)
                    (Pa_checked_p6)

                    ; #68075: <==commonly_known== 47052 (neg)
                    (Pb_checked_p6)

                    ; #68464: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #73981: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #13889: <==uncertain_firing== 53097 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #22725: <==uncertain_firing== 73981 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #32139: <==negation-removal== 73981 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #42897: <==uncertain_firing== 68464 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #47052: <==negation-removal== 38844 (pos)
                    (not (not_checked_p6))

                    ; #47826: <==negation-removal== 12507 (pos)
                    (not (Pa_not_checked_p6))

                    ; #51716: <==negation-removal== 56308 (pos)
                    (not (Ba_not_checked_p6))

                    ; #51861: <==negation-removal== 53097 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #53120: <==negation-removal== 68075 (pos)
                    (not (Bb_not_checked_p6))

                    ; #58080: <==negation-removal== 38898 (pos)
                    (not (Pb_not_checked_p6))

                    ; #58695: <==uncertain_firing== 50708 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #64539: <==negation-removal== 35125 (pos)
                    (not (Bc_not_checked_p6))

                    ; #65469: <==negation-removal== 24236 (pos)
                    (not (Pc_not_checked_p6))

                    ; #66972: <==negation-removal== 68464 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #77012: <==negation-removal== 50708 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #10966: <==commonly_known== 48759 (pos)
                    (Bc_checked_p7)

                    ; #40200: <==commonly_known== 48124 (neg)
                    (Pc_checked_p7)

                    ; #41058: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #41984: <==commonly_known== 48759 (pos)
                    (Bb_checked_p7)

                    ; #44551: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #44752: <==commonly_known== 48759 (pos)
                    (Ba_checked_p7)

                    ; #48759: origin
                    (checked_p7)

                    ; #48827: <==closure== 44551 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #52969: <==closure== 41058 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #63475: <==commonly_known== 48124 (neg)
                    (Pa_checked_p7)

                    ; #73852: <==commonly_known== 48124 (neg)
                    (Pb_checked_p7)

                    ; #14773: <==uncertain_firing== 48827 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #17299: <==negation-removal== 73852 (pos)
                    (not (Bb_not_checked_p7))

                    ; #19325: <==negation-removal== 10966 (pos)
                    (not (Pc_not_checked_p7))

                    ; #31980: <==negation-removal== 48827 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #36076: <==negation-removal== 41058 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #37932: <==negation-removal== 52969 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #45230: <==uncertain_firing== 44551 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #46013: <==negation-removal== 63475 (pos)
                    (not (Ba_not_checked_p7))

                    ; #48062: <==negation-removal== 40200 (pos)
                    (not (Bc_not_checked_p7))

                    ; #48124: <==negation-removal== 48759 (pos)
                    (not (not_checked_p7))

                    ; #55477: <==uncertain_firing== 41058 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #63208: <==negation-removal== 44551 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #76904: <==negation-removal== 41984 (pos)
                    (not (Pb_not_checked_p7))

                    ; #83795: <==negation-removal== 44752 (pos)
                    (not (Pa_not_checked_p7))

                    ; #84720: <==uncertain_firing== 52969 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #10774: <==closure== 91429 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #15486: <==commonly_known== 77628 (neg)
                    (Pa_checked_p8)

                    ; #27668: <==commonly_known== 81557 (pos)
                    (Bb_checked_p8)

                    ; #48337: <==closure== 50629 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #50629: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #55741: <==commonly_known== 81557 (pos)
                    (Bc_checked_p8)

                    ; #58976: <==commonly_known== 81557 (pos)
                    (Ba_checked_p8)

                    ; #73619: <==commonly_known== 77628 (neg)
                    (Pb_checked_p8)

                    ; #81557: origin
                    (checked_p8)

                    ; #88018: <==commonly_known== 77628 (neg)
                    (Pc_checked_p8)

                    ; #91429: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #15513: <==uncertain_firing== 50629 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #22241: <==negation-removal== 10774 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #22290: <==negation-removal== 88018 (pos)
                    (not (Bc_not_checked_p8))

                    ; #23566: <==negation-removal== 58976 (pos)
                    (not (Pa_not_checked_p8))

                    ; #28942: <==negation-removal== 91429 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #41917: <==negation-removal== 15486 (pos)
                    (not (Ba_not_checked_p8))

                    ; #42409: <==negation-removal== 73619 (pos)
                    (not (Bb_not_checked_p8))

                    ; #43401: <==negation-removal== 55741 (pos)
                    (not (Pc_not_checked_p8))

                    ; #55885: <==negation-removal== 48337 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #57378: <==negation-removal== 27668 (pos)
                    (not (Pb_not_checked_p8))

                    ; #62444: <==uncertain_firing== 48337 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #66735: <==uncertain_firing== 91429 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #71931: <==uncertain_firing== 10774 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #77628: <==negation-removal== 81557 (pos)
                    (not (not_checked_p8))

                    ; #77665: <==negation-removal== 50629 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #25540: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #33027: origin
                    (checked_p9)

                    ; #33830: <==commonly_known== 12248 (neg)
                    (Pc_checked_p9)

                    ; #36175: <==commonly_known== 33027 (pos)
                    (Ba_checked_p9)

                    ; #40222: <==closure== 91970 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #42988: <==commonly_known== 12248 (neg)
                    (Pa_checked_p9)

                    ; #61286: <==closure== 25540 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #65153: <==commonly_known== 12248 (neg)
                    (Pb_checked_p9)

                    ; #85412: <==commonly_known== 33027 (pos)
                    (Bb_checked_p9)

                    ; #91583: <==commonly_known== 33027 (pos)
                    (Bc_checked_p9)

                    ; #91970: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #10792: <==negation-removal== 91970 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #12248: <==negation-removal== 33027 (pos)
                    (not (not_checked_p9))

                    ; #13846: <==uncertain_firing== 61286 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #21437: <==uncertain_firing== 25540 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #26214: <==negation-removal== 42988 (pos)
                    (not (Ba_not_checked_p9))

                    ; #62210: <==uncertain_firing== 91970 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #68512: <==uncertain_firing== 40222 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #71671: <==negation-removal== 61286 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #71788: <==negation-removal== 25540 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #71948: <==negation-removal== 40222 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #79595: <==negation-removal== 85412 (pos)
                    (not (Pb_not_checked_p9))

                    ; #82563: <==negation-removal== 36175 (pos)
                    (not (Pa_not_checked_p9))

                    ; #86820: <==negation-removal== 65153 (pos)
                    (not (Bb_not_checked_p9))

                    ; #90024: <==negation-removal== 33830 (pos)
                    (not (Bc_not_checked_p9))

                    ; #91859: <==negation-removal== 91583 (pos)
                    (not (Pc_not_checked_p9))))

    (:action observe_c_p10_s
        :precondition (and (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #32405: origin
                    (checked_p10)

                    ; #39412: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #49498: <==closure== 39412 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #50694: <==commonly_known== 78274 (neg)
                    (Pb_checked_p10)

                    ; #58514: <==closure== 72359 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #61238: <==commonly_known== 32405 (pos)
                    (Ba_checked_p10)

                    ; #72359: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #73137: <==commonly_known== 78274 (neg)
                    (Pc_checked_p10)

                    ; #73992: <==commonly_known== 78274 (neg)
                    (Pa_checked_p10)

                    ; #86880: <==commonly_known== 32405 (pos)
                    (Bc_checked_p10)

                    ; #88706: <==commonly_known== 32405 (pos)
                    (Bb_checked_p10)

                    ; #11160: <==negation-removal== 58514 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #18973: <==uncertain_firing== 49498 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #22858: <==negation-removal== 73137 (pos)
                    (not (Bc_not_checked_p10))

                    ; #27076: <==negation-removal== 50694 (pos)
                    (not (Bb_not_checked_p10))

                    ; #32507: <==uncertain_firing== 39412 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #41120: <==uncertain_firing== 58514 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #44454: <==negation-removal== 73992 (pos)
                    (not (Ba_not_checked_p10))

                    ; #46553: <==negation-removal== 72359 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #49294: <==negation-removal== 49498 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #51969: <==negation-removal== 88706 (pos)
                    (not (Pb_not_checked_p10))

                    ; #69389: <==negation-removal== 39412 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #77462: <==uncertain_firing== 72359 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #78274: <==negation-removal== 32405 (pos)
                    (not (not_checked_p10))

                    ; #79853: <==negation-removal== 61238 (pos)
                    (not (Pa_not_checked_p10))

                    ; #91267: <==negation-removal== 86880 (pos)
                    (not (Pc_not_checked_p10))))

    (:action observe_c_p11_s
        :precondition (and (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #20621: <==commonly_known== 47039 (pos)
                    (Ba_checked_p11)

                    ; #22342: <==commonly_known== 47039 (pos)
                    (Bb_checked_p11)

                    ; #30936: <==commonly_known== 47039 (pos)
                    (Bc_checked_p11)

                    ; #30942: <==closure== 54185 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #34047: <==commonly_known== 88957 (neg)
                    (Pa_checked_p11)

                    ; #47039: origin
                    (checked_p11)

                    ; #54185: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #64775: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #84799: <==commonly_known== 88957 (neg)
                    (Pb_checked_p11)

                    ; #86552: <==commonly_known== 88957 (neg)
                    (Pc_checked_p11)

                    ; #89697: <==closure== 64775 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #10788: <==uncertain_firing== 30942 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #12501: <==uncertain_firing== 64775 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #35108: <==negation-removal== 86552 (pos)
                    (not (Bc_not_checked_p11))

                    ; #35549: <==negation-removal== 89697 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #35897: <==uncertain_firing== 89697 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #44074: <==uncertain_firing== 54185 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #53462: <==negation-removal== 84799 (pos)
                    (not (Bb_not_checked_p11))

                    ; #58903: <==negation-removal== 30936 (pos)
                    (not (Pc_not_checked_p11))

                    ; #61883: <==negation-removal== 22342 (pos)
                    (not (Pb_not_checked_p11))

                    ; #67475: <==negation-removal== 30942 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #80171: <==negation-removal== 20621 (pos)
                    (not (Pa_not_checked_p11))

                    ; #81466: <==negation-removal== 64775 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #84214: <==negation-removal== 34047 (pos)
                    (not (Ba_not_checked_p11))

                    ; #88957: <==negation-removal== 47039 (pos)
                    (not (not_checked_p11))

                    ; #91528: <==negation-removal== 54185 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))))

    (:action observe_c_p12_s
        :precondition (and (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #10389: origin
                    (checked_p12)

                    ; #12768: <==commonly_known== 66812 (neg)
                    (Pa_checked_p12)

                    ; #21022: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #36889: <==closure== 21022 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #51564: <==commonly_known== 10389 (pos)
                    (Bb_checked_p12)

                    ; #63328: <==closure== 96361 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #66559: <==commonly_known== 66812 (neg)
                    (Pb_checked_p12)

                    ; #71844: <==commonly_known== 10389 (pos)
                    (Ba_checked_p12)

                    ; #75485: <==commonly_known== 10389 (pos)
                    (Bc_checked_p12)

                    ; #96361: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #97083: <==commonly_known== 66812 (neg)
                    (Pc_checked_p12)

                    ; #12801: <==uncertain_firing== 63328 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #13679: <==negation-removal== 66559 (pos)
                    (not (Bb_not_checked_p12))

                    ; #29828: <==negation-removal== 96361 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #38093: <==negation-removal== 51564 (pos)
                    (not (Pb_not_checked_p12))

                    ; #50051: <==uncertain_firing== 96361 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #51462: <==uncertain_firing== 36889 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #54674: <==negation-removal== 71844 (pos)
                    (not (Pa_not_checked_p12))

                    ; #62656: <==negation-removal== 97083 (pos)
                    (not (Bc_not_checked_p12))

                    ; #66812: <==negation-removal== 10389 (pos)
                    (not (not_checked_p12))

                    ; #72728: <==negation-removal== 12768 (pos)
                    (not (Ba_not_checked_p12))

                    ; #74950: <==negation-removal== 63328 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #75399: <==negation-removal== 75485 (pos)
                    (not (Pc_not_checked_p12))

                    ; #80844: <==uncertain_firing== 21022 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #83231: <==negation-removal== 36889 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #90791: <==negation-removal== 21022 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10275: <==commonly_known== 35434 (pos)
                    (Bb_checked_p1)

                    ; #10737: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #28312: <==commonly_known== 35434 (pos)
                    (Bc_checked_p1)

                    ; #29641: <==commonly_known== 10989 (neg)
                    (Pc_checked_p1)

                    ; #35434: origin
                    (checked_p1)

                    ; #39419: <==commonly_known== 10989 (neg)
                    (Pb_checked_p1)

                    ; #46496: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #48361: <==commonly_known== 35434 (pos)
                    (Ba_checked_p1)

                    ; #52478: <==commonly_known== 10989 (neg)
                    (Pa_checked_p1)

                    ; #67584: <==closure== 46496 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #81886: <==closure== 10737 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #10989: <==negation-removal== 35434 (pos)
                    (not (not_checked_p1))

                    ; #13803: <==negation-removal== 67584 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #21979: <==uncertain_firing== 67584 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #22376: <==negation-removal== 46496 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #40267: <==negation-removal== 81886 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #48830: <==negation-removal== 10275 (pos)
                    (not (Pb_not_checked_p1))

                    ; #55693: <==negation-removal== 29641 (pos)
                    (not (Bc_not_checked_p1))

                    ; #59577: <==negation-removal== 48361 (pos)
                    (not (Pa_not_checked_p1))

                    ; #68242: <==negation-removal== 10737 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #80483: <==negation-removal== 28312 (pos)
                    (not (Pc_not_checked_p1))

                    ; #83699: <==uncertain_firing== 10737 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #85816: <==uncertain_firing== 46496 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #86340: <==negation-removal== 39419 (pos)
                    (not (Bb_not_checked_p1))

                    ; #89177: <==uncertain_firing== 81886 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #89433: <==negation-removal== 52478 (pos)
                    (not (Ba_not_checked_p1))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #10250: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #22340: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #36351: <==commonly_known== 55742 (pos)
                    (Ba_checked_p2)

                    ; #44207: <==closure== 22340 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #47165: <==commonly_known== 75861 (neg)
                    (Pc_checked_p2)

                    ; #55742: origin
                    (checked_p2)

                    ; #63347: <==commonly_known== 75861 (neg)
                    (Pb_checked_p2)

                    ; #64589: <==commonly_known== 55742 (pos)
                    (Bc_checked_p2)

                    ; #87555: <==commonly_known== 55742 (pos)
                    (Bb_checked_p2)

                    ; #90965: <==commonly_known== 75861 (neg)
                    (Pa_checked_p2)

                    ; #90977: <==closure== 10250 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #10733: <==negation-removal== 47165 (pos)
                    (not (Bc_not_checked_p2))

                    ; #14390: <==negation-removal== 90965 (pos)
                    (not (Ba_not_checked_p2))

                    ; #21125: <==negation-removal== 44207 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #25082: <==uncertain_firing== 44207 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #28338: <==negation-removal== 63347 (pos)
                    (not (Bb_not_checked_p2))

                    ; #32984: <==negation-removal== 64589 (pos)
                    (not (Pc_not_checked_p2))

                    ; #36415: <==negation-removal== 87555 (pos)
                    (not (Pb_not_checked_p2))

                    ; #43016: <==negation-removal== 10250 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #69707: <==negation-removal== 22340 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #70165: <==negation-removal== 36351 (pos)
                    (not (Pa_not_checked_p2))

                    ; #74293: <==uncertain_firing== 22340 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #75459: <==uncertain_firing== 90977 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #75861: <==negation-removal== 55742 (pos)
                    (not (not_checked_p2))

                    ; #81802: <==uncertain_firing== 10250 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #84317: <==negation-removal== 90977 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #26555: <==commonly_known== 63335 (pos)
                    (Bb_checked_p3)

                    ; #30435: <==commonly_known== 63335 (pos)
                    (Ba_checked_p3)

                    ; #35598: <==commonly_known== 14563 (neg)
                    (Pa_checked_p3)

                    ; #52595: <==commonly_known== 63335 (pos)
                    (Bc_checked_p3)

                    ; #54688: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #62609: <==closure== 76950 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #63335: origin
                    (checked_p3)

                    ; #65809: <==commonly_known== 14563 (neg)
                    (Pb_checked_p3)

                    ; #69198: <==commonly_known== 14563 (neg)
                    (Pc_checked_p3)

                    ; #76950: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #82679: <==closure== 54688 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #11965: <==negation-removal== 35598 (pos)
                    (not (Ba_not_checked_p3))

                    ; #14563: <==negation-removal== 63335 (pos)
                    (not (not_checked_p3))

                    ; #29667: <==negation-removal== 82679 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #29841: <==negation-removal== 69198 (pos)
                    (not (Bc_not_checked_p3))

                    ; #32225: <==negation-removal== 62609 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #36776: <==negation-removal== 26555 (pos)
                    (not (Pb_not_checked_p3))

                    ; #41245: <==negation-removal== 52595 (pos)
                    (not (Pc_not_checked_p3))

                    ; #44888: <==uncertain_firing== 76950 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #48604: <==negation-removal== 65809 (pos)
                    (not (Bb_not_checked_p3))

                    ; #62060: <==uncertain_firing== 54688 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #65333: <==uncertain_firing== 62609 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #65376: <==negation-removal== 54688 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #77428: <==uncertain_firing== 82679 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #83842: <==negation-removal== 76950 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #90843: <==negation-removal== 30435 (pos)
                    (not (Pa_not_checked_p3))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #22680: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #25564: <==commonly_known== 66549 (neg)
                    (Pa_checked_p4)

                    ; #49575: <==closure== 60353 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #53482: <==commonly_known== 76717 (pos)
                    (Ba_checked_p4)

                    ; #58329: <==commonly_known== 76717 (pos)
                    (Bc_checked_p4)

                    ; #60353: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #64740: <==commonly_known== 66549 (neg)
                    (Pb_checked_p4)

                    ; #65855: <==commonly_known== 76717 (pos)
                    (Bb_checked_p4)

                    ; #76717: origin
                    (checked_p4)

                    ; #77554: <==closure== 22680 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #83953: <==commonly_known== 66549 (neg)
                    (Pc_checked_p4)

                    ; #16360: <==negation-removal== 22680 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #17444: <==negation-removal== 60353 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #18787: <==negation-removal== 65855 (pos)
                    (not (Pb_not_checked_p4))

                    ; #19201: <==negation-removal== 64740 (pos)
                    (not (Bb_not_checked_p4))

                    ; #20217: <==uncertain_firing== 77554 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #22066: <==negation-removal== 83953 (pos)
                    (not (Bc_not_checked_p4))

                    ; #38507: <==uncertain_firing== 49575 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #39098: <==negation-removal== 49575 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #50906: <==uncertain_firing== 22680 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #66549: <==negation-removal== 76717 (pos)
                    (not (not_checked_p4))

                    ; #67119: <==uncertain_firing== 60353 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #75243: <==negation-removal== 53482 (pos)
                    (not (Pa_not_checked_p4))

                    ; #77805: <==negation-removal== 77554 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #81377: <==negation-removal== 58329 (pos)
                    (not (Pc_not_checked_p4))

                    ; #86612: <==negation-removal== 25564 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #12250: <==commonly_known== 74609 (pos)
                    (Bc_checked_p5)

                    ; #14443: <==commonly_known== 52357 (neg)
                    (Pc_checked_p5)

                    ; #24964: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #26716: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #47871: <==commonly_known== 74609 (pos)
                    (Ba_checked_p5)

                    ; #47986: <==commonly_known== 74609 (pos)
                    (Bb_checked_p5)

                    ; #55231: <==commonly_known== 52357 (neg)
                    (Pb_checked_p5)

                    ; #74609: origin
                    (checked_p5)

                    ; #79551: <==closure== 26716 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #79585: <==commonly_known== 52357 (neg)
                    (Pa_checked_p5)

                    ; #79990: <==closure== 24964 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #12668: <==negation-removal== 79551 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #22613: <==negation-removal== 79990 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #22824: <==uncertain_firing== 24964 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #27886: <==negation-removal== 47986 (pos)
                    (not (Pb_not_checked_p5))

                    ; #28738: <==uncertain_firing== 26716 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #29418: <==negation-removal== 24964 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #48397: <==negation-removal== 55231 (pos)
                    (not (Bb_not_checked_p5))

                    ; #52357: <==negation-removal== 74609 (pos)
                    (not (not_checked_p5))

                    ; #52902: <==uncertain_firing== 79990 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #58548: <==uncertain_firing== 79551 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #62441: <==negation-removal== 79585 (pos)
                    (not (Ba_not_checked_p5))

                    ; #69251: <==negation-removal== 12250 (pos)
                    (not (Pc_not_checked_p5))

                    ; #82918: <==negation-removal== 47871 (pos)
                    (not (Pa_not_checked_p5))

                    ; #88555: <==negation-removal== 26716 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #90526: <==negation-removal== 14443 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #12507: <==commonly_known== 38844 (pos)
                    (Ba_checked_p6)

                    ; #13779: <==closure== 17587 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #17587: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #24236: <==commonly_known== 38844 (pos)
                    (Bc_checked_p6)

                    ; #35125: <==commonly_known== 47052 (neg)
                    (Pc_checked_p6)

                    ; #38844: origin
                    (checked_p6)

                    ; #38898: <==commonly_known== 38844 (pos)
                    (Bb_checked_p6)

                    ; #47458: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #56308: <==commonly_known== 47052 (neg)
                    (Pa_checked_p6)

                    ; #68075: <==commonly_known== 47052 (neg)
                    (Pb_checked_p6)

                    ; #87503: <==closure== 47458 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #19190: <==negation-removal== 13779 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #25736: <==negation-removal== 17587 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #29426: <==uncertain_firing== 17587 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #34566: <==negation-removal== 47458 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #43125: <==uncertain_firing== 47458 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #47052: <==negation-removal== 38844 (pos)
                    (not (not_checked_p6))

                    ; #47826: <==negation-removal== 12507 (pos)
                    (not (Pa_not_checked_p6))

                    ; #51716: <==negation-removal== 56308 (pos)
                    (not (Ba_not_checked_p6))

                    ; #52325: <==negation-removal== 87503 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #53120: <==negation-removal== 68075 (pos)
                    (not (Bb_not_checked_p6))

                    ; #58080: <==negation-removal== 38898 (pos)
                    (not (Pb_not_checked_p6))

                    ; #61359: <==uncertain_firing== 13779 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #64539: <==negation-removal== 35125 (pos)
                    (not (Bc_not_checked_p6))

                    ; #65469: <==negation-removal== 24236 (pos)
                    (not (Pc_not_checked_p6))

                    ; #66379: <==uncertain_firing== 87503 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #10966: <==commonly_known== 48759 (pos)
                    (Bc_checked_p7)

                    ; #20706: <==closure== 52734 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #27759: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #40200: <==commonly_known== 48124 (neg)
                    (Pc_checked_p7)

                    ; #41984: <==commonly_known== 48759 (pos)
                    (Bb_checked_p7)

                    ; #44752: <==commonly_known== 48759 (pos)
                    (Ba_checked_p7)

                    ; #48759: origin
                    (checked_p7)

                    ; #52734: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #62031: <==closure== 27759 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #63475: <==commonly_known== 48124 (neg)
                    (Pa_checked_p7)

                    ; #73852: <==commonly_known== 48124 (neg)
                    (Pb_checked_p7)

                    ; #10546: <==uncertain_firing== 27759 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #16827: <==negation-removal== 52734 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #17299: <==negation-removal== 73852 (pos)
                    (not (Bb_not_checked_p7))

                    ; #19325: <==negation-removal== 10966 (pos)
                    (not (Pc_not_checked_p7))

                    ; #23258: <==uncertain_firing== 52734 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #46001: <==negation-removal== 20706 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #46013: <==negation-removal== 63475 (pos)
                    (not (Ba_not_checked_p7))

                    ; #46564: <==negation-removal== 27759 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #48062: <==negation-removal== 40200 (pos)
                    (not (Bc_not_checked_p7))

                    ; #48124: <==negation-removal== 48759 (pos)
                    (not (not_checked_p7))

                    ; #55972: <==uncertain_firing== 20706 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #73265: <==uncertain_firing== 62031 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #76904: <==negation-removal== 41984 (pos)
                    (not (Pb_not_checked_p7))

                    ; #78376: <==negation-removal== 62031 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #83795: <==negation-removal== 44752 (pos)
                    (not (Pa_not_checked_p7))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #15014: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #15486: <==commonly_known== 77628 (neg)
                    (Pa_checked_p8)

                    ; #18530: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #27668: <==commonly_known== 81557 (pos)
                    (Bb_checked_p8)

                    ; #55741: <==commonly_known== 81557 (pos)
                    (Bc_checked_p8)

                    ; #57972: <==closure== 15014 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #58976: <==commonly_known== 81557 (pos)
                    (Ba_checked_p8)

                    ; #73619: <==commonly_known== 77628 (neg)
                    (Pb_checked_p8)

                    ; #77429: <==closure== 18530 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #81557: origin
                    (checked_p8)

                    ; #88018: <==commonly_known== 77628 (neg)
                    (Pc_checked_p8)

                    ; #22290: <==negation-removal== 88018 (pos)
                    (not (Bc_not_checked_p8))

                    ; #23566: <==negation-removal== 58976 (pos)
                    (not (Pa_not_checked_p8))

                    ; #24501: <==negation-removal== 18530 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #38781: <==uncertain_firing== 57972 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #41917: <==negation-removal== 15486 (pos)
                    (not (Ba_not_checked_p8))

                    ; #42409: <==negation-removal== 73619 (pos)
                    (not (Bb_not_checked_p8))

                    ; #43401: <==negation-removal== 55741 (pos)
                    (not (Pc_not_checked_p8))

                    ; #55095: <==uncertain_firing== 15014 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #57109: <==negation-removal== 15014 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #57378: <==negation-removal== 27668 (pos)
                    (not (Pb_not_checked_p8))

                    ; #57400: <==negation-removal== 57972 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #62350: <==uncertain_firing== 18530 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #66040: <==uncertain_firing== 77429 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #76329: <==negation-removal== 77429 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #77628: <==negation-removal== 81557 (pos)
                    (not (not_checked_p8))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #12740: <==closure== 76156 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #33027: origin
                    (checked_p9)

                    ; #33830: <==commonly_known== 12248 (neg)
                    (Pc_checked_p9)

                    ; #36175: <==commonly_known== 33027 (pos)
                    (Ba_checked_p9)

                    ; #41113: <==closure== 63998 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #42988: <==commonly_known== 12248 (neg)
                    (Pa_checked_p9)

                    ; #63998: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #65153: <==commonly_known== 12248 (neg)
                    (Pb_checked_p9)

                    ; #76156: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #85412: <==commonly_known== 33027 (pos)
                    (Bb_checked_p9)

                    ; #91583: <==commonly_known== 33027 (pos)
                    (Bc_checked_p9)

                    ; #12248: <==negation-removal== 33027 (pos)
                    (not (not_checked_p9))

                    ; #12995: <==uncertain_firing== 76156 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #13560: <==negation-removal== 41113 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #26214: <==negation-removal== 42988 (pos)
                    (not (Ba_not_checked_p9))

                    ; #43357: <==negation-removal== 63998 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #49643: <==uncertain_firing== 41113 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #51993: <==uncertain_firing== 63998 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #53539: <==negation-removal== 12740 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #59350: <==uncertain_firing== 12740 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #73661: <==negation-removal== 76156 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #79595: <==negation-removal== 85412 (pos)
                    (not (Pb_not_checked_p9))

                    ; #82563: <==negation-removal== 36175 (pos)
                    (not (Pa_not_checked_p9))

                    ; #86820: <==negation-removal== 65153 (pos)
                    (not (Bb_not_checked_p9))

                    ; #90024: <==negation-removal== 33830 (pos)
                    (not (Bc_not_checked_p9))

                    ; #91859: <==negation-removal== 91583 (pos)
                    (not (Pc_not_checked_p9))))

)