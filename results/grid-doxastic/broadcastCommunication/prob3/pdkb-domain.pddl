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
        :precondition (and (Ba_survivorat_s_p10)
                           (at_a_p10)
                           (leader_a)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #35092: origin
                    (Ba_not_survivorat_s_p10)

                    ; #61259: <==closure== 35092 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #59976: <==negation-removal== 35092 (pos)
                    (not (Pa_survivorat_s_p10))

                    ; #80069: <==negation-removal== 61259 (pos)
                    (not (Ba_survivorat_s_p10))))

    (:action badcomm_p10_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p10)
                           (at_a_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #52516: <==closure== 83017 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #83017: origin
                    (Bb_not_survivorat_s_p10)

                    ; #54840: <==negation-removal== 52516 (pos)
                    (not (Bb_survivorat_s_p10))

                    ; #76232: <==negation-removal== 83017 (pos)
                    (not (Pb_survivorat_s_p10))))

    (:action badcomm_p10_a_c_s
        :precondition (and (Ba_survivorat_s_p10)
                           (at_a_p10)
                           (leader_c)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #49217: <==closure== 82656 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #82656: origin
                    (Bc_not_survivorat_s_p10)

                    ; #17995: <==negation-removal== 82656 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #87558: <==negation-removal== 49217 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p10_b_a_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (leader_a)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #35092: origin
                    (Ba_not_survivorat_s_p10)

                    ; #61259: <==closure== 35092 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #59976: <==negation-removal== 35092 (pos)
                    (not (Pa_survivorat_s_p10))

                    ; #80069: <==negation-removal== 61259 (pos)
                    (not (Ba_survivorat_s_p10))))

    (:action badcomm_p10_b_b_s
        :precondition (and (leader_b)
                           (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #52516: <==closure== 83017 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #83017: origin
                    (Bb_not_survivorat_s_p10)

                    ; #54840: <==negation-removal== 52516 (pos)
                    (not (Bb_survivorat_s_p10))

                    ; #76232: <==negation-removal== 83017 (pos)
                    (not (Pb_survivorat_s_p10))))

    (:action badcomm_p10_b_c_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (leader_c)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #49217: <==closure== 82656 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #82656: origin
                    (Bc_not_survivorat_s_p10)

                    ; #17995: <==negation-removal== 82656 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #87558: <==negation-removal== 49217 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p10_c_a_s
        :precondition (and (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10)
                           (leader_a)
                           (at_c_p10))
        :effect (and
                    ; #35092: origin
                    (Ba_not_survivorat_s_p10)

                    ; #61259: <==closure== 35092 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #59976: <==negation-removal== 35092 (pos)
                    (not (Pa_survivorat_s_p10))

                    ; #80069: <==negation-removal== 61259 (pos)
                    (not (Ba_survivorat_s_p10))))

    (:action badcomm_p10_c_b_s
        :precondition (and (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10)
                           (leader_b)
                           (at_c_p10))
        :effect (and
                    ; #52516: <==closure== 83017 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #83017: origin
                    (Bb_not_survivorat_s_p10)

                    ; #54840: <==negation-removal== 52516 (pos)
                    (not (Bb_survivorat_s_p10))

                    ; #76232: <==negation-removal== 83017 (pos)
                    (not (Pb_survivorat_s_p10))))

    (:action badcomm_p10_c_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10)
                           (leader_c)
                           (at_c_p10))
        :effect (and
                    ; #49217: <==closure== 82656 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #82656: origin
                    (Bc_not_survivorat_s_p10)

                    ; #17995: <==negation-removal== 82656 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #87558: <==negation-removal== 49217 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p11_a_a_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (leader_a)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #42657: <==closure== 89442 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #89442: origin
                    (Ba_not_survivorat_s_p11)

                    ; #13956: <==negation-removal== 42657 (pos)
                    (not (Ba_survivorat_s_p11))

                    ; #26632: <==negation-removal== 89442 (pos)
                    (not (Pa_survivorat_s_p11))))

    (:action badcomm_p11_a_b_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (leader_b)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #28522: origin
                    (Bb_not_survivorat_s_p11)

                    ; #66114: <==closure== 28522 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #10294: <==negation-removal== 66114 (pos)
                    (not (Bb_survivorat_s_p11))

                    ; #75204: <==negation-removal== 28522 (pos)
                    (not (Pb_survivorat_s_p11))))

    (:action badcomm_p11_a_c_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (leader_c)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #37692: origin
                    (Bc_not_survivorat_s_p11)

                    ; #88913: <==closure== 37692 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #36769: <==negation-removal== 88913 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #64076: <==negation-removal== 37692 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_b_a_s
        :precondition (and (at_b_p11)
                           (leader_a)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #42657: <==closure== 89442 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #89442: origin
                    (Ba_not_survivorat_s_p11)

                    ; #13956: <==negation-removal== 42657 (pos)
                    (not (Ba_survivorat_s_p11))

                    ; #26632: <==negation-removal== 89442 (pos)
                    (not (Pa_survivorat_s_p11))))

    (:action badcomm_p11_b_b_s
        :precondition (and (at_b_p11)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (leader_b))
        :effect (and
                    ; #28522: origin
                    (Bb_not_survivorat_s_p11)

                    ; #66114: <==closure== 28522 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #10294: <==negation-removal== 66114 (pos)
                    (not (Bb_survivorat_s_p11))

                    ; #75204: <==negation-removal== 28522 (pos)
                    (not (Pb_survivorat_s_p11))))

    (:action badcomm_p11_b_c_s
        :precondition (and (at_b_p11)
                           (leader_c)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #37692: origin
                    (Bc_not_survivorat_s_p11)

                    ; #88913: <==closure== 37692 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #36769: <==negation-removal== 88913 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #64076: <==negation-removal== 37692 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_c_a_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (leader_a)
                           (at_c_p11))
        :effect (and
                    ; #42657: <==closure== 89442 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #89442: origin
                    (Ba_not_survivorat_s_p11)

                    ; #13956: <==negation-removal== 42657 (pos)
                    (not (Ba_survivorat_s_p11))

                    ; #26632: <==negation-removal== 89442 (pos)
                    (not (Pa_survivorat_s_p11))))

    (:action badcomm_p11_c_b_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (leader_b))
        :effect (and
                    ; #28522: origin
                    (Bb_not_survivorat_s_p11)

                    ; #66114: <==closure== 28522 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #10294: <==negation-removal== 66114 (pos)
                    (not (Bb_survivorat_s_p11))

                    ; #75204: <==negation-removal== 28522 (pos)
                    (not (Pb_survivorat_s_p11))))

    (:action badcomm_p11_c_c_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (leader_c)
                           (at_c_p11))
        :effect (and
                    ; #37692: origin
                    (Bc_not_survivorat_s_p11)

                    ; #88913: <==closure== 37692 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #36769: <==negation-removal== 88913 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #64076: <==negation-removal== 37692 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p12_a_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #37409: origin
                    (Ba_not_survivorat_s_p12)

                    ; #81872: <==closure== 37409 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #41843: <==negation-removal== 37409 (pos)
                    (not (Pa_survivorat_s_p12))

                    ; #64217: <==negation-removal== 81872 (pos)
                    (not (Ba_survivorat_s_p12))))

    (:action badcomm_p12_a_b_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #53062: <==closure== 54272 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #54272: origin
                    (Bb_not_survivorat_s_p12)

                    ; #28387: <==negation-removal== 54272 (pos)
                    (not (Pb_survivorat_s_p12))

                    ; #46123: <==negation-removal== 53062 (pos)
                    (not (Bb_survivorat_s_p12))))

    (:action badcomm_p12_a_c_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #28821: origin
                    (Bc_not_survivorat_s_p12)

                    ; #91436: <==closure== 28821 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #54825: <==negation-removal== 28821 (pos)
                    (not (Pc_survivorat_s_p12))

                    ; #60032: <==negation-removal== 91436 (pos)
                    (not (Bc_survivorat_s_p12))))

    (:action badcomm_p12_b_a_s
        :precondition (and (Bb_survivorat_s_p12)
                           (leader_a)
                           (Pb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #37409: origin
                    (Ba_not_survivorat_s_p12)

                    ; #81872: <==closure== 37409 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #41843: <==negation-removal== 37409 (pos)
                    (not (Pa_survivorat_s_p12))

                    ; #64217: <==negation-removal== 81872 (pos)
                    (not (Ba_survivorat_s_p12))))

    (:action badcomm_p12_b_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (leader_b))
        :effect (and
                    ; #53062: <==closure== 54272 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #54272: origin
                    (Bb_not_survivorat_s_p12)

                    ; #28387: <==negation-removal== 54272 (pos)
                    (not (Pb_survivorat_s_p12))

                    ; #46123: <==negation-removal== 53062 (pos)
                    (not (Bb_survivorat_s_p12))))

    (:action badcomm_p12_b_c_s
        :precondition (and (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (leader_c)
                           (at_b_p12))
        :effect (and
                    ; #28821: origin
                    (Bc_not_survivorat_s_p12)

                    ; #91436: <==closure== 28821 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #54825: <==negation-removal== 28821 (pos)
                    (not (Pc_survivorat_s_p12))

                    ; #60032: <==negation-removal== 91436 (pos)
                    (not (Bc_survivorat_s_p12))))

    (:action badcomm_p12_c_a_s
        :precondition (and (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12)
                           (leader_a)
                           (at_c_p12))
        :effect (and
                    ; #37409: origin
                    (Ba_not_survivorat_s_p12)

                    ; #81872: <==closure== 37409 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #41843: <==negation-removal== 37409 (pos)
                    (not (Pa_survivorat_s_p12))

                    ; #64217: <==negation-removal== 81872 (pos)
                    (not (Ba_survivorat_s_p12))))

    (:action badcomm_p12_c_b_s
        :precondition (and (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12)
                           (leader_b)
                           (at_c_p12))
        :effect (and
                    ; #53062: <==closure== 54272 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #54272: origin
                    (Bb_not_survivorat_s_p12)

                    ; #28387: <==negation-removal== 54272 (pos)
                    (not (Pb_survivorat_s_p12))

                    ; #46123: <==negation-removal== 53062 (pos)
                    (not (Bb_survivorat_s_p12))))

    (:action badcomm_p12_c_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12)
                           (leader_c)
                           (at_c_p12))
        :effect (and
                    ; #28821: origin
                    (Bc_not_survivorat_s_p12)

                    ; #91436: <==closure== 28821 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #54825: <==negation-removal== 28821 (pos)
                    (not (Pc_survivorat_s_p12))

                    ; #60032: <==negation-removal== 91436 (pos)
                    (not (Bc_survivorat_s_p12))))

    (:action badcomm_p1_a_a_s
        :precondition (and (at_a_p1)
                           (leader_a)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #10454: <==closure== 47428 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #47428: origin
                    (Ba_not_survivorat_s_p1)

                    ; #27435: <==negation-removal== 10454 (pos)
                    (not (Ba_survivorat_s_p1))

                    ; #59365: <==negation-removal== 47428 (pos)
                    (not (Pa_survivorat_s_p1))))

    (:action badcomm_p1_a_b_s
        :precondition (and (at_a_p1)
                           (leader_b)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #31405: origin
                    (Bb_not_survivorat_s_p1)

                    ; #51798: <==closure== 31405 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #24138: <==negation-removal== 31405 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #62181: <==negation-removal== 51798 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_a_c_s
        :precondition (and (at_a_p1)
                           (leader_c)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #52437: origin
                    (Bc_not_survivorat_s_p1)

                    ; #58698: <==closure== 52437 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #44285: <==negation-removal== 52437 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #62006: <==negation-removal== 58698 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_b_a_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (leader_a))
        :effect (and
                    ; #10454: <==closure== 47428 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #47428: origin
                    (Ba_not_survivorat_s_p1)

                    ; #27435: <==negation-removal== 10454 (pos)
                    (not (Ba_survivorat_s_p1))

                    ; #59365: <==negation-removal== 47428 (pos)
                    (not (Pa_survivorat_s_p1))))

    (:action badcomm_p1_b_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #31405: origin
                    (Bb_not_survivorat_s_p1)

                    ; #51798: <==closure== 31405 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #24138: <==negation-removal== 31405 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #62181: <==negation-removal== 51798 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_b_c_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #52437: origin
                    (Bc_not_survivorat_s_p1)

                    ; #58698: <==closure== 52437 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #44285: <==negation-removal== 52437 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #62006: <==negation-removal== 58698 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_c_a_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (leader_a)
                           (at_c_p1))
        :effect (and
                    ; #10454: <==closure== 47428 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #47428: origin
                    (Ba_not_survivorat_s_p1)

                    ; #27435: <==negation-removal== 10454 (pos)
                    (not (Ba_survivorat_s_p1))

                    ; #59365: <==negation-removal== 47428 (pos)
                    (not (Pa_survivorat_s_p1))))

    (:action badcomm_p1_c_b_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_b))
        :effect (and
                    ; #31405: origin
                    (Bb_not_survivorat_s_p1)

                    ; #51798: <==closure== 31405 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #24138: <==negation-removal== 31405 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #62181: <==negation-removal== 51798 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_c_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (leader_c)
                           (at_c_p1))
        :effect (and
                    ; #52437: origin
                    (Bc_not_survivorat_s_p1)

                    ; #58698: <==closure== 52437 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #44285: <==negation-removal== 52437 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #62006: <==negation-removal== 58698 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p2_a_a_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (leader_a))
        :effect (and
                    ; #44158: origin
                    (Ba_not_survivorat_s_p2)

                    ; #46263: <==closure== 44158 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #74107: <==negation-removal== 44158 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #90690: <==negation-removal== 46263 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_a_b_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #87000: origin
                    (Bb_not_survivorat_s_p2)

                    ; #89615: <==closure== 87000 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #34456: <==negation-removal== 87000 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #45845: <==negation-removal== 89615 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_a_c_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (leader_c))
        :effect (and
                    ; #34742: <==closure== 36125 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #36125: origin
                    (Bc_not_survivorat_s_p2)

                    ; #81346: <==negation-removal== 36125 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #82688: <==negation-removal== 34742 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_b_a_s
        :precondition (and (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (leader_a)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #44158: origin
                    (Ba_not_survivorat_s_p2)

                    ; #46263: <==closure== 44158 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #74107: <==negation-removal== 44158 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #90690: <==negation-removal== 46263 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_b_b_s
        :precondition (and (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (leader_b)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #87000: origin
                    (Bb_not_survivorat_s_p2)

                    ; #89615: <==closure== 87000 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #34456: <==negation-removal== 87000 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #45845: <==negation-removal== 89615 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_b_c_s
        :precondition (and (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (leader_c)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #34742: <==closure== 36125 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #36125: origin
                    (Bc_not_survivorat_s_p2)

                    ; #81346: <==negation-removal== 36125 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #82688: <==negation-removal== 34742 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_c_a_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (leader_a)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #44158: origin
                    (Ba_not_survivorat_s_p2)

                    ; #46263: <==closure== 44158 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #74107: <==negation-removal== 44158 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #90690: <==negation-removal== 46263 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_c_b_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (leader_b)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #87000: origin
                    (Bb_not_survivorat_s_p2)

                    ; #89615: <==closure== 87000 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #34456: <==negation-removal== 87000 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #45845: <==negation-removal== 89615 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_c_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (leader_c)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #34742: <==closure== 36125 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #36125: origin
                    (Bc_not_survivorat_s_p2)

                    ; #81346: <==negation-removal== 36125 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #82688: <==negation-removal== 34742 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p3_a_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (leader_a)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #23716: <==closure== 64758 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #64758: origin
                    (Ba_not_survivorat_s_p3)

                    ; #41043: <==negation-removal== 23716 (pos)
                    (not (Ba_survivorat_s_p3))

                    ; #66323: <==negation-removal== 64758 (pos)
                    (not (Pa_survivorat_s_p3))))

    (:action badcomm_p3_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #11562: <==closure== 27670 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #27670: origin
                    (Bb_not_survivorat_s_p3)

                    ; #52783: <==negation-removal== 11562 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #72297: <==negation-removal== 27670 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_a_c_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (leader_c)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #46719: <==closure== 90668 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #90668: origin
                    (Bc_not_survivorat_s_p3)

                    ; #46084: <==negation-removal== 46719 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #65871: <==negation-removal== 90668 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_b_a_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (leader_a)
                           (at_b_p3))
        :effect (and
                    ; #23716: <==closure== 64758 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #64758: origin
                    (Ba_not_survivorat_s_p3)

                    ; #41043: <==negation-removal== 23716 (pos)
                    (not (Ba_survivorat_s_p3))

                    ; #66323: <==negation-removal== 64758 (pos)
                    (not (Pa_survivorat_s_p3))))

    (:action badcomm_p3_b_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (leader_b)
                           (at_b_p3))
        :effect (and
                    ; #11562: <==closure== 27670 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #27670: origin
                    (Bb_not_survivorat_s_p3)

                    ; #52783: <==negation-removal== 11562 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #72297: <==negation-removal== 27670 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_b_c_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (leader_c)
                           (at_b_p3))
        :effect (and
                    ; #46719: <==closure== 90668 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #90668: origin
                    (Bc_not_survivorat_s_p3)

                    ; #46084: <==negation-removal== 46719 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #65871: <==negation-removal== 90668 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_c_a_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (leader_a)
                           (at_c_p3))
        :effect (and
                    ; #23716: <==closure== 64758 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #64758: origin
                    (Ba_not_survivorat_s_p3)

                    ; #41043: <==negation-removal== 23716 (pos)
                    (not (Ba_survivorat_s_p3))

                    ; #66323: <==negation-removal== 64758 (pos)
                    (not (Pa_survivorat_s_p3))))

    (:action badcomm_p3_c_b_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (leader_b)
                           (at_c_p3))
        :effect (and
                    ; #11562: <==closure== 27670 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #27670: origin
                    (Bb_not_survivorat_s_p3)

                    ; #52783: <==negation-removal== 11562 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #72297: <==negation-removal== 27670 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_c_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (leader_c)
                           (at_c_p3))
        :effect (and
                    ; #46719: <==closure== 90668 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #90668: origin
                    (Bc_not_survivorat_s_p3)

                    ; #46084: <==negation-removal== 46719 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #65871: <==negation-removal== 90668 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p4_a_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (leader_a))
        :effect (and
                    ; #51572: <==closure== 68575 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #68575: origin
                    (Ba_not_survivorat_s_p4)

                    ; #50076: <==negation-removal== 51572 (pos)
                    (not (Ba_survivorat_s_p4))

                    ; #69941: <==negation-removal== 68575 (pos)
                    (not (Pa_survivorat_s_p4))))

    (:action badcomm_p4_a_b_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (leader_b))
        :effect (and
                    ; #40459: origin
                    (Bb_not_survivorat_s_p4)

                    ; #90602: <==closure== 40459 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #14184: <==negation-removal== 40459 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #22643: <==negation-removal== 90602 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_a_c_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (leader_c))
        :effect (and
                    ; #63002: <==closure== 82444 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #82444: origin
                    (Bc_not_survivorat_s_p4)

                    ; #10086: <==negation-removal== 63002 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #75201: <==negation-removal== 82444 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_b_a_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (leader_a))
        :effect (and
                    ; #51572: <==closure== 68575 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #68575: origin
                    (Ba_not_survivorat_s_p4)

                    ; #50076: <==negation-removal== 51572 (pos)
                    (not (Ba_survivorat_s_p4))

                    ; #69941: <==negation-removal== 68575 (pos)
                    (not (Pa_survivorat_s_p4))))

    (:action badcomm_p4_b_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #40459: origin
                    (Bb_not_survivorat_s_p4)

                    ; #90602: <==closure== 40459 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #14184: <==negation-removal== 40459 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #22643: <==negation-removal== 90602 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_b_c_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (leader_c))
        :effect (and
                    ; #63002: <==closure== 82444 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #82444: origin
                    (Bc_not_survivorat_s_p4)

                    ; #10086: <==negation-removal== 63002 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #75201: <==negation-removal== 82444 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_c_a_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (leader_a)
                           (at_c_p4))
        :effect (and
                    ; #51572: <==closure== 68575 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #68575: origin
                    (Ba_not_survivorat_s_p4)

                    ; #50076: <==negation-removal== 51572 (pos)
                    (not (Ba_survivorat_s_p4))

                    ; #69941: <==negation-removal== 68575 (pos)
                    (not (Pa_survivorat_s_p4))))

    (:action badcomm_p4_c_b_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_b)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #40459: origin
                    (Bb_not_survivorat_s_p4)

                    ; #90602: <==closure== 40459 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #14184: <==negation-removal== 40459 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #22643: <==negation-removal== 90602 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_c_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (leader_c)
                           (at_c_p4))
        :effect (and
                    ; #63002: <==closure== 82444 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #82444: origin
                    (Bc_not_survivorat_s_p4)

                    ; #10086: <==negation-removal== 63002 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #75201: <==negation-removal== 82444 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p5_a_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_a)
                           (at_a_p5))
        :effect (and
                    ; #34121: <==closure== 54824 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #54824: origin
                    (Ba_not_survivorat_s_p5)

                    ; #77399: <==negation-removal== 54824 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #87485: <==negation-removal== 34121 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_a_b_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_b)
                           (at_a_p5))
        :effect (and
                    ; #62257: origin
                    (Bb_not_survivorat_s_p5)

                    ; #73299: <==closure== 62257 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #54548: <==negation-removal== 73299 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #75443: <==negation-removal== 62257 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_a_c_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_c)
                           (at_a_p5))
        :effect (and
                    ; #15989: origin
                    (Bc_not_survivorat_s_p5)

                    ; #66416: <==closure== 15989 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #27096: <==negation-removal== 15989 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #90803: <==negation-removal== 66416 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_b_a_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (leader_a))
        :effect (and
                    ; #34121: <==closure== 54824 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #54824: origin
                    (Ba_not_survivorat_s_p5)

                    ; #77399: <==negation-removal== 54824 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #87485: <==negation-removal== 34121 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_b_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #62257: origin
                    (Bb_not_survivorat_s_p5)

                    ; #73299: <==closure== 62257 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #54548: <==negation-removal== 73299 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #75443: <==negation-removal== 62257 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_b_c_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #15989: origin
                    (Bc_not_survivorat_s_p5)

                    ; #66416: <==closure== 15989 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #27096: <==negation-removal== 15989 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #90803: <==negation-removal== 66416 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_c_a_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_a))
        :effect (and
                    ; #34121: <==closure== 54824 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #54824: origin
                    (Ba_not_survivorat_s_p5)

                    ; #77399: <==negation-removal== 54824 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #87485: <==negation-removal== 34121 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_c_b_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #62257: origin
                    (Bb_not_survivorat_s_p5)

                    ; #73299: <==closure== 62257 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #54548: <==negation-removal== 73299 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #75443: <==negation-removal== 62257 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_c_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #15989: origin
                    (Bc_not_survivorat_s_p5)

                    ; #66416: <==closure== 15989 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #27096: <==negation-removal== 15989 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #90803: <==negation-removal== 66416 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p6_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #10209: origin
                    (Ba_not_survivorat_s_p6)

                    ; #68026: <==closure== 10209 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #30562: <==negation-removal== 68026 (pos)
                    (not (Ba_survivorat_s_p6))

                    ; #54891: <==negation-removal== 10209 (pos)
                    (not (Pa_survivorat_s_p6))))

    (:action badcomm_p6_a_b_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (leader_b))
        :effect (and
                    ; #66530: <==closure== 90075 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #90075: origin
                    (Bb_not_survivorat_s_p6)

                    ; #22484: <==negation-removal== 90075 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #58769: <==negation-removal== 66530 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #27449: origin
                    (Bc_not_survivorat_s_p6)

                    ; #84783: <==closure== 27449 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #28001: <==negation-removal== 27449 (pos)
                    (not (Pc_survivorat_s_p6))

                    ; #66073: <==negation-removal== 84783 (pos)
                    (not (Bc_survivorat_s_p6))))

    (:action badcomm_p6_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #10209: origin
                    (Ba_not_survivorat_s_p6)

                    ; #68026: <==closure== 10209 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #30562: <==negation-removal== 68026 (pos)
                    (not (Ba_survivorat_s_p6))

                    ; #54891: <==negation-removal== 10209 (pos)
                    (not (Pa_survivorat_s_p6))))

    (:action badcomm_p6_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #66530: <==closure== 90075 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #90075: origin
                    (Bb_not_survivorat_s_p6)

                    ; #22484: <==negation-removal== 90075 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #58769: <==negation-removal== 66530 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #27449: origin
                    (Bc_not_survivorat_s_p6)

                    ; #84783: <==closure== 27449 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #28001: <==negation-removal== 27449 (pos)
                    (not (Pc_survivorat_s_p6))

                    ; #66073: <==negation-removal== 84783 (pos)
                    (not (Bc_survivorat_s_p6))))

    (:action badcomm_p6_c_a_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #10209: origin
                    (Ba_not_survivorat_s_p6)

                    ; #68026: <==closure== 10209 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #30562: <==negation-removal== 68026 (pos)
                    (not (Ba_survivorat_s_p6))

                    ; #54891: <==negation-removal== 10209 (pos)
                    (not (Pa_survivorat_s_p6))))

    (:action badcomm_p6_c_b_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #66530: <==closure== 90075 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #90075: origin
                    (Bb_not_survivorat_s_p6)

                    ; #22484: <==negation-removal== 90075 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #58769: <==negation-removal== 66530 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_c_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #27449: origin
                    (Bc_not_survivorat_s_p6)

                    ; #84783: <==closure== 27449 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #28001: <==negation-removal== 27449 (pos)
                    (not (Pc_survivorat_s_p6))

                    ; #66073: <==negation-removal== 84783 (pos)
                    (not (Bc_survivorat_s_p6))))

    (:action badcomm_p7_a_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (leader_a)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #33303: <==closure== 48319 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #48319: origin
                    (Ba_not_survivorat_s_p7)

                    ; #69598: <==negation-removal== 48319 (pos)
                    (not (Pa_survivorat_s_p7))

                    ; #80626: <==negation-removal== 33303 (pos)
                    (not (Ba_survivorat_s_p7))))

    (:action badcomm_p7_a_b_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #29965: <==closure== 86052 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #86052: origin
                    (Bb_not_survivorat_s_p7)

                    ; #11252: <==negation-removal== 86052 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #65515: <==negation-removal== 29965 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_a_c_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_c)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #47875: origin
                    (Bc_not_survivorat_s_p7)

                    ; #91357: <==closure== 47875 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #68044: <==negation-removal== 47875 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #83155: <==negation-removal== 91357 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_b_a_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (leader_a))
        :effect (and
                    ; #33303: <==closure== 48319 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #48319: origin
                    (Ba_not_survivorat_s_p7)

                    ; #69598: <==negation-removal== 48319 (pos)
                    (not (Pa_survivorat_s_p7))

                    ; #80626: <==negation-removal== 33303 (pos)
                    (not (Ba_survivorat_s_p7))))

    (:action badcomm_p7_b_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #29965: <==closure== 86052 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #86052: origin
                    (Bb_not_survivorat_s_p7)

                    ; #11252: <==negation-removal== 86052 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #65515: <==negation-removal== 29965 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_b_c_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #47875: origin
                    (Bc_not_survivorat_s_p7)

                    ; #91357: <==closure== 47875 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #68044: <==negation-removal== 47875 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #83155: <==negation-removal== 91357 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_c_a_s
        :precondition (and (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (leader_a)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #33303: <==closure== 48319 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #48319: origin
                    (Ba_not_survivorat_s_p7)

                    ; #69598: <==negation-removal== 48319 (pos)
                    (not (Pa_survivorat_s_p7))

                    ; #80626: <==negation-removal== 33303 (pos)
                    (not (Ba_survivorat_s_p7))))

    (:action badcomm_p7_c_b_s
        :precondition (and (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #29965: <==closure== 86052 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #86052: origin
                    (Bb_not_survivorat_s_p7)

                    ; #11252: <==negation-removal== 86052 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #65515: <==negation-removal== 29965 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_c_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (leader_c)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #47875: origin
                    (Bc_not_survivorat_s_p7)

                    ; #91357: <==closure== 47875 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #68044: <==negation-removal== 47875 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #83155: <==negation-removal== 91357 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p8_a_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (leader_a)
                           (at_a_p8))
        :effect (and
                    ; #80083: <==closure== 80101 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #80101: origin
                    (Ba_not_survivorat_s_p8)

                    ; #31631: <==negation-removal== 80101 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #76665: <==negation-removal== 80083 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_a_b_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (leader_b))
        :effect (and
                    ; #30723: <==closure== 64897 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #64897: origin
                    (Bb_not_survivorat_s_p8)

                    ; #70485: <==negation-removal== 64897 (pos)
                    (not (Pb_survivorat_s_p8))

                    ; #85251: <==negation-removal== 30723 (pos)
                    (not (Bb_survivorat_s_p8))))

    (:action badcomm_p8_a_c_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (leader_c)
                           (at_a_p8))
        :effect (and
                    ; #48426: origin
                    (Bc_not_survivorat_s_p8)

                    ; #85553: <==closure== 48426 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #58560: <==negation-removal== 48426 (pos)
                    (not (Pc_survivorat_s_p8))

                    ; #77717: <==negation-removal== 85553 (pos)
                    (not (Bc_survivorat_s_p8))))

    (:action badcomm_p8_b_a_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_a)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #80083: <==closure== 80101 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #80101: origin
                    (Ba_not_survivorat_s_p8)

                    ; #31631: <==negation-removal== 80101 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #76665: <==negation-removal== 80083 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_b_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_b)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #30723: <==closure== 64897 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #64897: origin
                    (Bb_not_survivorat_s_p8)

                    ; #70485: <==negation-removal== 64897 (pos)
                    (not (Pb_survivorat_s_p8))

                    ; #85251: <==negation-removal== 30723 (pos)
                    (not (Bb_survivorat_s_p8))))

    (:action badcomm_p8_b_c_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_c)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #48426: origin
                    (Bc_not_survivorat_s_p8)

                    ; #85553: <==closure== 48426 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #58560: <==negation-removal== 48426 (pos)
                    (not (Pc_survivorat_s_p8))

                    ; #77717: <==negation-removal== 85553 (pos)
                    (not (Bc_survivorat_s_p8))))

    (:action badcomm_p8_c_a_s
        :precondition (and (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (leader_a)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #80083: <==closure== 80101 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #80101: origin
                    (Ba_not_survivorat_s_p8)

                    ; #31631: <==negation-removal== 80101 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #76665: <==negation-removal== 80083 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_c_b_s
        :precondition (and (at_c_p8)
                           (leader_b)
                           (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #30723: <==closure== 64897 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #64897: origin
                    (Bb_not_survivorat_s_p8)

                    ; #70485: <==negation-removal== 64897 (pos)
                    (not (Pb_survivorat_s_p8))

                    ; #85251: <==negation-removal== 30723 (pos)
                    (not (Bb_survivorat_s_p8))))

    (:action badcomm_p8_c_c_s
        :precondition (and (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (leader_c)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #48426: origin
                    (Bc_not_survivorat_s_p8)

                    ; #85553: <==closure== 48426 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #58560: <==negation-removal== 48426 (pos)
                    (not (Pc_survivorat_s_p8))

                    ; #77717: <==negation-removal== 85553 (pos)
                    (not (Bc_survivorat_s_p8))))

    (:action badcomm_p9_a_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (leader_a)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #30411: <==closure== 64208 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #64208: origin
                    (Ba_not_survivorat_s_p9)

                    ; #33677: <==negation-removal== 30411 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #58661: <==negation-removal== 64208 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_a_b_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (leader_b)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #74728: origin
                    (Bb_not_survivorat_s_p9)

                    ; #79076: <==closure== 74728 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #15634: <==negation-removal== 74728 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #74097: <==negation-removal== 79076 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_a_c_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (leader_c)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #35884: <==closure== 42960 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #42960: origin
                    (Bc_not_survivorat_s_p9)

                    ; #33992: <==negation-removal== 42960 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #59160: <==negation-removal== 35884 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #30411: <==closure== 64208 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #64208: origin
                    (Ba_not_survivorat_s_p9)

                    ; #33677: <==negation-removal== 30411 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #58661: <==negation-removal== 64208 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_b_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #74728: origin
                    (Bb_not_survivorat_s_p9)

                    ; #79076: <==closure== 74728 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #15634: <==negation-removal== 74728 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #74097: <==negation-removal== 79076 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #35884: <==closure== 42960 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #42960: origin
                    (Bc_not_survivorat_s_p9)

                    ; #33992: <==negation-removal== 42960 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #59160: <==negation-removal== 35884 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_c_a_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (leader_a)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #30411: <==closure== 64208 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #64208: origin
                    (Ba_not_survivorat_s_p9)

                    ; #33677: <==negation-removal== 30411 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #58661: <==negation-removal== 64208 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_c_b_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #74728: origin
                    (Bb_not_survivorat_s_p9)

                    ; #79076: <==closure== 74728 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #15634: <==negation-removal== 74728 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #74097: <==negation-removal== 79076 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_c_c_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (leader_c)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #35884: <==closure== 42960 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #42960: origin
                    (Bc_not_survivorat_s_p9)

                    ; #33992: <==negation-removal== 42960 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #59160: <==negation-removal== 35884 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action comm_p10_a_a_s
        :precondition (and (Ba_survivorat_s_p10)
                           (at_a_p10)
                           (leader_a)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #59976: <==closure== 80069 (pos)
                    (Pa_survivorat_s_p10)

                    ; #80069: origin
                    (Ba_survivorat_s_p10)

                    ; #35092: <==negation-removal== 59976 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #61259: <==negation-removal== 80069 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p10)
                           (at_a_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #54840: origin
                    (Bb_survivorat_s_p10)

                    ; #76232: <==closure== 54840 (pos)
                    (Pb_survivorat_s_p10)

                    ; #52516: <==negation-removal== 54840 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #83017: <==negation-removal== 76232 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_a_c_s
        :precondition (and (Ba_survivorat_s_p10)
                           (at_a_p10)
                           (leader_c)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #17995: <==closure== 87558 (pos)
                    (Pc_survivorat_s_p10)

                    ; #87558: origin
                    (Bc_survivorat_s_p10)

                    ; #49217: <==negation-removal== 87558 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #82656: <==negation-removal== 17995 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_b_a_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (leader_a)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #59976: <==closure== 80069 (pos)
                    (Pa_survivorat_s_p10)

                    ; #80069: origin
                    (Ba_survivorat_s_p10)

                    ; #35092: <==negation-removal== 59976 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #61259: <==negation-removal== 80069 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_b_b_s
        :precondition (and (leader_b)
                           (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #54840: origin
                    (Bb_survivorat_s_p10)

                    ; #76232: <==closure== 54840 (pos)
                    (Pb_survivorat_s_p10)

                    ; #52516: <==negation-removal== 54840 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #83017: <==negation-removal== 76232 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_b_c_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (leader_c)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #17995: <==closure== 87558 (pos)
                    (Pc_survivorat_s_p10)

                    ; #87558: origin
                    (Bc_survivorat_s_p10)

                    ; #49217: <==negation-removal== 87558 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #82656: <==negation-removal== 17995 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_c_a_s
        :precondition (and (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10)
                           (leader_a)
                           (at_c_p10))
        :effect (and
                    ; #59976: <==closure== 80069 (pos)
                    (Pa_survivorat_s_p10)

                    ; #80069: origin
                    (Ba_survivorat_s_p10)

                    ; #35092: <==negation-removal== 59976 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #61259: <==negation-removal== 80069 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_c_b_s
        :precondition (and (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10)
                           (leader_b)
                           (at_c_p10))
        :effect (and
                    ; #54840: origin
                    (Bb_survivorat_s_p10)

                    ; #76232: <==closure== 54840 (pos)
                    (Pb_survivorat_s_p10)

                    ; #52516: <==negation-removal== 54840 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #83017: <==negation-removal== 76232 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_c_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10)
                           (leader_c)
                           (at_c_p10))
        :effect (and
                    ; #17995: <==closure== 87558 (pos)
                    (Pc_survivorat_s_p10)

                    ; #87558: origin
                    (Bc_survivorat_s_p10)

                    ; #49217: <==negation-removal== 87558 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #82656: <==negation-removal== 17995 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p11_a_a_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (leader_a)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #13956: origin
                    (Ba_survivorat_s_p11)

                    ; #26632: <==closure== 13956 (pos)
                    (Pa_survivorat_s_p11)

                    ; #42657: <==negation-removal== 13956 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #89442: <==negation-removal== 26632 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_a_b_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (leader_b)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #10294: origin
                    (Bb_survivorat_s_p11)

                    ; #75204: <==closure== 10294 (pos)
                    (Pb_survivorat_s_p11)

                    ; #28522: <==negation-removal== 75204 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #66114: <==negation-removal== 10294 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_a_c_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (leader_c)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #36769: origin
                    (Bc_survivorat_s_p11)

                    ; #64076: <==closure== 36769 (pos)
                    (Pc_survivorat_s_p11)

                    ; #37692: <==negation-removal== 64076 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #88913: <==negation-removal== 36769 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_b_a_s
        :precondition (and (at_b_p11)
                           (leader_a)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #13956: origin
                    (Ba_survivorat_s_p11)

                    ; #26632: <==closure== 13956 (pos)
                    (Pa_survivorat_s_p11)

                    ; #42657: <==negation-removal== 13956 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #89442: <==negation-removal== 26632 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_b_b_s
        :precondition (and (at_b_p11)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (leader_b))
        :effect (and
                    ; #10294: origin
                    (Bb_survivorat_s_p11)

                    ; #75204: <==closure== 10294 (pos)
                    (Pb_survivorat_s_p11)

                    ; #28522: <==negation-removal== 75204 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #66114: <==negation-removal== 10294 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_b_c_s
        :precondition (and (at_b_p11)
                           (leader_c)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #36769: origin
                    (Bc_survivorat_s_p11)

                    ; #64076: <==closure== 36769 (pos)
                    (Pc_survivorat_s_p11)

                    ; #37692: <==negation-removal== 64076 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #88913: <==negation-removal== 36769 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_c_a_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (leader_a)
                           (at_c_p11))
        :effect (and
                    ; #13956: origin
                    (Ba_survivorat_s_p11)

                    ; #26632: <==closure== 13956 (pos)
                    (Pa_survivorat_s_p11)

                    ; #42657: <==negation-removal== 13956 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #89442: <==negation-removal== 26632 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_c_b_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (leader_b))
        :effect (and
                    ; #10294: origin
                    (Bb_survivorat_s_p11)

                    ; #75204: <==closure== 10294 (pos)
                    (Pb_survivorat_s_p11)

                    ; #28522: <==negation-removal== 75204 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #66114: <==negation-removal== 10294 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_c_c_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (leader_c)
                           (at_c_p11))
        :effect (and
                    ; #36769: origin
                    (Bc_survivorat_s_p11)

                    ; #64076: <==closure== 36769 (pos)
                    (Pc_survivorat_s_p11)

                    ; #37692: <==negation-removal== 64076 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #88913: <==negation-removal== 36769 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p12_a_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #41843: <==closure== 64217 (pos)
                    (Pa_survivorat_s_p12)

                    ; #64217: origin
                    (Ba_survivorat_s_p12)

                    ; #37409: <==negation-removal== 41843 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #81872: <==negation-removal== 64217 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_a_b_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #28387: <==closure== 46123 (pos)
                    (Pb_survivorat_s_p12)

                    ; #46123: origin
                    (Bb_survivorat_s_p12)

                    ; #53062: <==negation-removal== 46123 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #54272: <==negation-removal== 28387 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_a_c_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #54825: <==closure== 60032 (pos)
                    (Pc_survivorat_s_p12)

                    ; #60032: origin
                    (Bc_survivorat_s_p12)

                    ; #28821: <==negation-removal== 54825 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #91436: <==negation-removal== 60032 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_b_a_s
        :precondition (and (Bb_survivorat_s_p12)
                           (leader_a)
                           (Pb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #41843: <==closure== 64217 (pos)
                    (Pa_survivorat_s_p12)

                    ; #64217: origin
                    (Ba_survivorat_s_p12)

                    ; #37409: <==negation-removal== 41843 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #81872: <==negation-removal== 64217 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_b_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (leader_b))
        :effect (and
                    ; #28387: <==closure== 46123 (pos)
                    (Pb_survivorat_s_p12)

                    ; #46123: origin
                    (Bb_survivorat_s_p12)

                    ; #53062: <==negation-removal== 46123 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #54272: <==negation-removal== 28387 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_b_c_s
        :precondition (and (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (leader_c)
                           (at_b_p12))
        :effect (and
                    ; #54825: <==closure== 60032 (pos)
                    (Pc_survivorat_s_p12)

                    ; #60032: origin
                    (Bc_survivorat_s_p12)

                    ; #28821: <==negation-removal== 54825 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #91436: <==negation-removal== 60032 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_c_a_s
        :precondition (and (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12)
                           (leader_a)
                           (at_c_p12))
        :effect (and
                    ; #41843: <==closure== 64217 (pos)
                    (Pa_survivorat_s_p12)

                    ; #64217: origin
                    (Ba_survivorat_s_p12)

                    ; #37409: <==negation-removal== 41843 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #81872: <==negation-removal== 64217 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_c_b_s
        :precondition (and (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12)
                           (leader_b)
                           (at_c_p12))
        :effect (and
                    ; #28387: <==closure== 46123 (pos)
                    (Pb_survivorat_s_p12)

                    ; #46123: origin
                    (Bb_survivorat_s_p12)

                    ; #53062: <==negation-removal== 46123 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #54272: <==negation-removal== 28387 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_c_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12)
                           (leader_c)
                           (at_c_p12))
        :effect (and
                    ; #54825: <==closure== 60032 (pos)
                    (Pc_survivorat_s_p12)

                    ; #60032: origin
                    (Bc_survivorat_s_p12)

                    ; #28821: <==negation-removal== 54825 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #91436: <==negation-removal== 60032 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p1_a_a_s
        :precondition (and (at_a_p1)
                           (leader_a)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #27435: origin
                    (Ba_survivorat_s_p1)

                    ; #59365: <==closure== 27435 (pos)
                    (Pa_survivorat_s_p1)

                    ; #10454: <==negation-removal== 27435 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #47428: <==negation-removal== 59365 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (at_a_p1)
                           (leader_b)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #24138: <==closure== 62181 (pos)
                    (Pb_survivorat_s_p1)

                    ; #62181: origin
                    (Bb_survivorat_s_p1)

                    ; #31405: <==negation-removal== 24138 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #51798: <==negation-removal== 62181 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (at_a_p1)
                           (leader_c)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #44285: <==closure== 62006 (pos)
                    (Pc_survivorat_s_p1)

                    ; #62006: origin
                    (Bc_survivorat_s_p1)

                    ; #52437: <==negation-removal== 44285 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #58698: <==negation-removal== 62006 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (leader_a))
        :effect (and
                    ; #27435: origin
                    (Ba_survivorat_s_p1)

                    ; #59365: <==closure== 27435 (pos)
                    (Pa_survivorat_s_p1)

                    ; #10454: <==negation-removal== 27435 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #47428: <==negation-removal== 59365 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #24138: <==closure== 62181 (pos)
                    (Pb_survivorat_s_p1)

                    ; #62181: origin
                    (Bb_survivorat_s_p1)

                    ; #31405: <==negation-removal== 24138 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #51798: <==negation-removal== 62181 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #44285: <==closure== 62006 (pos)
                    (Pc_survivorat_s_p1)

                    ; #62006: origin
                    (Bc_survivorat_s_p1)

                    ; #52437: <==negation-removal== 44285 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #58698: <==negation-removal== 62006 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (leader_a)
                           (at_c_p1))
        :effect (and
                    ; #27435: origin
                    (Ba_survivorat_s_p1)

                    ; #59365: <==closure== 27435 (pos)
                    (Pa_survivorat_s_p1)

                    ; #10454: <==negation-removal== 27435 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #47428: <==negation-removal== 59365 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_b))
        :effect (and
                    ; #24138: <==closure== 62181 (pos)
                    (Pb_survivorat_s_p1)

                    ; #62181: origin
                    (Bb_survivorat_s_p1)

                    ; #31405: <==negation-removal== 24138 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #51798: <==negation-removal== 62181 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (leader_c)
                           (at_c_p1))
        :effect (and
                    ; #44285: <==closure== 62006 (pos)
                    (Pc_survivorat_s_p1)

                    ; #62006: origin
                    (Bc_survivorat_s_p1)

                    ; #52437: <==negation-removal== 44285 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #58698: <==negation-removal== 62006 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (leader_a))
        :effect (and
                    ; #74107: <==closure== 90690 (pos)
                    (Pa_survivorat_s_p2)

                    ; #90690: origin
                    (Ba_survivorat_s_p2)

                    ; #44158: <==negation-removal== 74107 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #46263: <==negation-removal== 90690 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #34456: <==closure== 45845 (pos)
                    (Pb_survivorat_s_p2)

                    ; #45845: origin
                    (Bb_survivorat_s_p2)

                    ; #87000: <==negation-removal== 34456 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #89615: <==negation-removal== 45845 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (leader_c))
        :effect (and
                    ; #81346: <==closure== 82688 (pos)
                    (Pc_survivorat_s_p2)

                    ; #82688: origin
                    (Bc_survivorat_s_p2)

                    ; #34742: <==negation-removal== 82688 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #36125: <==negation-removal== 81346 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (leader_a)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #74107: <==closure== 90690 (pos)
                    (Pa_survivorat_s_p2)

                    ; #90690: origin
                    (Ba_survivorat_s_p2)

                    ; #44158: <==negation-removal== 74107 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #46263: <==negation-removal== 90690 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (leader_b)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #34456: <==closure== 45845 (pos)
                    (Pb_survivorat_s_p2)

                    ; #45845: origin
                    (Bb_survivorat_s_p2)

                    ; #87000: <==negation-removal== 34456 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #89615: <==negation-removal== 45845 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (leader_c)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #81346: <==closure== 82688 (pos)
                    (Pc_survivorat_s_p2)

                    ; #82688: origin
                    (Bc_survivorat_s_p2)

                    ; #34742: <==negation-removal== 82688 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #36125: <==negation-removal== 81346 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (leader_a)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #74107: <==closure== 90690 (pos)
                    (Pa_survivorat_s_p2)

                    ; #90690: origin
                    (Ba_survivorat_s_p2)

                    ; #44158: <==negation-removal== 74107 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #46263: <==negation-removal== 90690 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (leader_b)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #34456: <==closure== 45845 (pos)
                    (Pb_survivorat_s_p2)

                    ; #45845: origin
                    (Bb_survivorat_s_p2)

                    ; #87000: <==negation-removal== 34456 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #89615: <==negation-removal== 45845 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (leader_c)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #81346: <==closure== 82688 (pos)
                    (Pc_survivorat_s_p2)

                    ; #82688: origin
                    (Bc_survivorat_s_p2)

                    ; #34742: <==negation-removal== 82688 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #36125: <==negation-removal== 81346 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (leader_a)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #41043: origin
                    (Ba_survivorat_s_p3)

                    ; #66323: <==closure== 41043 (pos)
                    (Pa_survivorat_s_p3)

                    ; #23716: <==negation-removal== 41043 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #64758: <==negation-removal== 66323 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #52783: origin
                    (Bb_survivorat_s_p3)

                    ; #72297: <==closure== 52783 (pos)
                    (Pb_survivorat_s_p3)

                    ; #11562: <==negation-removal== 52783 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #27670: <==negation-removal== 72297 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (leader_c)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #46084: origin
                    (Bc_survivorat_s_p3)

                    ; #65871: <==closure== 46084 (pos)
                    (Pc_survivorat_s_p3)

                    ; #46719: <==negation-removal== 46084 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #90668: <==negation-removal== 65871 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (leader_a)
                           (at_b_p3))
        :effect (and
                    ; #41043: origin
                    (Ba_survivorat_s_p3)

                    ; #66323: <==closure== 41043 (pos)
                    (Pa_survivorat_s_p3)

                    ; #23716: <==negation-removal== 41043 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #64758: <==negation-removal== 66323 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (leader_b)
                           (at_b_p3))
        :effect (and
                    ; #52783: origin
                    (Bb_survivorat_s_p3)

                    ; #72297: <==closure== 52783 (pos)
                    (Pb_survivorat_s_p3)

                    ; #11562: <==negation-removal== 52783 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #27670: <==negation-removal== 72297 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (leader_c)
                           (at_b_p3))
        :effect (and
                    ; #46084: origin
                    (Bc_survivorat_s_p3)

                    ; #65871: <==closure== 46084 (pos)
                    (Pc_survivorat_s_p3)

                    ; #46719: <==negation-removal== 46084 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #90668: <==negation-removal== 65871 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (leader_a)
                           (at_c_p3))
        :effect (and
                    ; #41043: origin
                    (Ba_survivorat_s_p3)

                    ; #66323: <==closure== 41043 (pos)
                    (Pa_survivorat_s_p3)

                    ; #23716: <==negation-removal== 41043 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #64758: <==negation-removal== 66323 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (leader_b)
                           (at_c_p3))
        :effect (and
                    ; #52783: origin
                    (Bb_survivorat_s_p3)

                    ; #72297: <==closure== 52783 (pos)
                    (Pb_survivorat_s_p3)

                    ; #11562: <==negation-removal== 52783 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #27670: <==negation-removal== 72297 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (leader_c)
                           (at_c_p3))
        :effect (and
                    ; #46084: origin
                    (Bc_survivorat_s_p3)

                    ; #65871: <==closure== 46084 (pos)
                    (Pc_survivorat_s_p3)

                    ; #46719: <==negation-removal== 46084 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #90668: <==negation-removal== 65871 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (leader_a))
        :effect (and
                    ; #50076: origin
                    (Ba_survivorat_s_p4)

                    ; #69941: <==closure== 50076 (pos)
                    (Pa_survivorat_s_p4)

                    ; #51572: <==negation-removal== 50076 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #68575: <==negation-removal== 69941 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (leader_b))
        :effect (and
                    ; #14184: <==closure== 22643 (pos)
                    (Pb_survivorat_s_p4)

                    ; #22643: origin
                    (Bb_survivorat_s_p4)

                    ; #40459: <==negation-removal== 14184 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #90602: <==negation-removal== 22643 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (leader_c))
        :effect (and
                    ; #10086: origin
                    (Bc_survivorat_s_p4)

                    ; #75201: <==closure== 10086 (pos)
                    (Pc_survivorat_s_p4)

                    ; #63002: <==negation-removal== 10086 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #82444: <==negation-removal== 75201 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (leader_a))
        :effect (and
                    ; #50076: origin
                    (Ba_survivorat_s_p4)

                    ; #69941: <==closure== 50076 (pos)
                    (Pa_survivorat_s_p4)

                    ; #51572: <==negation-removal== 50076 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #68575: <==negation-removal== 69941 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #14184: <==closure== 22643 (pos)
                    (Pb_survivorat_s_p4)

                    ; #22643: origin
                    (Bb_survivorat_s_p4)

                    ; #40459: <==negation-removal== 14184 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #90602: <==negation-removal== 22643 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (leader_c))
        :effect (and
                    ; #10086: origin
                    (Bc_survivorat_s_p4)

                    ; #75201: <==closure== 10086 (pos)
                    (Pc_survivorat_s_p4)

                    ; #63002: <==negation-removal== 10086 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #82444: <==negation-removal== 75201 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (leader_a)
                           (at_c_p4))
        :effect (and
                    ; #50076: origin
                    (Ba_survivorat_s_p4)

                    ; #69941: <==closure== 50076 (pos)
                    (Pa_survivorat_s_p4)

                    ; #51572: <==negation-removal== 50076 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #68575: <==negation-removal== 69941 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_b)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #14184: <==closure== 22643 (pos)
                    (Pb_survivorat_s_p4)

                    ; #22643: origin
                    (Bb_survivorat_s_p4)

                    ; #40459: <==negation-removal== 14184 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #90602: <==negation-removal== 22643 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (leader_c)
                           (at_c_p4))
        :effect (and
                    ; #10086: origin
                    (Bc_survivorat_s_p4)

                    ; #75201: <==closure== 10086 (pos)
                    (Pc_survivorat_s_p4)

                    ; #63002: <==negation-removal== 10086 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #82444: <==negation-removal== 75201 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_a)
                           (at_a_p5))
        :effect (and
                    ; #77399: <==closure== 87485 (pos)
                    (Pa_survivorat_s_p5)

                    ; #87485: origin
                    (Ba_survivorat_s_p5)

                    ; #34121: <==negation-removal== 87485 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #54824: <==negation-removal== 77399 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_b)
                           (at_a_p5))
        :effect (and
                    ; #54548: origin
                    (Bb_survivorat_s_p5)

                    ; #75443: <==closure== 54548 (pos)
                    (Pb_survivorat_s_p5)

                    ; #62257: <==negation-removal== 75443 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #73299: <==negation-removal== 54548 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_c)
                           (at_a_p5))
        :effect (and
                    ; #27096: <==closure== 90803 (pos)
                    (Pc_survivorat_s_p5)

                    ; #90803: origin
                    (Bc_survivorat_s_p5)

                    ; #15989: <==negation-removal== 27096 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #66416: <==negation-removal== 90803 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (leader_a))
        :effect (and
                    ; #77399: <==closure== 87485 (pos)
                    (Pa_survivorat_s_p5)

                    ; #87485: origin
                    (Ba_survivorat_s_p5)

                    ; #34121: <==negation-removal== 87485 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #54824: <==negation-removal== 77399 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #54548: origin
                    (Bb_survivorat_s_p5)

                    ; #75443: <==closure== 54548 (pos)
                    (Pb_survivorat_s_p5)

                    ; #62257: <==negation-removal== 75443 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #73299: <==negation-removal== 54548 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #27096: <==closure== 90803 (pos)
                    (Pc_survivorat_s_p5)

                    ; #90803: origin
                    (Bc_survivorat_s_p5)

                    ; #15989: <==negation-removal== 27096 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #66416: <==negation-removal== 90803 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_a))
        :effect (and
                    ; #77399: <==closure== 87485 (pos)
                    (Pa_survivorat_s_p5)

                    ; #87485: origin
                    (Ba_survivorat_s_p5)

                    ; #34121: <==negation-removal== 87485 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #54824: <==negation-removal== 77399 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #54548: origin
                    (Bb_survivorat_s_p5)

                    ; #75443: <==closure== 54548 (pos)
                    (Pb_survivorat_s_p5)

                    ; #62257: <==negation-removal== 75443 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #73299: <==negation-removal== 54548 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #27096: <==closure== 90803 (pos)
                    (Pc_survivorat_s_p5)

                    ; #90803: origin
                    (Bc_survivorat_s_p5)

                    ; #15989: <==negation-removal== 27096 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #66416: <==negation-removal== 90803 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #30562: origin
                    (Ba_survivorat_s_p6)

                    ; #54891: <==closure== 30562 (pos)
                    (Pa_survivorat_s_p6)

                    ; #10209: <==negation-removal== 54891 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #68026: <==negation-removal== 30562 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (leader_b))
        :effect (and
                    ; #22484: <==closure== 58769 (pos)
                    (Pb_survivorat_s_p6)

                    ; #58769: origin
                    (Bb_survivorat_s_p6)

                    ; #66530: <==negation-removal== 58769 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #90075: <==negation-removal== 22484 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #28001: <==closure== 66073 (pos)
                    (Pc_survivorat_s_p6)

                    ; #66073: origin
                    (Bc_survivorat_s_p6)

                    ; #27449: <==negation-removal== 28001 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #84783: <==negation-removal== 66073 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #30562: origin
                    (Ba_survivorat_s_p6)

                    ; #54891: <==closure== 30562 (pos)
                    (Pa_survivorat_s_p6)

                    ; #10209: <==negation-removal== 54891 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #68026: <==negation-removal== 30562 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #22484: <==closure== 58769 (pos)
                    (Pb_survivorat_s_p6)

                    ; #58769: origin
                    (Bb_survivorat_s_p6)

                    ; #66530: <==negation-removal== 58769 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #90075: <==negation-removal== 22484 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #28001: <==closure== 66073 (pos)
                    (Pc_survivorat_s_p6)

                    ; #66073: origin
                    (Bc_survivorat_s_p6)

                    ; #27449: <==negation-removal== 28001 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #84783: <==negation-removal== 66073 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #30562: origin
                    (Ba_survivorat_s_p6)

                    ; #54891: <==closure== 30562 (pos)
                    (Pa_survivorat_s_p6)

                    ; #10209: <==negation-removal== 54891 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #68026: <==negation-removal== 30562 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #22484: <==closure== 58769 (pos)
                    (Pb_survivorat_s_p6)

                    ; #58769: origin
                    (Bb_survivorat_s_p6)

                    ; #66530: <==negation-removal== 58769 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #90075: <==negation-removal== 22484 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #28001: <==closure== 66073 (pos)
                    (Pc_survivorat_s_p6)

                    ; #66073: origin
                    (Bc_survivorat_s_p6)

                    ; #27449: <==negation-removal== 28001 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #84783: <==negation-removal== 66073 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (leader_a)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #69598: <==closure== 80626 (pos)
                    (Pa_survivorat_s_p7)

                    ; #80626: origin
                    (Ba_survivorat_s_p7)

                    ; #33303: <==negation-removal== 80626 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #48319: <==negation-removal== 69598 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #11252: <==closure== 65515 (pos)
                    (Pb_survivorat_s_p7)

                    ; #65515: origin
                    (Bb_survivorat_s_p7)

                    ; #29965: <==negation-removal== 65515 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #86052: <==negation-removal== 11252 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_c)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #68044: <==closure== 83155 (pos)
                    (Pc_survivorat_s_p7)

                    ; #83155: origin
                    (Bc_survivorat_s_p7)

                    ; #47875: <==negation-removal== 68044 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #91357: <==negation-removal== 83155 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (leader_a))
        :effect (and
                    ; #69598: <==closure== 80626 (pos)
                    (Pa_survivorat_s_p7)

                    ; #80626: origin
                    (Ba_survivorat_s_p7)

                    ; #33303: <==negation-removal== 80626 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #48319: <==negation-removal== 69598 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #11252: <==closure== 65515 (pos)
                    (Pb_survivorat_s_p7)

                    ; #65515: origin
                    (Bb_survivorat_s_p7)

                    ; #29965: <==negation-removal== 65515 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #86052: <==negation-removal== 11252 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #68044: <==closure== 83155 (pos)
                    (Pc_survivorat_s_p7)

                    ; #83155: origin
                    (Bc_survivorat_s_p7)

                    ; #47875: <==negation-removal== 68044 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #91357: <==negation-removal== 83155 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (leader_a)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #69598: <==closure== 80626 (pos)
                    (Pa_survivorat_s_p7)

                    ; #80626: origin
                    (Ba_survivorat_s_p7)

                    ; #33303: <==negation-removal== 80626 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #48319: <==negation-removal== 69598 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #11252: <==closure== 65515 (pos)
                    (Pb_survivorat_s_p7)

                    ; #65515: origin
                    (Bb_survivorat_s_p7)

                    ; #29965: <==negation-removal== 65515 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #86052: <==negation-removal== 11252 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (leader_c)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #68044: <==closure== 83155 (pos)
                    (Pc_survivorat_s_p7)

                    ; #83155: origin
                    (Bc_survivorat_s_p7)

                    ; #47875: <==negation-removal== 68044 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #91357: <==negation-removal== 83155 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (leader_a)
                           (at_a_p8))
        :effect (and
                    ; #31631: <==closure== 76665 (pos)
                    (Pa_survivorat_s_p8)

                    ; #76665: origin
                    (Ba_survivorat_s_p8)

                    ; #80083: <==negation-removal== 76665 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #80101: <==negation-removal== 31631 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (leader_b))
        :effect (and
                    ; #70485: <==closure== 85251 (pos)
                    (Pb_survivorat_s_p8)

                    ; #85251: origin
                    (Bb_survivorat_s_p8)

                    ; #30723: <==negation-removal== 85251 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #64897: <==negation-removal== 70485 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (leader_c)
                           (at_a_p8))
        :effect (and
                    ; #58560: <==closure== 77717 (pos)
                    (Pc_survivorat_s_p8)

                    ; #77717: origin
                    (Bc_survivorat_s_p8)

                    ; #48426: <==negation-removal== 58560 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #85553: <==negation-removal== 77717 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_a)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #31631: <==closure== 76665 (pos)
                    (Pa_survivorat_s_p8)

                    ; #76665: origin
                    (Ba_survivorat_s_p8)

                    ; #80083: <==negation-removal== 76665 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #80101: <==negation-removal== 31631 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_b)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #70485: <==closure== 85251 (pos)
                    (Pb_survivorat_s_p8)

                    ; #85251: origin
                    (Bb_survivorat_s_p8)

                    ; #30723: <==negation-removal== 85251 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #64897: <==negation-removal== 70485 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_c)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #58560: <==closure== 77717 (pos)
                    (Pc_survivorat_s_p8)

                    ; #77717: origin
                    (Bc_survivorat_s_p8)

                    ; #48426: <==negation-removal== 58560 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #85553: <==negation-removal== 77717 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (leader_a)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #31631: <==closure== 76665 (pos)
                    (Pa_survivorat_s_p8)

                    ; #76665: origin
                    (Ba_survivorat_s_p8)

                    ; #80083: <==negation-removal== 76665 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #80101: <==negation-removal== 31631 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (at_c_p8)
                           (leader_b)
                           (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #70485: <==closure== 85251 (pos)
                    (Pb_survivorat_s_p8)

                    ; #85251: origin
                    (Bb_survivorat_s_p8)

                    ; #30723: <==negation-removal== 85251 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #64897: <==negation-removal== 70485 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (leader_c)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #58560: <==closure== 77717 (pos)
                    (Pc_survivorat_s_p8)

                    ; #77717: origin
                    (Bc_survivorat_s_p8)

                    ; #48426: <==negation-removal== 58560 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #85553: <==negation-removal== 77717 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (leader_a)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #33677: origin
                    (Ba_survivorat_s_p9)

                    ; #58661: <==closure== 33677 (pos)
                    (Pa_survivorat_s_p9)

                    ; #30411: <==negation-removal== 33677 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #64208: <==negation-removal== 58661 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (leader_b)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #15634: <==closure== 74097 (pos)
                    (Pb_survivorat_s_p9)

                    ; #74097: origin
                    (Bb_survivorat_s_p9)

                    ; #74728: <==negation-removal== 15634 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #79076: <==negation-removal== 74097 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (leader_c)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #33992: <==closure== 59160 (pos)
                    (Pc_survivorat_s_p9)

                    ; #59160: origin
                    (Bc_survivorat_s_p9)

                    ; #35884: <==negation-removal== 59160 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #42960: <==negation-removal== 33992 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #33677: origin
                    (Ba_survivorat_s_p9)

                    ; #58661: <==closure== 33677 (pos)
                    (Pa_survivorat_s_p9)

                    ; #30411: <==negation-removal== 33677 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #64208: <==negation-removal== 58661 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #15634: <==closure== 74097 (pos)
                    (Pb_survivorat_s_p9)

                    ; #74097: origin
                    (Bb_survivorat_s_p9)

                    ; #74728: <==negation-removal== 15634 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #79076: <==negation-removal== 74097 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #33992: <==closure== 59160 (pos)
                    (Pc_survivorat_s_p9)

                    ; #59160: origin
                    (Bc_survivorat_s_p9)

                    ; #35884: <==negation-removal== 59160 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #42960: <==negation-removal== 33992 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (leader_a)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #33677: origin
                    (Ba_survivorat_s_p9)

                    ; #58661: <==closure== 33677 (pos)
                    (Pa_survivorat_s_p9)

                    ; #30411: <==negation-removal== 33677 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #64208: <==negation-removal== 58661 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #15634: <==closure== 74097 (pos)
                    (Pb_survivorat_s_p9)

                    ; #74097: origin
                    (Bb_survivorat_s_p9)

                    ; #74728: <==negation-removal== 15634 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #79076: <==negation-removal== 74097 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (leader_c)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #33992: <==closure== 59160 (pos)
                    (Pc_survivorat_s_p9)

                    ; #59160: origin
                    (Bc_survivorat_s_p9)

                    ; #35884: <==negation-removal== 59160 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #42960: <==negation-removal== 33992 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #13052: origin
                    (not_at_a_p10)

                    ; #27123: origin
                    (at_a_p1)

                    ; #11554: <==negation-removal== 27123 (pos)
                    (not (not_at_a_p1))

                    ; #21021: <==negation-removal== 13052 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #13052: origin
                    (not_at_a_p10)

                    ; #21021: origin
                    (at_a_p10)

                    ; #13052: <==negation-removal== 21021 (pos)
                    (not (not_at_a_p10))

                    ; #21021: <==negation-removal== 13052 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #13052: origin
                    (not_at_a_p10)

                    ; #23848: origin
                    (at_a_p11)

                    ; #21021: <==negation-removal== 13052 (pos)
                    (not (at_a_p10))

                    ; #45821: <==negation-removal== 23848 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12)
                           (not (leader_a)))
        :effect (and
                    ; #13052: origin
                    (not_at_a_p10)

                    ; #29998: origin
                    (at_a_p12)

                    ; #21021: <==negation-removal== 13052 (pos)
                    (not (at_a_p10))

                    ; #53734: <==negation-removal== 29998 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #13052: origin
                    (not_at_a_p10)

                    ; #70361: origin
                    (at_a_p2)

                    ; #21021: <==negation-removal== 13052 (pos)
                    (not (at_a_p10))

                    ; #36231: <==negation-removal== 70361 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #13052: origin
                    (not_at_a_p10)

                    ; #41859: origin
                    (at_a_p3)

                    ; #21021: <==negation-removal== 13052 (pos)
                    (not (at_a_p10))

                    ; #86650: <==negation-removal== 41859 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #13052: origin
                    (not_at_a_p10)

                    ; #68945: origin
                    (at_a_p4)

                    ; #21021: <==negation-removal== 13052 (pos)
                    (not (at_a_p10))

                    ; #42518: <==negation-removal== 68945 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #13052: origin
                    (not_at_a_p10)

                    ; #85509: origin
                    (at_a_p5)

                    ; #21021: <==negation-removal== 13052 (pos)
                    (not (at_a_p10))

                    ; #48145: <==negation-removal== 85509 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11865: origin
                    (at_a_p6)

                    ; #13052: origin
                    (not_at_a_p10)

                    ; #21021: <==negation-removal== 13052 (pos)
                    (not (at_a_p10))

                    ; #63803: <==negation-removal== 11865 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #13052: origin
                    (not_at_a_p10)

                    ; #51095: origin
                    (at_a_p7)

                    ; #21021: <==negation-removal== 13052 (pos)
                    (not (at_a_p10))

                    ; #70917: <==negation-removal== 51095 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (at_a_p10)
                           (succ_p10_p8)
                           (not (leader_a)))
        :effect (and
                    ; #13052: origin
                    (not_at_a_p10)

                    ; #41802: origin
                    (at_a_p8)

                    ; #21021: <==negation-removal== 13052 (pos)
                    (not (at_a_p10))

                    ; #41573: <==negation-removal== 41802 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #13052: origin
                    (not_at_a_p10)

                    ; #87491: origin
                    (at_a_p9)

                    ; #21021: <==negation-removal== 13052 (pos)
                    (not (at_a_p10))

                    ; #37030: <==negation-removal== 87491 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1)
                           (not (leader_a)))
        :effect (and
                    ; #27123: origin
                    (at_a_p1)

                    ; #45821: origin
                    (not_at_a_p11)

                    ; #11554: <==negation-removal== 27123 (pos)
                    (not (not_at_a_p1))

                    ; #23848: <==negation-removal== 45821 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10)
                           (not (leader_a)))
        :effect (and
                    ; #21021: origin
                    (at_a_p10)

                    ; #45821: origin
                    (not_at_a_p11)

                    ; #13052: <==negation-removal== 21021 (pos)
                    (not (not_at_a_p10))

                    ; #23848: <==negation-removal== 45821 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11)
                           (not (leader_a)))
        :effect (and
                    ; #23848: origin
                    (at_a_p11)

                    ; #45821: origin
                    (not_at_a_p11)

                    ; #23848: <==negation-removal== 45821 (pos)
                    (not (at_a_p11))

                    ; #45821: <==negation-removal== 23848 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (at_a_p11)
                           (succ_p11_p12)
                           (not (leader_a)))
        :effect (and
                    ; #29998: origin
                    (at_a_p12)

                    ; #45821: origin
                    (not_at_a_p11)

                    ; #23848: <==negation-removal== 45821 (pos)
                    (not (at_a_p11))

                    ; #53734: <==negation-removal== 29998 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #45821: origin
                    (not_at_a_p11)

                    ; #70361: origin
                    (at_a_p2)

                    ; #23848: <==negation-removal== 45821 (pos)
                    (not (at_a_p11))

                    ; #36231: <==negation-removal== 70361 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3)
                           (not (leader_a)))
        :effect (and
                    ; #41859: origin
                    (at_a_p3)

                    ; #45821: origin
                    (not_at_a_p11)

                    ; #23848: <==negation-removal== 45821 (pos)
                    (not (at_a_p11))

                    ; #86650: <==negation-removal== 41859 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (at_a_p11)
                           (succ_p11_p4)
                           (not (leader_a)))
        :effect (and
                    ; #45821: origin
                    (not_at_a_p11)

                    ; #68945: origin
                    (at_a_p4)

                    ; #23848: <==negation-removal== 45821 (pos)
                    (not (at_a_p11))

                    ; #42518: <==negation-removal== 68945 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #45821: origin
                    (not_at_a_p11)

                    ; #85509: origin
                    (at_a_p5)

                    ; #23848: <==negation-removal== 45821 (pos)
                    (not (at_a_p11))

                    ; #48145: <==negation-removal== 85509 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #11865: origin
                    (at_a_p6)

                    ; #45821: origin
                    (not_at_a_p11)

                    ; #23848: <==negation-removal== 45821 (pos)
                    (not (at_a_p11))

                    ; #63803: <==negation-removal== 11865 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7)
                           (not (leader_a)))
        :effect (and
                    ; #45821: origin
                    (not_at_a_p11)

                    ; #51095: origin
                    (at_a_p7)

                    ; #23848: <==negation-removal== 45821 (pos)
                    (not (at_a_p11))

                    ; #70917: <==negation-removal== 51095 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (at_a_p11)
                           (succ_p11_p8)
                           (not (leader_a)))
        :effect (and
                    ; #41802: origin
                    (at_a_p8)

                    ; #45821: origin
                    (not_at_a_p11)

                    ; #23848: <==negation-removal== 45821 (pos)
                    (not (at_a_p11))

                    ; #41573: <==negation-removal== 41802 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9)
                           (not (leader_a)))
        :effect (and
                    ; #45821: origin
                    (not_at_a_p11)

                    ; #87491: origin
                    (at_a_p9)

                    ; #23848: <==negation-removal== 45821 (pos)
                    (not (at_a_p11))

                    ; #37030: <==negation-removal== 87491 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (at_a_p12)
                           (succ_p12_p1)
                           (not (leader_a)))
        :effect (and
                    ; #27123: origin
                    (at_a_p1)

                    ; #53734: origin
                    (not_at_a_p12)

                    ; #11554: <==negation-removal== 27123 (pos)
                    (not (not_at_a_p1))

                    ; #29998: <==negation-removal== 53734 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10)
                           (not (leader_a)))
        :effect (and
                    ; #21021: origin
                    (at_a_p10)

                    ; #53734: origin
                    (not_at_a_p12)

                    ; #13052: <==negation-removal== 21021 (pos)
                    (not (not_at_a_p10))

                    ; #29998: <==negation-removal== 53734 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (at_a_p12)
                           (succ_p12_p11)
                           (not (leader_a)))
        :effect (and
                    ; #23848: origin
                    (at_a_p11)

                    ; #53734: origin
                    (not_at_a_p12)

                    ; #29998: <==negation-removal== 53734 (pos)
                    (not (at_a_p12))

                    ; #45821: <==negation-removal== 23848 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (at_a_p12)
                           (succ_p12_p12)
                           (not (leader_a)))
        :effect (and
                    ; #29998: origin
                    (at_a_p12)

                    ; #53734: origin
                    (not_at_a_p12)

                    ; #29998: <==negation-removal== 53734 (pos)
                    (not (at_a_p12))

                    ; #53734: <==negation-removal== 29998 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (at_a_p12)
                           (succ_p12_p2)
                           (not (leader_a)))
        :effect (and
                    ; #53734: origin
                    (not_at_a_p12)

                    ; #70361: origin
                    (at_a_p2)

                    ; #29998: <==negation-removal== 53734 (pos)
                    (not (at_a_p12))

                    ; #36231: <==negation-removal== 70361 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (at_a_p12)
                           (succ_p12_p3)
                           (not (leader_a)))
        :effect (and
                    ; #41859: origin
                    (at_a_p3)

                    ; #53734: origin
                    (not_at_a_p12)

                    ; #29998: <==negation-removal== 53734 (pos)
                    (not (at_a_p12))

                    ; #86650: <==negation-removal== 41859 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #53734: origin
                    (not_at_a_p12)

                    ; #68945: origin
                    (at_a_p4)

                    ; #29998: <==negation-removal== 53734 (pos)
                    (not (at_a_p12))

                    ; #42518: <==negation-removal== 68945 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #53734: origin
                    (not_at_a_p12)

                    ; #85509: origin
                    (at_a_p5)

                    ; #29998: <==negation-removal== 53734 (pos)
                    (not (at_a_p12))

                    ; #48145: <==negation-removal== 85509 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11865: origin
                    (at_a_p6)

                    ; #53734: origin
                    (not_at_a_p12)

                    ; #29998: <==negation-removal== 53734 (pos)
                    (not (at_a_p12))

                    ; #63803: <==negation-removal== 11865 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (at_a_p12)
                           (succ_p12_p7)
                           (not (leader_a)))
        :effect (and
                    ; #51095: origin
                    (at_a_p7)

                    ; #53734: origin
                    (not_at_a_p12)

                    ; #29998: <==negation-removal== 53734 (pos)
                    (not (at_a_p12))

                    ; #70917: <==negation-removal== 51095 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #41802: origin
                    (at_a_p8)

                    ; #53734: origin
                    (not_at_a_p12)

                    ; #29998: <==negation-removal== 53734 (pos)
                    (not (at_a_p12))

                    ; #41573: <==negation-removal== 41802 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (at_a_p12)
                           (succ_p12_p9)
                           (not (leader_a)))
        :effect (and
                    ; #53734: origin
                    (not_at_a_p12)

                    ; #87491: origin
                    (at_a_p9)

                    ; #29998: <==negation-removal== 53734 (pos)
                    (not (at_a_p12))

                    ; #37030: <==negation-removal== 87491 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1)
                           (not (leader_a)))
        :effect (and
                    ; #11554: origin
                    (not_at_a_p1)

                    ; #27123: origin
                    (at_a_p1)

                    ; #11554: <==negation-removal== 27123 (pos)
                    (not (not_at_a_p1))

                    ; #27123: <==negation-removal== 11554 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10)
                           (not (leader_a)))
        :effect (and
                    ; #11554: origin
                    (not_at_a_p1)

                    ; #21021: origin
                    (at_a_p10)

                    ; #13052: <==negation-removal== 21021 (pos)
                    (not (not_at_a_p10))

                    ; #27123: <==negation-removal== 11554 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11)
                           (not (leader_a)))
        :effect (and
                    ; #11554: origin
                    (not_at_a_p1)

                    ; #23848: origin
                    (at_a_p11)

                    ; #27123: <==negation-removal== 11554 (pos)
                    (not (at_a_p1))

                    ; #45821: <==negation-removal== 23848 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12)
                           (not (leader_a)))
        :effect (and
                    ; #11554: origin
                    (not_at_a_p1)

                    ; #29998: origin
                    (at_a_p12)

                    ; #27123: <==negation-removal== 11554 (pos)
                    (not (at_a_p1))

                    ; #53734: <==negation-removal== 29998 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2)
                           (not (leader_a)))
        :effect (and
                    ; #11554: origin
                    (not_at_a_p1)

                    ; #70361: origin
                    (at_a_p2)

                    ; #27123: <==negation-removal== 11554 (pos)
                    (not (at_a_p1))

                    ; #36231: <==negation-removal== 70361 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3)
                           (not (leader_a)))
        :effect (and
                    ; #11554: origin
                    (not_at_a_p1)

                    ; #41859: origin
                    (at_a_p3)

                    ; #27123: <==negation-removal== 11554 (pos)
                    (not (at_a_p1))

                    ; #86650: <==negation-removal== 41859 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4)
                           (not (leader_a)))
        :effect (and
                    ; #11554: origin
                    (not_at_a_p1)

                    ; #68945: origin
                    (at_a_p4)

                    ; #27123: <==negation-removal== 11554 (pos)
                    (not (at_a_p1))

                    ; #42518: <==negation-removal== 68945 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5)
                           (not (leader_a)))
        :effect (and
                    ; #11554: origin
                    (not_at_a_p1)

                    ; #85509: origin
                    (at_a_p5)

                    ; #27123: <==negation-removal== 11554 (pos)
                    (not (at_a_p1))

                    ; #48145: <==negation-removal== 85509 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11554: origin
                    (not_at_a_p1)

                    ; #11865: origin
                    (at_a_p6)

                    ; #27123: <==negation-removal== 11554 (pos)
                    (not (at_a_p1))

                    ; #63803: <==negation-removal== 11865 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7)
                           (not (leader_a)))
        :effect (and
                    ; #11554: origin
                    (not_at_a_p1)

                    ; #51095: origin
                    (at_a_p7)

                    ; #27123: <==negation-removal== 11554 (pos)
                    (not (at_a_p1))

                    ; #70917: <==negation-removal== 51095 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8)
                           (not (leader_a)))
        :effect (and
                    ; #11554: origin
                    (not_at_a_p1)

                    ; #41802: origin
                    (at_a_p8)

                    ; #27123: <==negation-removal== 11554 (pos)
                    (not (at_a_p1))

                    ; #41573: <==negation-removal== 41802 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11554: origin
                    (not_at_a_p1)

                    ; #87491: origin
                    (at_a_p9)

                    ; #27123: <==negation-removal== 11554 (pos)
                    (not (at_a_p1))

                    ; #37030: <==negation-removal== 87491 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1)
                           (not (leader_a)))
        :effect (and
                    ; #27123: origin
                    (at_a_p1)

                    ; #36231: origin
                    (not_at_a_p2)

                    ; #11554: <==negation-removal== 27123 (pos)
                    (not (not_at_a_p1))

                    ; #70361: <==negation-removal== 36231 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (at_a_p2)
                           (succ_p2_p10)
                           (not (leader_a)))
        :effect (and
                    ; #21021: origin
                    (at_a_p10)

                    ; #36231: origin
                    (not_at_a_p2)

                    ; #13052: <==negation-removal== 21021 (pos)
                    (not (not_at_a_p10))

                    ; #70361: <==negation-removal== 36231 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (at_a_p2)
                           (succ_p2_p11)
                           (not (leader_a)))
        :effect (and
                    ; #23848: origin
                    (at_a_p11)

                    ; #36231: origin
                    (not_at_a_p2)

                    ; #45821: <==negation-removal== 23848 (pos)
                    (not (not_at_a_p11))

                    ; #70361: <==negation-removal== 36231 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12)
                           (not (leader_a)))
        :effect (and
                    ; #29998: origin
                    (at_a_p12)

                    ; #36231: origin
                    (not_at_a_p2)

                    ; #53734: <==negation-removal== 29998 (pos)
                    (not (not_at_a_p12))

                    ; #70361: <==negation-removal== 36231 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2)
                           (not (leader_a)))
        :effect (and
                    ; #36231: origin
                    (not_at_a_p2)

                    ; #70361: origin
                    (at_a_p2)

                    ; #36231: <==negation-removal== 70361 (pos)
                    (not (not_at_a_p2))

                    ; #70361: <==negation-removal== 36231 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3)
                           (not (leader_a)))
        :effect (and
                    ; #36231: origin
                    (not_at_a_p2)

                    ; #41859: origin
                    (at_a_p3)

                    ; #70361: <==negation-removal== 36231 (pos)
                    (not (at_a_p2))

                    ; #86650: <==negation-removal== 41859 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4)
                           (not (leader_a)))
        :effect (and
                    ; #36231: origin
                    (not_at_a_p2)

                    ; #68945: origin
                    (at_a_p4)

                    ; #42518: <==negation-removal== 68945 (pos)
                    (not (not_at_a_p4))

                    ; #70361: <==negation-removal== 36231 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5)
                           (not (leader_a)))
        :effect (and
                    ; #36231: origin
                    (not_at_a_p2)

                    ; #85509: origin
                    (at_a_p5)

                    ; #48145: <==negation-removal== 85509 (pos)
                    (not (not_at_a_p5))

                    ; #70361: <==negation-removal== 36231 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11865: origin
                    (at_a_p6)

                    ; #36231: origin
                    (not_at_a_p2)

                    ; #63803: <==negation-removal== 11865 (pos)
                    (not (not_at_a_p6))

                    ; #70361: <==negation-removal== 36231 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7)
                           (not (leader_a)))
        :effect (and
                    ; #36231: origin
                    (not_at_a_p2)

                    ; #51095: origin
                    (at_a_p7)

                    ; #70361: <==negation-removal== 36231 (pos)
                    (not (at_a_p2))

                    ; #70917: <==negation-removal== 51095 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8)
                           (not (leader_a)))
        :effect (and
                    ; #36231: origin
                    (not_at_a_p2)

                    ; #41802: origin
                    (at_a_p8)

                    ; #41573: <==negation-removal== 41802 (pos)
                    (not (not_at_a_p8))

                    ; #70361: <==negation-removal== 36231 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9)
                           (not (leader_a)))
        :effect (and
                    ; #36231: origin
                    (not_at_a_p2)

                    ; #87491: origin
                    (at_a_p9)

                    ; #37030: <==negation-removal== 87491 (pos)
                    (not (not_at_a_p9))

                    ; #70361: <==negation-removal== 36231 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #27123: origin
                    (at_a_p1)

                    ; #86650: origin
                    (not_at_a_p3)

                    ; #11554: <==negation-removal== 27123 (pos)
                    (not (not_at_a_p1))

                    ; #41859: <==negation-removal== 86650 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #21021: origin
                    (at_a_p10)

                    ; #86650: origin
                    (not_at_a_p3)

                    ; #13052: <==negation-removal== 21021 (pos)
                    (not (not_at_a_p10))

                    ; #41859: <==negation-removal== 86650 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11)
                           (not (leader_a)))
        :effect (and
                    ; #23848: origin
                    (at_a_p11)

                    ; #86650: origin
                    (not_at_a_p3)

                    ; #41859: <==negation-removal== 86650 (pos)
                    (not (at_a_p3))

                    ; #45821: <==negation-removal== 23848 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #29998: origin
                    (at_a_p12)

                    ; #86650: origin
                    (not_at_a_p3)

                    ; #41859: <==negation-removal== 86650 (pos)
                    (not (at_a_p3))

                    ; #53734: <==negation-removal== 29998 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #70361: origin
                    (at_a_p2)

                    ; #86650: origin
                    (not_at_a_p3)

                    ; #36231: <==negation-removal== 70361 (pos)
                    (not (not_at_a_p2))

                    ; #41859: <==negation-removal== 86650 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #41859: origin
                    (at_a_p3)

                    ; #86650: origin
                    (not_at_a_p3)

                    ; #41859: <==negation-removal== 86650 (pos)
                    (not (at_a_p3))

                    ; #86650: <==negation-removal== 41859 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #68945: origin
                    (at_a_p4)

                    ; #86650: origin
                    (not_at_a_p3)

                    ; #41859: <==negation-removal== 86650 (pos)
                    (not (at_a_p3))

                    ; #42518: <==negation-removal== 68945 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #85509: origin
                    (at_a_p5)

                    ; #86650: origin
                    (not_at_a_p3)

                    ; #41859: <==negation-removal== 86650 (pos)
                    (not (at_a_p3))

                    ; #48145: <==negation-removal== 85509 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #11865: origin
                    (at_a_p6)

                    ; #86650: origin
                    (not_at_a_p3)

                    ; #41859: <==negation-removal== 86650 (pos)
                    (not (at_a_p3))

                    ; #63803: <==negation-removal== 11865 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #51095: origin
                    (at_a_p7)

                    ; #86650: origin
                    (not_at_a_p3)

                    ; #41859: <==negation-removal== 86650 (pos)
                    (not (at_a_p3))

                    ; #70917: <==negation-removal== 51095 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #41802: origin
                    (at_a_p8)

                    ; #86650: origin
                    (not_at_a_p3)

                    ; #41573: <==negation-removal== 41802 (pos)
                    (not (not_at_a_p8))

                    ; #41859: <==negation-removal== 86650 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9)
                           (not (leader_a)))
        :effect (and
                    ; #86650: origin
                    (not_at_a_p3)

                    ; #87491: origin
                    (at_a_p9)

                    ; #37030: <==negation-removal== 87491 (pos)
                    (not (not_at_a_p9))

                    ; #41859: <==negation-removal== 86650 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #27123: origin
                    (at_a_p1)

                    ; #42518: origin
                    (not_at_a_p4)

                    ; #11554: <==negation-removal== 27123 (pos)
                    (not (not_at_a_p1))

                    ; #68945: <==negation-removal== 42518 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #21021: origin
                    (at_a_p10)

                    ; #42518: origin
                    (not_at_a_p4)

                    ; #13052: <==negation-removal== 21021 (pos)
                    (not (not_at_a_p10))

                    ; #68945: <==negation-removal== 42518 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11)
                           (not (leader_a)))
        :effect (and
                    ; #23848: origin
                    (at_a_p11)

                    ; #42518: origin
                    (not_at_a_p4)

                    ; #45821: <==negation-removal== 23848 (pos)
                    (not (not_at_a_p11))

                    ; #68945: <==negation-removal== 42518 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #29998: origin
                    (at_a_p12)

                    ; #42518: origin
                    (not_at_a_p4)

                    ; #53734: <==negation-removal== 29998 (pos)
                    (not (not_at_a_p12))

                    ; #68945: <==negation-removal== 42518 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #42518: origin
                    (not_at_a_p4)

                    ; #70361: origin
                    (at_a_p2)

                    ; #36231: <==negation-removal== 70361 (pos)
                    (not (not_at_a_p2))

                    ; #68945: <==negation-removal== 42518 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3)
                           (not (leader_a)))
        :effect (and
                    ; #41859: origin
                    (at_a_p3)

                    ; #42518: origin
                    (not_at_a_p4)

                    ; #68945: <==negation-removal== 42518 (pos)
                    (not (at_a_p4))

                    ; #86650: <==negation-removal== 41859 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4)
                           (not (leader_a)))
        :effect (and
                    ; #42518: origin
                    (not_at_a_p4)

                    ; #68945: origin
                    (at_a_p4)

                    ; #42518: <==negation-removal== 68945 (pos)
                    (not (not_at_a_p4))

                    ; #68945: <==negation-removal== 42518 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #42518: origin
                    (not_at_a_p4)

                    ; #85509: origin
                    (at_a_p5)

                    ; #48145: <==negation-removal== 85509 (pos)
                    (not (not_at_a_p5))

                    ; #68945: <==negation-removal== 42518 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11865: origin
                    (at_a_p6)

                    ; #42518: origin
                    (not_at_a_p4)

                    ; #63803: <==negation-removal== 11865 (pos)
                    (not (not_at_a_p6))

                    ; #68945: <==negation-removal== 42518 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7)
                           (not (leader_a)))
        :effect (and
                    ; #42518: origin
                    (not_at_a_p4)

                    ; #51095: origin
                    (at_a_p7)

                    ; #68945: <==negation-removal== 42518 (pos)
                    (not (at_a_p4))

                    ; #70917: <==negation-removal== 51095 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #41802: origin
                    (at_a_p8)

                    ; #42518: origin
                    (not_at_a_p4)

                    ; #41573: <==negation-removal== 41802 (pos)
                    (not (not_at_a_p8))

                    ; #68945: <==negation-removal== 42518 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #42518: origin
                    (not_at_a_p4)

                    ; #87491: origin
                    (at_a_p9)

                    ; #37030: <==negation-removal== 87491 (pos)
                    (not (not_at_a_p9))

                    ; #68945: <==negation-removal== 42518 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #27123: origin
                    (at_a_p1)

                    ; #48145: origin
                    (not_at_a_p5)

                    ; #11554: <==negation-removal== 27123 (pos)
                    (not (not_at_a_p1))

                    ; #85509: <==negation-removal== 48145 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #21021: origin
                    (at_a_p10)

                    ; #48145: origin
                    (not_at_a_p5)

                    ; #13052: <==negation-removal== 21021 (pos)
                    (not (not_at_a_p10))

                    ; #85509: <==negation-removal== 48145 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #23848: origin
                    (at_a_p11)

                    ; #48145: origin
                    (not_at_a_p5)

                    ; #45821: <==negation-removal== 23848 (pos)
                    (not (not_at_a_p11))

                    ; #85509: <==negation-removal== 48145 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #29998: origin
                    (at_a_p12)

                    ; #48145: origin
                    (not_at_a_p5)

                    ; #53734: <==negation-removal== 29998 (pos)
                    (not (not_at_a_p12))

                    ; #85509: <==negation-removal== 48145 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #48145: origin
                    (not_at_a_p5)

                    ; #70361: origin
                    (at_a_p2)

                    ; #36231: <==negation-removal== 70361 (pos)
                    (not (not_at_a_p2))

                    ; #85509: <==negation-removal== 48145 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #41859: origin
                    (at_a_p3)

                    ; #48145: origin
                    (not_at_a_p5)

                    ; #85509: <==negation-removal== 48145 (pos)
                    (not (at_a_p5))

                    ; #86650: <==negation-removal== 41859 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #48145: origin
                    (not_at_a_p5)

                    ; #68945: origin
                    (at_a_p4)

                    ; #42518: <==negation-removal== 68945 (pos)
                    (not (not_at_a_p4))

                    ; #85509: <==negation-removal== 48145 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #48145: origin
                    (not_at_a_p5)

                    ; #85509: origin
                    (at_a_p5)

                    ; #48145: <==negation-removal== 85509 (pos)
                    (not (not_at_a_p5))

                    ; #85509: <==negation-removal== 48145 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #11865: origin
                    (at_a_p6)

                    ; #48145: origin
                    (not_at_a_p5)

                    ; #63803: <==negation-removal== 11865 (pos)
                    (not (not_at_a_p6))

                    ; #85509: <==negation-removal== 48145 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #48145: origin
                    (not_at_a_p5)

                    ; #51095: origin
                    (at_a_p7)

                    ; #70917: <==negation-removal== 51095 (pos)
                    (not (not_at_a_p7))

                    ; #85509: <==negation-removal== 48145 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #41802: origin
                    (at_a_p8)

                    ; #48145: origin
                    (not_at_a_p5)

                    ; #41573: <==negation-removal== 41802 (pos)
                    (not (not_at_a_p8))

                    ; #85509: <==negation-removal== 48145 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #48145: origin
                    (not_at_a_p5)

                    ; #87491: origin
                    (at_a_p9)

                    ; #37030: <==negation-removal== 87491 (pos)
                    (not (not_at_a_p9))

                    ; #85509: <==negation-removal== 48145 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #27123: origin
                    (at_a_p1)

                    ; #63803: origin
                    (not_at_a_p6)

                    ; #11554: <==negation-removal== 27123 (pos)
                    (not (not_at_a_p1))

                    ; #11865: <==negation-removal== 63803 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10)
                           (not (leader_a)))
        :effect (and
                    ; #21021: origin
                    (at_a_p10)

                    ; #63803: origin
                    (not_at_a_p6)

                    ; #11865: <==negation-removal== 63803 (pos)
                    (not (at_a_p6))

                    ; #13052: <==negation-removal== 21021 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #23848: origin
                    (at_a_p11)

                    ; #63803: origin
                    (not_at_a_p6)

                    ; #11865: <==negation-removal== 63803 (pos)
                    (not (at_a_p6))

                    ; #45821: <==negation-removal== 23848 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #29998: origin
                    (at_a_p12)

                    ; #63803: origin
                    (not_at_a_p6)

                    ; #11865: <==negation-removal== 63803 (pos)
                    (not (at_a_p6))

                    ; #53734: <==negation-removal== 29998 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #63803: origin
                    (not_at_a_p6)

                    ; #70361: origin
                    (at_a_p2)

                    ; #11865: <==negation-removal== 63803 (pos)
                    (not (at_a_p6))

                    ; #36231: <==negation-removal== 70361 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3)
                           (not (leader_a)))
        :effect (and
                    ; #41859: origin
                    (at_a_p3)

                    ; #63803: origin
                    (not_at_a_p6)

                    ; #11865: <==negation-removal== 63803 (pos)
                    (not (at_a_p6))

                    ; #86650: <==negation-removal== 41859 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #63803: origin
                    (not_at_a_p6)

                    ; #68945: origin
                    (at_a_p4)

                    ; #11865: <==negation-removal== 63803 (pos)
                    (not (at_a_p6))

                    ; #42518: <==negation-removal== 68945 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5)
                           (not (leader_a)))
        :effect (and
                    ; #63803: origin
                    (not_at_a_p6)

                    ; #85509: origin
                    (at_a_p5)

                    ; #11865: <==negation-removal== 63803 (pos)
                    (not (at_a_p6))

                    ; #48145: <==negation-removal== 85509 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11865: origin
                    (at_a_p6)

                    ; #63803: origin
                    (not_at_a_p6)

                    ; #11865: <==negation-removal== 63803 (pos)
                    (not (at_a_p6))

                    ; #63803: <==negation-removal== 11865 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #51095: origin
                    (at_a_p7)

                    ; #63803: origin
                    (not_at_a_p6)

                    ; #11865: <==negation-removal== 63803 (pos)
                    (not (at_a_p6))

                    ; #70917: <==negation-removal== 51095 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #41802: origin
                    (at_a_p8)

                    ; #63803: origin
                    (not_at_a_p6)

                    ; #11865: <==negation-removal== 63803 (pos)
                    (not (at_a_p6))

                    ; #41573: <==negation-removal== 41802 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9)
                           (not (leader_a)))
        :effect (and
                    ; #63803: origin
                    (not_at_a_p6)

                    ; #87491: origin
                    (at_a_p9)

                    ; #11865: <==negation-removal== 63803 (pos)
                    (not (at_a_p6))

                    ; #37030: <==negation-removal== 87491 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #27123: origin
                    (at_a_p1)

                    ; #70917: origin
                    (not_at_a_p7)

                    ; #11554: <==negation-removal== 27123 (pos)
                    (not (not_at_a_p1))

                    ; #51095: <==negation-removal== 70917 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #21021: origin
                    (at_a_p10)

                    ; #70917: origin
                    (not_at_a_p7)

                    ; #13052: <==negation-removal== 21021 (pos)
                    (not (not_at_a_p10))

                    ; #51095: <==negation-removal== 70917 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #23848: origin
                    (at_a_p11)

                    ; #70917: origin
                    (not_at_a_p7)

                    ; #45821: <==negation-removal== 23848 (pos)
                    (not (not_at_a_p11))

                    ; #51095: <==negation-removal== 70917 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p12
        :precondition (and (at_a_p7)
                           (succ_p7_p12)
                           (not (leader_a)))
        :effect (and
                    ; #29998: origin
                    (at_a_p12)

                    ; #70917: origin
                    (not_at_a_p7)

                    ; #51095: <==negation-removal== 70917 (pos)
                    (not (at_a_p7))

                    ; #53734: <==negation-removal== 29998 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2)
                           (not (leader_a)))
        :effect (and
                    ; #70361: origin
                    (at_a_p2)

                    ; #70917: origin
                    (not_at_a_p7)

                    ; #36231: <==negation-removal== 70361 (pos)
                    (not (not_at_a_p2))

                    ; #51095: <==negation-removal== 70917 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3)
                           (not (leader_a)))
        :effect (and
                    ; #41859: origin
                    (at_a_p3)

                    ; #70917: origin
                    (not_at_a_p7)

                    ; #51095: <==negation-removal== 70917 (pos)
                    (not (at_a_p7))

                    ; #86650: <==negation-removal== 41859 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #68945: origin
                    (at_a_p4)

                    ; #70917: origin
                    (not_at_a_p7)

                    ; #42518: <==negation-removal== 68945 (pos)
                    (not (not_at_a_p4))

                    ; #51095: <==negation-removal== 70917 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5)
                           (not (leader_a)))
        :effect (and
                    ; #70917: origin
                    (not_at_a_p7)

                    ; #85509: origin
                    (at_a_p5)

                    ; #48145: <==negation-removal== 85509 (pos)
                    (not (not_at_a_p5))

                    ; #51095: <==negation-removal== 70917 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #11865: origin
                    (at_a_p6)

                    ; #70917: origin
                    (not_at_a_p7)

                    ; #51095: <==negation-removal== 70917 (pos)
                    (not (at_a_p7))

                    ; #63803: <==negation-removal== 11865 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #51095: origin
                    (at_a_p7)

                    ; #70917: origin
                    (not_at_a_p7)

                    ; #51095: <==negation-removal== 70917 (pos)
                    (not (at_a_p7))

                    ; #70917: <==negation-removal== 51095 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #41802: origin
                    (at_a_p8)

                    ; #70917: origin
                    (not_at_a_p7)

                    ; #41573: <==negation-removal== 41802 (pos)
                    (not (not_at_a_p8))

                    ; #51095: <==negation-removal== 70917 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #70917: origin
                    (not_at_a_p7)

                    ; #87491: origin
                    (at_a_p9)

                    ; #37030: <==negation-removal== 87491 (pos)
                    (not (not_at_a_p9))

                    ; #51095: <==negation-removal== 70917 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #27123: origin
                    (at_a_p1)

                    ; #41573: origin
                    (not_at_a_p8)

                    ; #11554: <==negation-removal== 27123 (pos)
                    (not (not_at_a_p1))

                    ; #41802: <==negation-removal== 41573 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #21021: origin
                    (at_a_p10)

                    ; #41573: origin
                    (not_at_a_p8)

                    ; #13052: <==negation-removal== 21021 (pos)
                    (not (not_at_a_p10))

                    ; #41802: <==negation-removal== 41573 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #23848: origin
                    (at_a_p11)

                    ; #41573: origin
                    (not_at_a_p8)

                    ; #41802: <==negation-removal== 41573 (pos)
                    (not (at_a_p8))

                    ; #45821: <==negation-removal== 23848 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #29998: origin
                    (at_a_p12)

                    ; #41573: origin
                    (not_at_a_p8)

                    ; #41802: <==negation-removal== 41573 (pos)
                    (not (at_a_p8))

                    ; #53734: <==negation-removal== 29998 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #41573: origin
                    (not_at_a_p8)

                    ; #70361: origin
                    (at_a_p2)

                    ; #36231: <==negation-removal== 70361 (pos)
                    (not (not_at_a_p2))

                    ; #41802: <==negation-removal== 41573 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #41573: origin
                    (not_at_a_p8)

                    ; #41859: origin
                    (at_a_p3)

                    ; #41802: <==negation-removal== 41573 (pos)
                    (not (at_a_p8))

                    ; #86650: <==negation-removal== 41859 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #41573: origin
                    (not_at_a_p8)

                    ; #68945: origin
                    (at_a_p4)

                    ; #41802: <==negation-removal== 41573 (pos)
                    (not (at_a_p8))

                    ; #42518: <==negation-removal== 68945 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #41573: origin
                    (not_at_a_p8)

                    ; #85509: origin
                    (at_a_p5)

                    ; #41802: <==negation-removal== 41573 (pos)
                    (not (at_a_p8))

                    ; #48145: <==negation-removal== 85509 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #11865: origin
                    (at_a_p6)

                    ; #41573: origin
                    (not_at_a_p8)

                    ; #41802: <==negation-removal== 41573 (pos)
                    (not (at_a_p8))

                    ; #63803: <==negation-removal== 11865 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #41573: origin
                    (not_at_a_p8)

                    ; #51095: origin
                    (at_a_p7)

                    ; #41802: <==negation-removal== 41573 (pos)
                    (not (at_a_p8))

                    ; #70917: <==negation-removal== 51095 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #41573: origin
                    (not_at_a_p8)

                    ; #41802: origin
                    (at_a_p8)

                    ; #41573: <==negation-removal== 41802 (pos)
                    (not (not_at_a_p8))

                    ; #41802: <==negation-removal== 41573 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #41573: origin
                    (not_at_a_p8)

                    ; #87491: origin
                    (at_a_p9)

                    ; #37030: <==negation-removal== 87491 (pos)
                    (not (not_at_a_p9))

                    ; #41802: <==negation-removal== 41573 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1)
                           (not (leader_a)))
        :effect (and
                    ; #27123: origin
                    (at_a_p1)

                    ; #37030: origin
                    (not_at_a_p9)

                    ; #11554: <==negation-removal== 27123 (pos)
                    (not (not_at_a_p1))

                    ; #87491: <==negation-removal== 37030 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #21021: origin
                    (at_a_p10)

                    ; #37030: origin
                    (not_at_a_p9)

                    ; #13052: <==negation-removal== 21021 (pos)
                    (not (not_at_a_p10))

                    ; #87491: <==negation-removal== 37030 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (at_a_p9)
                           (succ_p9_p11)
                           (not (leader_a)))
        :effect (and
                    ; #23848: origin
                    (at_a_p11)

                    ; #37030: origin
                    (not_at_a_p9)

                    ; #45821: <==negation-removal== 23848 (pos)
                    (not (not_at_a_p11))

                    ; #87491: <==negation-removal== 37030 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12)
                           (not (leader_a)))
        :effect (and
                    ; #29998: origin
                    (at_a_p12)

                    ; #37030: origin
                    (not_at_a_p9)

                    ; #53734: <==negation-removal== 29998 (pos)
                    (not (not_at_a_p12))

                    ; #87491: <==negation-removal== 37030 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2)
                           (not (leader_a)))
        :effect (and
                    ; #37030: origin
                    (not_at_a_p9)

                    ; #70361: origin
                    (at_a_p2)

                    ; #36231: <==negation-removal== 70361 (pos)
                    (not (not_at_a_p2))

                    ; #87491: <==negation-removal== 37030 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3)
                           (not (leader_a)))
        :effect (and
                    ; #37030: origin
                    (not_at_a_p9)

                    ; #41859: origin
                    (at_a_p3)

                    ; #86650: <==negation-removal== 41859 (pos)
                    (not (not_at_a_p3))

                    ; #87491: <==negation-removal== 37030 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4)
                           (not (leader_a)))
        :effect (and
                    ; #37030: origin
                    (not_at_a_p9)

                    ; #68945: origin
                    (at_a_p4)

                    ; #42518: <==negation-removal== 68945 (pos)
                    (not (not_at_a_p4))

                    ; #87491: <==negation-removal== 37030 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5)
                           (not (leader_a)))
        :effect (and
                    ; #37030: origin
                    (not_at_a_p9)

                    ; #85509: origin
                    (at_a_p5)

                    ; #48145: <==negation-removal== 85509 (pos)
                    (not (not_at_a_p5))

                    ; #87491: <==negation-removal== 37030 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11865: origin
                    (at_a_p6)

                    ; #37030: origin
                    (not_at_a_p9)

                    ; #63803: <==negation-removal== 11865 (pos)
                    (not (not_at_a_p6))

                    ; #87491: <==negation-removal== 37030 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #37030: origin
                    (not_at_a_p9)

                    ; #51095: origin
                    (at_a_p7)

                    ; #70917: <==negation-removal== 51095 (pos)
                    (not (not_at_a_p7))

                    ; #87491: <==negation-removal== 37030 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #37030: origin
                    (not_at_a_p9)

                    ; #41802: origin
                    (at_a_p8)

                    ; #41573: <==negation-removal== 41802 (pos)
                    (not (not_at_a_p8))

                    ; #87491: <==negation-removal== 37030 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9)
                           (not (leader_a)))
        :effect (and
                    ; #37030: origin
                    (not_at_a_p9)

                    ; #87491: origin
                    (at_a_p9)

                    ; #37030: <==negation-removal== 87491 (pos)
                    (not (not_at_a_p9))

                    ; #87491: <==negation-removal== 37030 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #39672: origin
                    (at_b_p1)

                    ; #70971: origin
                    (not_at_b_p10)

                    ; #45455: <==negation-removal== 70971 (pos)
                    (not (at_b_p10))

                    ; #74261: <==negation-removal== 39672 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #45455: origin
                    (at_b_p10)

                    ; #70971: origin
                    (not_at_b_p10)

                    ; #45455: <==negation-removal== 70971 (pos)
                    (not (at_b_p10))

                    ; #70971: <==negation-removal== 45455 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #70971: origin
                    (not_at_b_p10)

                    ; #83648: origin
                    (at_b_p11)

                    ; #45455: <==negation-removal== 70971 (pos)
                    (not (at_b_p10))

                    ; #88354: <==negation-removal== 83648 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12)
                           (not (leader_b)))
        :effect (and
                    ; #67900: origin
                    (at_b_p12)

                    ; #70971: origin
                    (not_at_b_p10)

                    ; #45455: <==negation-removal== 70971 (pos)
                    (not (at_b_p10))

                    ; #81820: <==negation-removal== 67900 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #51696: origin
                    (at_b_p2)

                    ; #70971: origin
                    (not_at_b_p10)

                    ; #45455: <==negation-removal== 70971 (pos)
                    (not (at_b_p10))

                    ; #63007: <==negation-removal== 51696 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #70971: origin
                    (not_at_b_p10)

                    ; #78334: origin
                    (at_b_p3)

                    ; #45455: <==negation-removal== 70971 (pos)
                    (not (at_b_p10))

                    ; #65358: <==negation-removal== 78334 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #35796: origin
                    (at_b_p4)

                    ; #70971: origin
                    (not_at_b_p10)

                    ; #45455: <==negation-removal== 70971 (pos)
                    (not (at_b_p10))

                    ; #63871: <==negation-removal== 35796 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5)
                           (not (leader_b)))
        :effect (and
                    ; #65680: origin
                    (at_b_p5)

                    ; #70971: origin
                    (not_at_b_p10)

                    ; #29383: <==negation-removal== 65680 (pos)
                    (not (not_at_b_p5))

                    ; #45455: <==negation-removal== 70971 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6)
                           (not (leader_b)))
        :effect (and
                    ; #66128: origin
                    (at_b_p6)

                    ; #70971: origin
                    (not_at_b_p10)

                    ; #45455: <==negation-removal== 70971 (pos)
                    (not (at_b_p10))

                    ; #69496: <==negation-removal== 66128 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #50319: origin
                    (at_b_p7)

                    ; #70971: origin
                    (not_at_b_p10)

                    ; #21885: <==negation-removal== 50319 (pos)
                    (not (not_at_b_p7))

                    ; #45455: <==negation-removal== 70971 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8)
                           (not (leader_b)))
        :effect (and
                    ; #70971: origin
                    (not_at_b_p10)

                    ; #78346: origin
                    (at_b_p8)

                    ; #18771: <==negation-removal== 78346 (pos)
                    (not (not_at_b_p8))

                    ; #45455: <==negation-removal== 70971 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9)
                           (not (leader_b)))
        :effect (and
                    ; #41183: origin
                    (at_b_p9)

                    ; #70971: origin
                    (not_at_b_p10)

                    ; #45455: <==negation-removal== 70971 (pos)
                    (not (at_b_p10))

                    ; #69431: <==negation-removal== 41183 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (at_b_p11)
                           (succ_p11_p1)
                           (not (leader_b)))
        :effect (and
                    ; #39672: origin
                    (at_b_p1)

                    ; #88354: origin
                    (not_at_b_p11)

                    ; #74261: <==negation-removal== 39672 (pos)
                    (not (not_at_b_p1))

                    ; #83648: <==negation-removal== 88354 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10)
                           (not (leader_b)))
        :effect (and
                    ; #45455: origin
                    (at_b_p10)

                    ; #88354: origin
                    (not_at_b_p11)

                    ; #70971: <==negation-removal== 45455 (pos)
                    (not (not_at_b_p10))

                    ; #83648: <==negation-removal== 88354 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11)
                           (not (leader_b)))
        :effect (and
                    ; #83648: origin
                    (at_b_p11)

                    ; #88354: origin
                    (not_at_b_p11)

                    ; #83648: <==negation-removal== 88354 (pos)
                    (not (at_b_p11))

                    ; #88354: <==negation-removal== 83648 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (at_b_p11)
                           (succ_p11_p12)
                           (not (leader_b)))
        :effect (and
                    ; #67900: origin
                    (at_b_p12)

                    ; #88354: origin
                    (not_at_b_p11)

                    ; #81820: <==negation-removal== 67900 (pos)
                    (not (not_at_b_p12))

                    ; #83648: <==negation-removal== 88354 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #51696: origin
                    (at_b_p2)

                    ; #88354: origin
                    (not_at_b_p11)

                    ; #63007: <==negation-removal== 51696 (pos)
                    (not (not_at_b_p2))

                    ; #83648: <==negation-removal== 88354 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3)
                           (not (leader_b)))
        :effect (and
                    ; #78334: origin
                    (at_b_p3)

                    ; #88354: origin
                    (not_at_b_p11)

                    ; #65358: <==negation-removal== 78334 (pos)
                    (not (not_at_b_p3))

                    ; #83648: <==negation-removal== 88354 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p4
        :precondition (and (at_b_p11)
                           (succ_p11_p4)
                           (not (leader_b)))
        :effect (and
                    ; #35796: origin
                    (at_b_p4)

                    ; #88354: origin
                    (not_at_b_p11)

                    ; #63871: <==negation-removal== 35796 (pos)
                    (not (not_at_b_p4))

                    ; #83648: <==negation-removal== 88354 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #65680: origin
                    (at_b_p5)

                    ; #88354: origin
                    (not_at_b_p11)

                    ; #29383: <==negation-removal== 65680 (pos)
                    (not (not_at_b_p5))

                    ; #83648: <==negation-removal== 88354 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #66128: origin
                    (at_b_p6)

                    ; #88354: origin
                    (not_at_b_p11)

                    ; #69496: <==negation-removal== 66128 (pos)
                    (not (not_at_b_p6))

                    ; #83648: <==negation-removal== 88354 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7)
                           (not (leader_b)))
        :effect (and
                    ; #50319: origin
                    (at_b_p7)

                    ; #88354: origin
                    (not_at_b_p11)

                    ; #21885: <==negation-removal== 50319 (pos)
                    (not (not_at_b_p7))

                    ; #83648: <==negation-removal== 88354 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p8
        :precondition (and (at_b_p11)
                           (succ_p11_p8)
                           (not (leader_b)))
        :effect (and
                    ; #78346: origin
                    (at_b_p8)

                    ; #88354: origin
                    (not_at_b_p11)

                    ; #18771: <==negation-removal== 78346 (pos)
                    (not (not_at_b_p8))

                    ; #83648: <==negation-removal== 88354 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9)
                           (not (leader_b)))
        :effect (and
                    ; #41183: origin
                    (at_b_p9)

                    ; #88354: origin
                    (not_at_b_p11)

                    ; #69431: <==negation-removal== 41183 (pos)
                    (not (not_at_b_p9))

                    ; #83648: <==negation-removal== 88354 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #39672: origin
                    (at_b_p1)

                    ; #81820: origin
                    (not_at_b_p12)

                    ; #67900: <==negation-removal== 81820 (pos)
                    (not (at_b_p12))

                    ; #74261: <==negation-removal== 39672 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #45455: origin
                    (at_b_p10)

                    ; #81820: origin
                    (not_at_b_p12)

                    ; #67900: <==negation-removal== 81820 (pos)
                    (not (at_b_p12))

                    ; #70971: <==negation-removal== 45455 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11)
                           (not (leader_b)))
        :effect (and
                    ; #81820: origin
                    (not_at_b_p12)

                    ; #83648: origin
                    (at_b_p11)

                    ; #67900: <==negation-removal== 81820 (pos)
                    (not (at_b_p12))

                    ; #88354: <==negation-removal== 83648 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12)
                           (not (leader_b)))
        :effect (and
                    ; #67900: origin
                    (at_b_p12)

                    ; #81820: origin
                    (not_at_b_p12)

                    ; #67900: <==negation-removal== 81820 (pos)
                    (not (at_b_p12))

                    ; #81820: <==negation-removal== 67900 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #51696: origin
                    (at_b_p2)

                    ; #81820: origin
                    (not_at_b_p12)

                    ; #63007: <==negation-removal== 51696 (pos)
                    (not (not_at_b_p2))

                    ; #67900: <==negation-removal== 81820 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3)
                           (not (leader_b)))
        :effect (and
                    ; #78334: origin
                    (at_b_p3)

                    ; #81820: origin
                    (not_at_b_p12)

                    ; #65358: <==negation-removal== 78334 (pos)
                    (not (not_at_b_p3))

                    ; #67900: <==negation-removal== 81820 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #35796: origin
                    (at_b_p4)

                    ; #81820: origin
                    (not_at_b_p12)

                    ; #63871: <==negation-removal== 35796 (pos)
                    (not (not_at_b_p4))

                    ; #67900: <==negation-removal== 81820 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #65680: origin
                    (at_b_p5)

                    ; #81820: origin
                    (not_at_b_p12)

                    ; #29383: <==negation-removal== 65680 (pos)
                    (not (not_at_b_p5))

                    ; #67900: <==negation-removal== 81820 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #66128: origin
                    (at_b_p6)

                    ; #81820: origin
                    (not_at_b_p12)

                    ; #67900: <==negation-removal== 81820 (pos)
                    (not (at_b_p12))

                    ; #69496: <==negation-removal== 66128 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #50319: origin
                    (at_b_p7)

                    ; #81820: origin
                    (not_at_b_p12)

                    ; #21885: <==negation-removal== 50319 (pos)
                    (not (not_at_b_p7))

                    ; #67900: <==negation-removal== 81820 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #78346: origin
                    (at_b_p8)

                    ; #81820: origin
                    (not_at_b_p12)

                    ; #18771: <==negation-removal== 78346 (pos)
                    (not (not_at_b_p8))

                    ; #67900: <==negation-removal== 81820 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #41183: origin
                    (at_b_p9)

                    ; #81820: origin
                    (not_at_b_p12)

                    ; #67900: <==negation-removal== 81820 (pos)
                    (not (at_b_p12))

                    ; #69431: <==negation-removal== 41183 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1)
                           (not (leader_b)))
        :effect (and
                    ; #39672: origin
                    (at_b_p1)

                    ; #74261: origin
                    (not_at_b_p1)

                    ; #39672: <==negation-removal== 74261 (pos)
                    (not (at_b_p1))

                    ; #74261: <==negation-removal== 39672 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (at_b_p1)
                           (succ_p1_p10)
                           (not (leader_b)))
        :effect (and
                    ; #45455: origin
                    (at_b_p10)

                    ; #74261: origin
                    (not_at_b_p1)

                    ; #39672: <==negation-removal== 74261 (pos)
                    (not (at_b_p1))

                    ; #70971: <==negation-removal== 45455 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11)
                           (not (leader_b)))
        :effect (and
                    ; #74261: origin
                    (not_at_b_p1)

                    ; #83648: origin
                    (at_b_p11)

                    ; #39672: <==negation-removal== 74261 (pos)
                    (not (at_b_p1))

                    ; #88354: <==negation-removal== 83648 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12)
                           (not (leader_b)))
        :effect (and
                    ; #67900: origin
                    (at_b_p12)

                    ; #74261: origin
                    (not_at_b_p1)

                    ; #39672: <==negation-removal== 74261 (pos)
                    (not (at_b_p1))

                    ; #81820: <==negation-removal== 67900 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2)
                           (not (leader_b)))
        :effect (and
                    ; #51696: origin
                    (at_b_p2)

                    ; #74261: origin
                    (not_at_b_p1)

                    ; #39672: <==negation-removal== 74261 (pos)
                    (not (at_b_p1))

                    ; #63007: <==negation-removal== 51696 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3)
                           (not (leader_b)))
        :effect (and
                    ; #74261: origin
                    (not_at_b_p1)

                    ; #78334: origin
                    (at_b_p3)

                    ; #39672: <==negation-removal== 74261 (pos)
                    (not (at_b_p1))

                    ; #65358: <==negation-removal== 78334 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #35796: origin
                    (at_b_p4)

                    ; #74261: origin
                    (not_at_b_p1)

                    ; #39672: <==negation-removal== 74261 (pos)
                    (not (at_b_p1))

                    ; #63871: <==negation-removal== 35796 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5)
                           (not (leader_b)))
        :effect (and
                    ; #65680: origin
                    (at_b_p5)

                    ; #74261: origin
                    (not_at_b_p1)

                    ; #29383: <==negation-removal== 65680 (pos)
                    (not (not_at_b_p5))

                    ; #39672: <==negation-removal== 74261 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6)
                           (not (leader_b)))
        :effect (and
                    ; #66128: origin
                    (at_b_p6)

                    ; #74261: origin
                    (not_at_b_p1)

                    ; #39672: <==negation-removal== 74261 (pos)
                    (not (at_b_p1))

                    ; #69496: <==negation-removal== 66128 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7)
                           (not (leader_b)))
        :effect (and
                    ; #50319: origin
                    (at_b_p7)

                    ; #74261: origin
                    (not_at_b_p1)

                    ; #21885: <==negation-removal== 50319 (pos)
                    (not (not_at_b_p7))

                    ; #39672: <==negation-removal== 74261 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8)
                           (not (leader_b)))
        :effect (and
                    ; #74261: origin
                    (not_at_b_p1)

                    ; #78346: origin
                    (at_b_p8)

                    ; #18771: <==negation-removal== 78346 (pos)
                    (not (not_at_b_p8))

                    ; #39672: <==negation-removal== 74261 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9)
                           (not (leader_b)))
        :effect (and
                    ; #41183: origin
                    (at_b_p9)

                    ; #74261: origin
                    (not_at_b_p1)

                    ; #39672: <==negation-removal== 74261 (pos)
                    (not (at_b_p1))

                    ; #69431: <==negation-removal== 41183 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1)
                           (not (leader_b)))
        :effect (and
                    ; #39672: origin
                    (at_b_p1)

                    ; #63007: origin
                    (not_at_b_p2)

                    ; #51696: <==negation-removal== 63007 (pos)
                    (not (at_b_p2))

                    ; #74261: <==negation-removal== 39672 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10)
                           (not (leader_b)))
        :effect (and
                    ; #45455: origin
                    (at_b_p10)

                    ; #63007: origin
                    (not_at_b_p2)

                    ; #51696: <==negation-removal== 63007 (pos)
                    (not (at_b_p2))

                    ; #70971: <==negation-removal== 45455 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (at_b_p2)
                           (succ_p2_p11)
                           (not (leader_b)))
        :effect (and
                    ; #63007: origin
                    (not_at_b_p2)

                    ; #83648: origin
                    (at_b_p11)

                    ; #51696: <==negation-removal== 63007 (pos)
                    (not (at_b_p2))

                    ; #88354: <==negation-removal== 83648 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12)
                           (not (leader_b)))
        :effect (and
                    ; #63007: origin
                    (not_at_b_p2)

                    ; #67900: origin
                    (at_b_p12)

                    ; #51696: <==negation-removal== 63007 (pos)
                    (not (at_b_p2))

                    ; #81820: <==negation-removal== 67900 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2)
                           (not (leader_b)))
        :effect (and
                    ; #51696: origin
                    (at_b_p2)

                    ; #63007: origin
                    (not_at_b_p2)

                    ; #51696: <==negation-removal== 63007 (pos)
                    (not (at_b_p2))

                    ; #63007: <==negation-removal== 51696 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3)
                           (not (leader_b)))
        :effect (and
                    ; #63007: origin
                    (not_at_b_p2)

                    ; #78334: origin
                    (at_b_p3)

                    ; #51696: <==negation-removal== 63007 (pos)
                    (not (at_b_p2))

                    ; #65358: <==negation-removal== 78334 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4)
                           (not (leader_b)))
        :effect (and
                    ; #35796: origin
                    (at_b_p4)

                    ; #63007: origin
                    (not_at_b_p2)

                    ; #51696: <==negation-removal== 63007 (pos)
                    (not (at_b_p2))

                    ; #63871: <==negation-removal== 35796 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5)
                           (not (leader_b)))
        :effect (and
                    ; #63007: origin
                    (not_at_b_p2)

                    ; #65680: origin
                    (at_b_p5)

                    ; #29383: <==negation-removal== 65680 (pos)
                    (not (not_at_b_p5))

                    ; #51696: <==negation-removal== 63007 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6)
                           (not (leader_b)))
        :effect (and
                    ; #63007: origin
                    (not_at_b_p2)

                    ; #66128: origin
                    (at_b_p6)

                    ; #51696: <==negation-removal== 63007 (pos)
                    (not (at_b_p2))

                    ; #69496: <==negation-removal== 66128 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7)
                           (not (leader_b)))
        :effect (and
                    ; #50319: origin
                    (at_b_p7)

                    ; #63007: origin
                    (not_at_b_p2)

                    ; #21885: <==negation-removal== 50319 (pos)
                    (not (not_at_b_p7))

                    ; #51696: <==negation-removal== 63007 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8)
                           (not (leader_b)))
        :effect (and
                    ; #63007: origin
                    (not_at_b_p2)

                    ; #78346: origin
                    (at_b_p8)

                    ; #18771: <==negation-removal== 78346 (pos)
                    (not (not_at_b_p8))

                    ; #51696: <==negation-removal== 63007 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9)
                           (not (leader_b)))
        :effect (and
                    ; #41183: origin
                    (at_b_p9)

                    ; #63007: origin
                    (not_at_b_p2)

                    ; #51696: <==negation-removal== 63007 (pos)
                    (not (at_b_p2))

                    ; #69431: <==negation-removal== 41183 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #39672: origin
                    (at_b_p1)

                    ; #65358: origin
                    (not_at_b_p3)

                    ; #74261: <==negation-removal== 39672 (pos)
                    (not (not_at_b_p1))

                    ; #78334: <==negation-removal== 65358 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #45455: origin
                    (at_b_p10)

                    ; #65358: origin
                    (not_at_b_p3)

                    ; #70971: <==negation-removal== 45455 (pos)
                    (not (not_at_b_p10))

                    ; #78334: <==negation-removal== 65358 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #65358: origin
                    (not_at_b_p3)

                    ; #83648: origin
                    (at_b_p11)

                    ; #78334: <==negation-removal== 65358 (pos)
                    (not (at_b_p3))

                    ; #88354: <==negation-removal== 83648 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #65358: origin
                    (not_at_b_p3)

                    ; #67900: origin
                    (at_b_p12)

                    ; #78334: <==negation-removal== 65358 (pos)
                    (not (at_b_p3))

                    ; #81820: <==negation-removal== 67900 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #51696: origin
                    (at_b_p2)

                    ; #65358: origin
                    (not_at_b_p3)

                    ; #63007: <==negation-removal== 51696 (pos)
                    (not (not_at_b_p2))

                    ; #78334: <==negation-removal== 65358 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #65358: origin
                    (not_at_b_p3)

                    ; #78334: origin
                    (at_b_p3)

                    ; #65358: <==negation-removal== 78334 (pos)
                    (not (not_at_b_p3))

                    ; #78334: <==negation-removal== 65358 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #35796: origin
                    (at_b_p4)

                    ; #65358: origin
                    (not_at_b_p3)

                    ; #63871: <==negation-removal== 35796 (pos)
                    (not (not_at_b_p4))

                    ; #78334: <==negation-removal== 65358 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #65358: origin
                    (not_at_b_p3)

                    ; #65680: origin
                    (at_b_p5)

                    ; #29383: <==negation-removal== 65680 (pos)
                    (not (not_at_b_p5))

                    ; #78334: <==negation-removal== 65358 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #65358: origin
                    (not_at_b_p3)

                    ; #66128: origin
                    (at_b_p6)

                    ; #69496: <==negation-removal== 66128 (pos)
                    (not (not_at_b_p6))

                    ; #78334: <==negation-removal== 65358 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #50319: origin
                    (at_b_p7)

                    ; #65358: origin
                    (not_at_b_p3)

                    ; #21885: <==negation-removal== 50319 (pos)
                    (not (not_at_b_p7))

                    ; #78334: <==negation-removal== 65358 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #65358: origin
                    (not_at_b_p3)

                    ; #78346: origin
                    (at_b_p8)

                    ; #18771: <==negation-removal== 78346 (pos)
                    (not (not_at_b_p8))

                    ; #78334: <==negation-removal== 65358 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #41183: origin
                    (at_b_p9)

                    ; #65358: origin
                    (not_at_b_p3)

                    ; #69431: <==negation-removal== 41183 (pos)
                    (not (not_at_b_p9))

                    ; #78334: <==negation-removal== 65358 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1)
                           (not (leader_b)))
        :effect (and
                    ; #39672: origin
                    (at_b_p1)

                    ; #63871: origin
                    (not_at_b_p4)

                    ; #35796: <==negation-removal== 63871 (pos)
                    (not (at_b_p4))

                    ; #74261: <==negation-removal== 39672 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10)
                           (not (leader_b)))
        :effect (and
                    ; #45455: origin
                    (at_b_p10)

                    ; #63871: origin
                    (not_at_b_p4)

                    ; #35796: <==negation-removal== 63871 (pos)
                    (not (at_b_p4))

                    ; #70971: <==negation-removal== 45455 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p4_p11
        :precondition (and (at_b_p4)
                           (succ_p4_p11)
                           (not (leader_b)))
        :effect (and
                    ; #63871: origin
                    (not_at_b_p4)

                    ; #83648: origin
                    (at_b_p11)

                    ; #35796: <==negation-removal== 63871 (pos)
                    (not (at_b_p4))

                    ; #88354: <==negation-removal== 83648 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12)
                           (not (leader_b)))
        :effect (and
                    ; #63871: origin
                    (not_at_b_p4)

                    ; #67900: origin
                    (at_b_p12)

                    ; #35796: <==negation-removal== 63871 (pos)
                    (not (at_b_p4))

                    ; #81820: <==negation-removal== 67900 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2)
                           (not (leader_b)))
        :effect (and
                    ; #51696: origin
                    (at_b_p2)

                    ; #63871: origin
                    (not_at_b_p4)

                    ; #35796: <==negation-removal== 63871 (pos)
                    (not (at_b_p4))

                    ; #63007: <==negation-removal== 51696 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3)
                           (not (leader_b)))
        :effect (and
                    ; #63871: origin
                    (not_at_b_p4)

                    ; #78334: origin
                    (at_b_p3)

                    ; #35796: <==negation-removal== 63871 (pos)
                    (not (at_b_p4))

                    ; #65358: <==negation-removal== 78334 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4)
                           (not (leader_b)))
        :effect (and
                    ; #35796: origin
                    (at_b_p4)

                    ; #63871: origin
                    (not_at_b_p4)

                    ; #35796: <==negation-removal== 63871 (pos)
                    (not (at_b_p4))

                    ; #63871: <==negation-removal== 35796 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5)
                           (not (leader_b)))
        :effect (and
                    ; #63871: origin
                    (not_at_b_p4)

                    ; #65680: origin
                    (at_b_p5)

                    ; #29383: <==negation-removal== 65680 (pos)
                    (not (not_at_b_p5))

                    ; #35796: <==negation-removal== 63871 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6)
                           (not (leader_b)))
        :effect (and
                    ; #63871: origin
                    (not_at_b_p4)

                    ; #66128: origin
                    (at_b_p6)

                    ; #35796: <==negation-removal== 63871 (pos)
                    (not (at_b_p4))

                    ; #69496: <==negation-removal== 66128 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7)
                           (not (leader_b)))
        :effect (and
                    ; #50319: origin
                    (at_b_p7)

                    ; #63871: origin
                    (not_at_b_p4)

                    ; #21885: <==negation-removal== 50319 (pos)
                    (not (not_at_b_p7))

                    ; #35796: <==negation-removal== 63871 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8)
                           (not (leader_b)))
        :effect (and
                    ; #63871: origin
                    (not_at_b_p4)

                    ; #78346: origin
                    (at_b_p8)

                    ; #18771: <==negation-removal== 78346 (pos)
                    (not (not_at_b_p8))

                    ; #35796: <==negation-removal== 63871 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9)
                           (not (leader_b)))
        :effect (and
                    ; #41183: origin
                    (at_b_p9)

                    ; #63871: origin
                    (not_at_b_p4)

                    ; #35796: <==negation-removal== 63871 (pos)
                    (not (at_b_p4))

                    ; #69431: <==negation-removal== 41183 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1)
                           (not (leader_b)))
        :effect (and
                    ; #29383: origin
                    (not_at_b_p5)

                    ; #39672: origin
                    (at_b_p1)

                    ; #65680: <==negation-removal== 29383 (pos)
                    (not (at_b_p5))

                    ; #74261: <==negation-removal== 39672 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #29383: origin
                    (not_at_b_p5)

                    ; #45455: origin
                    (at_b_p10)

                    ; #65680: <==negation-removal== 29383 (pos)
                    (not (at_b_p5))

                    ; #70971: <==negation-removal== 45455 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11)
                           (not (leader_b)))
        :effect (and
                    ; #29383: origin
                    (not_at_b_p5)

                    ; #83648: origin
                    (at_b_p11)

                    ; #65680: <==negation-removal== 29383 (pos)
                    (not (at_b_p5))

                    ; #88354: <==negation-removal== 83648 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12)
                           (not (leader_b)))
        :effect (and
                    ; #29383: origin
                    (not_at_b_p5)

                    ; #67900: origin
                    (at_b_p12)

                    ; #65680: <==negation-removal== 29383 (pos)
                    (not (at_b_p5))

                    ; #81820: <==negation-removal== 67900 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2)
                           (not (leader_b)))
        :effect (and
                    ; #29383: origin
                    (not_at_b_p5)

                    ; #51696: origin
                    (at_b_p2)

                    ; #63007: <==negation-removal== 51696 (pos)
                    (not (not_at_b_p2))

                    ; #65680: <==negation-removal== 29383 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #29383: origin
                    (not_at_b_p5)

                    ; #78334: origin
                    (at_b_p3)

                    ; #65358: <==negation-removal== 78334 (pos)
                    (not (not_at_b_p3))

                    ; #65680: <==negation-removal== 29383 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4)
                           (not (leader_b)))
        :effect (and
                    ; #29383: origin
                    (not_at_b_p5)

                    ; #35796: origin
                    (at_b_p4)

                    ; #63871: <==negation-removal== 35796 (pos)
                    (not (not_at_b_p4))

                    ; #65680: <==negation-removal== 29383 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5)
                           (not (leader_b)))
        :effect (and
                    ; #29383: origin
                    (not_at_b_p5)

                    ; #65680: origin
                    (at_b_p5)

                    ; #29383: <==negation-removal== 65680 (pos)
                    (not (not_at_b_p5))

                    ; #65680: <==negation-removal== 29383 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6)
                           (not (leader_b)))
        :effect (and
                    ; #29383: origin
                    (not_at_b_p5)

                    ; #66128: origin
                    (at_b_p6)

                    ; #65680: <==negation-removal== 29383 (pos)
                    (not (at_b_p5))

                    ; #69496: <==negation-removal== 66128 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7)
                           (not (leader_b)))
        :effect (and
                    ; #29383: origin
                    (not_at_b_p5)

                    ; #50319: origin
                    (at_b_p7)

                    ; #21885: <==negation-removal== 50319 (pos)
                    (not (not_at_b_p7))

                    ; #65680: <==negation-removal== 29383 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8)
                           (not (leader_b)))
        :effect (and
                    ; #29383: origin
                    (not_at_b_p5)

                    ; #78346: origin
                    (at_b_p8)

                    ; #18771: <==negation-removal== 78346 (pos)
                    (not (not_at_b_p8))

                    ; #65680: <==negation-removal== 29383 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #29383: origin
                    (not_at_b_p5)

                    ; #41183: origin
                    (at_b_p9)

                    ; #65680: <==negation-removal== 29383 (pos)
                    (not (at_b_p5))

                    ; #69431: <==negation-removal== 41183 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #39672: origin
                    (at_b_p1)

                    ; #69496: origin
                    (not_at_b_p6)

                    ; #66128: <==negation-removal== 69496 (pos)
                    (not (at_b_p6))

                    ; #74261: <==negation-removal== 39672 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p10
        :precondition (and (at_b_p6)
                           (succ_p6_p10)
                           (not (leader_b)))
        :effect (and
                    ; #45455: origin
                    (at_b_p10)

                    ; #69496: origin
                    (not_at_b_p6)

                    ; #66128: <==negation-removal== 69496 (pos)
                    (not (at_b_p6))

                    ; #70971: <==negation-removal== 45455 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #69496: origin
                    (not_at_b_p6)

                    ; #83648: origin
                    (at_b_p11)

                    ; #66128: <==negation-removal== 69496 (pos)
                    (not (at_b_p6))

                    ; #88354: <==negation-removal== 83648 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #67900: origin
                    (at_b_p12)

                    ; #69496: origin
                    (not_at_b_p6)

                    ; #66128: <==negation-removal== 69496 (pos)
                    (not (at_b_p6))

                    ; #81820: <==negation-removal== 67900 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #51696: origin
                    (at_b_p2)

                    ; #69496: origin
                    (not_at_b_p6)

                    ; #63007: <==negation-removal== 51696 (pos)
                    (not (not_at_b_p2))

                    ; #66128: <==negation-removal== 69496 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3)
                           (not (leader_b)))
        :effect (and
                    ; #69496: origin
                    (not_at_b_p6)

                    ; #78334: origin
                    (at_b_p3)

                    ; #65358: <==negation-removal== 78334 (pos)
                    (not (not_at_b_p3))

                    ; #66128: <==negation-removal== 69496 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #35796: origin
                    (at_b_p4)

                    ; #69496: origin
                    (not_at_b_p6)

                    ; #63871: <==negation-removal== 35796 (pos)
                    (not (not_at_b_p4))

                    ; #66128: <==negation-removal== 69496 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5)
                           (not (leader_b)))
        :effect (and
                    ; #65680: origin
                    (at_b_p5)

                    ; #69496: origin
                    (not_at_b_p6)

                    ; #29383: <==negation-removal== 65680 (pos)
                    (not (not_at_b_p5))

                    ; #66128: <==negation-removal== 69496 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #66128: origin
                    (at_b_p6)

                    ; #69496: origin
                    (not_at_b_p6)

                    ; #66128: <==negation-removal== 69496 (pos)
                    (not (at_b_p6))

                    ; #69496: <==negation-removal== 66128 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #50319: origin
                    (at_b_p7)

                    ; #69496: origin
                    (not_at_b_p6)

                    ; #21885: <==negation-removal== 50319 (pos)
                    (not (not_at_b_p7))

                    ; #66128: <==negation-removal== 69496 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #69496: origin
                    (not_at_b_p6)

                    ; #78346: origin
                    (at_b_p8)

                    ; #18771: <==negation-removal== 78346 (pos)
                    (not (not_at_b_p8))

                    ; #66128: <==negation-removal== 69496 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9)
                           (not (leader_b)))
        :effect (and
                    ; #41183: origin
                    (at_b_p9)

                    ; #69496: origin
                    (not_at_b_p6)

                    ; #66128: <==negation-removal== 69496 (pos)
                    (not (at_b_p6))

                    ; #69431: <==negation-removal== 41183 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #21885: origin
                    (not_at_b_p7)

                    ; #39672: origin
                    (at_b_p1)

                    ; #50319: <==negation-removal== 21885 (pos)
                    (not (at_b_p7))

                    ; #74261: <==negation-removal== 39672 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #21885: origin
                    (not_at_b_p7)

                    ; #45455: origin
                    (at_b_p10)

                    ; #50319: <==negation-removal== 21885 (pos)
                    (not (at_b_p7))

                    ; #70971: <==negation-removal== 45455 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #21885: origin
                    (not_at_b_p7)

                    ; #83648: origin
                    (at_b_p11)

                    ; #50319: <==negation-removal== 21885 (pos)
                    (not (at_b_p7))

                    ; #88354: <==negation-removal== 83648 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (at_b_p7)
                           (succ_p7_p12)
                           (not (leader_b)))
        :effect (and
                    ; #21885: origin
                    (not_at_b_p7)

                    ; #67900: origin
                    (at_b_p12)

                    ; #50319: <==negation-removal== 21885 (pos)
                    (not (at_b_p7))

                    ; #81820: <==negation-removal== 67900 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2)
                           (not (leader_b)))
        :effect (and
                    ; #21885: origin
                    (not_at_b_p7)

                    ; #51696: origin
                    (at_b_p2)

                    ; #50319: <==negation-removal== 21885 (pos)
                    (not (at_b_p7))

                    ; #63007: <==negation-removal== 51696 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3)
                           (not (leader_b)))
        :effect (and
                    ; #21885: origin
                    (not_at_b_p7)

                    ; #78334: origin
                    (at_b_p3)

                    ; #50319: <==negation-removal== 21885 (pos)
                    (not (at_b_p7))

                    ; #65358: <==negation-removal== 78334 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #21885: origin
                    (not_at_b_p7)

                    ; #35796: origin
                    (at_b_p4)

                    ; #50319: <==negation-removal== 21885 (pos)
                    (not (at_b_p7))

                    ; #63871: <==negation-removal== 35796 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5)
                           (not (leader_b)))
        :effect (and
                    ; #21885: origin
                    (not_at_b_p7)

                    ; #65680: origin
                    (at_b_p5)

                    ; #29383: <==negation-removal== 65680 (pos)
                    (not (not_at_b_p5))

                    ; #50319: <==negation-removal== 21885 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #21885: origin
                    (not_at_b_p7)

                    ; #66128: origin
                    (at_b_p6)

                    ; #50319: <==negation-removal== 21885 (pos)
                    (not (at_b_p7))

                    ; #69496: <==negation-removal== 66128 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #21885: origin
                    (not_at_b_p7)

                    ; #50319: origin
                    (at_b_p7)

                    ; #21885: <==negation-removal== 50319 (pos)
                    (not (not_at_b_p7))

                    ; #50319: <==negation-removal== 21885 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #21885: origin
                    (not_at_b_p7)

                    ; #78346: origin
                    (at_b_p8)

                    ; #18771: <==negation-removal== 78346 (pos)
                    (not (not_at_b_p8))

                    ; #50319: <==negation-removal== 21885 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #21885: origin
                    (not_at_b_p7)

                    ; #41183: origin
                    (at_b_p9)

                    ; #50319: <==negation-removal== 21885 (pos)
                    (not (at_b_p7))

                    ; #69431: <==negation-removal== 41183 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #18771: origin
                    (not_at_b_p8)

                    ; #39672: origin
                    (at_b_p1)

                    ; #74261: <==negation-removal== 39672 (pos)
                    (not (not_at_b_p1))

                    ; #78346: <==negation-removal== 18771 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #18771: origin
                    (not_at_b_p8)

                    ; #45455: origin
                    (at_b_p10)

                    ; #70971: <==negation-removal== 45455 (pos)
                    (not (not_at_b_p10))

                    ; #78346: <==negation-removal== 18771 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #18771: origin
                    (not_at_b_p8)

                    ; #83648: origin
                    (at_b_p11)

                    ; #78346: <==negation-removal== 18771 (pos)
                    (not (at_b_p8))

                    ; #88354: <==negation-removal== 83648 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #18771: origin
                    (not_at_b_p8)

                    ; #67900: origin
                    (at_b_p12)

                    ; #78346: <==negation-removal== 18771 (pos)
                    (not (at_b_p8))

                    ; #81820: <==negation-removal== 67900 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #18771: origin
                    (not_at_b_p8)

                    ; #51696: origin
                    (at_b_p2)

                    ; #63007: <==negation-removal== 51696 (pos)
                    (not (not_at_b_p2))

                    ; #78346: <==negation-removal== 18771 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #18771: origin
                    (not_at_b_p8)

                    ; #78334: origin
                    (at_b_p3)

                    ; #65358: <==negation-removal== 78334 (pos)
                    (not (not_at_b_p3))

                    ; #78346: <==negation-removal== 18771 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #18771: origin
                    (not_at_b_p8)

                    ; #35796: origin
                    (at_b_p4)

                    ; #63871: <==negation-removal== 35796 (pos)
                    (not (not_at_b_p4))

                    ; #78346: <==negation-removal== 18771 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #18771: origin
                    (not_at_b_p8)

                    ; #65680: origin
                    (at_b_p5)

                    ; #29383: <==negation-removal== 65680 (pos)
                    (not (not_at_b_p5))

                    ; #78346: <==negation-removal== 18771 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #18771: origin
                    (not_at_b_p8)

                    ; #66128: origin
                    (at_b_p6)

                    ; #69496: <==negation-removal== 66128 (pos)
                    (not (not_at_b_p6))

                    ; #78346: <==negation-removal== 18771 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7)
                           (not (leader_b)))
        :effect (and
                    ; #18771: origin
                    (not_at_b_p8)

                    ; #50319: origin
                    (at_b_p7)

                    ; #21885: <==negation-removal== 50319 (pos)
                    (not (not_at_b_p7))

                    ; #78346: <==negation-removal== 18771 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #18771: origin
                    (not_at_b_p8)

                    ; #78346: origin
                    (at_b_p8)

                    ; #18771: <==negation-removal== 78346 (pos)
                    (not (not_at_b_p8))

                    ; #78346: <==negation-removal== 18771 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #18771: origin
                    (not_at_b_p8)

                    ; #41183: origin
                    (at_b_p9)

                    ; #69431: <==negation-removal== 41183 (pos)
                    (not (not_at_b_p9))

                    ; #78346: <==negation-removal== 18771 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #39672: origin
                    (at_b_p1)

                    ; #69431: origin
                    (not_at_b_p9)

                    ; #41183: <==negation-removal== 69431 (pos)
                    (not (at_b_p9))

                    ; #74261: <==negation-removal== 39672 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #45455: origin
                    (at_b_p10)

                    ; #69431: origin
                    (not_at_b_p9)

                    ; #41183: <==negation-removal== 69431 (pos)
                    (not (at_b_p9))

                    ; #70971: <==negation-removal== 45455 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #69431: origin
                    (not_at_b_p9)

                    ; #83648: origin
                    (at_b_p11)

                    ; #41183: <==negation-removal== 69431 (pos)
                    (not (at_b_p9))

                    ; #88354: <==negation-removal== 83648 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12)
                           (not (leader_b)))
        :effect (and
                    ; #67900: origin
                    (at_b_p12)

                    ; #69431: origin
                    (not_at_b_p9)

                    ; #41183: <==negation-removal== 69431 (pos)
                    (not (at_b_p9))

                    ; #81820: <==negation-removal== 67900 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2)
                           (not (leader_b)))
        :effect (and
                    ; #51696: origin
                    (at_b_p2)

                    ; #69431: origin
                    (not_at_b_p9)

                    ; #41183: <==negation-removal== 69431 (pos)
                    (not (at_b_p9))

                    ; #63007: <==negation-removal== 51696 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #69431: origin
                    (not_at_b_p9)

                    ; #78334: origin
                    (at_b_p3)

                    ; #41183: <==negation-removal== 69431 (pos)
                    (not (at_b_p9))

                    ; #65358: <==negation-removal== 78334 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4)
                           (not (leader_b)))
        :effect (and
                    ; #35796: origin
                    (at_b_p4)

                    ; #69431: origin
                    (not_at_b_p9)

                    ; #41183: <==negation-removal== 69431 (pos)
                    (not (at_b_p9))

                    ; #63871: <==negation-removal== 35796 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5)
                           (not (leader_b)))
        :effect (and
                    ; #65680: origin
                    (at_b_p5)

                    ; #69431: origin
                    (not_at_b_p9)

                    ; #29383: <==negation-removal== 65680 (pos)
                    (not (not_at_b_p5))

                    ; #41183: <==negation-removal== 69431 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #66128: origin
                    (at_b_p6)

                    ; #69431: origin
                    (not_at_b_p9)

                    ; #41183: <==negation-removal== 69431 (pos)
                    (not (at_b_p9))

                    ; #69496: <==negation-removal== 66128 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #50319: origin
                    (at_b_p7)

                    ; #69431: origin
                    (not_at_b_p9)

                    ; #21885: <==negation-removal== 50319 (pos)
                    (not (not_at_b_p7))

                    ; #41183: <==negation-removal== 69431 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #69431: origin
                    (not_at_b_p9)

                    ; #78346: origin
                    (at_b_p8)

                    ; #18771: <==negation-removal== 78346 (pos)
                    (not (not_at_b_p8))

                    ; #41183: <==negation-removal== 69431 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #41183: origin
                    (at_b_p9)

                    ; #69431: origin
                    (not_at_b_p9)

                    ; #41183: <==negation-removal== 69431 (pos)
                    (not (at_b_p9))

                    ; #69431: <==negation-removal== 41183 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #43246: origin
                    (not_at_c_p10)

                    ; #72592: origin
                    (at_c_p1)

                    ; #13585: <==negation-removal== 43246 (pos)
                    (not (at_c_p10))

                    ; #14790: <==negation-removal== 72592 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #13585: origin
                    (at_c_p10)

                    ; #43246: origin
                    (not_at_c_p10)

                    ; #13585: <==negation-removal== 43246 (pos)
                    (not (at_c_p10))

                    ; #43246: <==negation-removal== 13585 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #43246: origin
                    (not_at_c_p10)

                    ; #81271: origin
                    (at_c_p11)

                    ; #13585: <==negation-removal== 43246 (pos)
                    (not (at_c_p10))

                    ; #67932: <==negation-removal== 81271 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #15395: origin
                    (at_c_p12)

                    ; #43246: origin
                    (not_at_c_p10)

                    ; #13585: <==negation-removal== 43246 (pos)
                    (not (at_c_p10))

                    ; #14128: <==negation-removal== 15395 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #43246: origin
                    (not_at_c_p10)

                    ; #75281: origin
                    (at_c_p2)

                    ; #12211: <==negation-removal== 75281 (pos)
                    (not (not_at_c_p2))

                    ; #13585: <==negation-removal== 43246 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #43246: origin
                    (not_at_c_p10)

                    ; #91431: origin
                    (at_c_p3)

                    ; #13585: <==negation-removal== 43246 (pos)
                    (not (at_c_p10))

                    ; #79988: <==negation-removal== 91431 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #43246: origin
                    (not_at_c_p10)

                    ; #59272: origin
                    (at_c_p4)

                    ; #13585: <==negation-removal== 43246 (pos)
                    (not (at_c_p10))

                    ; #43617: <==negation-removal== 59272 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #43246: origin
                    (not_at_c_p10)

                    ; #89946: origin
                    (at_c_p5)

                    ; #13585: <==negation-removal== 43246 (pos)
                    (not (at_c_p10))

                    ; #15680: <==negation-removal== 89946 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #43246: origin
                    (not_at_c_p10)

                    ; #43985: origin
                    (at_c_p6)

                    ; #13585: <==negation-removal== 43246 (pos)
                    (not (at_c_p10))

                    ; #77250: <==negation-removal== 43985 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #43246: origin
                    (not_at_c_p10)

                    ; #76237: origin
                    (at_c_p7)

                    ; #13585: <==negation-removal== 43246 (pos)
                    (not (at_c_p10))

                    ; #88040: <==negation-removal== 76237 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #27519: origin
                    (at_c_p8)

                    ; #43246: origin
                    (not_at_c_p10)

                    ; #13585: <==negation-removal== 43246 (pos)
                    (not (at_c_p10))

                    ; #84116: <==negation-removal== 27519 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #43246: origin
                    (not_at_c_p10)

                    ; #61513: origin
                    (at_c_p9)

                    ; #13585: <==negation-removal== 43246 (pos)
                    (not (at_c_p10))

                    ; #62356: <==negation-removal== 61513 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #67932: origin
                    (not_at_c_p11)

                    ; #72592: origin
                    (at_c_p1)

                    ; #14790: <==negation-removal== 72592 (pos)
                    (not (not_at_c_p1))

                    ; #81271: <==negation-removal== 67932 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10)
                           (not (leader_c)))
        :effect (and
                    ; #13585: origin
                    (at_c_p10)

                    ; #67932: origin
                    (not_at_c_p11)

                    ; #43246: <==negation-removal== 13585 (pos)
                    (not (not_at_c_p10))

                    ; #81271: <==negation-removal== 67932 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #67932: origin
                    (not_at_c_p11)

                    ; #81271: origin
                    (at_c_p11)

                    ; #67932: <==negation-removal== 81271 (pos)
                    (not (not_at_c_p11))

                    ; #81271: <==negation-removal== 67932 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15395: origin
                    (at_c_p12)

                    ; #67932: origin
                    (not_at_c_p11)

                    ; #14128: <==negation-removal== 15395 (pos)
                    (not (not_at_c_p12))

                    ; #81271: <==negation-removal== 67932 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #67932: origin
                    (not_at_c_p11)

                    ; #75281: origin
                    (at_c_p2)

                    ; #12211: <==negation-removal== 75281 (pos)
                    (not (not_at_c_p2))

                    ; #81271: <==negation-removal== 67932 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3)
                           (not (leader_c)))
        :effect (and
                    ; #67932: origin
                    (not_at_c_p11)

                    ; #91431: origin
                    (at_c_p3)

                    ; #79988: <==negation-removal== 91431 (pos)
                    (not (not_at_c_p3))

                    ; #81271: <==negation-removal== 67932 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4)
                           (not (leader_c)))
        :effect (and
                    ; #59272: origin
                    (at_c_p4)

                    ; #67932: origin
                    (not_at_c_p11)

                    ; #43617: <==negation-removal== 59272 (pos)
                    (not (not_at_c_p4))

                    ; #81271: <==negation-removal== 67932 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #67932: origin
                    (not_at_c_p11)

                    ; #89946: origin
                    (at_c_p5)

                    ; #15680: <==negation-removal== 89946 (pos)
                    (not (not_at_c_p5))

                    ; #81271: <==negation-removal== 67932 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #43985: origin
                    (at_c_p6)

                    ; #67932: origin
                    (not_at_c_p11)

                    ; #77250: <==negation-removal== 43985 (pos)
                    (not (not_at_c_p6))

                    ; #81271: <==negation-removal== 67932 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #67932: origin
                    (not_at_c_p11)

                    ; #76237: origin
                    (at_c_p7)

                    ; #81271: <==negation-removal== 67932 (pos)
                    (not (at_c_p11))

                    ; #88040: <==negation-removal== 76237 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8)
                           (not (leader_c)))
        :effect (and
                    ; #27519: origin
                    (at_c_p8)

                    ; #67932: origin
                    (not_at_c_p11)

                    ; #81271: <==negation-removal== 67932 (pos)
                    (not (at_c_p11))

                    ; #84116: <==negation-removal== 27519 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #61513: origin
                    (at_c_p9)

                    ; #67932: origin
                    (not_at_c_p11)

                    ; #62356: <==negation-removal== 61513 (pos)
                    (not (not_at_c_p9))

                    ; #81271: <==negation-removal== 67932 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p12)

                    ; #72592: origin
                    (at_c_p1)

                    ; #14790: <==negation-removal== 72592 (pos)
                    (not (not_at_c_p1))

                    ; #15395: <==negation-removal== 14128 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #13585: origin
                    (at_c_p10)

                    ; #14128: origin
                    (not_at_c_p12)

                    ; #15395: <==negation-removal== 14128 (pos)
                    (not (at_c_p12))

                    ; #43246: <==negation-removal== 13585 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p12)

                    ; #81271: origin
                    (at_c_p11)

                    ; #15395: <==negation-removal== 14128 (pos)
                    (not (at_c_p12))

                    ; #67932: <==negation-removal== 81271 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p12)

                    ; #15395: origin
                    (at_c_p12)

                    ; #14128: <==negation-removal== 15395 (pos)
                    (not (not_at_c_p12))

                    ; #15395: <==negation-removal== 14128 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p12)

                    ; #75281: origin
                    (at_c_p2)

                    ; #12211: <==negation-removal== 75281 (pos)
                    (not (not_at_c_p2))

                    ; #15395: <==negation-removal== 14128 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p12)

                    ; #91431: origin
                    (at_c_p3)

                    ; #15395: <==negation-removal== 14128 (pos)
                    (not (at_c_p12))

                    ; #79988: <==negation-removal== 91431 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p12)

                    ; #59272: origin
                    (at_c_p4)

                    ; #15395: <==negation-removal== 14128 (pos)
                    (not (at_c_p12))

                    ; #43617: <==negation-removal== 59272 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p12)

                    ; #89946: origin
                    (at_c_p5)

                    ; #15395: <==negation-removal== 14128 (pos)
                    (not (at_c_p12))

                    ; #15680: <==negation-removal== 89946 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p12)

                    ; #43985: origin
                    (at_c_p6)

                    ; #15395: <==negation-removal== 14128 (pos)
                    (not (at_c_p12))

                    ; #77250: <==negation-removal== 43985 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p12)

                    ; #76237: origin
                    (at_c_p7)

                    ; #15395: <==negation-removal== 14128 (pos)
                    (not (at_c_p12))

                    ; #88040: <==negation-removal== 76237 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p12)

                    ; #27519: origin
                    (at_c_p8)

                    ; #15395: <==negation-removal== 14128 (pos)
                    (not (at_c_p12))

                    ; #84116: <==negation-removal== 27519 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p12)

                    ; #61513: origin
                    (at_c_p9)

                    ; #15395: <==negation-removal== 14128 (pos)
                    (not (at_c_p12))

                    ; #62356: <==negation-removal== 61513 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14790: origin
                    (not_at_c_p1)

                    ; #72592: origin
                    (at_c_p1)

                    ; #14790: <==negation-removal== 72592 (pos)
                    (not (not_at_c_p1))

                    ; #72592: <==negation-removal== 14790 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #13585: origin
                    (at_c_p10)

                    ; #14790: origin
                    (not_at_c_p1)

                    ; #43246: <==negation-removal== 13585 (pos)
                    (not (not_at_c_p10))

                    ; #72592: <==negation-removal== 14790 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14790: origin
                    (not_at_c_p1)

                    ; #81271: origin
                    (at_c_p11)

                    ; #67932: <==negation-removal== 81271 (pos)
                    (not (not_at_c_p11))

                    ; #72592: <==negation-removal== 14790 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14790: origin
                    (not_at_c_p1)

                    ; #15395: origin
                    (at_c_p12)

                    ; #14128: <==negation-removal== 15395 (pos)
                    (not (not_at_c_p12))

                    ; #72592: <==negation-removal== 14790 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14790: origin
                    (not_at_c_p1)

                    ; #75281: origin
                    (at_c_p2)

                    ; #12211: <==negation-removal== 75281 (pos)
                    (not (not_at_c_p2))

                    ; #72592: <==negation-removal== 14790 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14790: origin
                    (not_at_c_p1)

                    ; #91431: origin
                    (at_c_p3)

                    ; #72592: <==negation-removal== 14790 (pos)
                    (not (at_c_p1))

                    ; #79988: <==negation-removal== 91431 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14790: origin
                    (not_at_c_p1)

                    ; #59272: origin
                    (at_c_p4)

                    ; #43617: <==negation-removal== 59272 (pos)
                    (not (not_at_c_p4))

                    ; #72592: <==negation-removal== 14790 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5)
                           (not (leader_c)))
        :effect (and
                    ; #14790: origin
                    (not_at_c_p1)

                    ; #89946: origin
                    (at_c_p5)

                    ; #15680: <==negation-removal== 89946 (pos)
                    (not (not_at_c_p5))

                    ; #72592: <==negation-removal== 14790 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14790: origin
                    (not_at_c_p1)

                    ; #43985: origin
                    (at_c_p6)

                    ; #72592: <==negation-removal== 14790 (pos)
                    (not (at_c_p1))

                    ; #77250: <==negation-removal== 43985 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14790: origin
                    (not_at_c_p1)

                    ; #76237: origin
                    (at_c_p7)

                    ; #72592: <==negation-removal== 14790 (pos)
                    (not (at_c_p1))

                    ; #88040: <==negation-removal== 76237 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8)
                           (not (leader_c)))
        :effect (and
                    ; #14790: origin
                    (not_at_c_p1)

                    ; #27519: origin
                    (at_c_p8)

                    ; #72592: <==negation-removal== 14790 (pos)
                    (not (at_c_p1))

                    ; #84116: <==negation-removal== 27519 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9)
                           (not (leader_c)))
        :effect (and
                    ; #14790: origin
                    (not_at_c_p1)

                    ; #61513: origin
                    (at_c_p9)

                    ; #62356: <==negation-removal== 61513 (pos)
                    (not (not_at_c_p9))

                    ; #72592: <==negation-removal== 14790 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1)
                           (not (leader_c)))
        :effect (and
                    ; #12211: origin
                    (not_at_c_p2)

                    ; #72592: origin
                    (at_c_p1)

                    ; #14790: <==negation-removal== 72592 (pos)
                    (not (not_at_c_p1))

                    ; #75281: <==negation-removal== 12211 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10)
                           (not (leader_c)))
        :effect (and
                    ; #12211: origin
                    (not_at_c_p2)

                    ; #13585: origin
                    (at_c_p10)

                    ; #43246: <==negation-removal== 13585 (pos)
                    (not (not_at_c_p10))

                    ; #75281: <==negation-removal== 12211 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (at_c_p2)
                           (succ_p2_p11)
                           (not (leader_c)))
        :effect (and
                    ; #12211: origin
                    (not_at_c_p2)

                    ; #81271: origin
                    (at_c_p11)

                    ; #67932: <==negation-removal== 81271 (pos)
                    (not (not_at_c_p11))

                    ; #75281: <==negation-removal== 12211 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12)
                           (not (leader_c)))
        :effect (and
                    ; #12211: origin
                    (not_at_c_p2)

                    ; #15395: origin
                    (at_c_p12)

                    ; #14128: <==negation-removal== 15395 (pos)
                    (not (not_at_c_p12))

                    ; #75281: <==negation-removal== 12211 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2)
                           (not (leader_c)))
        :effect (and
                    ; #12211: origin
                    (not_at_c_p2)

                    ; #75281: origin
                    (at_c_p2)

                    ; #12211: <==negation-removal== 75281 (pos)
                    (not (not_at_c_p2))

                    ; #75281: <==negation-removal== 12211 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3)
                           (not (leader_c)))
        :effect (and
                    ; #12211: origin
                    (not_at_c_p2)

                    ; #91431: origin
                    (at_c_p3)

                    ; #75281: <==negation-removal== 12211 (pos)
                    (not (at_c_p2))

                    ; #79988: <==negation-removal== 91431 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #12211: origin
                    (not_at_c_p2)

                    ; #59272: origin
                    (at_c_p4)

                    ; #43617: <==negation-removal== 59272 (pos)
                    (not (not_at_c_p4))

                    ; #75281: <==negation-removal== 12211 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5)
                           (not (leader_c)))
        :effect (and
                    ; #12211: origin
                    (not_at_c_p2)

                    ; #89946: origin
                    (at_c_p5)

                    ; #15680: <==negation-removal== 89946 (pos)
                    (not (not_at_c_p5))

                    ; #75281: <==negation-removal== 12211 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6)
                           (not (leader_c)))
        :effect (and
                    ; #12211: origin
                    (not_at_c_p2)

                    ; #43985: origin
                    (at_c_p6)

                    ; #75281: <==negation-removal== 12211 (pos)
                    (not (at_c_p2))

                    ; #77250: <==negation-removal== 43985 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7)
                           (not (leader_c)))
        :effect (and
                    ; #12211: origin
                    (not_at_c_p2)

                    ; #76237: origin
                    (at_c_p7)

                    ; #75281: <==negation-removal== 12211 (pos)
                    (not (at_c_p2))

                    ; #88040: <==negation-removal== 76237 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #12211: origin
                    (not_at_c_p2)

                    ; #27519: origin
                    (at_c_p8)

                    ; #75281: <==negation-removal== 12211 (pos)
                    (not (at_c_p2))

                    ; #84116: <==negation-removal== 27519 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9)
                           (not (leader_c)))
        :effect (and
                    ; #12211: origin
                    (not_at_c_p2)

                    ; #61513: origin
                    (at_c_p9)

                    ; #62356: <==negation-removal== 61513 (pos)
                    (not (not_at_c_p9))

                    ; #75281: <==negation-removal== 12211 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #72592: origin
                    (at_c_p1)

                    ; #79988: origin
                    (not_at_c_p3)

                    ; #14790: <==negation-removal== 72592 (pos)
                    (not (not_at_c_p1))

                    ; #91431: <==negation-removal== 79988 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #13585: origin
                    (at_c_p10)

                    ; #79988: origin
                    (not_at_c_p3)

                    ; #43246: <==negation-removal== 13585 (pos)
                    (not (not_at_c_p10))

                    ; #91431: <==negation-removal== 79988 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #79988: origin
                    (not_at_c_p3)

                    ; #81271: origin
                    (at_c_p11)

                    ; #67932: <==negation-removal== 81271 (pos)
                    (not (not_at_c_p11))

                    ; #91431: <==negation-removal== 79988 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #15395: origin
                    (at_c_p12)

                    ; #79988: origin
                    (not_at_c_p3)

                    ; #14128: <==negation-removal== 15395 (pos)
                    (not (not_at_c_p12))

                    ; #91431: <==negation-removal== 79988 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #75281: origin
                    (at_c_p2)

                    ; #79988: origin
                    (not_at_c_p3)

                    ; #12211: <==negation-removal== 75281 (pos)
                    (not (not_at_c_p2))

                    ; #91431: <==negation-removal== 79988 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #79988: origin
                    (not_at_c_p3)

                    ; #91431: origin
                    (at_c_p3)

                    ; #79988: <==negation-removal== 91431 (pos)
                    (not (not_at_c_p3))

                    ; #91431: <==negation-removal== 79988 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #59272: origin
                    (at_c_p4)

                    ; #79988: origin
                    (not_at_c_p3)

                    ; #43617: <==negation-removal== 59272 (pos)
                    (not (not_at_c_p4))

                    ; #91431: <==negation-removal== 79988 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #79988: origin
                    (not_at_c_p3)

                    ; #89946: origin
                    (at_c_p5)

                    ; #15680: <==negation-removal== 89946 (pos)
                    (not (not_at_c_p5))

                    ; #91431: <==negation-removal== 79988 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #43985: origin
                    (at_c_p6)

                    ; #79988: origin
                    (not_at_c_p3)

                    ; #77250: <==negation-removal== 43985 (pos)
                    (not (not_at_c_p6))

                    ; #91431: <==negation-removal== 79988 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #76237: origin
                    (at_c_p7)

                    ; #79988: origin
                    (not_at_c_p3)

                    ; #88040: <==negation-removal== 76237 (pos)
                    (not (not_at_c_p7))

                    ; #91431: <==negation-removal== 79988 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #27519: origin
                    (at_c_p8)

                    ; #79988: origin
                    (not_at_c_p3)

                    ; #84116: <==negation-removal== 27519 (pos)
                    (not (not_at_c_p8))

                    ; #91431: <==negation-removal== 79988 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #61513: origin
                    (at_c_p9)

                    ; #79988: origin
                    (not_at_c_p3)

                    ; #62356: <==negation-removal== 61513 (pos)
                    (not (not_at_c_p9))

                    ; #91431: <==negation-removal== 79988 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #43617: origin
                    (not_at_c_p4)

                    ; #72592: origin
                    (at_c_p1)

                    ; #14790: <==negation-removal== 72592 (pos)
                    (not (not_at_c_p1))

                    ; #59272: <==negation-removal== 43617 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #13585: origin
                    (at_c_p10)

                    ; #43617: origin
                    (not_at_c_p4)

                    ; #43246: <==negation-removal== 13585 (pos)
                    (not (not_at_c_p10))

                    ; #59272: <==negation-removal== 43617 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #43617: origin
                    (not_at_c_p4)

                    ; #81271: origin
                    (at_c_p11)

                    ; #59272: <==negation-removal== 43617 (pos)
                    (not (at_c_p4))

                    ; #67932: <==negation-removal== 81271 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #15395: origin
                    (at_c_p12)

                    ; #43617: origin
                    (not_at_c_p4)

                    ; #14128: <==negation-removal== 15395 (pos)
                    (not (not_at_c_p12))

                    ; #59272: <==negation-removal== 43617 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #43617: origin
                    (not_at_c_p4)

                    ; #75281: origin
                    (at_c_p2)

                    ; #12211: <==negation-removal== 75281 (pos)
                    (not (not_at_c_p2))

                    ; #59272: <==negation-removal== 43617 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #43617: origin
                    (not_at_c_p4)

                    ; #91431: origin
                    (at_c_p3)

                    ; #59272: <==negation-removal== 43617 (pos)
                    (not (at_c_p4))

                    ; #79988: <==negation-removal== 91431 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #43617: origin
                    (not_at_c_p4)

                    ; #59272: origin
                    (at_c_p4)

                    ; #43617: <==negation-removal== 59272 (pos)
                    (not (not_at_c_p4))

                    ; #59272: <==negation-removal== 43617 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #43617: origin
                    (not_at_c_p4)

                    ; #89946: origin
                    (at_c_p5)

                    ; #15680: <==negation-removal== 89946 (pos)
                    (not (not_at_c_p5))

                    ; #59272: <==negation-removal== 43617 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #43617: origin
                    (not_at_c_p4)

                    ; #43985: origin
                    (at_c_p6)

                    ; #59272: <==negation-removal== 43617 (pos)
                    (not (at_c_p4))

                    ; #77250: <==negation-removal== 43985 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #43617: origin
                    (not_at_c_p4)

                    ; #76237: origin
                    (at_c_p7)

                    ; #59272: <==negation-removal== 43617 (pos)
                    (not (at_c_p4))

                    ; #88040: <==negation-removal== 76237 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #27519: origin
                    (at_c_p8)

                    ; #43617: origin
                    (not_at_c_p4)

                    ; #59272: <==negation-removal== 43617 (pos)
                    (not (at_c_p4))

                    ; #84116: <==negation-removal== 27519 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #43617: origin
                    (not_at_c_p4)

                    ; #61513: origin
                    (at_c_p9)

                    ; #59272: <==negation-removal== 43617 (pos)
                    (not (at_c_p4))

                    ; #62356: <==negation-removal== 61513 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #15680: origin
                    (not_at_c_p5)

                    ; #72592: origin
                    (at_c_p1)

                    ; #14790: <==negation-removal== 72592 (pos)
                    (not (not_at_c_p1))

                    ; #89946: <==negation-removal== 15680 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #13585: origin
                    (at_c_p10)

                    ; #15680: origin
                    (not_at_c_p5)

                    ; #43246: <==negation-removal== 13585 (pos)
                    (not (not_at_c_p10))

                    ; #89946: <==negation-removal== 15680 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #15680: origin
                    (not_at_c_p5)

                    ; #81271: origin
                    (at_c_p11)

                    ; #67932: <==negation-removal== 81271 (pos)
                    (not (not_at_c_p11))

                    ; #89946: <==negation-removal== 15680 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12)
                           (not (leader_c)))
        :effect (and
                    ; #15395: origin
                    (at_c_p12)

                    ; #15680: origin
                    (not_at_c_p5)

                    ; #14128: <==negation-removal== 15395 (pos)
                    (not (not_at_c_p12))

                    ; #89946: <==negation-removal== 15680 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2)
                           (not (leader_c)))
        :effect (and
                    ; #15680: origin
                    (not_at_c_p5)

                    ; #75281: origin
                    (at_c_p2)

                    ; #12211: <==negation-removal== 75281 (pos)
                    (not (not_at_c_p2))

                    ; #89946: <==negation-removal== 15680 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #15680: origin
                    (not_at_c_p5)

                    ; #91431: origin
                    (at_c_p3)

                    ; #79988: <==negation-removal== 91431 (pos)
                    (not (not_at_c_p3))

                    ; #89946: <==negation-removal== 15680 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4)
                           (not (leader_c)))
        :effect (and
                    ; #15680: origin
                    (not_at_c_p5)

                    ; #59272: origin
                    (at_c_p4)

                    ; #43617: <==negation-removal== 59272 (pos)
                    (not (not_at_c_p4))

                    ; #89946: <==negation-removal== 15680 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #15680: origin
                    (not_at_c_p5)

                    ; #89946: origin
                    (at_c_p5)

                    ; #15680: <==negation-removal== 89946 (pos)
                    (not (not_at_c_p5))

                    ; #89946: <==negation-removal== 15680 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6)
                           (not (leader_c)))
        :effect (and
                    ; #15680: origin
                    (not_at_c_p5)

                    ; #43985: origin
                    (at_c_p6)

                    ; #77250: <==negation-removal== 43985 (pos)
                    (not (not_at_c_p6))

                    ; #89946: <==negation-removal== 15680 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7)
                           (not (leader_c)))
        :effect (and
                    ; #15680: origin
                    (not_at_c_p5)

                    ; #76237: origin
                    (at_c_p7)

                    ; #88040: <==negation-removal== 76237 (pos)
                    (not (not_at_c_p7))

                    ; #89946: <==negation-removal== 15680 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8)
                           (not (leader_c)))
        :effect (and
                    ; #15680: origin
                    (not_at_c_p5)

                    ; #27519: origin
                    (at_c_p8)

                    ; #84116: <==negation-removal== 27519 (pos)
                    (not (not_at_c_p8))

                    ; #89946: <==negation-removal== 15680 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #15680: origin
                    (not_at_c_p5)

                    ; #61513: origin
                    (at_c_p9)

                    ; #62356: <==negation-removal== 61513 (pos)
                    (not (not_at_c_p9))

                    ; #89946: <==negation-removal== 15680 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #72592: origin
                    (at_c_p1)

                    ; #77250: origin
                    (not_at_c_p6)

                    ; #14790: <==negation-removal== 72592 (pos)
                    (not (not_at_c_p1))

                    ; #43985: <==negation-removal== 77250 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10)
                           (not (leader_c)))
        :effect (and
                    ; #13585: origin
                    (at_c_p10)

                    ; #77250: origin
                    (not_at_c_p6)

                    ; #43246: <==negation-removal== 13585 (pos)
                    (not (not_at_c_p10))

                    ; #43985: <==negation-removal== 77250 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11)
                           (not (leader_c)))
        :effect (and
                    ; #77250: origin
                    (not_at_c_p6)

                    ; #81271: origin
                    (at_c_p11)

                    ; #43985: <==negation-removal== 77250 (pos)
                    (not (at_c_p6))

                    ; #67932: <==negation-removal== 81271 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #15395: origin
                    (at_c_p12)

                    ; #77250: origin
                    (not_at_c_p6)

                    ; #14128: <==negation-removal== 15395 (pos)
                    (not (not_at_c_p12))

                    ; #43985: <==negation-removal== 77250 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2)
                           (not (leader_c)))
        :effect (and
                    ; #75281: origin
                    (at_c_p2)

                    ; #77250: origin
                    (not_at_c_p6)

                    ; #12211: <==negation-removal== 75281 (pos)
                    (not (not_at_c_p2))

                    ; #43985: <==negation-removal== 77250 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3)
                           (not (leader_c)))
        :effect (and
                    ; #77250: origin
                    (not_at_c_p6)

                    ; #91431: origin
                    (at_c_p3)

                    ; #43985: <==negation-removal== 77250 (pos)
                    (not (at_c_p6))

                    ; #79988: <==negation-removal== 91431 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #59272: origin
                    (at_c_p4)

                    ; #77250: origin
                    (not_at_c_p6)

                    ; #43617: <==negation-removal== 59272 (pos)
                    (not (not_at_c_p4))

                    ; #43985: <==negation-removal== 77250 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5)
                           (not (leader_c)))
        :effect (and
                    ; #77250: origin
                    (not_at_c_p6)

                    ; #89946: origin
                    (at_c_p5)

                    ; #15680: <==negation-removal== 89946 (pos)
                    (not (not_at_c_p5))

                    ; #43985: <==negation-removal== 77250 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6)
                           (not (leader_c)))
        :effect (and
                    ; #43985: origin
                    (at_c_p6)

                    ; #77250: origin
                    (not_at_c_p6)

                    ; #43985: <==negation-removal== 77250 (pos)
                    (not (at_c_p6))

                    ; #77250: <==negation-removal== 43985 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7)
                           (not (leader_c)))
        :effect (and
                    ; #76237: origin
                    (at_c_p7)

                    ; #77250: origin
                    (not_at_c_p6)

                    ; #43985: <==negation-removal== 77250 (pos)
                    (not (at_c_p6))

                    ; #88040: <==negation-removal== 76237 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #27519: origin
                    (at_c_p8)

                    ; #77250: origin
                    (not_at_c_p6)

                    ; #43985: <==negation-removal== 77250 (pos)
                    (not (at_c_p6))

                    ; #84116: <==negation-removal== 27519 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9)
                           (not (leader_c)))
        :effect (and
                    ; #61513: origin
                    (at_c_p9)

                    ; #77250: origin
                    (not_at_c_p6)

                    ; #43985: <==negation-removal== 77250 (pos)
                    (not (at_c_p6))

                    ; #62356: <==negation-removal== 61513 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1)
                           (not (leader_c)))
        :effect (and
                    ; #72592: origin
                    (at_c_p1)

                    ; #88040: origin
                    (not_at_c_p7)

                    ; #14790: <==negation-removal== 72592 (pos)
                    (not (not_at_c_p1))

                    ; #76237: <==negation-removal== 88040 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #13585: origin
                    (at_c_p10)

                    ; #88040: origin
                    (not_at_c_p7)

                    ; #43246: <==negation-removal== 13585 (pos)
                    (not (not_at_c_p10))

                    ; #76237: <==negation-removal== 88040 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11)
                           (not (leader_c)))
        :effect (and
                    ; #81271: origin
                    (at_c_p11)

                    ; #88040: origin
                    (not_at_c_p7)

                    ; #67932: <==negation-removal== 81271 (pos)
                    (not (not_at_c_p11))

                    ; #76237: <==negation-removal== 88040 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12)
                           (not (leader_c)))
        :effect (and
                    ; #15395: origin
                    (at_c_p12)

                    ; #88040: origin
                    (not_at_c_p7)

                    ; #14128: <==negation-removal== 15395 (pos)
                    (not (not_at_c_p12))

                    ; #76237: <==negation-removal== 88040 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2)
                           (not (leader_c)))
        :effect (and
                    ; #75281: origin
                    (at_c_p2)

                    ; #88040: origin
                    (not_at_c_p7)

                    ; #12211: <==negation-removal== 75281 (pos)
                    (not (not_at_c_p2))

                    ; #76237: <==negation-removal== 88040 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3)
                           (not (leader_c)))
        :effect (and
                    ; #88040: origin
                    (not_at_c_p7)

                    ; #91431: origin
                    (at_c_p3)

                    ; #76237: <==negation-removal== 88040 (pos)
                    (not (at_c_p7))

                    ; #79988: <==negation-removal== 91431 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #59272: origin
                    (at_c_p4)

                    ; #88040: origin
                    (not_at_c_p7)

                    ; #43617: <==negation-removal== 59272 (pos)
                    (not (not_at_c_p4))

                    ; #76237: <==negation-removal== 88040 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5)
                           (not (leader_c)))
        :effect (and
                    ; #88040: origin
                    (not_at_c_p7)

                    ; #89946: origin
                    (at_c_p5)

                    ; #15680: <==negation-removal== 89946 (pos)
                    (not (not_at_c_p5))

                    ; #76237: <==negation-removal== 88040 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #43985: origin
                    (at_c_p6)

                    ; #88040: origin
                    (not_at_c_p7)

                    ; #76237: <==negation-removal== 88040 (pos)
                    (not (at_c_p7))

                    ; #77250: <==negation-removal== 43985 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #76237: origin
                    (at_c_p7)

                    ; #88040: origin
                    (not_at_c_p7)

                    ; #76237: <==negation-removal== 88040 (pos)
                    (not (at_c_p7))

                    ; #88040: <==negation-removal== 76237 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #27519: origin
                    (at_c_p8)

                    ; #88040: origin
                    (not_at_c_p7)

                    ; #76237: <==negation-removal== 88040 (pos)
                    (not (at_c_p7))

                    ; #84116: <==negation-removal== 27519 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #61513: origin
                    (at_c_p9)

                    ; #88040: origin
                    (not_at_c_p7)

                    ; #62356: <==negation-removal== 61513 (pos)
                    (not (not_at_c_p9))

                    ; #76237: <==negation-removal== 88040 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1)
                           (not (leader_c)))
        :effect (and
                    ; #72592: origin
                    (at_c_p1)

                    ; #84116: origin
                    (not_at_c_p8)

                    ; #14790: <==negation-removal== 72592 (pos)
                    (not (not_at_c_p1))

                    ; #27519: <==negation-removal== 84116 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10)
                           (not (leader_c)))
        :effect (and
                    ; #13585: origin
                    (at_c_p10)

                    ; #84116: origin
                    (not_at_c_p8)

                    ; #27519: <==negation-removal== 84116 (pos)
                    (not (at_c_p8))

                    ; #43246: <==negation-removal== 13585 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11)
                           (not (leader_c)))
        :effect (and
                    ; #81271: origin
                    (at_c_p11)

                    ; #84116: origin
                    (not_at_c_p8)

                    ; #27519: <==negation-removal== 84116 (pos)
                    (not (at_c_p8))

                    ; #67932: <==negation-removal== 81271 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12)
                           (not (leader_c)))
        :effect (and
                    ; #15395: origin
                    (at_c_p12)

                    ; #84116: origin
                    (not_at_c_p8)

                    ; #14128: <==negation-removal== 15395 (pos)
                    (not (not_at_c_p12))

                    ; #27519: <==negation-removal== 84116 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #75281: origin
                    (at_c_p2)

                    ; #84116: origin
                    (not_at_c_p8)

                    ; #12211: <==negation-removal== 75281 (pos)
                    (not (not_at_c_p2))

                    ; #27519: <==negation-removal== 84116 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #84116: origin
                    (not_at_c_p8)

                    ; #91431: origin
                    (at_c_p3)

                    ; #27519: <==negation-removal== 84116 (pos)
                    (not (at_c_p8))

                    ; #79988: <==negation-removal== 91431 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4)
                           (not (leader_c)))
        :effect (and
                    ; #59272: origin
                    (at_c_p4)

                    ; #84116: origin
                    (not_at_c_p8)

                    ; #27519: <==negation-removal== 84116 (pos)
                    (not (at_c_p8))

                    ; #43617: <==negation-removal== 59272 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5)
                           (not (leader_c)))
        :effect (and
                    ; #84116: origin
                    (not_at_c_p8)

                    ; #89946: origin
                    (at_c_p5)

                    ; #15680: <==negation-removal== 89946 (pos)
                    (not (not_at_c_p5))

                    ; #27519: <==negation-removal== 84116 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6)
                           (not (leader_c)))
        :effect (and
                    ; #43985: origin
                    (at_c_p6)

                    ; #84116: origin
                    (not_at_c_p8)

                    ; #27519: <==negation-removal== 84116 (pos)
                    (not (at_c_p8))

                    ; #77250: <==negation-removal== 43985 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7)
                           (not (leader_c)))
        :effect (and
                    ; #76237: origin
                    (at_c_p7)

                    ; #84116: origin
                    (not_at_c_p8)

                    ; #27519: <==negation-removal== 84116 (pos)
                    (not (at_c_p8))

                    ; #88040: <==negation-removal== 76237 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8)
                           (not (leader_c)))
        :effect (and
                    ; #27519: origin
                    (at_c_p8)

                    ; #84116: origin
                    (not_at_c_p8)

                    ; #27519: <==negation-removal== 84116 (pos)
                    (not (at_c_p8))

                    ; #84116: <==negation-removal== 27519 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9)
                           (not (leader_c)))
        :effect (and
                    ; #61513: origin
                    (at_c_p9)

                    ; #84116: origin
                    (not_at_c_p8)

                    ; #27519: <==negation-removal== 84116 (pos)
                    (not (at_c_p8))

                    ; #62356: <==negation-removal== 61513 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1)
                           (not (leader_c)))
        :effect (and
                    ; #62356: origin
                    (not_at_c_p9)

                    ; #72592: origin
                    (at_c_p1)

                    ; #14790: <==negation-removal== 72592 (pos)
                    (not (not_at_c_p1))

                    ; #61513: <==negation-removal== 62356 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10)
                           (not (leader_c)))
        :effect (and
                    ; #13585: origin
                    (at_c_p10)

                    ; #62356: origin
                    (not_at_c_p9)

                    ; #43246: <==negation-removal== 13585 (pos)
                    (not (not_at_c_p10))

                    ; #61513: <==negation-removal== 62356 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (at_c_p9)
                           (succ_p9_p11)
                           (not (leader_c)))
        :effect (and
                    ; #62356: origin
                    (not_at_c_p9)

                    ; #81271: origin
                    (at_c_p11)

                    ; #61513: <==negation-removal== 62356 (pos)
                    (not (at_c_p9))

                    ; #67932: <==negation-removal== 81271 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12)
                           (not (leader_c)))
        :effect (and
                    ; #15395: origin
                    (at_c_p12)

                    ; #62356: origin
                    (not_at_c_p9)

                    ; #14128: <==negation-removal== 15395 (pos)
                    (not (not_at_c_p12))

                    ; #61513: <==negation-removal== 62356 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2)
                           (not (leader_c)))
        :effect (and
                    ; #62356: origin
                    (not_at_c_p9)

                    ; #75281: origin
                    (at_c_p2)

                    ; #12211: <==negation-removal== 75281 (pos)
                    (not (not_at_c_p2))

                    ; #61513: <==negation-removal== 62356 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3)
                           (not (leader_c)))
        :effect (and
                    ; #62356: origin
                    (not_at_c_p9)

                    ; #91431: origin
                    (at_c_p3)

                    ; #61513: <==negation-removal== 62356 (pos)
                    (not (at_c_p9))

                    ; #79988: <==negation-removal== 91431 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4)
                           (not (leader_c)))
        :effect (and
                    ; #59272: origin
                    (at_c_p4)

                    ; #62356: origin
                    (not_at_c_p9)

                    ; #43617: <==negation-removal== 59272 (pos)
                    (not (not_at_c_p4))

                    ; #61513: <==negation-removal== 62356 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5)
                           (not (leader_c)))
        :effect (and
                    ; #62356: origin
                    (not_at_c_p9)

                    ; #89946: origin
                    (at_c_p5)

                    ; #15680: <==negation-removal== 89946 (pos)
                    (not (not_at_c_p5))

                    ; #61513: <==negation-removal== 62356 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6)
                           (not (leader_c)))
        :effect (and
                    ; #43985: origin
                    (at_c_p6)

                    ; #62356: origin
                    (not_at_c_p9)

                    ; #61513: <==negation-removal== 62356 (pos)
                    (not (at_c_p9))

                    ; #77250: <==negation-removal== 43985 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #62356: origin
                    (not_at_c_p9)

                    ; #76237: origin
                    (at_c_p7)

                    ; #61513: <==negation-removal== 62356 (pos)
                    (not (at_c_p9))

                    ; #88040: <==negation-removal== 76237 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #27519: origin
                    (at_c_p8)

                    ; #62356: origin
                    (not_at_c_p9)

                    ; #61513: <==negation-removal== 62356 (pos)
                    (not (at_c_p9))

                    ; #84116: <==negation-removal== 27519 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9)
                           (not (leader_c)))
        :effect (and
                    ; #61513: origin
                    (at_c_p9)

                    ; #62356: origin
                    (not_at_c_p9)

                    ; #61513: <==negation-removal== 62356 (pos)
                    (not (at_c_p9))

                    ; #62356: <==negation-removal== 61513 (pos)
                    (not (not_at_c_p9))))

    (:action observe_a_p10_s
        :precondition (and (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #15264: <==commonly_known== 68959 (neg)
                    (Pb_checked_p10)

                    ; #29200: <==commonly_known== 65962 (pos)
                    (Bb_checked_p10)

                    ; #32351: <==commonly_known== 65962 (pos)
                    (Ba_checked_p10)

                    ; #33261: <==closure== 36078 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #36078: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #46301: <==closure== 47043 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #47043: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #65962: origin
                    (checked_p10)

                    ; #87128: <==commonly_known== 68959 (neg)
                    (Pc_checked_p10)

                    ; #89094: <==commonly_known== 68959 (neg)
                    (Pa_checked_p10)

                    ; #92026: <==commonly_known== 65962 (pos)
                    (Bc_checked_p10)

                    ; #18917: <==negation-removal== 36078 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #27226: <==negation-removal== 92026 (pos)
                    (not (Pc_not_checked_p10))

                    ; #27838: <==negation-removal== 32351 (pos)
                    (not (Pa_not_checked_p10))

                    ; #31789: <==negation-removal== 89094 (pos)
                    (not (Ba_not_checked_p10))

                    ; #32421: <==uncertain_firing== 33261 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #46978: <==negation-removal== 87128 (pos)
                    (not (Bc_not_checked_p10))

                    ; #47091: <==negation-removal== 29200 (pos)
                    (not (Pb_not_checked_p10))

                    ; #54723: <==negation-removal== 46301 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #61873: <==uncertain_firing== 46301 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #68959: <==negation-removal== 65962 (pos)
                    (not (not_checked_p10))

                    ; #72618: <==negation-removal== 15264 (pos)
                    (not (Bb_not_checked_p10))

                    ; #80492: <==negation-removal== 33261 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #81247: <==uncertain_firing== 47043 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #85097: <==negation-removal== 47043 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #86218: <==uncertain_firing== 36078 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))))

    (:action observe_a_p11_s
        :precondition (and (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #14371: <==commonly_known== 56239 (pos)
                    (Bb_checked_p11)

                    ; #15809: <==commonly_known== 56239 (pos)
                    (Ba_checked_p11)

                    ; #17240: <==closure== 91543 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #32321: <==closure== 75493 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #47786: <==commonly_known== 88638 (neg)
                    (Pa_checked_p11)

                    ; #53415: <==commonly_known== 88638 (neg)
                    (Pc_checked_p11)

                    ; #56239: origin
                    (checked_p11)

                    ; #58624: <==commonly_known== 56239 (pos)
                    (Bc_checked_p11)

                    ; #75493: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #83796: <==commonly_known== 88638 (neg)
                    (Pb_checked_p11)

                    ; #91543: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #14414: <==negation-removal== 75493 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #14861: <==negation-removal== 14371 (pos)
                    (not (Pb_not_checked_p11))

                    ; #31823: <==negation-removal== 15809 (pos)
                    (not (Pa_not_checked_p11))

                    ; #35418: <==negation-removal== 53415 (pos)
                    (not (Bc_not_checked_p11))

                    ; #50146: <==negation-removal== 47786 (pos)
                    (not (Ba_not_checked_p11))

                    ; #54677: <==uncertain_firing== 32321 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #58295: <==negation-removal== 91543 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #63739: <==uncertain_firing== 75493 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #66947: <==negation-removal== 58624 (pos)
                    (not (Pc_not_checked_p11))

                    ; #70716: <==negation-removal== 83796 (pos)
                    (not (Bb_not_checked_p11))

                    ; #73241: <==uncertain_firing== 91543 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #85569: <==uncertain_firing== 17240 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #88638: <==negation-removal== 56239 (pos)
                    (not (not_checked_p11))

                    ; #90049: <==negation-removal== 17240 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #90201: <==negation-removal== 32321 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))))

    (:action observe_a_p12_s
        :precondition (and (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #11539: <==commonly_known== 76850 (neg)
                    (Pc_checked_p12)

                    ; #13071: <==commonly_known== 89554 (pos)
                    (Bc_checked_p12)

                    ; #15361: <==commonly_known== 76850 (neg)
                    (Pa_checked_p12)

                    ; #35049: <==commonly_known== 89554 (pos)
                    (Ba_checked_p12)

                    ; #47395: <==closure== 87292 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #48966: <==closure== 65461 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #65461: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #75405: <==commonly_known== 89554 (pos)
                    (Bb_checked_p12)

                    ; #85117: <==commonly_known== 76850 (neg)
                    (Pb_checked_p12)

                    ; #87292: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #89554: origin
                    (checked_p12)

                    ; #11354: <==negation-removal== 85117 (pos)
                    (not (Bb_not_checked_p12))

                    ; #18231: <==uncertain_firing== 65461 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #25989: <==negation-removal== 13071 (pos)
                    (not (Pc_not_checked_p12))

                    ; #27848: <==negation-removal== 48966 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #30239: <==negation-removal== 65461 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #41583: <==uncertain_firing== 87292 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #42940: <==negation-removal== 47395 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #43253: <==negation-removal== 35049 (pos)
                    (not (Pa_not_checked_p12))

                    ; #45570: <==negation-removal== 87292 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #48511: <==negation-removal== 11539 (pos)
                    (not (Bc_not_checked_p12))

                    ; #51836: <==uncertain_firing== 47395 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #53738: <==negation-removal== 15361 (pos)
                    (not (Ba_not_checked_p12))

                    ; #61971: <==uncertain_firing== 48966 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #76850: <==negation-removal== 89554 (pos)
                    (not (not_checked_p12))

                    ; #78808: <==negation-removal== 75405 (pos)
                    (not (Pb_not_checked_p12))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #17107: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #19851: origin
                    (checked_p1)

                    ; #21998: <==commonly_known== 19851 (pos)
                    (Bb_checked_p1)

                    ; #25160: <==commonly_known== 29056 (neg)
                    (Pb_checked_p1)

                    ; #37099: <==commonly_known== 19851 (pos)
                    (Bc_checked_p1)

                    ; #54550: <==commonly_known== 29056 (neg)
                    (Pc_checked_p1)

                    ; #57359: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #65534: <==commonly_known== 19851 (pos)
                    (Ba_checked_p1)

                    ; #69691: <==closure== 57359 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #72457: <==closure== 17107 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #83429: <==commonly_known== 29056 (neg)
                    (Pa_checked_p1)

                    ; #14449: <==negation-removal== 72457 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #22014: <==uncertain_firing== 57359 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #28357: <==negation-removal== 57359 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #29056: <==negation-removal== 19851 (pos)
                    (not (not_checked_p1))

                    ; #34627: <==uncertain_firing== 72457 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #45583: <==uncertain_firing== 17107 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #55876: <==negation-removal== 54550 (pos)
                    (not (Bc_not_checked_p1))

                    ; #59067: <==negation-removal== 21998 (pos)
                    (not (Pb_not_checked_p1))

                    ; #60836: <==negation-removal== 65534 (pos)
                    (not (Pa_not_checked_p1))

                    ; #62578: <==negation-removal== 37099 (pos)
                    (not (Pc_not_checked_p1))

                    ; #78254: <==negation-removal== 17107 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #82763: <==negation-removal== 25160 (pos)
                    (not (Bb_not_checked_p1))

                    ; #88625: <==negation-removal== 83429 (pos)
                    (not (Ba_not_checked_p1))

                    ; #91723: <==uncertain_firing== 69691 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #92099: <==negation-removal== 69691 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #11514: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #34172: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #37013: origin
                    (checked_p2)

                    ; #37386: <==commonly_known== 37013 (pos)
                    (Bb_checked_p2)

                    ; #41942: <==commonly_known== 53844 (neg)
                    (Pb_checked_p2)

                    ; #47491: <==closure== 34172 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #49154: <==commonly_known== 53844 (neg)
                    (Pa_checked_p2)

                    ; #54353: <==commonly_known== 37013 (pos)
                    (Bc_checked_p2)

                    ; #57060: <==closure== 11514 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #66868: <==commonly_known== 37013 (pos)
                    (Ba_checked_p2)

                    ; #75645: <==commonly_known== 53844 (neg)
                    (Pc_checked_p2)

                    ; #12555: <==negation-removal== 49154 (pos)
                    (not (Ba_not_checked_p2))

                    ; #16450: <==negation-removal== 41942 (pos)
                    (not (Bb_not_checked_p2))

                    ; #20285: <==uncertain_firing== 57060 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #25584: <==negation-removal== 34172 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #37070: <==negation-removal== 11514 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #37633: <==negation-removal== 75645 (pos)
                    (not (Bc_not_checked_p2))

                    ; #49264: <==negation-removal== 37386 (pos)
                    (not (Pb_not_checked_p2))

                    ; #53844: <==negation-removal== 37013 (pos)
                    (not (not_checked_p2))

                    ; #55282: <==uncertain_firing== 34172 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #56692: <==uncertain_firing== 11514 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #62765: <==negation-removal== 54353 (pos)
                    (not (Pc_not_checked_p2))

                    ; #66102: <==negation-removal== 57060 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #80630: <==negation-removal== 66868 (pos)
                    (not (Pa_not_checked_p2))

                    ; #86104: <==uncertain_firing== 47491 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #90543: <==negation-removal== 47491 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #34817: <==commonly_known== 49274 (neg)
                    (Pb_checked_p3)

                    ; #38135: <==commonly_known== 49274 (neg)
                    (Pa_checked_p3)

                    ; #49566: <==closure== 68016 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #51056: origin
                    (checked_p3)

                    ; #62390: <==commonly_known== 51056 (pos)
                    (Ba_checked_p3)

                    ; #68016: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #70060: <==commonly_known== 51056 (pos)
                    (Bb_checked_p3)

                    ; #73524: <==closure== 89225 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #84205: <==commonly_known== 49274 (neg)
                    (Pc_checked_p3)

                    ; #88282: <==commonly_known== 51056 (pos)
                    (Bc_checked_p3)

                    ; #89225: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #16920: <==negation-removal== 62390 (pos)
                    (not (Pa_not_checked_p3))

                    ; #18132: <==negation-removal== 73524 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #24394: <==uncertain_firing== 68016 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #32942: <==uncertain_firing== 49566 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #37680: <==uncertain_firing== 73524 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #49274: <==negation-removal== 51056 (pos)
                    (not (not_checked_p3))

                    ; #54652: <==negation-removal== 38135 (pos)
                    (not (Ba_not_checked_p3))

                    ; #57865: <==negation-removal== 84205 (pos)
                    (not (Bc_not_checked_p3))

                    ; #60263: <==negation-removal== 68016 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #60759: <==negation-removal== 89225 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #61425: <==negation-removal== 49566 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #72414: <==negation-removal== 70060 (pos)
                    (not (Pb_not_checked_p3))

                    ; #74909: <==negation-removal== 34817 (pos)
                    (not (Bb_not_checked_p3))

                    ; #84284: <==negation-removal== 88282 (pos)
                    (not (Pc_not_checked_p3))

                    ; #90170: <==uncertain_firing== 89225 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #17142: <==closure== 43999 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #33302: <==commonly_known== 81849 (neg)
                    (Pb_checked_p4)

                    ; #43999: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #49953: <==commonly_known== 85135 (pos)
                    (Bb_checked_p4)

                    ; #55202: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #64590: <==commonly_known== 81849 (neg)
                    (Pa_checked_p4)

                    ; #74572: <==commonly_known== 81849 (neg)
                    (Pc_checked_p4)

                    ; #80899: <==closure== 55202 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #80944: <==commonly_known== 85135 (pos)
                    (Ba_checked_p4)

                    ; #85135: origin
                    (checked_p4)

                    ; #85943: <==commonly_known== 85135 (pos)
                    (Bc_checked_p4)

                    ; #13694: <==negation-removal== 64590 (pos)
                    (not (Ba_not_checked_p4))

                    ; #16916: <==negation-removal== 17142 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #21327: <==negation-removal== 85943 (pos)
                    (not (Pc_not_checked_p4))

                    ; #22149: <==uncertain_firing== 80899 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #22956: <==negation-removal== 74572 (pos)
                    (not (Bc_not_checked_p4))

                    ; #27895: <==uncertain_firing== 43999 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #40748: <==negation-removal== 43999 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #51590: <==uncertain_firing== 17142 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #57314: <==negation-removal== 49953 (pos)
                    (not (Pb_not_checked_p4))

                    ; #58738: <==uncertain_firing== 55202 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #58995: <==negation-removal== 80899 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #61058: <==negation-removal== 55202 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #81315: <==negation-removal== 80944 (pos)
                    (not (Pa_not_checked_p4))

                    ; #81849: <==negation-removal== 85135 (pos)
                    (not (not_checked_p4))

                    ; #90414: <==negation-removal== 33302 (pos)
                    (not (Bb_not_checked_p4))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #30197: <==commonly_known== 30651 (pos)
                    (Ba_checked_p5)

                    ; #30651: origin
                    (checked_p5)

                    ; #36230: <==closure== 88994 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #37116: <==commonly_known== 83872 (neg)
                    (Pb_checked_p5)

                    ; #52795: <==closure== 54906 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #54906: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #56034: <==commonly_known== 83872 (neg)
                    (Pc_checked_p5)

                    ; #63930: <==commonly_known== 30651 (pos)
                    (Bb_checked_p5)

                    ; #74834: <==commonly_known== 30651 (pos)
                    (Bc_checked_p5)

                    ; #85690: <==commonly_known== 83872 (neg)
                    (Pa_checked_p5)

                    ; #88994: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #10023: <==negation-removal== 52795 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #10509: <==negation-removal== 36230 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #14601: <==uncertain_firing== 52795 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #25429: <==negation-removal== 37116 (pos)
                    (not (Bb_not_checked_p5))

                    ; #31588: <==negation-removal== 85690 (pos)
                    (not (Ba_not_checked_p5))

                    ; #32598: <==negation-removal== 30197 (pos)
                    (not (Pa_not_checked_p5))

                    ; #33613: <==uncertain_firing== 88994 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #44854: <==negation-removal== 54906 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #47250: <==uncertain_firing== 36230 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #51699: <==negation-removal== 63930 (pos)
                    (not (Pb_not_checked_p5))

                    ; #61417: <==uncertain_firing== 54906 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #66212: <==negation-removal== 74834 (pos)
                    (not (Pc_not_checked_p5))

                    ; #83872: <==negation-removal== 30651 (pos)
                    (not (not_checked_p5))

                    ; #88266: <==negation-removal== 88994 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #90139: <==negation-removal== 56034 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #10588: origin
                    (checked_p6)

                    ; #19380: <==commonly_known== 78015 (neg)
                    (Pb_checked_p6)

                    ; #23459: <==closure== 89084 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #28938: <==commonly_known== 78015 (neg)
                    (Pa_checked_p6)

                    ; #29991: <==commonly_known== 10588 (pos)
                    (Bb_checked_p6)

                    ; #35591: <==commonly_known== 78015 (neg)
                    (Pc_checked_p6)

                    ; #38273: <==closure== 85385 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #58845: <==commonly_known== 10588 (pos)
                    (Bc_checked_p6)

                    ; #69558: <==commonly_known== 10588 (pos)
                    (Ba_checked_p6)

                    ; #85385: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #89084: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #11223: <==uncertain_firing== 89084 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #18107: <==uncertain_firing== 85385 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #19060: <==negation-removal== 69558 (pos)
                    (not (Pa_not_checked_p6))

                    ; #26446: <==negation-removal== 35591 (pos)
                    (not (Bc_not_checked_p6))

                    ; #27189: <==negation-removal== 19380 (pos)
                    (not (Bb_not_checked_p6))

                    ; #28101: <==negation-removal== 38273 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #31384: <==negation-removal== 23459 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #38774: <==negation-removal== 29991 (pos)
                    (not (Pb_not_checked_p6))

                    ; #51694: <==uncertain_firing== 23459 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #54175: <==negation-removal== 89084 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #55444: <==uncertain_firing== 38273 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #63026: <==negation-removal== 58845 (pos)
                    (not (Pc_not_checked_p6))

                    ; #73474: <==negation-removal== 85385 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #78015: <==negation-removal== 10588 (pos)
                    (not (not_checked_p6))

                    ; #80568: <==negation-removal== 28938 (pos)
                    (not (Ba_not_checked_p6))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #35518: <==commonly_known== 42007 (neg)
                    (Pc_checked_p7)

                    ; #36777: <==commonly_known== 38972 (pos)
                    (Ba_checked_p7)

                    ; #38972: origin
                    (checked_p7)

                    ; #43881: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #58983: <==closure== 88324 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #63093: <==commonly_known== 42007 (neg)
                    (Pa_checked_p7)

                    ; #73530: <==commonly_known== 38972 (pos)
                    (Bb_checked_p7)

                    ; #75224: <==commonly_known== 38972 (pos)
                    (Bc_checked_p7)

                    ; #78213: <==commonly_known== 42007 (neg)
                    (Pb_checked_p7)

                    ; #85150: <==closure== 43881 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #88324: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #10640: <==negation-removal== 75224 (pos)
                    (not (Pc_not_checked_p7))

                    ; #20028: <==negation-removal== 73530 (pos)
                    (not (Pb_not_checked_p7))

                    ; #32767: <==negation-removal== 43881 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #35012: <==negation-removal== 35518 (pos)
                    (not (Bc_not_checked_p7))

                    ; #36696: <==negation-removal== 78213 (pos)
                    (not (Bb_not_checked_p7))

                    ; #37901: <==uncertain_firing== 58983 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #41477: <==negation-removal== 63093 (pos)
                    (not (Ba_not_checked_p7))

                    ; #42007: <==negation-removal== 38972 (pos)
                    (not (not_checked_p7))

                    ; #57385: <==uncertain_firing== 88324 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #61070: <==negation-removal== 58983 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #64218: <==uncertain_firing== 85150 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #66529: <==negation-removal== 36777 (pos)
                    (not (Pa_not_checked_p7))

                    ; #66940: <==uncertain_firing== 43881 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #83842: <==negation-removal== 85150 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #91028: <==negation-removal== 88324 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #21789: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #22562: origin
                    (checked_p8)

                    ; #52418: <==commonly_known== 35808 (neg)
                    (Pa_checked_p8)

                    ; #58049: <==commonly_known== 22562 (pos)
                    (Ba_checked_p8)

                    ; #58697: <==commonly_known== 35808 (neg)
                    (Pc_checked_p8)

                    ; #61662: <==commonly_known== 35808 (neg)
                    (Pb_checked_p8)

                    ; #63274: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #77563: <==closure== 21789 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #81856: <==commonly_known== 22562 (pos)
                    (Bb_checked_p8)

                    ; #82325: <==closure== 63274 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #91066: <==commonly_known== 22562 (pos)
                    (Bc_checked_p8)

                    ; #12392: <==negation-removal== 82325 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #17402: <==negation-removal== 58697 (pos)
                    (not (Bc_not_checked_p8))

                    ; #20797: <==uncertain_firing== 77563 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #25873: <==negation-removal== 52418 (pos)
                    (not (Ba_not_checked_p8))

                    ; #29348: <==negation-removal== 58049 (pos)
                    (not (Pa_not_checked_p8))

                    ; #35808: <==negation-removal== 22562 (pos)
                    (not (not_checked_p8))

                    ; #43720: <==negation-removal== 81856 (pos)
                    (not (Pb_not_checked_p8))

                    ; #44343: <==negation-removal== 77563 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #59914: <==negation-removal== 91066 (pos)
                    (not (Pc_not_checked_p8))

                    ; #63003: <==uncertain_firing== 21789 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #70121: <==uncertain_firing== 82325 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #75300: <==negation-removal== 61662 (pos)
                    (not (Bb_not_checked_p8))

                    ; #80865: <==negation-removal== 21789 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #88732: <==uncertain_firing== 63274 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #89987: <==negation-removal== 63274 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #10555: <==commonly_known== 18681 (pos)
                    (Bb_checked_p9)

                    ; #18681: origin
                    (checked_p9)

                    ; #24849: <==closure== 50715 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #25720: <==commonly_known== 46528 (neg)
                    (Pc_checked_p9)

                    ; #38679: <==commonly_known== 46528 (neg)
                    (Pa_checked_p9)

                    ; #41073: <==commonly_known== 18681 (pos)
                    (Bc_checked_p9)

                    ; #41361: <==commonly_known== 18681 (pos)
                    (Ba_checked_p9)

                    ; #43086: <==commonly_known== 46528 (neg)
                    (Pb_checked_p9)

                    ; #47351: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #50715: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #96204: <==closure== 47351 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #20634: <==negation-removal== 43086 (pos)
                    (not (Bb_not_checked_p9))

                    ; #23883: <==negation-removal== 10555 (pos)
                    (not (Pb_not_checked_p9))

                    ; #27719: <==uncertain_firing== 96204 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #33855: <==uncertain_firing== 24849 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #42537: <==negation-removal== 96204 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #46528: <==negation-removal== 18681 (pos)
                    (not (not_checked_p9))

                    ; #51437: <==negation-removal== 47351 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #52228: <==uncertain_firing== 50715 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #52561: <==negation-removal== 50715 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #53745: <==uncertain_firing== 47351 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #54993: <==negation-removal== 25720 (pos)
                    (not (Bc_not_checked_p9))

                    ; #56251: <==negation-removal== 38679 (pos)
                    (not (Ba_not_checked_p9))

                    ; #67809: <==negation-removal== 41361 (pos)
                    (not (Pa_not_checked_p9))

                    ; #77775: <==negation-removal== 24849 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #85163: <==negation-removal== 41073 (pos)
                    (not (Pc_not_checked_p9))))

    (:action observe_b_p10_s
        :precondition (and (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #15264: <==commonly_known== 68959 (neg)
                    (Pb_checked_p10)

                    ; #18628: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #22573: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #29200: <==commonly_known== 65962 (pos)
                    (Bb_checked_p10)

                    ; #32351: <==commonly_known== 65962 (pos)
                    (Ba_checked_p10)

                    ; #42412: <==closure== 22573 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #47009: <==closure== 18628 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #65962: origin
                    (checked_p10)

                    ; #87128: <==commonly_known== 68959 (neg)
                    (Pc_checked_p10)

                    ; #89094: <==commonly_known== 68959 (neg)
                    (Pa_checked_p10)

                    ; #92026: <==commonly_known== 65962 (pos)
                    (Bc_checked_p10)

                    ; #26225: <==uncertain_firing== 47009 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #27226: <==negation-removal== 92026 (pos)
                    (not (Pc_not_checked_p10))

                    ; #27838: <==negation-removal== 32351 (pos)
                    (not (Pa_not_checked_p10))

                    ; #31789: <==negation-removal== 89094 (pos)
                    (not (Ba_not_checked_p10))

                    ; #35722: <==negation-removal== 47009 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #40266: <==negation-removal== 18628 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #46978: <==negation-removal== 87128 (pos)
                    (not (Bc_not_checked_p10))

                    ; #47091: <==negation-removal== 29200 (pos)
                    (not (Pb_not_checked_p10))

                    ; #47651: <==negation-removal== 42412 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #50306: <==uncertain_firing== 18628 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #68959: <==negation-removal== 65962 (pos)
                    (not (not_checked_p10))

                    ; #72618: <==negation-removal== 15264 (pos)
                    (not (Bb_not_checked_p10))

                    ; #81040: <==uncertain_firing== 22573 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #89012: <==uncertain_firing== 42412 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #91133: <==negation-removal== 22573 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))))

    (:action observe_b_p11_s
        :precondition (and (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #14371: <==commonly_known== 56239 (pos)
                    (Bb_checked_p11)

                    ; #15809: <==commonly_known== 56239 (pos)
                    (Ba_checked_p11)

                    ; #44963: <==closure== 61271 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #47786: <==commonly_known== 88638 (neg)
                    (Pa_checked_p11)

                    ; #53415: <==commonly_known== 88638 (neg)
                    (Pc_checked_p11)

                    ; #56239: origin
                    (checked_p11)

                    ; #58624: <==commonly_known== 56239 (pos)
                    (Bc_checked_p11)

                    ; #59422: <==closure== 81627 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #61271: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #81627: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #83796: <==commonly_known== 88638 (neg)
                    (Pb_checked_p11)

                    ; #14861: <==negation-removal== 14371 (pos)
                    (not (Pb_not_checked_p11))

                    ; #19867: <==uncertain_firing== 44963 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #22776: <==negation-removal== 81627 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #31823: <==negation-removal== 15809 (pos)
                    (not (Pa_not_checked_p11))

                    ; #33916: <==negation-removal== 61271 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #35418: <==negation-removal== 53415 (pos)
                    (not (Bc_not_checked_p11))

                    ; #41917: <==negation-removal== 44963 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #50146: <==negation-removal== 47786 (pos)
                    (not (Ba_not_checked_p11))

                    ; #51877: <==negation-removal== 59422 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #65318: <==uncertain_firing== 59422 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #66947: <==negation-removal== 58624 (pos)
                    (not (Pc_not_checked_p11))

                    ; #69004: <==uncertain_firing== 81627 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #70716: <==negation-removal== 83796 (pos)
                    (not (Bb_not_checked_p11))

                    ; #78800: <==uncertain_firing== 61271 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #88638: <==negation-removal== 56239 (pos)
                    (not (not_checked_p11))))

    (:action observe_b_p12_s
        :precondition (and (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #11539: <==commonly_known== 76850 (neg)
                    (Pc_checked_p12)

                    ; #13071: <==commonly_known== 89554 (pos)
                    (Bc_checked_p12)

                    ; #15361: <==commonly_known== 76850 (neg)
                    (Pa_checked_p12)

                    ; #35049: <==commonly_known== 89554 (pos)
                    (Ba_checked_p12)

                    ; #42650: <==closure== 81062 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #68736: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #70074: <==closure== 68736 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #75405: <==commonly_known== 89554 (pos)
                    (Bb_checked_p12)

                    ; #81062: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #85117: <==commonly_known== 76850 (neg)
                    (Pb_checked_p12)

                    ; #89554: origin
                    (checked_p12)

                    ; #11354: <==negation-removal== 85117 (pos)
                    (not (Bb_not_checked_p12))

                    ; #25989: <==negation-removal== 13071 (pos)
                    (not (Pc_not_checked_p12))

                    ; #26283: <==uncertain_firing== 70074 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #26305: <==uncertain_firing== 42650 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #43253: <==negation-removal== 35049 (pos)
                    (not (Pa_not_checked_p12))

                    ; #48511: <==negation-removal== 11539 (pos)
                    (not (Bc_not_checked_p12))

                    ; #52010: <==uncertain_firing== 68736 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #53738: <==negation-removal== 15361 (pos)
                    (not (Ba_not_checked_p12))

                    ; #72385: <==uncertain_firing== 81062 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #76850: <==negation-removal== 89554 (pos)
                    (not (not_checked_p12))

                    ; #77461: <==negation-removal== 68736 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #77756: <==negation-removal== 81062 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #78704: <==negation-removal== 42650 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #78808: <==negation-removal== 75405 (pos)
                    (not (Pb_not_checked_p12))

                    ; #92193: <==negation-removal== 70074 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #19851: origin
                    (checked_p1)

                    ; #21998: <==commonly_known== 19851 (pos)
                    (Bb_checked_p1)

                    ; #25160: <==commonly_known== 29056 (neg)
                    (Pb_checked_p1)

                    ; #37099: <==commonly_known== 19851 (pos)
                    (Bc_checked_p1)

                    ; #40904: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #54550: <==commonly_known== 29056 (neg)
                    (Pc_checked_p1)

                    ; #58751: <==closure== 78138 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #65534: <==commonly_known== 19851 (pos)
                    (Ba_checked_p1)

                    ; #69591: <==closure== 40904 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #78138: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #83429: <==commonly_known== 29056 (neg)
                    (Pa_checked_p1)

                    ; #20038: <==uncertain_firing== 78138 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #29056: <==negation-removal== 19851 (pos)
                    (not (not_checked_p1))

                    ; #42523: <==negation-removal== 58751 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #43554: <==negation-removal== 40904 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #44054: <==negation-removal== 69591 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #55876: <==negation-removal== 54550 (pos)
                    (not (Bc_not_checked_p1))

                    ; #59067: <==negation-removal== 21998 (pos)
                    (not (Pb_not_checked_p1))

                    ; #60500: <==uncertain_firing== 40904 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #60836: <==negation-removal== 65534 (pos)
                    (not (Pa_not_checked_p1))

                    ; #62578: <==negation-removal== 37099 (pos)
                    (not (Pc_not_checked_p1))

                    ; #76271: <==uncertain_firing== 58751 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #82763: <==negation-removal== 25160 (pos)
                    (not (Bb_not_checked_p1))

                    ; #88625: <==negation-removal== 83429 (pos)
                    (not (Ba_not_checked_p1))

                    ; #90276: <==negation-removal== 78138 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #91906: <==uncertain_firing== 69591 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #10089: <==closure== 48497 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #31268: <==closure== 42586 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #37013: origin
                    (checked_p2)

                    ; #37386: <==commonly_known== 37013 (pos)
                    (Bb_checked_p2)

                    ; #41942: <==commonly_known== 53844 (neg)
                    (Pb_checked_p2)

                    ; #42586: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #48497: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #49154: <==commonly_known== 53844 (neg)
                    (Pa_checked_p2)

                    ; #54353: <==commonly_known== 37013 (pos)
                    (Bc_checked_p2)

                    ; #66868: <==commonly_known== 37013 (pos)
                    (Ba_checked_p2)

                    ; #75645: <==commonly_known== 53844 (neg)
                    (Pc_checked_p2)

                    ; #12555: <==negation-removal== 49154 (pos)
                    (not (Ba_not_checked_p2))

                    ; #15258: <==negation-removal== 48497 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #16450: <==negation-removal== 41942 (pos)
                    (not (Bb_not_checked_p2))

                    ; #20306: <==negation-removal== 10089 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #20553: <==uncertain_firing== 31268 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #37633: <==negation-removal== 75645 (pos)
                    (not (Bc_not_checked_p2))

                    ; #44775: <==uncertain_firing== 10089 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #49264: <==negation-removal== 37386 (pos)
                    (not (Pb_not_checked_p2))

                    ; #53774: <==negation-removal== 42586 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #53844: <==negation-removal== 37013 (pos)
                    (not (not_checked_p2))

                    ; #62765: <==negation-removal== 54353 (pos)
                    (not (Pc_not_checked_p2))

                    ; #67785: <==uncertain_firing== 42586 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #80630: <==negation-removal== 66868 (pos)
                    (not (Pa_not_checked_p2))

                    ; #82785: <==uncertain_firing== 48497 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #89694: <==negation-removal== 31268 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #13261: <==closure== 64241 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #32271: <==closure== 45874 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #34817: <==commonly_known== 49274 (neg)
                    (Pb_checked_p3)

                    ; #38135: <==commonly_known== 49274 (neg)
                    (Pa_checked_p3)

                    ; #45874: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #51056: origin
                    (checked_p3)

                    ; #62390: <==commonly_known== 51056 (pos)
                    (Ba_checked_p3)

                    ; #64241: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #70060: <==commonly_known== 51056 (pos)
                    (Bb_checked_p3)

                    ; #84205: <==commonly_known== 49274 (neg)
                    (Pc_checked_p3)

                    ; #88282: <==commonly_known== 51056 (pos)
                    (Bc_checked_p3)

                    ; #14557: <==uncertain_firing== 64241 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #16920: <==negation-removal== 62390 (pos)
                    (not (Pa_not_checked_p3))

                    ; #45777: <==uncertain_firing== 13261 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #49274: <==negation-removal== 51056 (pos)
                    (not (not_checked_p3))

                    ; #50534: <==uncertain_firing== 45874 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #54652: <==negation-removal== 38135 (pos)
                    (not (Ba_not_checked_p3))

                    ; #57865: <==negation-removal== 84205 (pos)
                    (not (Bc_not_checked_p3))

                    ; #67415: <==uncertain_firing== 32271 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #69159: <==negation-removal== 45874 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #71798: <==negation-removal== 13261 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #72414: <==negation-removal== 70060 (pos)
                    (not (Pb_not_checked_p3))

                    ; #74654: <==negation-removal== 32271 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #74909: <==negation-removal== 34817 (pos)
                    (not (Bb_not_checked_p3))

                    ; #84284: <==negation-removal== 88282 (pos)
                    (not (Pc_not_checked_p3))

                    ; #86345: <==negation-removal== 64241 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #14064: <==closure== 67663 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #33302: <==commonly_known== 81849 (neg)
                    (Pb_checked_p4)

                    ; #49953: <==commonly_known== 85135 (pos)
                    (Bb_checked_p4)

                    ; #54966: <==closure== 88248 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #64590: <==commonly_known== 81849 (neg)
                    (Pa_checked_p4)

                    ; #67663: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #74572: <==commonly_known== 81849 (neg)
                    (Pc_checked_p4)

                    ; #80944: <==commonly_known== 85135 (pos)
                    (Ba_checked_p4)

                    ; #85135: origin
                    (checked_p4)

                    ; #85943: <==commonly_known== 85135 (pos)
                    (Bc_checked_p4)

                    ; #88248: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #13694: <==negation-removal== 64590 (pos)
                    (not (Ba_not_checked_p4))

                    ; #18829: <==negation-removal== 14064 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #21327: <==negation-removal== 85943 (pos)
                    (not (Pc_not_checked_p4))

                    ; #22956: <==negation-removal== 74572 (pos)
                    (not (Bc_not_checked_p4))

                    ; #27468: <==uncertain_firing== 14064 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #45021: <==negation-removal== 88248 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #46531: <==negation-removal== 67663 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #57314: <==negation-removal== 49953 (pos)
                    (not (Pb_not_checked_p4))

                    ; #63458: <==uncertain_firing== 88248 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #64171: <==negation-removal== 54966 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #66525: <==uncertain_firing== 54966 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #81315: <==negation-removal== 80944 (pos)
                    (not (Pa_not_checked_p4))

                    ; #81849: <==negation-removal== 85135 (pos)
                    (not (not_checked_p4))

                    ; #82478: <==uncertain_firing== 67663 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #90414: <==negation-removal== 33302 (pos)
                    (not (Bb_not_checked_p4))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #29214: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #30197: <==commonly_known== 30651 (pos)
                    (Ba_checked_p5)

                    ; #30651: origin
                    (checked_p5)

                    ; #37116: <==commonly_known== 83872 (neg)
                    (Pb_checked_p5)

                    ; #42913: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #50999: <==closure== 29214 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #56034: <==commonly_known== 83872 (neg)
                    (Pc_checked_p5)

                    ; #63930: <==commonly_known== 30651 (pos)
                    (Bb_checked_p5)

                    ; #67524: <==closure== 42913 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #74834: <==commonly_known== 30651 (pos)
                    (Bc_checked_p5)

                    ; #85690: <==commonly_known== 83872 (neg)
                    (Pa_checked_p5)

                    ; #11998: <==uncertain_firing== 29214 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #16478: <==negation-removal== 67524 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #25429: <==negation-removal== 37116 (pos)
                    (not (Bb_not_checked_p5))

                    ; #31588: <==negation-removal== 85690 (pos)
                    (not (Ba_not_checked_p5))

                    ; #32598: <==negation-removal== 30197 (pos)
                    (not (Pa_not_checked_p5))

                    ; #36589: <==negation-removal== 42913 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #51699: <==negation-removal== 63930 (pos)
                    (not (Pb_not_checked_p5))

                    ; #54286: <==negation-removal== 50999 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #56842: <==uncertain_firing== 50999 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #62224: <==negation-removal== 29214 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #64949: <==uncertain_firing== 67524 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #66212: <==negation-removal== 74834 (pos)
                    (not (Pc_not_checked_p5))

                    ; #73111: <==uncertain_firing== 42913 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #83872: <==negation-removal== 30651 (pos)
                    (not (not_checked_p5))

                    ; #90139: <==negation-removal== 56034 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #10588: origin
                    (checked_p6)

                    ; #16862: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #19380: <==commonly_known== 78015 (neg)
                    (Pb_checked_p6)

                    ; #28938: <==commonly_known== 78015 (neg)
                    (Pa_checked_p6)

                    ; #29991: <==commonly_known== 10588 (pos)
                    (Bb_checked_p6)

                    ; #32628: <==closure== 16862 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #35591: <==commonly_known== 78015 (neg)
                    (Pc_checked_p6)

                    ; #50182: <==closure== 52294 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #52294: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #58845: <==commonly_known== 10588 (pos)
                    (Bc_checked_p6)

                    ; #69558: <==commonly_known== 10588 (pos)
                    (Ba_checked_p6)

                    ; #13409: <==uncertain_firing== 16862 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #19060: <==negation-removal== 69558 (pos)
                    (not (Pa_not_checked_p6))

                    ; #20277: <==negation-removal== 16862 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #23663: <==uncertain_firing== 50182 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #26446: <==negation-removal== 35591 (pos)
                    (not (Bc_not_checked_p6))

                    ; #27189: <==negation-removal== 19380 (pos)
                    (not (Bb_not_checked_p6))

                    ; #38198: <==negation-removal== 50182 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #38774: <==negation-removal== 29991 (pos)
                    (not (Pb_not_checked_p6))

                    ; #43930: <==uncertain_firing== 52294 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #47343: <==uncertain_firing== 32628 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #53089: <==negation-removal== 52294 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #63026: <==negation-removal== 58845 (pos)
                    (not (Pc_not_checked_p6))

                    ; #78015: <==negation-removal== 10588 (pos)
                    (not (not_checked_p6))

                    ; #80568: <==negation-removal== 28938 (pos)
                    (not (Ba_not_checked_p6))

                    ; #89227: <==negation-removal== 32628 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #22424: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #35518: <==commonly_known== 42007 (neg)
                    (Pc_checked_p7)

                    ; #36777: <==commonly_known== 38972 (pos)
                    (Ba_checked_p7)

                    ; #38972: origin
                    (checked_p7)

                    ; #48551: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #58744: <==closure== 48551 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #63093: <==commonly_known== 42007 (neg)
                    (Pa_checked_p7)

                    ; #73530: <==commonly_known== 38972 (pos)
                    (Bb_checked_p7)

                    ; #75224: <==commonly_known== 38972 (pos)
                    (Bc_checked_p7)

                    ; #77744: <==closure== 22424 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #78213: <==commonly_known== 42007 (neg)
                    (Pb_checked_p7)

                    ; #10640: <==negation-removal== 75224 (pos)
                    (not (Pc_not_checked_p7))

                    ; #20028: <==negation-removal== 73530 (pos)
                    (not (Pb_not_checked_p7))

                    ; #33661: <==negation-removal== 22424 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #35012: <==negation-removal== 35518 (pos)
                    (not (Bc_not_checked_p7))

                    ; #36696: <==negation-removal== 78213 (pos)
                    (not (Bb_not_checked_p7))

                    ; #41477: <==negation-removal== 63093 (pos)
                    (not (Ba_not_checked_p7))

                    ; #42007: <==negation-removal== 38972 (pos)
                    (not (not_checked_p7))

                    ; #51517: <==uncertain_firing== 58744 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #53068: <==uncertain_firing== 48551 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #54128: <==negation-removal== 48551 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #60464: <==negation-removal== 58744 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #63363: <==uncertain_firing== 77744 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #66529: <==negation-removal== 36777 (pos)
                    (not (Pa_not_checked_p7))

                    ; #71721: <==uncertain_firing== 22424 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #91543: <==negation-removal== 77744 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #17925: <==closure== 26793 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #22562: origin
                    (checked_p8)

                    ; #23908: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #26793: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #52418: <==commonly_known== 35808 (neg)
                    (Pa_checked_p8)

                    ; #58049: <==commonly_known== 22562 (pos)
                    (Ba_checked_p8)

                    ; #58697: <==commonly_known== 35808 (neg)
                    (Pc_checked_p8)

                    ; #61662: <==commonly_known== 35808 (neg)
                    (Pb_checked_p8)

                    ; #70456: <==closure== 23908 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #81856: <==commonly_known== 22562 (pos)
                    (Bb_checked_p8)

                    ; #91066: <==commonly_known== 22562 (pos)
                    (Bc_checked_p8)

                    ; #16235: <==uncertain_firing== 17925 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #17402: <==negation-removal== 58697 (pos)
                    (not (Bc_not_checked_p8))

                    ; #25873: <==negation-removal== 52418 (pos)
                    (not (Ba_not_checked_p8))

                    ; #29348: <==negation-removal== 58049 (pos)
                    (not (Pa_not_checked_p8))

                    ; #35808: <==negation-removal== 22562 (pos)
                    (not (not_checked_p8))

                    ; #43720: <==negation-removal== 81856 (pos)
                    (not (Pb_not_checked_p8))

                    ; #47228: <==negation-removal== 70456 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #59914: <==negation-removal== 91066 (pos)
                    (not (Pc_not_checked_p8))

                    ; #68652: <==uncertain_firing== 70456 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #72705: <==negation-removal== 17925 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #75300: <==negation-removal== 61662 (pos)
                    (not (Bb_not_checked_p8))

                    ; #75873: <==negation-removal== 23908 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #80834: <==negation-removal== 26793 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #86312: <==uncertain_firing== 26793 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #86976: <==uncertain_firing== 23908 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #10555: <==commonly_known== 18681 (pos)
                    (Bb_checked_p9)

                    ; #18681: origin
                    (checked_p9)

                    ; #18843: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #25720: <==commonly_known== 46528 (neg)
                    (Pc_checked_p9)

                    ; #29356: <==closure== 48784 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #38679: <==commonly_known== 46528 (neg)
                    (Pa_checked_p9)

                    ; #41073: <==commonly_known== 18681 (pos)
                    (Bc_checked_p9)

                    ; #41361: <==commonly_known== 18681 (pos)
                    (Ba_checked_p9)

                    ; #43086: <==commonly_known== 46528 (neg)
                    (Pb_checked_p9)

                    ; #48784: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #76516: <==closure== 18843 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #19413: <==negation-removal== 18843 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #20634: <==negation-removal== 43086 (pos)
                    (not (Bb_not_checked_p9))

                    ; #23883: <==negation-removal== 10555 (pos)
                    (not (Pb_not_checked_p9))

                    ; #45302: <==negation-removal== 76516 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #46528: <==negation-removal== 18681 (pos)
                    (not (not_checked_p9))

                    ; #54993: <==negation-removal== 25720 (pos)
                    (not (Bc_not_checked_p9))

                    ; #56251: <==negation-removal== 38679 (pos)
                    (not (Ba_not_checked_p9))

                    ; #59341: <==negation-removal== 48784 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #64572: <==uncertain_firing== 76516 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #67809: <==negation-removal== 41361 (pos)
                    (not (Pa_not_checked_p9))

                    ; #73169: <==uncertain_firing== 48784 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #82336: <==uncertain_firing== 29356 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #85163: <==negation-removal== 41073 (pos)
                    (not (Pc_not_checked_p9))

                    ; #88832: <==uncertain_firing== 18843 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #91935: <==negation-removal== 29356 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action observe_c_p10_s
        :precondition (and (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #15264: <==commonly_known== 68959 (neg)
                    (Pb_checked_p10)

                    ; #25000: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #27704: <==closure== 84588 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #29200: <==commonly_known== 65962 (pos)
                    (Bb_checked_p10)

                    ; #32351: <==commonly_known== 65962 (pos)
                    (Ba_checked_p10)

                    ; #65962: origin
                    (checked_p10)

                    ; #84588: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #86706: <==closure== 25000 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #87128: <==commonly_known== 68959 (neg)
                    (Pc_checked_p10)

                    ; #89094: <==commonly_known== 68959 (neg)
                    (Pa_checked_p10)

                    ; #92026: <==commonly_known== 65962 (pos)
                    (Bc_checked_p10)

                    ; #16195: <==negation-removal== 25000 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #22540: <==negation-removal== 84588 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #27226: <==negation-removal== 92026 (pos)
                    (not (Pc_not_checked_p10))

                    ; #27838: <==negation-removal== 32351 (pos)
                    (not (Pa_not_checked_p10))

                    ; #31789: <==negation-removal== 89094 (pos)
                    (not (Ba_not_checked_p10))

                    ; #43904: <==uncertain_firing== 86706 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #46978: <==negation-removal== 87128 (pos)
                    (not (Bc_not_checked_p10))

                    ; #47091: <==negation-removal== 29200 (pos)
                    (not (Pb_not_checked_p10))

                    ; #54360: <==negation-removal== 86706 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #57101: <==uncertain_firing== 25000 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #57491: <==uncertain_firing== 84588 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #68746: <==negation-removal== 27704 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #68959: <==negation-removal== 65962 (pos)
                    (not (not_checked_p10))

                    ; #72618: <==negation-removal== 15264 (pos)
                    (not (Bb_not_checked_p10))

                    ; #86949: <==uncertain_firing== 27704 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))))

    (:action observe_c_p11_s
        :precondition (and (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #14371: <==commonly_known== 56239 (pos)
                    (Bb_checked_p11)

                    ; #15809: <==commonly_known== 56239 (pos)
                    (Ba_checked_p11)

                    ; #24677: <==closure== 29374 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #29374: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #47786: <==commonly_known== 88638 (neg)
                    (Pa_checked_p11)

                    ; #53415: <==commonly_known== 88638 (neg)
                    (Pc_checked_p11)

                    ; #56239: origin
                    (checked_p11)

                    ; #58624: <==commonly_known== 56239 (pos)
                    (Bc_checked_p11)

                    ; #61822: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #83796: <==commonly_known== 88638 (neg)
                    (Pb_checked_p11)

                    ; #99484: <==closure== 61822 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #14861: <==negation-removal== 14371 (pos)
                    (not (Pb_not_checked_p11))

                    ; #25205: <==negation-removal== 61822 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #31823: <==negation-removal== 15809 (pos)
                    (not (Pa_not_checked_p11))

                    ; #35290: <==uncertain_firing== 99484 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #35418: <==negation-removal== 53415 (pos)
                    (not (Bc_not_checked_p11))

                    ; #50146: <==negation-removal== 47786 (pos)
                    (not (Ba_not_checked_p11))

                    ; #55091: <==negation-removal== 29374 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #56269: <==uncertain_firing== 24677 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #58925: <==uncertain_firing== 61822 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #66947: <==negation-removal== 58624 (pos)
                    (not (Pc_not_checked_p11))

                    ; #68931: <==negation-removal== 99484 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #70716: <==negation-removal== 83796 (pos)
                    (not (Bb_not_checked_p11))

                    ; #81873: <==uncertain_firing== 29374 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #88638: <==negation-removal== 56239 (pos)
                    (not (not_checked_p11))

                    ; #89819: <==negation-removal== 24677 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))))

    (:action observe_c_p12_s
        :precondition (and (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #11539: <==commonly_known== 76850 (neg)
                    (Pc_checked_p12)

                    ; #13071: <==commonly_known== 89554 (pos)
                    (Bc_checked_p12)

                    ; #15361: <==commonly_known== 76850 (neg)
                    (Pa_checked_p12)

                    ; #30370: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #35049: <==commonly_known== 89554 (pos)
                    (Ba_checked_p12)

                    ; #51502: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #57262: <==closure== 30370 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #75405: <==commonly_known== 89554 (pos)
                    (Bb_checked_p12)

                    ; #85117: <==commonly_known== 76850 (neg)
                    (Pb_checked_p12)

                    ; #89368: <==closure== 51502 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #89554: origin
                    (checked_p12)

                    ; #10629: <==negation-removal== 51502 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #11354: <==negation-removal== 85117 (pos)
                    (not (Bb_not_checked_p12))

                    ; #19738: <==negation-removal== 30370 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #25989: <==negation-removal== 13071 (pos)
                    (not (Pc_not_checked_p12))

                    ; #31489: <==uncertain_firing== 57262 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #32959: <==negation-removal== 89368 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #43253: <==negation-removal== 35049 (pos)
                    (not (Pa_not_checked_p12))

                    ; #48511: <==negation-removal== 11539 (pos)
                    (not (Bc_not_checked_p12))

                    ; #53738: <==negation-removal== 15361 (pos)
                    (not (Ba_not_checked_p12))

                    ; #57226: <==uncertain_firing== 51502 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #60388: <==negation-removal== 57262 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #62653: <==uncertain_firing== 89368 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #66791: <==uncertain_firing== 30370 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #76850: <==negation-removal== 89554 (pos)
                    (not (not_checked_p12))

                    ; #78808: <==negation-removal== 75405 (pos)
                    (not (Pb_not_checked_p12))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #13295: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #19851: origin
                    (checked_p1)

                    ; #21998: <==commonly_known== 19851 (pos)
                    (Bb_checked_p1)

                    ; #25160: <==commonly_known== 29056 (neg)
                    (Pb_checked_p1)

                    ; #37099: <==commonly_known== 19851 (pos)
                    (Bc_checked_p1)

                    ; #54550: <==commonly_known== 29056 (neg)
                    (Pc_checked_p1)

                    ; #65534: <==commonly_known== 19851 (pos)
                    (Ba_checked_p1)

                    ; #68872: <==closure== 73809 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #73809: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #76042: <==closure== 13295 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #83429: <==commonly_known== 29056 (neg)
                    (Pa_checked_p1)

                    ; #24186: <==uncertain_firing== 13295 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #29056: <==negation-removal== 19851 (pos)
                    (not (not_checked_p1))

                    ; #50715: <==negation-removal== 13295 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #55876: <==negation-removal== 54550 (pos)
                    (not (Bc_not_checked_p1))

                    ; #57505: <==uncertain_firing== 68872 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #59067: <==negation-removal== 21998 (pos)
                    (not (Pb_not_checked_p1))

                    ; #60836: <==negation-removal== 65534 (pos)
                    (not (Pa_not_checked_p1))

                    ; #62578: <==negation-removal== 37099 (pos)
                    (not (Pc_not_checked_p1))

                    ; #77622: <==negation-removal== 76042 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #81050: <==negation-removal== 68872 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #82389: <==uncertain_firing== 76042 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #82763: <==negation-removal== 25160 (pos)
                    (not (Bb_not_checked_p1))

                    ; #86192: <==uncertain_firing== 73809 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #86615: <==negation-removal== 73809 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #88625: <==negation-removal== 83429 (pos)
                    (not (Ba_not_checked_p1))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #12791: <==closure== 14144 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #14144: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #37013: origin
                    (checked_p2)

                    ; #37386: <==commonly_known== 37013 (pos)
                    (Bb_checked_p2)

                    ; #41942: <==commonly_known== 53844 (neg)
                    (Pb_checked_p2)

                    ; #49154: <==commonly_known== 53844 (neg)
                    (Pa_checked_p2)

                    ; #54353: <==commonly_known== 37013 (pos)
                    (Bc_checked_p2)

                    ; #58843: <==closure== 81090 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #66868: <==commonly_known== 37013 (pos)
                    (Ba_checked_p2)

                    ; #75645: <==commonly_known== 53844 (neg)
                    (Pc_checked_p2)

                    ; #81090: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #12555: <==negation-removal== 49154 (pos)
                    (not (Ba_not_checked_p2))

                    ; #16450: <==negation-removal== 41942 (pos)
                    (not (Bb_not_checked_p2))

                    ; #23874: <==uncertain_firing== 58843 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #37633: <==negation-removal== 75645 (pos)
                    (not (Bc_not_checked_p2))

                    ; #43195: <==negation-removal== 14144 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #49171: <==negation-removal== 58843 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #49264: <==negation-removal== 37386 (pos)
                    (not (Pb_not_checked_p2))

                    ; #53844: <==negation-removal== 37013 (pos)
                    (not (not_checked_p2))

                    ; #56672: <==uncertain_firing== 14144 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #61332: <==negation-removal== 81090 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #62765: <==negation-removal== 54353 (pos)
                    (not (Pc_not_checked_p2))

                    ; #75485: <==negation-removal== 12791 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #80236: <==uncertain_firing== 81090 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #80630: <==negation-removal== 66868 (pos)
                    (not (Pa_not_checked_p2))

                    ; #81953: <==uncertain_firing== 12791 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #21483: <==closure== 62757 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #34817: <==commonly_known== 49274 (neg)
                    (Pb_checked_p3)

                    ; #38135: <==commonly_known== 49274 (neg)
                    (Pa_checked_p3)

                    ; #51056: origin
                    (checked_p3)

                    ; #55925: <==closure== 76501 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #62390: <==commonly_known== 51056 (pos)
                    (Ba_checked_p3)

                    ; #62757: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #70060: <==commonly_known== 51056 (pos)
                    (Bb_checked_p3)

                    ; #76501: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #84205: <==commonly_known== 49274 (neg)
                    (Pc_checked_p3)

                    ; #88282: <==commonly_known== 51056 (pos)
                    (Bc_checked_p3)

                    ; #16920: <==negation-removal== 62390 (pos)
                    (not (Pa_not_checked_p3))

                    ; #19227: <==uncertain_firing== 21483 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #42666: <==negation-removal== 55925 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #44351: <==negation-removal== 21483 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #49274: <==negation-removal== 51056 (pos)
                    (not (not_checked_p3))

                    ; #54652: <==negation-removal== 38135 (pos)
                    (not (Ba_not_checked_p3))

                    ; #57865: <==negation-removal== 84205 (pos)
                    (not (Bc_not_checked_p3))

                    ; #64240: <==uncertain_firing== 55925 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #67739: <==negation-removal== 62757 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #72414: <==negation-removal== 70060 (pos)
                    (not (Pb_not_checked_p3))

                    ; #74909: <==negation-removal== 34817 (pos)
                    (not (Bb_not_checked_p3))

                    ; #76110: <==uncertain_firing== 62757 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #81737: <==negation-removal== 76501 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #83425: <==uncertain_firing== 76501 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #84284: <==negation-removal== 88282 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #11025: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #33302: <==commonly_known== 81849 (neg)
                    (Pb_checked_p4)

                    ; #49953: <==commonly_known== 85135 (pos)
                    (Bb_checked_p4)

                    ; #54626: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #64590: <==commonly_known== 81849 (neg)
                    (Pa_checked_p4)

                    ; #74572: <==commonly_known== 81849 (neg)
                    (Pc_checked_p4)

                    ; #80944: <==commonly_known== 85135 (pos)
                    (Ba_checked_p4)

                    ; #85135: origin
                    (checked_p4)

                    ; #85943: <==commonly_known== 85135 (pos)
                    (Bc_checked_p4)

                    ; #87942: <==closure== 11025 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #90415: <==closure== 54626 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #13694: <==negation-removal== 64590 (pos)
                    (not (Ba_not_checked_p4))

                    ; #19847: <==negation-removal== 54626 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #21327: <==negation-removal== 85943 (pos)
                    (not (Pc_not_checked_p4))

                    ; #22956: <==negation-removal== 74572 (pos)
                    (not (Bc_not_checked_p4))

                    ; #45481: <==negation-removal== 11025 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #50624: <==uncertain_firing== 87942 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #57314: <==negation-removal== 49953 (pos)
                    (not (Pb_not_checked_p4))

                    ; #65635: <==uncertain_firing== 11025 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #68004: <==negation-removal== 87942 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #79911: <==uncertain_firing== 54626 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #80207: <==uncertain_firing== 90415 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #81315: <==negation-removal== 80944 (pos)
                    (not (Pa_not_checked_p4))

                    ; #81849: <==negation-removal== 85135 (pos)
                    (not (not_checked_p4))

                    ; #90414: <==negation-removal== 33302 (pos)
                    (not (Bb_not_checked_p4))

                    ; #91013: <==negation-removal== 90415 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #16577: <==closure== 28518 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #28106: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #28518: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #30197: <==commonly_known== 30651 (pos)
                    (Ba_checked_p5)

                    ; #30651: origin
                    (checked_p5)

                    ; #37116: <==commonly_known== 83872 (neg)
                    (Pb_checked_p5)

                    ; #56034: <==commonly_known== 83872 (neg)
                    (Pc_checked_p5)

                    ; #63930: <==commonly_known== 30651 (pos)
                    (Bb_checked_p5)

                    ; #74834: <==commonly_known== 30651 (pos)
                    (Bc_checked_p5)

                    ; #77150: <==closure== 28106 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #85690: <==commonly_known== 83872 (neg)
                    (Pa_checked_p5)

                    ; #21359: <==negation-removal== 16577 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #25429: <==negation-removal== 37116 (pos)
                    (not (Bb_not_checked_p5))

                    ; #27002: <==negation-removal== 28518 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #30287: <==negation-removal== 28106 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #30964: <==uncertain_firing== 16577 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #31588: <==negation-removal== 85690 (pos)
                    (not (Ba_not_checked_p5))

                    ; #32598: <==negation-removal== 30197 (pos)
                    (not (Pa_not_checked_p5))

                    ; #46693: <==negation-removal== 77150 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #51699: <==negation-removal== 63930 (pos)
                    (not (Pb_not_checked_p5))

                    ; #54204: <==uncertain_firing== 77150 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #66212: <==negation-removal== 74834 (pos)
                    (not (Pc_not_checked_p5))

                    ; #74571: <==uncertain_firing== 28106 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #76894: <==uncertain_firing== 28518 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #83872: <==negation-removal== 30651 (pos)
                    (not (not_checked_p5))

                    ; #90139: <==negation-removal== 56034 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #10588: origin
                    (checked_p6)

                    ; #19380: <==commonly_known== 78015 (neg)
                    (Pb_checked_p6)

                    ; #28938: <==commonly_known== 78015 (neg)
                    (Pa_checked_p6)

                    ; #29991: <==commonly_known== 10588 (pos)
                    (Bb_checked_p6)

                    ; #35591: <==commonly_known== 78015 (neg)
                    (Pc_checked_p6)

                    ; #39951: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #58845: <==commonly_known== 10588 (pos)
                    (Bc_checked_p6)

                    ; #69558: <==commonly_known== 10588 (pos)
                    (Ba_checked_p6)

                    ; #80129: <==closure== 86964 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #84593: <==closure== 39951 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #86964: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #17905: <==negation-removal== 86964 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #19060: <==negation-removal== 69558 (pos)
                    (not (Pa_not_checked_p6))

                    ; #22521: <==uncertain_firing== 84593 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #26446: <==negation-removal== 35591 (pos)
                    (not (Bc_not_checked_p6))

                    ; #27189: <==negation-removal== 19380 (pos)
                    (not (Bb_not_checked_p6))

                    ; #38774: <==negation-removal== 29991 (pos)
                    (not (Pb_not_checked_p6))

                    ; #42833: <==uncertain_firing== 80129 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #51620: <==negation-removal== 39951 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #63026: <==negation-removal== 58845 (pos)
                    (not (Pc_not_checked_p6))

                    ; #78015: <==negation-removal== 10588 (pos)
                    (not (not_checked_p6))

                    ; #80517: <==negation-removal== 84593 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #80568: <==negation-removal== 28938 (pos)
                    (not (Ba_not_checked_p6))

                    ; #83603: <==uncertain_firing== 86964 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #86624: <==uncertain_firing== 39951 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #90181: <==negation-removal== 80129 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #19249: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #34403: <==closure== 19249 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #35518: <==commonly_known== 42007 (neg)
                    (Pc_checked_p7)

                    ; #36777: <==commonly_known== 38972 (pos)
                    (Ba_checked_p7)

                    ; #38972: origin
                    (checked_p7)

                    ; #63093: <==commonly_known== 42007 (neg)
                    (Pa_checked_p7)

                    ; #73530: <==commonly_known== 38972 (pos)
                    (Bb_checked_p7)

                    ; #75224: <==commonly_known== 38972 (pos)
                    (Bc_checked_p7)

                    ; #76059: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #78213: <==commonly_known== 42007 (neg)
                    (Pb_checked_p7)

                    ; #99165: <==closure== 76059 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #10640: <==negation-removal== 75224 (pos)
                    (not (Pc_not_checked_p7))

                    ; #14820: <==negation-removal== 19249 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #14950: <==uncertain_firing== 99165 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #18459: <==uncertain_firing== 19249 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #20028: <==negation-removal== 73530 (pos)
                    (not (Pb_not_checked_p7))

                    ; #28728: <==negation-removal== 34403 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #30210: <==uncertain_firing== 76059 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #35012: <==negation-removal== 35518 (pos)
                    (not (Bc_not_checked_p7))

                    ; #36696: <==negation-removal== 78213 (pos)
                    (not (Bb_not_checked_p7))

                    ; #41477: <==negation-removal== 63093 (pos)
                    (not (Ba_not_checked_p7))

                    ; #42007: <==negation-removal== 38972 (pos)
                    (not (not_checked_p7))

                    ; #42717: <==negation-removal== 99165 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #59518: <==uncertain_firing== 34403 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #66529: <==negation-removal== 36777 (pos)
                    (not (Pa_not_checked_p7))

                    ; #85792: <==negation-removal== 76059 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #12282: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #22562: origin
                    (checked_p8)

                    ; #47708: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #49277: <==closure== 12282 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #52418: <==commonly_known== 35808 (neg)
                    (Pa_checked_p8)

                    ; #58049: <==commonly_known== 22562 (pos)
                    (Ba_checked_p8)

                    ; #58697: <==commonly_known== 35808 (neg)
                    (Pc_checked_p8)

                    ; #61662: <==commonly_known== 35808 (neg)
                    (Pb_checked_p8)

                    ; #81856: <==commonly_known== 22562 (pos)
                    (Bb_checked_p8)

                    ; #87118: <==closure== 47708 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #91066: <==commonly_known== 22562 (pos)
                    (Bc_checked_p8)

                    ; #13954: <==uncertain_firing== 12282 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #16791: <==negation-removal== 47708 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #17402: <==negation-removal== 58697 (pos)
                    (not (Bc_not_checked_p8))

                    ; #25873: <==negation-removal== 52418 (pos)
                    (not (Ba_not_checked_p8))

                    ; #26504: <==negation-removal== 12282 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #29348: <==negation-removal== 58049 (pos)
                    (not (Pa_not_checked_p8))

                    ; #35808: <==negation-removal== 22562 (pos)
                    (not (not_checked_p8))

                    ; #38346: <==negation-removal== 49277 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #43720: <==negation-removal== 81856 (pos)
                    (not (Pb_not_checked_p8))

                    ; #59914: <==negation-removal== 91066 (pos)
                    (not (Pc_not_checked_p8))

                    ; #66254: <==uncertain_firing== 49277 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #74357: <==uncertain_firing== 47708 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #75300: <==negation-removal== 61662 (pos)
                    (not (Bb_not_checked_p8))

                    ; #76808: <==uncertain_firing== 87118 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #85051: <==negation-removal== 87118 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #10555: <==commonly_known== 18681 (pos)
                    (Bb_checked_p9)

                    ; #18681: origin
                    (checked_p9)

                    ; #21814: <==closure== 44589 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #25720: <==commonly_known== 46528 (neg)
                    (Pc_checked_p9)

                    ; #25989: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #38679: <==commonly_known== 46528 (neg)
                    (Pa_checked_p9)

                    ; #39305: <==closure== 25989 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #41073: <==commonly_known== 18681 (pos)
                    (Bc_checked_p9)

                    ; #41361: <==commonly_known== 18681 (pos)
                    (Ba_checked_p9)

                    ; #43086: <==commonly_known== 46528 (neg)
                    (Pb_checked_p9)

                    ; #44589: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #13352: <==uncertain_firing== 25989 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #20634: <==negation-removal== 43086 (pos)
                    (not (Bb_not_checked_p9))

                    ; #23883: <==negation-removal== 10555 (pos)
                    (not (Pb_not_checked_p9))

                    ; #24274: <==negation-removal== 39305 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #26199: <==uncertain_firing== 21814 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #42719: <==negation-removal== 44589 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #46528: <==negation-removal== 18681 (pos)
                    (not (not_checked_p9))

                    ; #54993: <==negation-removal== 25720 (pos)
                    (not (Bc_not_checked_p9))

                    ; #56251: <==negation-removal== 38679 (pos)
                    (not (Ba_not_checked_p9))

                    ; #60088: <==uncertain_firing== 39305 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #65857: <==negation-removal== 21814 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #67809: <==negation-removal== 41361 (pos)
                    (not (Pa_not_checked_p9))

                    ; #81014: <==negation-removal== 25989 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #85163: <==negation-removal== 41073 (pos)
                    (not (Pc_not_checked_p9))

                    ; #90903: <==uncertain_firing== 44589 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))))

)