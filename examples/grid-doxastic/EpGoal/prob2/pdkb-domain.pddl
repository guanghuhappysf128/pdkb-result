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

    (:action badcomm_p10_a_s
        :precondition (and (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #27067: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #34691: <==closure== 27067 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #39339: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #40916: <==closure== 64764 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #64764: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #69331: <==closure== 39339 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #20391: <==negation-removal== 69331 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #42097: <==negation-removal== 64764 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #44428: <==uncertain_firing== 40916 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #45249: <==negation-removal== 39339 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #46062: <==negation-removal== 40916 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #49351: <==uncertain_firing== 27067 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #54642: <==negation-removal== 34691 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #66495: <==negation-removal== 27067 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #71781: <==uncertain_firing== 64764 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #75009: <==uncertain_firing== 34691 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #78163: <==uncertain_firing== 39339 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #90924: <==uncertain_firing== 69331 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))))

    (:action badcomm_p10_b_s
        :precondition (and (at_b_p10)
                           (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #27067: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #34691: <==closure== 27067 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #39339: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #40916: <==closure== 64764 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #64764: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #69331: <==closure== 39339 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #20391: <==negation-removal== 69331 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #42097: <==negation-removal== 64764 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #44428: <==uncertain_firing== 40916 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #45249: <==negation-removal== 39339 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #46062: <==negation-removal== 40916 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #49351: <==uncertain_firing== 27067 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #54642: <==negation-removal== 34691 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #66495: <==negation-removal== 27067 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #71781: <==uncertain_firing== 64764 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #75009: <==uncertain_firing== 34691 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #78163: <==uncertain_firing== 39339 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #90924: <==uncertain_firing== 69331 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))))

    (:action badcomm_p10_c_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #27067: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #34691: <==closure== 27067 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #39339: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #40916: <==closure== 64764 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #64764: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #69331: <==closure== 39339 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #20391: <==negation-removal== 69331 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #42097: <==negation-removal== 64764 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #44428: <==uncertain_firing== 40916 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #45249: <==negation-removal== 39339 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #46062: <==negation-removal== 40916 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #49351: <==uncertain_firing== 27067 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #54642: <==negation-removal== 34691 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #66495: <==negation-removal== 27067 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #71781: <==uncertain_firing== 64764 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #75009: <==uncertain_firing== 34691 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #78163: <==uncertain_firing== 39339 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #90924: <==uncertain_firing== 69331 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))))

    (:action badcomm_p11_a_s
        :precondition (and (Pa_survivorat_s_p11)
                           (at_a_p11)
                           (Ba_survivorat_s_p11))
        :effect (and
                    ; #17029: <==closure== 87510 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #22827: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #28267: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #32453: <==closure== 22827 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #78402: <==closure== 28267 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #87510: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #14029: <==uncertain_firing== 17029 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #30590: <==uncertain_firing== 78402 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #32963: <==negation-removal== 22827 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #35575: <==negation-removal== 87510 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #50637: <==negation-removal== 32453 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #56958: <==uncertain_firing== 87510 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #58672: <==uncertain_firing== 28267 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #59302: <==uncertain_firing== 32453 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #70610: <==negation-removal== 78402 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #72107: <==negation-removal== 17029 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #78740: <==negation-removal== 28267 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #90501: <==uncertain_firing== 22827 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))))

    (:action badcomm_p11_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #17029: <==closure== 87510 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #22827: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #28267: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #32453: <==closure== 22827 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #78402: <==closure== 28267 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #87510: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #14029: <==uncertain_firing== 17029 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #30590: <==uncertain_firing== 78402 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #32963: <==negation-removal== 22827 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #35575: <==negation-removal== 87510 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #50637: <==negation-removal== 32453 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #56958: <==uncertain_firing== 87510 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #58672: <==uncertain_firing== 28267 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #59302: <==uncertain_firing== 32453 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #70610: <==negation-removal== 78402 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #72107: <==negation-removal== 17029 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #78740: <==negation-removal== 28267 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #90501: <==uncertain_firing== 22827 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))))

    (:action badcomm_p11_c_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #17029: <==closure== 87510 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #22827: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #28267: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #32453: <==closure== 22827 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #78402: <==closure== 28267 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #87510: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #14029: <==uncertain_firing== 17029 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #30590: <==uncertain_firing== 78402 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #32963: <==negation-removal== 22827 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #35575: <==negation-removal== 87510 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #50637: <==negation-removal== 32453 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #56958: <==uncertain_firing== 87510 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #58672: <==uncertain_firing== 28267 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #59302: <==uncertain_firing== 32453 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #70610: <==negation-removal== 78402 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #72107: <==negation-removal== 17029 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #78740: <==negation-removal== 28267 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #90501: <==uncertain_firing== 22827 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))))

    (:action badcomm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #43139: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #48221: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #48873: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #72823: <==closure== 48873 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #76385: <==closure== 43139 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #77547: <==closure== 48221 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #23674: <==uncertain_firing== 77547 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #32370: <==uncertain_firing== 72823 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #34190: <==uncertain_firing== 48221 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #40932: <==negation-removal== 48221 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #49028: <==uncertain_firing== 43139 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #49206: <==negation-removal== 43139 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #63989: <==negation-removal== 76385 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #65209: <==uncertain_firing== 48873 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #72434: <==negation-removal== 48873 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #74647: <==negation-removal== 72823 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #80092: <==uncertain_firing== 76385 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #85298: <==negation-removal== 77547 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))))

    (:action badcomm_p12_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #43139: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #48221: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #48873: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #72823: <==closure== 48873 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #76385: <==closure== 43139 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #77547: <==closure== 48221 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #23674: <==uncertain_firing== 77547 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #32370: <==uncertain_firing== 72823 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #34190: <==uncertain_firing== 48221 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #40932: <==negation-removal== 48221 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #49028: <==uncertain_firing== 43139 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #49206: <==negation-removal== 43139 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #63989: <==negation-removal== 76385 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #65209: <==uncertain_firing== 48873 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #72434: <==negation-removal== 48873 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #74647: <==negation-removal== 72823 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #80092: <==uncertain_firing== 76385 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #85298: <==negation-removal== 77547 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))))

    (:action badcomm_p12_c_s
        :precondition (and (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #43139: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #48221: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #48873: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #72823: <==closure== 48873 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #76385: <==closure== 43139 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #77547: <==closure== 48221 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #23674: <==uncertain_firing== 77547 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #32370: <==uncertain_firing== 72823 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #34190: <==uncertain_firing== 48221 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #40932: <==negation-removal== 48221 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #49028: <==uncertain_firing== 43139 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #49206: <==negation-removal== 43139 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #63989: <==negation-removal== 76385 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #65209: <==uncertain_firing== 48873 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #72434: <==negation-removal== 48873 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #74647: <==negation-removal== 72823 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #80092: <==uncertain_firing== 76385 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #85298: <==negation-removal== 77547 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))))

    (:action badcomm_p1_a_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #18686: <==closure== 71342 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #35934: <==closure== 40666 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #40666: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #42748: <==closure== 78216 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #71342: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #78216: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #12149: <==uncertain_firing== 78216 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #18360: <==uncertain_firing== 42748 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #27525: <==negation-removal== 18686 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #32676: <==negation-removal== 35934 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #44159: <==uncertain_firing== 40666 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #52732: <==uncertain_firing== 35934 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #57289: <==uncertain_firing== 71342 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #77688: <==negation-removal== 42748 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #82356: <==negation-removal== 40666 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #86734: <==uncertain_firing== 18686 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #91698: <==negation-removal== 71342 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #91960: <==negation-removal== 78216 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #18686: <==closure== 71342 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #35934: <==closure== 40666 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #40666: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #42748: <==closure== 78216 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #71342: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #78216: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #12149: <==uncertain_firing== 78216 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #18360: <==uncertain_firing== 42748 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #27525: <==negation-removal== 18686 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #32676: <==negation-removal== 35934 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #44159: <==uncertain_firing== 40666 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #52732: <==uncertain_firing== 35934 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #57289: <==uncertain_firing== 71342 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #77688: <==negation-removal== 42748 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #82356: <==negation-removal== 40666 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #86734: <==uncertain_firing== 18686 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #91698: <==negation-removal== 71342 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #91960: <==negation-removal== 78216 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #18686: <==closure== 71342 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #35934: <==closure== 40666 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #40666: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #42748: <==closure== 78216 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #71342: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #78216: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #12149: <==uncertain_firing== 78216 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #18360: <==uncertain_firing== 42748 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #27525: <==negation-removal== 18686 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #32676: <==negation-removal== 35934 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #44159: <==uncertain_firing== 40666 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #52732: <==uncertain_firing== 35934 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #57289: <==uncertain_firing== 71342 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #77688: <==negation-removal== 42748 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #82356: <==negation-removal== 40666 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #86734: <==uncertain_firing== 18686 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #91698: <==negation-removal== 71342 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #91960: <==negation-removal== 78216 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #22002: <==closure== 70596 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #35706: <==closure== 81727 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #53186: <==closure== 84923 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #70596: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #81727: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #84923: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #10211: <==negation-removal== 53186 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #32564: <==negation-removal== 84923 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #35200: <==uncertain_firing== 53186 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #57562: <==negation-removal== 70596 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #57897: <==negation-removal== 81727 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #61971: <==uncertain_firing== 84923 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #64179: <==negation-removal== 35706 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #64520: <==negation-removal== 22002 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #67513: <==uncertain_firing== 22002 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #72261: <==uncertain_firing== 35706 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #80843: <==uncertain_firing== 81727 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #85557: <==uncertain_firing== 70596 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #22002: <==closure== 70596 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #35706: <==closure== 81727 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #53186: <==closure== 84923 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #70596: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #81727: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #84923: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #10211: <==negation-removal== 53186 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #32564: <==negation-removal== 84923 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #35200: <==uncertain_firing== 53186 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #57562: <==negation-removal== 70596 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #57897: <==negation-removal== 81727 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #61971: <==uncertain_firing== 84923 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #64179: <==negation-removal== 35706 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #64520: <==negation-removal== 22002 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #67513: <==uncertain_firing== 22002 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #72261: <==uncertain_firing== 35706 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #80843: <==uncertain_firing== 81727 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #85557: <==uncertain_firing== 70596 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #22002: <==closure== 70596 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #35706: <==closure== 81727 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #53186: <==closure== 84923 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #70596: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #81727: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #84923: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #10211: <==negation-removal== 53186 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #32564: <==negation-removal== 84923 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #35200: <==uncertain_firing== 53186 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #57562: <==negation-removal== 70596 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #57897: <==negation-removal== 81727 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #61971: <==uncertain_firing== 84923 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #64179: <==negation-removal== 35706 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #64520: <==negation-removal== 22002 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #67513: <==uncertain_firing== 22002 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #72261: <==uncertain_firing== 35706 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #80843: <==uncertain_firing== 81727 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #85557: <==uncertain_firing== 70596 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #21988: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #48085: <==closure== 64231 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #64231: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #73157: <==closure== 80338 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #79829: <==closure== 21988 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #80338: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #12917: <==uncertain_firing== 48085 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #13546: <==negation-removal== 73157 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #17281: <==negation-removal== 64231 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #19922: <==uncertain_firing== 21988 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #33661: <==negation-removal== 80338 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #44895: <==uncertain_firing== 73157 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #51204: <==negation-removal== 48085 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #55531: <==negation-removal== 79829 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #63171: <==uncertain_firing== 64231 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #67670: <==uncertain_firing== 79829 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #79931: <==uncertain_firing== 80338 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #82798: <==negation-removal== 21988 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #21988: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #48085: <==closure== 64231 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #64231: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #73157: <==closure== 80338 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #79829: <==closure== 21988 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #80338: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #12917: <==uncertain_firing== 48085 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #13546: <==negation-removal== 73157 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #17281: <==negation-removal== 64231 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #19922: <==uncertain_firing== 21988 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #33661: <==negation-removal== 80338 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #44895: <==uncertain_firing== 73157 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #51204: <==negation-removal== 48085 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #55531: <==negation-removal== 79829 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #63171: <==uncertain_firing== 64231 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #67670: <==uncertain_firing== 79829 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #79931: <==uncertain_firing== 80338 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #82798: <==negation-removal== 21988 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #21988: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #48085: <==closure== 64231 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #64231: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #73157: <==closure== 80338 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #79829: <==closure== 21988 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #80338: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #12917: <==uncertain_firing== 48085 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #13546: <==negation-removal== 73157 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #17281: <==negation-removal== 64231 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #19922: <==uncertain_firing== 21988 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #33661: <==negation-removal== 80338 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #44895: <==uncertain_firing== 73157 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #51204: <==negation-removal== 48085 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #55531: <==negation-removal== 79829 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #63171: <==uncertain_firing== 64231 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #67670: <==uncertain_firing== 79829 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #79931: <==uncertain_firing== 80338 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #82798: <==negation-removal== 21988 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #10935: <==closure== 15691 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #15691: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #21182: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #52340: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #67448: <==closure== 21182 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #87539: <==closure== 52340 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #12690: <==uncertain_firing== 10935 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #34631: <==negation-removal== 21182 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #39000: <==negation-removal== 52340 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #43028: <==uncertain_firing== 67448 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #58255: <==uncertain_firing== 52340 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #59421: <==negation-removal== 87539 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #66995: <==negation-removal== 15691 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #76704: <==negation-removal== 67448 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #77052: <==uncertain_firing== 87539 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #78409: <==uncertain_firing== 15691 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #81717: <==negation-removal== 10935 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #88092: <==uncertain_firing== 21182 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #10935: <==closure== 15691 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #15691: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #21182: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #52340: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #67448: <==closure== 21182 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #87539: <==closure== 52340 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #12690: <==uncertain_firing== 10935 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #34631: <==negation-removal== 21182 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #39000: <==negation-removal== 52340 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #43028: <==uncertain_firing== 67448 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #58255: <==uncertain_firing== 52340 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #59421: <==negation-removal== 87539 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #66995: <==negation-removal== 15691 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #76704: <==negation-removal== 67448 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #77052: <==uncertain_firing== 87539 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #78409: <==uncertain_firing== 15691 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #81717: <==negation-removal== 10935 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #88092: <==uncertain_firing== 21182 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #10935: <==closure== 15691 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #15691: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #21182: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #52340: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #67448: <==closure== 21182 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #87539: <==closure== 52340 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #12690: <==uncertain_firing== 10935 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #34631: <==negation-removal== 21182 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #39000: <==negation-removal== 52340 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #43028: <==uncertain_firing== 67448 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #58255: <==uncertain_firing== 52340 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #59421: <==negation-removal== 87539 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #66995: <==negation-removal== 15691 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #76704: <==negation-removal== 67448 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #77052: <==uncertain_firing== 87539 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #78409: <==uncertain_firing== 15691 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #81717: <==negation-removal== 10935 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #88092: <==uncertain_firing== 21182 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #22898: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #32338: <==closure== 22898 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #46126: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #57885: <==closure== 68297 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #64762: <==closure== 46126 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #68297: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #16463: <==negation-removal== 32338 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #16586: <==negation-removal== 46126 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #32025: <==uncertain_firing== 22898 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #33904: <==negation-removal== 57885 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #37262: <==uncertain_firing== 57885 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #41924: <==negation-removal== 68297 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #45938: <==uncertain_firing== 64762 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #51385: <==negation-removal== 64762 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #60065: <==uncertain_firing== 46126 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #80097: <==uncertain_firing== 32338 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #80298: <==negation-removal== 22898 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #88261: <==uncertain_firing== 68297 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #22898: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #32338: <==closure== 22898 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #46126: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #57885: <==closure== 68297 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #64762: <==closure== 46126 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #68297: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #16463: <==negation-removal== 32338 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #16586: <==negation-removal== 46126 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #32025: <==uncertain_firing== 22898 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #33904: <==negation-removal== 57885 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #37262: <==uncertain_firing== 57885 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #41924: <==negation-removal== 68297 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #45938: <==uncertain_firing== 64762 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #51385: <==negation-removal== 64762 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #60065: <==uncertain_firing== 46126 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #80097: <==uncertain_firing== 32338 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #80298: <==negation-removal== 22898 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #88261: <==uncertain_firing== 68297 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #22898: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #32338: <==closure== 22898 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #46126: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #57885: <==closure== 68297 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #64762: <==closure== 46126 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #68297: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #16463: <==negation-removal== 32338 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #16586: <==negation-removal== 46126 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #32025: <==uncertain_firing== 22898 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #33904: <==negation-removal== 57885 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #37262: <==uncertain_firing== 57885 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #41924: <==negation-removal== 68297 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #45938: <==uncertain_firing== 64762 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #51385: <==negation-removal== 64762 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #60065: <==uncertain_firing== 46126 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #80097: <==uncertain_firing== 32338 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #80298: <==negation-removal== 22898 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #88261: <==uncertain_firing== 68297 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #27205: <==closure== 80098 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #66389: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #77572: <==closure== 66389 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #80098: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #88138: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #96774: <==closure== 88138 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #19883: <==negation-removal== 66389 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #21482: <==uncertain_firing== 77572 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #30140: <==uncertain_firing== 80098 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #32636: <==negation-removal== 27205 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #33682: <==negation-removal== 96774 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #36352: <==uncertain_firing== 66389 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #44246: <==negation-removal== 88138 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #49625: <==uncertain_firing== 88138 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #54717: <==uncertain_firing== 96774 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #59188: <==uncertain_firing== 27205 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #60843: <==negation-removal== 77572 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #71171: <==negation-removal== 80098 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #27205: <==closure== 80098 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #66389: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #77572: <==closure== 66389 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #80098: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #88138: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #96774: <==closure== 88138 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #19883: <==negation-removal== 66389 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #21482: <==uncertain_firing== 77572 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #30140: <==uncertain_firing== 80098 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #32636: <==negation-removal== 27205 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #33682: <==negation-removal== 96774 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #36352: <==uncertain_firing== 66389 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #44246: <==negation-removal== 88138 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #49625: <==uncertain_firing== 88138 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #54717: <==uncertain_firing== 96774 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #59188: <==uncertain_firing== 27205 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #60843: <==negation-removal== 77572 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #71171: <==negation-removal== 80098 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #27205: <==closure== 80098 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #66389: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #77572: <==closure== 66389 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #80098: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #88138: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #96774: <==closure== 88138 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #19883: <==negation-removal== 66389 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #21482: <==uncertain_firing== 77572 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #30140: <==uncertain_firing== 80098 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #32636: <==negation-removal== 27205 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #33682: <==negation-removal== 96774 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #36352: <==uncertain_firing== 66389 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #44246: <==negation-removal== 88138 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #49625: <==uncertain_firing== 88138 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #54717: <==uncertain_firing== 96774 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #59188: <==uncertain_firing== 27205 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #60843: <==negation-removal== 77572 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #71171: <==negation-removal== 80098 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #16945: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #34619: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #42054: <==closure== 34619 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #52399: <==closure== 16945 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #56547: <==closure== 81439 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #81439: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #23459: <==uncertain_firing== 34619 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #30459: <==uncertain_firing== 16945 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #34731: <==negation-removal== 56547 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #39663: <==uncertain_firing== 42054 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #46686: <==negation-removal== 42054 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #48909: <==uncertain_firing== 81439 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #49704: <==negation-removal== 52399 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #50040: <==uncertain_firing== 52399 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #58639: <==negation-removal== 34619 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #69949: <==negation-removal== 16945 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #74121: <==uncertain_firing== 56547 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #91198: <==negation-removal== 81439 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #16945: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #34619: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #42054: <==closure== 34619 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #52399: <==closure== 16945 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #56547: <==closure== 81439 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #81439: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #23459: <==uncertain_firing== 34619 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #30459: <==uncertain_firing== 16945 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #34731: <==negation-removal== 56547 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #39663: <==uncertain_firing== 42054 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #46686: <==negation-removal== 42054 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #48909: <==uncertain_firing== 81439 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #49704: <==negation-removal== 52399 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #50040: <==uncertain_firing== 52399 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #58639: <==negation-removal== 34619 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #69949: <==negation-removal== 16945 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #74121: <==uncertain_firing== 56547 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #91198: <==negation-removal== 81439 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #16945: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #34619: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #42054: <==closure== 34619 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #52399: <==closure== 16945 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #56547: <==closure== 81439 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #81439: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #23459: <==uncertain_firing== 34619 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #30459: <==uncertain_firing== 16945 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #34731: <==negation-removal== 56547 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #39663: <==uncertain_firing== 42054 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #46686: <==negation-removal== 42054 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #48909: <==uncertain_firing== 81439 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #49704: <==negation-removal== 52399 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #50040: <==uncertain_firing== 52399 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #58639: <==negation-removal== 34619 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #69949: <==negation-removal== 16945 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #74121: <==uncertain_firing== 56547 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #91198: <==negation-removal== 81439 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #40380: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #40957: <==closure== 78006 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #44928: <==closure== 75182 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #65249: <==closure== 40380 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #75182: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #78006: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #22219: <==uncertain_firing== 75182 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #25179: <==uncertain_firing== 40380 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #33762: <==uncertain_firing== 40957 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #34375: <==negation-removal== 78006 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #36342: <==negation-removal== 40957 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #38305: <==uncertain_firing== 65249 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #46144: <==negation-removal== 44928 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #51005: <==negation-removal== 75182 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #61974: <==negation-removal== 40380 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #70605: <==uncertain_firing== 44928 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #74166: <==negation-removal== 65249 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #86299: <==uncertain_firing== 78006 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #40380: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #40957: <==closure== 78006 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #44928: <==closure== 75182 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #65249: <==closure== 40380 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #75182: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #78006: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #22219: <==uncertain_firing== 75182 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #25179: <==uncertain_firing== 40380 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #33762: <==uncertain_firing== 40957 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #34375: <==negation-removal== 78006 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #36342: <==negation-removal== 40957 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #38305: <==uncertain_firing== 65249 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #46144: <==negation-removal== 44928 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #51005: <==negation-removal== 75182 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #61974: <==negation-removal== 40380 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #70605: <==uncertain_firing== 44928 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #74166: <==negation-removal== 65249 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #86299: <==uncertain_firing== 78006 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #40380: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #40957: <==closure== 78006 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #44928: <==closure== 75182 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #65249: <==closure== 40380 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #75182: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #78006: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #22219: <==uncertain_firing== 75182 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #25179: <==uncertain_firing== 40380 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #33762: <==uncertain_firing== 40957 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #34375: <==negation-removal== 78006 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #36342: <==negation-removal== 40957 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #38305: <==uncertain_firing== 65249 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #46144: <==negation-removal== 44928 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #51005: <==negation-removal== 75182 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #61974: <==negation-removal== 40380 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #70605: <==uncertain_firing== 44928 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #74166: <==negation-removal== 65249 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #86299: <==uncertain_firing== 78006 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #15876: <==closure== 61087 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #21280: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #52073: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #61087: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #61438: <==closure== 52073 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #72119: <==closure== 21280 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #22040: <==negation-removal== 72119 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #25235: <==uncertain_firing== 61438 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #33403: <==negation-removal== 21280 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #38596: <==negation-removal== 52073 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #57670: <==negation-removal== 61087 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #70239: <==uncertain_firing== 21280 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #73429: <==uncertain_firing== 15876 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #73591: <==negation-removal== 15876 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #74284: <==uncertain_firing== 61087 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #74817: <==uncertain_firing== 72119 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #82981: <==negation-removal== 61438 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #90120: <==uncertain_firing== 52073 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #15876: <==closure== 61087 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #21280: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #52073: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #61087: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #61438: <==closure== 52073 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #72119: <==closure== 21280 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #22040: <==negation-removal== 72119 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #25235: <==uncertain_firing== 61438 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #33403: <==negation-removal== 21280 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #38596: <==negation-removal== 52073 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #57670: <==negation-removal== 61087 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #70239: <==uncertain_firing== 21280 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #73429: <==uncertain_firing== 15876 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #73591: <==negation-removal== 15876 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #74284: <==uncertain_firing== 61087 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #74817: <==uncertain_firing== 72119 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #82981: <==negation-removal== 61438 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #90120: <==uncertain_firing== 52073 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #15876: <==closure== 61087 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #21280: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #52073: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #61087: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #61438: <==closure== 52073 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #72119: <==closure== 21280 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #22040: <==negation-removal== 72119 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #25235: <==uncertain_firing== 61438 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #33403: <==negation-removal== 21280 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #38596: <==negation-removal== 52073 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #57670: <==negation-removal== 61087 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #70239: <==uncertain_firing== 21280 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #73429: <==uncertain_firing== 15876 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #73591: <==negation-removal== 15876 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #74284: <==uncertain_firing== 61087 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #74817: <==uncertain_firing== 72119 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #82981: <==negation-removal== 61438 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #90120: <==uncertain_firing== 52073 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))))

    (:action comm_p10_a_s
        :precondition (and (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #30604: <==closure== 81777 (pos)
                    (Pb_survivorat_s_p10)

                    ; #64577: origin
                    (Ba_survivorat_s_p10)

                    ; #79940: <==closure== 64577 (pos)
                    (Pa_survivorat_s_p10)

                    ; #81777: origin
                    (Bb_survivorat_s_p10)

                    ; #88333: origin
                    (Bc_survivorat_s_p10)

                    ; #89496: <==closure== 88333 (pos)
                    (Pc_survivorat_s_p10)

                    ; #11465: <==negation-removal== 88333 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #22022: <==negation-removal== 64577 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #33349: <==negation-removal== 30604 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #36496: <==negation-removal== 79940 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #54608: <==negation-removal== 89496 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #71831: <==negation-removal== 81777 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (at_b_p10)
                           (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #30604: <==closure== 81777 (pos)
                    (Pb_survivorat_s_p10)

                    ; #64577: origin
                    (Ba_survivorat_s_p10)

                    ; #79940: <==closure== 64577 (pos)
                    (Pa_survivorat_s_p10)

                    ; #81777: origin
                    (Bb_survivorat_s_p10)

                    ; #88333: origin
                    (Bc_survivorat_s_p10)

                    ; #89496: <==closure== 88333 (pos)
                    (Pc_survivorat_s_p10)

                    ; #11465: <==negation-removal== 88333 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #22022: <==negation-removal== 64577 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #33349: <==negation-removal== 30604 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #36496: <==negation-removal== 79940 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #54608: <==negation-removal== 89496 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #71831: <==negation-removal== 81777 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #30604: <==closure== 81777 (pos)
                    (Pb_survivorat_s_p10)

                    ; #64577: origin
                    (Ba_survivorat_s_p10)

                    ; #79940: <==closure== 64577 (pos)
                    (Pa_survivorat_s_p10)

                    ; #81777: origin
                    (Bb_survivorat_s_p10)

                    ; #88333: origin
                    (Bc_survivorat_s_p10)

                    ; #89496: <==closure== 88333 (pos)
                    (Pc_survivorat_s_p10)

                    ; #11465: <==negation-removal== 88333 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #22022: <==negation-removal== 64577 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #33349: <==negation-removal== 30604 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #36496: <==negation-removal== 79940 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #54608: <==negation-removal== 89496 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #71831: <==negation-removal== 81777 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Pa_survivorat_s_p11)
                           (at_a_p11)
                           (Ba_survivorat_s_p11))
        :effect (and
                    ; #12093: <==closure== 61353 (pos)
                    (Pb_survivorat_s_p11)

                    ; #36941: origin
                    (Bc_survivorat_s_p11)

                    ; #58062: <==closure== 91038 (pos)
                    (Pa_survivorat_s_p11)

                    ; #58215: <==closure== 36941 (pos)
                    (Pc_survivorat_s_p11)

                    ; #61353: origin
                    (Bb_survivorat_s_p11)

                    ; #91038: origin
                    (Ba_survivorat_s_p11)

                    ; #15183: <==negation-removal== 36941 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #34672: <==negation-removal== 61353 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #35051: <==negation-removal== 58215 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #77604: <==negation-removal== 91038 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #77728: <==negation-removal== 58062 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #84003: <==negation-removal== 12093 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #12093: <==closure== 61353 (pos)
                    (Pb_survivorat_s_p11)

                    ; #36941: origin
                    (Bc_survivorat_s_p11)

                    ; #58062: <==closure== 91038 (pos)
                    (Pa_survivorat_s_p11)

                    ; #58215: <==closure== 36941 (pos)
                    (Pc_survivorat_s_p11)

                    ; #61353: origin
                    (Bb_survivorat_s_p11)

                    ; #91038: origin
                    (Ba_survivorat_s_p11)

                    ; #15183: <==negation-removal== 36941 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #34672: <==negation-removal== 61353 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #35051: <==negation-removal== 58215 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #77604: <==negation-removal== 91038 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #77728: <==negation-removal== 58062 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #84003: <==negation-removal== 12093 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #12093: <==closure== 61353 (pos)
                    (Pb_survivorat_s_p11)

                    ; #36941: origin
                    (Bc_survivorat_s_p11)

                    ; #58062: <==closure== 91038 (pos)
                    (Pa_survivorat_s_p11)

                    ; #58215: <==closure== 36941 (pos)
                    (Pc_survivorat_s_p11)

                    ; #61353: origin
                    (Bb_survivorat_s_p11)

                    ; #91038: origin
                    (Ba_survivorat_s_p11)

                    ; #15183: <==negation-removal== 36941 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #34672: <==negation-removal== 61353 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #35051: <==negation-removal== 58215 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #77604: <==negation-removal== 91038 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #77728: <==negation-removal== 58062 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #84003: <==negation-removal== 12093 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #17322: <==closure== 26227 (pos)
                    (Pb_survivorat_s_p12)

                    ; #26227: origin
                    (Bb_survivorat_s_p12)

                    ; #27623: origin
                    (Bc_survivorat_s_p12)

                    ; #39587: origin
                    (Ba_survivorat_s_p12)

                    ; #85664: <==closure== 27623 (pos)
                    (Pc_survivorat_s_p12)

                    ; #86800: <==closure== 39587 (pos)
                    (Pa_survivorat_s_p12)

                    ; #30497: <==negation-removal== 85664 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #37845: <==negation-removal== 26227 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #42397: <==negation-removal== 86800 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #58840: <==negation-removal== 39587 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #60979: <==negation-removal== 17322 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #80755: <==negation-removal== 27623 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #17322: <==closure== 26227 (pos)
                    (Pb_survivorat_s_p12)

                    ; #26227: origin
                    (Bb_survivorat_s_p12)

                    ; #27623: origin
                    (Bc_survivorat_s_p12)

                    ; #39587: origin
                    (Ba_survivorat_s_p12)

                    ; #85664: <==closure== 27623 (pos)
                    (Pc_survivorat_s_p12)

                    ; #86800: <==closure== 39587 (pos)
                    (Pa_survivorat_s_p12)

                    ; #30497: <==negation-removal== 85664 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #37845: <==negation-removal== 26227 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #42397: <==negation-removal== 86800 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #58840: <==negation-removal== 39587 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #60979: <==negation-removal== 17322 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #80755: <==negation-removal== 27623 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #17322: <==closure== 26227 (pos)
                    (Pb_survivorat_s_p12)

                    ; #26227: origin
                    (Bb_survivorat_s_p12)

                    ; #27623: origin
                    (Bc_survivorat_s_p12)

                    ; #39587: origin
                    (Ba_survivorat_s_p12)

                    ; #85664: <==closure== 27623 (pos)
                    (Pc_survivorat_s_p12)

                    ; #86800: <==closure== 39587 (pos)
                    (Pa_survivorat_s_p12)

                    ; #30497: <==negation-removal== 85664 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #37845: <==negation-removal== 26227 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #42397: <==negation-removal== 86800 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #58840: <==negation-removal== 39587 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #60979: <==negation-removal== 17322 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #80755: <==negation-removal== 27623 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #20625: origin
                    (Bc_survivorat_s_p1)

                    ; #34985: <==closure== 72594 (pos)
                    (Pa_survivorat_s_p1)

                    ; #54746: <==closure== 20625 (pos)
                    (Pc_survivorat_s_p1)

                    ; #72594: origin
                    (Ba_survivorat_s_p1)

                    ; #78807: <==closure== 98979 (pos)
                    (Pb_survivorat_s_p1)

                    ; #98979: origin
                    (Bb_survivorat_s_p1)

                    ; #27227: <==negation-removal== 34985 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #34341: <==negation-removal== 78807 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #55853: <==negation-removal== 72594 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #62237: <==negation-removal== 54746 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #65720: <==negation-removal== 20625 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #81386: <==negation-removal== 98979 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #20625: origin
                    (Bc_survivorat_s_p1)

                    ; #34985: <==closure== 72594 (pos)
                    (Pa_survivorat_s_p1)

                    ; #54746: <==closure== 20625 (pos)
                    (Pc_survivorat_s_p1)

                    ; #72594: origin
                    (Ba_survivorat_s_p1)

                    ; #78807: <==closure== 98979 (pos)
                    (Pb_survivorat_s_p1)

                    ; #98979: origin
                    (Bb_survivorat_s_p1)

                    ; #27227: <==negation-removal== 34985 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #34341: <==negation-removal== 78807 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #55853: <==negation-removal== 72594 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #62237: <==negation-removal== 54746 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #65720: <==negation-removal== 20625 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #81386: <==negation-removal== 98979 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #20625: origin
                    (Bc_survivorat_s_p1)

                    ; #34985: <==closure== 72594 (pos)
                    (Pa_survivorat_s_p1)

                    ; #54746: <==closure== 20625 (pos)
                    (Pc_survivorat_s_p1)

                    ; #72594: origin
                    (Ba_survivorat_s_p1)

                    ; #78807: <==closure== 98979 (pos)
                    (Pb_survivorat_s_p1)

                    ; #98979: origin
                    (Bb_survivorat_s_p1)

                    ; #27227: <==negation-removal== 34985 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #34341: <==negation-removal== 78807 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #55853: <==negation-removal== 72594 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #62237: <==negation-removal== 54746 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #65720: <==negation-removal== 20625 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #81386: <==negation-removal== 98979 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #14938: <==closure== 22896 (pos)
                    (Pa_survivorat_s_p2)

                    ; #22896: origin
                    (Ba_survivorat_s_p2)

                    ; #41995: origin
                    (Bb_survivorat_s_p2)

                    ; #75483: <==closure== 41995 (pos)
                    (Pb_survivorat_s_p2)

                    ; #78353: origin
                    (Bc_survivorat_s_p2)

                    ; #80219: <==closure== 78353 (pos)
                    (Pc_survivorat_s_p2)

                    ; #30925: <==negation-removal== 41995 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #40285: <==negation-removal== 75483 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #40292: <==negation-removal== 22896 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #65648: <==negation-removal== 80219 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #66107: <==negation-removal== 78353 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #87669: <==negation-removal== 14938 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #14938: <==closure== 22896 (pos)
                    (Pa_survivorat_s_p2)

                    ; #22896: origin
                    (Ba_survivorat_s_p2)

                    ; #41995: origin
                    (Bb_survivorat_s_p2)

                    ; #75483: <==closure== 41995 (pos)
                    (Pb_survivorat_s_p2)

                    ; #78353: origin
                    (Bc_survivorat_s_p2)

                    ; #80219: <==closure== 78353 (pos)
                    (Pc_survivorat_s_p2)

                    ; #30925: <==negation-removal== 41995 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #40285: <==negation-removal== 75483 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #40292: <==negation-removal== 22896 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #65648: <==negation-removal== 80219 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #66107: <==negation-removal== 78353 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #87669: <==negation-removal== 14938 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #14938: <==closure== 22896 (pos)
                    (Pa_survivorat_s_p2)

                    ; #22896: origin
                    (Ba_survivorat_s_p2)

                    ; #41995: origin
                    (Bb_survivorat_s_p2)

                    ; #75483: <==closure== 41995 (pos)
                    (Pb_survivorat_s_p2)

                    ; #78353: origin
                    (Bc_survivorat_s_p2)

                    ; #80219: <==closure== 78353 (pos)
                    (Pc_survivorat_s_p2)

                    ; #30925: <==negation-removal== 41995 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #40285: <==negation-removal== 75483 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #40292: <==negation-removal== 22896 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #65648: <==negation-removal== 80219 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #66107: <==negation-removal== 78353 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #87669: <==negation-removal== 14938 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #13056: <==closure== 82485 (pos)
                    (Pa_survivorat_s_p3)

                    ; #41839: <==closure== 56000 (pos)
                    (Pc_survivorat_s_p3)

                    ; #56000: origin
                    (Bc_survivorat_s_p3)

                    ; #59770: origin
                    (Bb_survivorat_s_p3)

                    ; #70058: <==closure== 59770 (pos)
                    (Pb_survivorat_s_p3)

                    ; #82485: origin
                    (Ba_survivorat_s_p3)

                    ; #52897: <==negation-removal== 70058 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #61122: <==negation-removal== 41839 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #63262: <==negation-removal== 82485 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #77385: <==negation-removal== 56000 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #85704: <==negation-removal== 13056 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #90919: <==negation-removal== 59770 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #13056: <==closure== 82485 (pos)
                    (Pa_survivorat_s_p3)

                    ; #41839: <==closure== 56000 (pos)
                    (Pc_survivorat_s_p3)

                    ; #56000: origin
                    (Bc_survivorat_s_p3)

                    ; #59770: origin
                    (Bb_survivorat_s_p3)

                    ; #70058: <==closure== 59770 (pos)
                    (Pb_survivorat_s_p3)

                    ; #82485: origin
                    (Ba_survivorat_s_p3)

                    ; #52897: <==negation-removal== 70058 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #61122: <==negation-removal== 41839 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #63262: <==negation-removal== 82485 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #77385: <==negation-removal== 56000 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #85704: <==negation-removal== 13056 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #90919: <==negation-removal== 59770 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #13056: <==closure== 82485 (pos)
                    (Pa_survivorat_s_p3)

                    ; #41839: <==closure== 56000 (pos)
                    (Pc_survivorat_s_p3)

                    ; #56000: origin
                    (Bc_survivorat_s_p3)

                    ; #59770: origin
                    (Bb_survivorat_s_p3)

                    ; #70058: <==closure== 59770 (pos)
                    (Pb_survivorat_s_p3)

                    ; #82485: origin
                    (Ba_survivorat_s_p3)

                    ; #52897: <==negation-removal== 70058 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #61122: <==negation-removal== 41839 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #63262: <==negation-removal== 82485 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #77385: <==negation-removal== 56000 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #85704: <==negation-removal== 13056 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #90919: <==negation-removal== 59770 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #58561: <==closure== 81468 (pos)
                    (Pa_survivorat_s_p4)

                    ; #64298: origin
                    (Bc_survivorat_s_p4)

                    ; #74575: <==closure== 78376 (pos)
                    (Pb_survivorat_s_p4)

                    ; #78376: origin
                    (Bb_survivorat_s_p4)

                    ; #81468: origin
                    (Ba_survivorat_s_p4)

                    ; #86623: <==closure== 64298 (pos)
                    (Pc_survivorat_s_p4)

                    ; #27796: <==negation-removal== 81468 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #33855: <==negation-removal== 74575 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #41239: <==negation-removal== 58561 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #41469: <==negation-removal== 86623 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #65916: <==negation-removal== 78376 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #70393: <==negation-removal== 64298 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #58561: <==closure== 81468 (pos)
                    (Pa_survivorat_s_p4)

                    ; #64298: origin
                    (Bc_survivorat_s_p4)

                    ; #74575: <==closure== 78376 (pos)
                    (Pb_survivorat_s_p4)

                    ; #78376: origin
                    (Bb_survivorat_s_p4)

                    ; #81468: origin
                    (Ba_survivorat_s_p4)

                    ; #86623: <==closure== 64298 (pos)
                    (Pc_survivorat_s_p4)

                    ; #27796: <==negation-removal== 81468 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #33855: <==negation-removal== 74575 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #41239: <==negation-removal== 58561 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #41469: <==negation-removal== 86623 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #65916: <==negation-removal== 78376 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #70393: <==negation-removal== 64298 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #58561: <==closure== 81468 (pos)
                    (Pa_survivorat_s_p4)

                    ; #64298: origin
                    (Bc_survivorat_s_p4)

                    ; #74575: <==closure== 78376 (pos)
                    (Pb_survivorat_s_p4)

                    ; #78376: origin
                    (Bb_survivorat_s_p4)

                    ; #81468: origin
                    (Ba_survivorat_s_p4)

                    ; #86623: <==closure== 64298 (pos)
                    (Pc_survivorat_s_p4)

                    ; #27796: <==negation-removal== 81468 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #33855: <==negation-removal== 74575 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #41239: <==negation-removal== 58561 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #41469: <==negation-removal== 86623 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #65916: <==negation-removal== 78376 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #70393: <==negation-removal== 64298 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #43911: <==closure== 91377 (pos)
                    (Pa_survivorat_s_p5)

                    ; #48458: <==closure== 71552 (pos)
                    (Pc_survivorat_s_p5)

                    ; #57279: origin
                    (Bb_survivorat_s_p5)

                    ; #71552: origin
                    (Bc_survivorat_s_p5)

                    ; #85932: <==closure== 57279 (pos)
                    (Pb_survivorat_s_p5)

                    ; #91377: origin
                    (Ba_survivorat_s_p5)

                    ; #15768: <==negation-removal== 57279 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #61217: <==negation-removal== 43911 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #82470: <==negation-removal== 85932 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #86225: <==negation-removal== 71552 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #89738: <==negation-removal== 91377 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #90917: <==negation-removal== 48458 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #43911: <==closure== 91377 (pos)
                    (Pa_survivorat_s_p5)

                    ; #48458: <==closure== 71552 (pos)
                    (Pc_survivorat_s_p5)

                    ; #57279: origin
                    (Bb_survivorat_s_p5)

                    ; #71552: origin
                    (Bc_survivorat_s_p5)

                    ; #85932: <==closure== 57279 (pos)
                    (Pb_survivorat_s_p5)

                    ; #91377: origin
                    (Ba_survivorat_s_p5)

                    ; #15768: <==negation-removal== 57279 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #61217: <==negation-removal== 43911 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #82470: <==negation-removal== 85932 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #86225: <==negation-removal== 71552 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #89738: <==negation-removal== 91377 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #90917: <==negation-removal== 48458 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #43911: <==closure== 91377 (pos)
                    (Pa_survivorat_s_p5)

                    ; #48458: <==closure== 71552 (pos)
                    (Pc_survivorat_s_p5)

                    ; #57279: origin
                    (Bb_survivorat_s_p5)

                    ; #71552: origin
                    (Bc_survivorat_s_p5)

                    ; #85932: <==closure== 57279 (pos)
                    (Pb_survivorat_s_p5)

                    ; #91377: origin
                    (Ba_survivorat_s_p5)

                    ; #15768: <==negation-removal== 57279 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #61217: <==negation-removal== 43911 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #82470: <==negation-removal== 85932 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #86225: <==negation-removal== 71552 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #89738: <==negation-removal== 91377 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #90917: <==negation-removal== 48458 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #15751: origin
                    (Bb_survivorat_s_p6)

                    ; #31764: origin
                    (Ba_survivorat_s_p6)

                    ; #31834: <==closure== 79250 (pos)
                    (Pc_survivorat_s_p6)

                    ; #55908: <==closure== 15751 (pos)
                    (Pb_survivorat_s_p6)

                    ; #79250: origin
                    (Bc_survivorat_s_p6)

                    ; #82991: <==closure== 31764 (pos)
                    (Pa_survivorat_s_p6)

                    ; #18254: <==negation-removal== 82991 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #32433: <==negation-removal== 55908 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #38154: <==negation-removal== 31764 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #62817: <==negation-removal== 79250 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #69305: <==negation-removal== 15751 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #76492: <==negation-removal== 31834 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #15751: origin
                    (Bb_survivorat_s_p6)

                    ; #31764: origin
                    (Ba_survivorat_s_p6)

                    ; #31834: <==closure== 79250 (pos)
                    (Pc_survivorat_s_p6)

                    ; #55908: <==closure== 15751 (pos)
                    (Pb_survivorat_s_p6)

                    ; #79250: origin
                    (Bc_survivorat_s_p6)

                    ; #82991: <==closure== 31764 (pos)
                    (Pa_survivorat_s_p6)

                    ; #18254: <==negation-removal== 82991 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #32433: <==negation-removal== 55908 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #38154: <==negation-removal== 31764 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #62817: <==negation-removal== 79250 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #69305: <==negation-removal== 15751 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #76492: <==negation-removal== 31834 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #15751: origin
                    (Bb_survivorat_s_p6)

                    ; #31764: origin
                    (Ba_survivorat_s_p6)

                    ; #31834: <==closure== 79250 (pos)
                    (Pc_survivorat_s_p6)

                    ; #55908: <==closure== 15751 (pos)
                    (Pb_survivorat_s_p6)

                    ; #79250: origin
                    (Bc_survivorat_s_p6)

                    ; #82991: <==closure== 31764 (pos)
                    (Pa_survivorat_s_p6)

                    ; #18254: <==negation-removal== 82991 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #32433: <==negation-removal== 55908 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #38154: <==negation-removal== 31764 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #62817: <==negation-removal== 79250 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #69305: <==negation-removal== 15751 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #76492: <==negation-removal== 31834 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #11723: <==closure== 54221 (pos)
                    (Pb_survivorat_s_p7)

                    ; #54221: origin
                    (Bb_survivorat_s_p7)

                    ; #64172: origin
                    (Bc_survivorat_s_p7)

                    ; #75881: <==closure== 64172 (pos)
                    (Pc_survivorat_s_p7)

                    ; #81161: <==closure== 82176 (pos)
                    (Pa_survivorat_s_p7)

                    ; #82176: origin
                    (Ba_survivorat_s_p7)

                    ; #49577: <==negation-removal== 81161 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #52415: <==negation-removal== 82176 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #63748: <==negation-removal== 11723 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #67081: <==negation-removal== 75881 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #90478: <==negation-removal== 64172 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #91850: <==negation-removal== 54221 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #11723: <==closure== 54221 (pos)
                    (Pb_survivorat_s_p7)

                    ; #54221: origin
                    (Bb_survivorat_s_p7)

                    ; #64172: origin
                    (Bc_survivorat_s_p7)

                    ; #75881: <==closure== 64172 (pos)
                    (Pc_survivorat_s_p7)

                    ; #81161: <==closure== 82176 (pos)
                    (Pa_survivorat_s_p7)

                    ; #82176: origin
                    (Ba_survivorat_s_p7)

                    ; #49577: <==negation-removal== 81161 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #52415: <==negation-removal== 82176 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #63748: <==negation-removal== 11723 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #67081: <==negation-removal== 75881 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #90478: <==negation-removal== 64172 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #91850: <==negation-removal== 54221 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #11723: <==closure== 54221 (pos)
                    (Pb_survivorat_s_p7)

                    ; #54221: origin
                    (Bb_survivorat_s_p7)

                    ; #64172: origin
                    (Bc_survivorat_s_p7)

                    ; #75881: <==closure== 64172 (pos)
                    (Pc_survivorat_s_p7)

                    ; #81161: <==closure== 82176 (pos)
                    (Pa_survivorat_s_p7)

                    ; #82176: origin
                    (Ba_survivorat_s_p7)

                    ; #49577: <==negation-removal== 81161 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #52415: <==negation-removal== 82176 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #63748: <==negation-removal== 11723 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #67081: <==negation-removal== 75881 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #90478: <==negation-removal== 64172 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #91850: <==negation-removal== 54221 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #23341: origin
                    (Bc_survivorat_s_p8)

                    ; #28925: origin
                    (Bb_survivorat_s_p8)

                    ; #37346: origin
                    (Ba_survivorat_s_p8)

                    ; #44676: <==closure== 28925 (pos)
                    (Pb_survivorat_s_p8)

                    ; #46029: <==closure== 23341 (pos)
                    (Pc_survivorat_s_p8)

                    ; #54007: <==closure== 37346 (pos)
                    (Pa_survivorat_s_p8)

                    ; #10182: <==negation-removal== 23341 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #20912: <==negation-removal== 37346 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #35550: <==negation-removal== 44676 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #39651: <==negation-removal== 46029 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #82060: <==negation-removal== 28925 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #83872: <==negation-removal== 54007 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #23341: origin
                    (Bc_survivorat_s_p8)

                    ; #28925: origin
                    (Bb_survivorat_s_p8)

                    ; #37346: origin
                    (Ba_survivorat_s_p8)

                    ; #44676: <==closure== 28925 (pos)
                    (Pb_survivorat_s_p8)

                    ; #46029: <==closure== 23341 (pos)
                    (Pc_survivorat_s_p8)

                    ; #54007: <==closure== 37346 (pos)
                    (Pa_survivorat_s_p8)

                    ; #10182: <==negation-removal== 23341 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #20912: <==negation-removal== 37346 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #35550: <==negation-removal== 44676 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #39651: <==negation-removal== 46029 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #82060: <==negation-removal== 28925 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #83872: <==negation-removal== 54007 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #23341: origin
                    (Bc_survivorat_s_p8)

                    ; #28925: origin
                    (Bb_survivorat_s_p8)

                    ; #37346: origin
                    (Ba_survivorat_s_p8)

                    ; #44676: <==closure== 28925 (pos)
                    (Pb_survivorat_s_p8)

                    ; #46029: <==closure== 23341 (pos)
                    (Pc_survivorat_s_p8)

                    ; #54007: <==closure== 37346 (pos)
                    (Pa_survivorat_s_p8)

                    ; #10182: <==negation-removal== 23341 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #20912: <==negation-removal== 37346 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #35550: <==negation-removal== 44676 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #39651: <==negation-removal== 46029 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #82060: <==negation-removal== 28925 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #83872: <==negation-removal== 54007 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #17254: <==closure== 69160 (pos)
                    (Pc_survivorat_s_p9)

                    ; #39258: <==closure== 54706 (pos)
                    (Pa_survivorat_s_p9)

                    ; #44462: origin
                    (Bb_survivorat_s_p9)

                    ; #54706: origin
                    (Ba_survivorat_s_p9)

                    ; #54979: <==closure== 44462 (pos)
                    (Pb_survivorat_s_p9)

                    ; #69160: origin
                    (Bc_survivorat_s_p9)

                    ; #35466: <==negation-removal== 39258 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #42079: <==negation-removal== 17254 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #53874: <==negation-removal== 54979 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #72192: <==negation-removal== 54706 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #85625: <==negation-removal== 44462 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #86817: <==negation-removal== 69160 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #17254: <==closure== 69160 (pos)
                    (Pc_survivorat_s_p9)

                    ; #39258: <==closure== 54706 (pos)
                    (Pa_survivorat_s_p9)

                    ; #44462: origin
                    (Bb_survivorat_s_p9)

                    ; #54706: origin
                    (Ba_survivorat_s_p9)

                    ; #54979: <==closure== 44462 (pos)
                    (Pb_survivorat_s_p9)

                    ; #69160: origin
                    (Bc_survivorat_s_p9)

                    ; #35466: <==negation-removal== 39258 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #42079: <==negation-removal== 17254 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #53874: <==negation-removal== 54979 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #72192: <==negation-removal== 54706 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #85625: <==negation-removal== 44462 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #86817: <==negation-removal== 69160 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #17254: <==closure== 69160 (pos)
                    (Pc_survivorat_s_p9)

                    ; #39258: <==closure== 54706 (pos)
                    (Pa_survivorat_s_p9)

                    ; #44462: origin
                    (Bb_survivorat_s_p9)

                    ; #54706: origin
                    (Ba_survivorat_s_p9)

                    ; #54979: <==closure== 44462 (pos)
                    (Pb_survivorat_s_p9)

                    ; #69160: origin
                    (Bc_survivorat_s_p9)

                    ; #35466: <==negation-removal== 39258 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #42079: <==negation-removal== 17254 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #53874: <==negation-removal== 54979 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #72192: <==negation-removal== 54706 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #85625: <==negation-removal== 44462 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #86817: <==negation-removal== 69160 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (at_a_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #22154: origin
                    (at_a_p1)

                    ; #60276: origin
                    (not_at_a_p10)

                    ; #32146: <==negation-removal== 60276 (pos)
                    (not (at_a_p10))

                    ; #83809: <==negation-removal== 22154 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (at_a_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #32146: origin
                    (at_a_p10)

                    ; #60276: origin
                    (not_at_a_p10)

                    ; #32146: <==negation-removal== 60276 (pos)
                    (not (at_a_p10))

                    ; #60276: <==negation-removal== 32146 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (at_a_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #25352: origin
                    (at_a_p11)

                    ; #60276: origin
                    (not_at_a_p10)

                    ; #26387: <==negation-removal== 25352 (pos)
                    (not (not_at_a_p11))

                    ; #32146: <==negation-removal== 60276 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #41728: origin
                    (at_a_p12)

                    ; #60276: origin
                    (not_at_a_p10)

                    ; #32146: <==negation-removal== 60276 (pos)
                    (not (at_a_p10))

                    ; #88293: <==negation-removal== 41728 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #44674: origin
                    (at_a_p2)

                    ; #60276: origin
                    (not_at_a_p10)

                    ; #32146: <==negation-removal== 60276 (pos)
                    (not (at_a_p10))

                    ; #50995: <==negation-removal== 44674 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (at_a_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #60276: origin
                    (not_at_a_p10)

                    ; #64685: origin
                    (at_a_p3)

                    ; #32146: <==negation-removal== 60276 (pos)
                    (not (at_a_p10))

                    ; #36387: <==negation-removal== 64685 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #44754: origin
                    (at_a_p4)

                    ; #60276: origin
                    (not_at_a_p10)

                    ; #32146: <==negation-removal== 60276 (pos)
                    (not (at_a_p10))

                    ; #79131: <==negation-removal== 44754 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (at_a_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #47520: origin
                    (at_a_p5)

                    ; #60276: origin
                    (not_at_a_p10)

                    ; #32146: <==negation-removal== 60276 (pos)
                    (not (at_a_p10))

                    ; #87778: <==negation-removal== 47520 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #60276: origin
                    (not_at_a_p10)

                    ; #91008: origin
                    (at_a_p6)

                    ; #32146: <==negation-removal== 60276 (pos)
                    (not (at_a_p10))

                    ; #50502: <==negation-removal== 91008 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #42697: origin
                    (at_a_p7)

                    ; #60276: origin
                    (not_at_a_p10)

                    ; #32146: <==negation-removal== 60276 (pos)
                    (not (at_a_p10))

                    ; #69013: <==negation-removal== 42697 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (at_a_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #60276: origin
                    (not_at_a_p10)

                    ; #90345: origin
                    (at_a_p8)

                    ; #32146: <==negation-removal== 60276 (pos)
                    (not (at_a_p10))

                    ; #40714: <==negation-removal== 90345 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #40226: origin
                    (at_a_p9)

                    ; #60276: origin
                    (not_at_a_p10)

                    ; #32146: <==negation-removal== 60276 (pos)
                    (not (at_a_p10))

                    ; #35197: <==negation-removal== 40226 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #22154: origin
                    (at_a_p1)

                    ; #26387: origin
                    (not_at_a_p11)

                    ; #25352: <==negation-removal== 26387 (pos)
                    (not (at_a_p11))

                    ; #83809: <==negation-removal== 22154 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #26387: origin
                    (not_at_a_p11)

                    ; #32146: origin
                    (at_a_p10)

                    ; #25352: <==negation-removal== 26387 (pos)
                    (not (at_a_p11))

                    ; #60276: <==negation-removal== 32146 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #25352: origin
                    (at_a_p11)

                    ; #26387: origin
                    (not_at_a_p11)

                    ; #25352: <==negation-removal== 26387 (pos)
                    (not (at_a_p11))

                    ; #26387: <==negation-removal== 25352 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (at_a_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #26387: origin
                    (not_at_a_p11)

                    ; #41728: origin
                    (at_a_p12)

                    ; #25352: <==negation-removal== 26387 (pos)
                    (not (at_a_p11))

                    ; #88293: <==negation-removal== 41728 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #26387: origin
                    (not_at_a_p11)

                    ; #44674: origin
                    (at_a_p2)

                    ; #25352: <==negation-removal== 26387 (pos)
                    (not (at_a_p11))

                    ; #50995: <==negation-removal== 44674 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #26387: origin
                    (not_at_a_p11)

                    ; #64685: origin
                    (at_a_p3)

                    ; #25352: <==negation-removal== 26387 (pos)
                    (not (at_a_p11))

                    ; #36387: <==negation-removal== 64685 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (at_a_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #26387: origin
                    (not_at_a_p11)

                    ; #44754: origin
                    (at_a_p4)

                    ; #25352: <==negation-removal== 26387 (pos)
                    (not (at_a_p11))

                    ; #79131: <==negation-removal== 44754 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #26387: origin
                    (not_at_a_p11)

                    ; #47520: origin
                    (at_a_p5)

                    ; #25352: <==negation-removal== 26387 (pos)
                    (not (at_a_p11))

                    ; #87778: <==negation-removal== 47520 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #26387: origin
                    (not_at_a_p11)

                    ; #91008: origin
                    (at_a_p6)

                    ; #25352: <==negation-removal== 26387 (pos)
                    (not (at_a_p11))

                    ; #50502: <==negation-removal== 91008 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #26387: origin
                    (not_at_a_p11)

                    ; #42697: origin
                    (at_a_p7)

                    ; #25352: <==negation-removal== 26387 (pos)
                    (not (at_a_p11))

                    ; #69013: <==negation-removal== 42697 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (at_a_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #26387: origin
                    (not_at_a_p11)

                    ; #90345: origin
                    (at_a_p8)

                    ; #25352: <==negation-removal== 26387 (pos)
                    (not (at_a_p11))

                    ; #40714: <==negation-removal== 90345 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #26387: origin
                    (not_at_a_p11)

                    ; #40226: origin
                    (at_a_p9)

                    ; #25352: <==negation-removal== 26387 (pos)
                    (not (at_a_p11))

                    ; #35197: <==negation-removal== 40226 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12))
        :effect (and
                    ; #22154: origin
                    (at_a_p1)

                    ; #88293: origin
                    (not_at_a_p12)

                    ; #41728: <==negation-removal== 88293 (pos)
                    (not (at_a_p12))

                    ; #83809: <==negation-removal== 22154 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12))
        :effect (and
                    ; #32146: origin
                    (at_a_p10)

                    ; #88293: origin
                    (not_at_a_p12)

                    ; #41728: <==negation-removal== 88293 (pos)
                    (not (at_a_p12))

                    ; #60276: <==negation-removal== 32146 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12))
        :effect (and
                    ; #25352: origin
                    (at_a_p11)

                    ; #88293: origin
                    (not_at_a_p12)

                    ; #26387: <==negation-removal== 25352 (pos)
                    (not (not_at_a_p11))

                    ; #41728: <==negation-removal== 88293 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12))
        :effect (and
                    ; #41728: origin
                    (at_a_p12)

                    ; #88293: origin
                    (not_at_a_p12)

                    ; #41728: <==negation-removal== 88293 (pos)
                    (not (at_a_p12))

                    ; #88293: <==negation-removal== 41728 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12))
        :effect (and
                    ; #44674: origin
                    (at_a_p2)

                    ; #88293: origin
                    (not_at_a_p12)

                    ; #41728: <==negation-removal== 88293 (pos)
                    (not (at_a_p12))

                    ; #50995: <==negation-removal== 44674 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #64685: origin
                    (at_a_p3)

                    ; #88293: origin
                    (not_at_a_p12)

                    ; #36387: <==negation-removal== 64685 (pos)
                    (not (not_at_a_p3))

                    ; #41728: <==negation-removal== 88293 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12))
        :effect (and
                    ; #44754: origin
                    (at_a_p4)

                    ; #88293: origin
                    (not_at_a_p12)

                    ; #41728: <==negation-removal== 88293 (pos)
                    (not (at_a_p12))

                    ; #79131: <==negation-removal== 44754 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12))
        :effect (and
                    ; #47520: origin
                    (at_a_p5)

                    ; #88293: origin
                    (not_at_a_p12)

                    ; #41728: <==negation-removal== 88293 (pos)
                    (not (at_a_p12))

                    ; #87778: <==negation-removal== 47520 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #88293: origin
                    (not_at_a_p12)

                    ; #91008: origin
                    (at_a_p6)

                    ; #41728: <==negation-removal== 88293 (pos)
                    (not (at_a_p12))

                    ; #50502: <==negation-removal== 91008 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12))
        :effect (and
                    ; #42697: origin
                    (at_a_p7)

                    ; #88293: origin
                    (not_at_a_p12)

                    ; #41728: <==negation-removal== 88293 (pos)
                    (not (at_a_p12))

                    ; #69013: <==negation-removal== 42697 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12))
        :effect (and
                    ; #88293: origin
                    (not_at_a_p12)

                    ; #90345: origin
                    (at_a_p8)

                    ; #40714: <==negation-removal== 90345 (pos)
                    (not (not_at_a_p8))

                    ; #41728: <==negation-removal== 88293 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12))
        :effect (and
                    ; #40226: origin
                    (at_a_p9)

                    ; #88293: origin
                    (not_at_a_p12)

                    ; #35197: <==negation-removal== 40226 (pos)
                    (not (not_at_a_p9))

                    ; #41728: <==negation-removal== 88293 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #22154: origin
                    (at_a_p1)

                    ; #83809: origin
                    (not_at_a_p1)

                    ; #22154: <==negation-removal== 83809 (pos)
                    (not (at_a_p1))

                    ; #83809: <==negation-removal== 22154 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #32146: origin
                    (at_a_p10)

                    ; #83809: origin
                    (not_at_a_p1)

                    ; #22154: <==negation-removal== 83809 (pos)
                    (not (at_a_p1))

                    ; #60276: <==negation-removal== 32146 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #25352: origin
                    (at_a_p11)

                    ; #83809: origin
                    (not_at_a_p1)

                    ; #22154: <==negation-removal== 83809 (pos)
                    (not (at_a_p1))

                    ; #26387: <==negation-removal== 25352 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #41728: origin
                    (at_a_p12)

                    ; #83809: origin
                    (not_at_a_p1)

                    ; #22154: <==negation-removal== 83809 (pos)
                    (not (at_a_p1))

                    ; #88293: <==negation-removal== 41728 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #44674: origin
                    (at_a_p2)

                    ; #83809: origin
                    (not_at_a_p1)

                    ; #22154: <==negation-removal== 83809 (pos)
                    (not (at_a_p1))

                    ; #50995: <==negation-removal== 44674 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #64685: origin
                    (at_a_p3)

                    ; #83809: origin
                    (not_at_a_p1)

                    ; #22154: <==negation-removal== 83809 (pos)
                    (not (at_a_p1))

                    ; #36387: <==negation-removal== 64685 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #44754: origin
                    (at_a_p4)

                    ; #83809: origin
                    (not_at_a_p1)

                    ; #22154: <==negation-removal== 83809 (pos)
                    (not (at_a_p1))

                    ; #79131: <==negation-removal== 44754 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #47520: origin
                    (at_a_p5)

                    ; #83809: origin
                    (not_at_a_p1)

                    ; #22154: <==negation-removal== 83809 (pos)
                    (not (at_a_p1))

                    ; #87778: <==negation-removal== 47520 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #83809: origin
                    (not_at_a_p1)

                    ; #91008: origin
                    (at_a_p6)

                    ; #22154: <==negation-removal== 83809 (pos)
                    (not (at_a_p1))

                    ; #50502: <==negation-removal== 91008 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #42697: origin
                    (at_a_p7)

                    ; #83809: origin
                    (not_at_a_p1)

                    ; #22154: <==negation-removal== 83809 (pos)
                    (not (at_a_p1))

                    ; #69013: <==negation-removal== 42697 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #83809: origin
                    (not_at_a_p1)

                    ; #90345: origin
                    (at_a_p8)

                    ; #22154: <==negation-removal== 83809 (pos)
                    (not (at_a_p1))

                    ; #40714: <==negation-removal== 90345 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #40226: origin
                    (at_a_p9)

                    ; #83809: origin
                    (not_at_a_p1)

                    ; #22154: <==negation-removal== 83809 (pos)
                    (not (at_a_p1))

                    ; #35197: <==negation-removal== 40226 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #22154: origin
                    (at_a_p1)

                    ; #50995: origin
                    (not_at_a_p2)

                    ; #44674: <==negation-removal== 50995 (pos)
                    (not (at_a_p2))

                    ; #83809: <==negation-removal== 22154 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2))
        :effect (and
                    ; #32146: origin
                    (at_a_p10)

                    ; #50995: origin
                    (not_at_a_p2)

                    ; #44674: <==negation-removal== 50995 (pos)
                    (not (at_a_p2))

                    ; #60276: <==negation-removal== 32146 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2))
        :effect (and
                    ; #25352: origin
                    (at_a_p11)

                    ; #50995: origin
                    (not_at_a_p2)

                    ; #26387: <==negation-removal== 25352 (pos)
                    (not (not_at_a_p11))

                    ; #44674: <==negation-removal== 50995 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2))
        :effect (and
                    ; #41728: origin
                    (at_a_p12)

                    ; #50995: origin
                    (not_at_a_p2)

                    ; #44674: <==negation-removal== 50995 (pos)
                    (not (at_a_p2))

                    ; #88293: <==negation-removal== 41728 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #44674: origin
                    (at_a_p2)

                    ; #50995: origin
                    (not_at_a_p2)

                    ; #44674: <==negation-removal== 50995 (pos)
                    (not (at_a_p2))

                    ; #50995: <==negation-removal== 44674 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #50995: origin
                    (not_at_a_p2)

                    ; #64685: origin
                    (at_a_p3)

                    ; #36387: <==negation-removal== 64685 (pos)
                    (not (not_at_a_p3))

                    ; #44674: <==negation-removal== 50995 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #44754: origin
                    (at_a_p4)

                    ; #50995: origin
                    (not_at_a_p2)

                    ; #44674: <==negation-removal== 50995 (pos)
                    (not (at_a_p2))

                    ; #79131: <==negation-removal== 44754 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #47520: origin
                    (at_a_p5)

                    ; #50995: origin
                    (not_at_a_p2)

                    ; #44674: <==negation-removal== 50995 (pos)
                    (not (at_a_p2))

                    ; #87778: <==negation-removal== 47520 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #50995: origin
                    (not_at_a_p2)

                    ; #91008: origin
                    (at_a_p6)

                    ; #44674: <==negation-removal== 50995 (pos)
                    (not (at_a_p2))

                    ; #50502: <==negation-removal== 91008 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #42697: origin
                    (at_a_p7)

                    ; #50995: origin
                    (not_at_a_p2)

                    ; #44674: <==negation-removal== 50995 (pos)
                    (not (at_a_p2))

                    ; #69013: <==negation-removal== 42697 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #50995: origin
                    (not_at_a_p2)

                    ; #90345: origin
                    (at_a_p8)

                    ; #40714: <==negation-removal== 90345 (pos)
                    (not (not_at_a_p8))

                    ; #44674: <==negation-removal== 50995 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #40226: origin
                    (at_a_p9)

                    ; #50995: origin
                    (not_at_a_p2)

                    ; #35197: <==negation-removal== 40226 (pos)
                    (not (not_at_a_p9))

                    ; #44674: <==negation-removal== 50995 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #22154: origin
                    (at_a_p1)

                    ; #36387: origin
                    (not_at_a_p3)

                    ; #64685: <==negation-removal== 36387 (pos)
                    (not (at_a_p3))

                    ; #83809: <==negation-removal== 22154 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3))
        :effect (and
                    ; #32146: origin
                    (at_a_p10)

                    ; #36387: origin
                    (not_at_a_p3)

                    ; #60276: <==negation-removal== 32146 (pos)
                    (not (not_at_a_p10))

                    ; #64685: <==negation-removal== 36387 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3))
        :effect (and
                    ; #25352: origin
                    (at_a_p11)

                    ; #36387: origin
                    (not_at_a_p3)

                    ; #26387: <==negation-removal== 25352 (pos)
                    (not (not_at_a_p11))

                    ; #64685: <==negation-removal== 36387 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3))
        :effect (and
                    ; #36387: origin
                    (not_at_a_p3)

                    ; #41728: origin
                    (at_a_p12)

                    ; #64685: <==negation-removal== 36387 (pos)
                    (not (at_a_p3))

                    ; #88293: <==negation-removal== 41728 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #36387: origin
                    (not_at_a_p3)

                    ; #44674: origin
                    (at_a_p2)

                    ; #50995: <==negation-removal== 44674 (pos)
                    (not (not_at_a_p2))

                    ; #64685: <==negation-removal== 36387 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #36387: origin
                    (not_at_a_p3)

                    ; #64685: origin
                    (at_a_p3)

                    ; #36387: <==negation-removal== 64685 (pos)
                    (not (not_at_a_p3))

                    ; #64685: <==negation-removal== 36387 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #36387: origin
                    (not_at_a_p3)

                    ; #44754: origin
                    (at_a_p4)

                    ; #64685: <==negation-removal== 36387 (pos)
                    (not (at_a_p3))

                    ; #79131: <==negation-removal== 44754 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #36387: origin
                    (not_at_a_p3)

                    ; #47520: origin
                    (at_a_p5)

                    ; #64685: <==negation-removal== 36387 (pos)
                    (not (at_a_p3))

                    ; #87778: <==negation-removal== 47520 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #36387: origin
                    (not_at_a_p3)

                    ; #91008: origin
                    (at_a_p6)

                    ; #50502: <==negation-removal== 91008 (pos)
                    (not (not_at_a_p6))

                    ; #64685: <==negation-removal== 36387 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #36387: origin
                    (not_at_a_p3)

                    ; #42697: origin
                    (at_a_p7)

                    ; #64685: <==negation-removal== 36387 (pos)
                    (not (at_a_p3))

                    ; #69013: <==negation-removal== 42697 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #36387: origin
                    (not_at_a_p3)

                    ; #90345: origin
                    (at_a_p8)

                    ; #40714: <==negation-removal== 90345 (pos)
                    (not (not_at_a_p8))

                    ; #64685: <==negation-removal== 36387 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #36387: origin
                    (not_at_a_p3)

                    ; #40226: origin
                    (at_a_p9)

                    ; #35197: <==negation-removal== 40226 (pos)
                    (not (not_at_a_p9))

                    ; #64685: <==negation-removal== 36387 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #22154: origin
                    (at_a_p1)

                    ; #79131: origin
                    (not_at_a_p4)

                    ; #44754: <==negation-removal== 79131 (pos)
                    (not (at_a_p4))

                    ; #83809: <==negation-removal== 22154 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_a_p4))
        :effect (and
                    ; #32146: origin
                    (at_a_p10)

                    ; #79131: origin
                    (not_at_a_p4)

                    ; #44754: <==negation-removal== 79131 (pos)
                    (not (at_a_p4))

                    ; #60276: <==negation-removal== 32146 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4))
        :effect (and
                    ; #25352: origin
                    (at_a_p11)

                    ; #79131: origin
                    (not_at_a_p4)

                    ; #26387: <==negation-removal== 25352 (pos)
                    (not (not_at_a_p11))

                    ; #44754: <==negation-removal== 79131 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_a_p4))
        :effect (and
                    ; #41728: origin
                    (at_a_p12)

                    ; #79131: origin
                    (not_at_a_p4)

                    ; #44754: <==negation-removal== 79131 (pos)
                    (not (at_a_p4))

                    ; #88293: <==negation-removal== 41728 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #44674: origin
                    (at_a_p2)

                    ; #79131: origin
                    (not_at_a_p4)

                    ; #44754: <==negation-removal== 79131 (pos)
                    (not (at_a_p4))

                    ; #50995: <==negation-removal== 44674 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #64685: origin
                    (at_a_p3)

                    ; #79131: origin
                    (not_at_a_p4)

                    ; #36387: <==negation-removal== 64685 (pos)
                    (not (not_at_a_p3))

                    ; #44754: <==negation-removal== 79131 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #44754: origin
                    (at_a_p4)

                    ; #79131: origin
                    (not_at_a_p4)

                    ; #44754: <==negation-removal== 79131 (pos)
                    (not (at_a_p4))

                    ; #79131: <==negation-removal== 44754 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #47520: origin
                    (at_a_p5)

                    ; #79131: origin
                    (not_at_a_p4)

                    ; #44754: <==negation-removal== 79131 (pos)
                    (not (at_a_p4))

                    ; #87778: <==negation-removal== 47520 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #79131: origin
                    (not_at_a_p4)

                    ; #91008: origin
                    (at_a_p6)

                    ; #44754: <==negation-removal== 79131 (pos)
                    (not (at_a_p4))

                    ; #50502: <==negation-removal== 91008 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #42697: origin
                    (at_a_p7)

                    ; #79131: origin
                    (not_at_a_p4)

                    ; #44754: <==negation-removal== 79131 (pos)
                    (not (at_a_p4))

                    ; #69013: <==negation-removal== 42697 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #79131: origin
                    (not_at_a_p4)

                    ; #90345: origin
                    (at_a_p8)

                    ; #40714: <==negation-removal== 90345 (pos)
                    (not (not_at_a_p8))

                    ; #44754: <==negation-removal== 79131 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #40226: origin
                    (at_a_p9)

                    ; #79131: origin
                    (not_at_a_p4)

                    ; #35197: <==negation-removal== 40226 (pos)
                    (not (not_at_a_p9))

                    ; #44754: <==negation-removal== 79131 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #22154: origin
                    (at_a_p1)

                    ; #87778: origin
                    (not_at_a_p5)

                    ; #47520: <==negation-removal== 87778 (pos)
                    (not (at_a_p5))

                    ; #83809: <==negation-removal== 22154 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #32146: origin
                    (at_a_p10)

                    ; #87778: origin
                    (not_at_a_p5)

                    ; #47520: <==negation-removal== 87778 (pos)
                    (not (at_a_p5))

                    ; #60276: <==negation-removal== 32146 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_a_p5))
        :effect (and
                    ; #25352: origin
                    (at_a_p11)

                    ; #87778: origin
                    (not_at_a_p5)

                    ; #26387: <==negation-removal== 25352 (pos)
                    (not (not_at_a_p11))

                    ; #47520: <==negation-removal== 87778 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #41728: origin
                    (at_a_p12)

                    ; #87778: origin
                    (not_at_a_p5)

                    ; #47520: <==negation-removal== 87778 (pos)
                    (not (at_a_p5))

                    ; #88293: <==negation-removal== 41728 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #44674: origin
                    (at_a_p2)

                    ; #87778: origin
                    (not_at_a_p5)

                    ; #47520: <==negation-removal== 87778 (pos)
                    (not (at_a_p5))

                    ; #50995: <==negation-removal== 44674 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #64685: origin
                    (at_a_p3)

                    ; #87778: origin
                    (not_at_a_p5)

                    ; #36387: <==negation-removal== 64685 (pos)
                    (not (not_at_a_p3))

                    ; #47520: <==negation-removal== 87778 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #44754: origin
                    (at_a_p4)

                    ; #87778: origin
                    (not_at_a_p5)

                    ; #47520: <==negation-removal== 87778 (pos)
                    (not (at_a_p5))

                    ; #79131: <==negation-removal== 44754 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #47520: origin
                    (at_a_p5)

                    ; #87778: origin
                    (not_at_a_p5)

                    ; #47520: <==negation-removal== 87778 (pos)
                    (not (at_a_p5))

                    ; #87778: <==negation-removal== 47520 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #87778: origin
                    (not_at_a_p5)

                    ; #91008: origin
                    (at_a_p6)

                    ; #47520: <==negation-removal== 87778 (pos)
                    (not (at_a_p5))

                    ; #50502: <==negation-removal== 91008 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #42697: origin
                    (at_a_p7)

                    ; #87778: origin
                    (not_at_a_p5)

                    ; #47520: <==negation-removal== 87778 (pos)
                    (not (at_a_p5))

                    ; #69013: <==negation-removal== 42697 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #87778: origin
                    (not_at_a_p5)

                    ; #90345: origin
                    (at_a_p8)

                    ; #40714: <==negation-removal== 90345 (pos)
                    (not (not_at_a_p8))

                    ; #47520: <==negation-removal== 87778 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #40226: origin
                    (at_a_p9)

                    ; #87778: origin
                    (not_at_a_p5)

                    ; #35197: <==negation-removal== 40226 (pos)
                    (not (not_at_a_p9))

                    ; #47520: <==negation-removal== 87778 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #22154: origin
                    (at_a_p1)

                    ; #50502: origin
                    (not_at_a_p6)

                    ; #83809: <==negation-removal== 22154 (pos)
                    (not (not_at_a_p1))

                    ; #91008: <==negation-removal== 50502 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #32146: origin
                    (at_a_p10)

                    ; #50502: origin
                    (not_at_a_p6)

                    ; #60276: <==negation-removal== 32146 (pos)
                    (not (not_at_a_p10))

                    ; #91008: <==negation-removal== 50502 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (at_a_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #25352: origin
                    (at_a_p11)

                    ; #50502: origin
                    (not_at_a_p6)

                    ; #26387: <==negation-removal== 25352 (pos)
                    (not (not_at_a_p11))

                    ; #91008: <==negation-removal== 50502 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #41728: origin
                    (at_a_p12)

                    ; #50502: origin
                    (not_at_a_p6)

                    ; #88293: <==negation-removal== 41728 (pos)
                    (not (not_at_a_p12))

                    ; #91008: <==negation-removal== 50502 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #44674: origin
                    (at_a_p2)

                    ; #50502: origin
                    (not_at_a_p6)

                    ; #50995: <==negation-removal== 44674 (pos)
                    (not (not_at_a_p2))

                    ; #91008: <==negation-removal== 50502 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #50502: origin
                    (not_at_a_p6)

                    ; #64685: origin
                    (at_a_p3)

                    ; #36387: <==negation-removal== 64685 (pos)
                    (not (not_at_a_p3))

                    ; #91008: <==negation-removal== 50502 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #44754: origin
                    (at_a_p4)

                    ; #50502: origin
                    (not_at_a_p6)

                    ; #79131: <==negation-removal== 44754 (pos)
                    (not (not_at_a_p4))

                    ; #91008: <==negation-removal== 50502 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #47520: origin
                    (at_a_p5)

                    ; #50502: origin
                    (not_at_a_p6)

                    ; #87778: <==negation-removal== 47520 (pos)
                    (not (not_at_a_p5))

                    ; #91008: <==negation-removal== 50502 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #50502: origin
                    (not_at_a_p6)

                    ; #91008: origin
                    (at_a_p6)

                    ; #50502: <==negation-removal== 91008 (pos)
                    (not (not_at_a_p6))

                    ; #91008: <==negation-removal== 50502 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #42697: origin
                    (at_a_p7)

                    ; #50502: origin
                    (not_at_a_p6)

                    ; #69013: <==negation-removal== 42697 (pos)
                    (not (not_at_a_p7))

                    ; #91008: <==negation-removal== 50502 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #50502: origin
                    (not_at_a_p6)

                    ; #90345: origin
                    (at_a_p8)

                    ; #40714: <==negation-removal== 90345 (pos)
                    (not (not_at_a_p8))

                    ; #91008: <==negation-removal== 50502 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #40226: origin
                    (at_a_p9)

                    ; #50502: origin
                    (not_at_a_p6)

                    ; #35197: <==negation-removal== 40226 (pos)
                    (not (not_at_a_p9))

                    ; #91008: <==negation-removal== 50502 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #22154: origin
                    (at_a_p1)

                    ; #69013: origin
                    (not_at_a_p7)

                    ; #42697: <==negation-removal== 69013 (pos)
                    (not (at_a_p7))

                    ; #83809: <==negation-removal== 22154 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7))
        :effect (and
                    ; #32146: origin
                    (at_a_p10)

                    ; #69013: origin
                    (not_at_a_p7)

                    ; #42697: <==negation-removal== 69013 (pos)
                    (not (at_a_p7))

                    ; #60276: <==negation-removal== 32146 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #25352: origin
                    (at_a_p11)

                    ; #69013: origin
                    (not_at_a_p7)

                    ; #26387: <==negation-removal== 25352 (pos)
                    (not (not_at_a_p11))

                    ; #42697: <==negation-removal== 69013 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p12
        :precondition (and (at_a_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #41728: origin
                    (at_a_p12)

                    ; #69013: origin
                    (not_at_a_p7)

                    ; #42697: <==negation-removal== 69013 (pos)
                    (not (at_a_p7))

                    ; #88293: <==negation-removal== 41728 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #44674: origin
                    (at_a_p2)

                    ; #69013: origin
                    (not_at_a_p7)

                    ; #42697: <==negation-removal== 69013 (pos)
                    (not (at_a_p7))

                    ; #50995: <==negation-removal== 44674 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #64685: origin
                    (at_a_p3)

                    ; #69013: origin
                    (not_at_a_p7)

                    ; #36387: <==negation-removal== 64685 (pos)
                    (not (not_at_a_p3))

                    ; #42697: <==negation-removal== 69013 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #44754: origin
                    (at_a_p4)

                    ; #69013: origin
                    (not_at_a_p7)

                    ; #42697: <==negation-removal== 69013 (pos)
                    (not (at_a_p7))

                    ; #79131: <==negation-removal== 44754 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #47520: origin
                    (at_a_p5)

                    ; #69013: origin
                    (not_at_a_p7)

                    ; #42697: <==negation-removal== 69013 (pos)
                    (not (at_a_p7))

                    ; #87778: <==negation-removal== 47520 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #69013: origin
                    (not_at_a_p7)

                    ; #91008: origin
                    (at_a_p6)

                    ; #42697: <==negation-removal== 69013 (pos)
                    (not (at_a_p7))

                    ; #50502: <==negation-removal== 91008 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #42697: origin
                    (at_a_p7)

                    ; #69013: origin
                    (not_at_a_p7)

                    ; #42697: <==negation-removal== 69013 (pos)
                    (not (at_a_p7))

                    ; #69013: <==negation-removal== 42697 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #69013: origin
                    (not_at_a_p7)

                    ; #90345: origin
                    (at_a_p8)

                    ; #40714: <==negation-removal== 90345 (pos)
                    (not (not_at_a_p8))

                    ; #42697: <==negation-removal== 69013 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #40226: origin
                    (at_a_p9)

                    ; #69013: origin
                    (not_at_a_p7)

                    ; #35197: <==negation-removal== 40226 (pos)
                    (not (not_at_a_p9))

                    ; #42697: <==negation-removal== 69013 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #22154: origin
                    (at_a_p1)

                    ; #40714: origin
                    (not_at_a_p8)

                    ; #83809: <==negation-removal== 22154 (pos)
                    (not (not_at_a_p1))

                    ; #90345: <==negation-removal== 40714 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8))
        :effect (and
                    ; #32146: origin
                    (at_a_p10)

                    ; #40714: origin
                    (not_at_a_p8)

                    ; #60276: <==negation-removal== 32146 (pos)
                    (not (not_at_a_p10))

                    ; #90345: <==negation-removal== 40714 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #25352: origin
                    (at_a_p11)

                    ; #40714: origin
                    (not_at_a_p8)

                    ; #26387: <==negation-removal== 25352 (pos)
                    (not (not_at_a_p11))

                    ; #90345: <==negation-removal== 40714 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #40714: origin
                    (not_at_a_p8)

                    ; #41728: origin
                    (at_a_p12)

                    ; #88293: <==negation-removal== 41728 (pos)
                    (not (not_at_a_p12))

                    ; #90345: <==negation-removal== 40714 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #40714: origin
                    (not_at_a_p8)

                    ; #44674: origin
                    (at_a_p2)

                    ; #50995: <==negation-removal== 44674 (pos)
                    (not (not_at_a_p2))

                    ; #90345: <==negation-removal== 40714 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #40714: origin
                    (not_at_a_p8)

                    ; #64685: origin
                    (at_a_p3)

                    ; #36387: <==negation-removal== 64685 (pos)
                    (not (not_at_a_p3))

                    ; #90345: <==negation-removal== 40714 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #40714: origin
                    (not_at_a_p8)

                    ; #44754: origin
                    (at_a_p4)

                    ; #79131: <==negation-removal== 44754 (pos)
                    (not (not_at_a_p4))

                    ; #90345: <==negation-removal== 40714 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #40714: origin
                    (not_at_a_p8)

                    ; #47520: origin
                    (at_a_p5)

                    ; #87778: <==negation-removal== 47520 (pos)
                    (not (not_at_a_p5))

                    ; #90345: <==negation-removal== 40714 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #40714: origin
                    (not_at_a_p8)

                    ; #91008: origin
                    (at_a_p6)

                    ; #50502: <==negation-removal== 91008 (pos)
                    (not (not_at_a_p6))

                    ; #90345: <==negation-removal== 40714 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #40714: origin
                    (not_at_a_p8)

                    ; #42697: origin
                    (at_a_p7)

                    ; #69013: <==negation-removal== 42697 (pos)
                    (not (not_at_a_p7))

                    ; #90345: <==negation-removal== 40714 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #40714: origin
                    (not_at_a_p8)

                    ; #90345: origin
                    (at_a_p8)

                    ; #40714: <==negation-removal== 90345 (pos)
                    (not (not_at_a_p8))

                    ; #90345: <==negation-removal== 40714 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #40226: origin
                    (at_a_p9)

                    ; #40714: origin
                    (not_at_a_p8)

                    ; #35197: <==negation-removal== 40226 (pos)
                    (not (not_at_a_p9))

                    ; #90345: <==negation-removal== 40714 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #22154: origin
                    (at_a_p1)

                    ; #35197: origin
                    (not_at_a_p9)

                    ; #40226: <==negation-removal== 35197 (pos)
                    (not (at_a_p9))

                    ; #83809: <==negation-removal== 22154 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9))
        :effect (and
                    ; #32146: origin
                    (at_a_p10)

                    ; #35197: origin
                    (not_at_a_p9)

                    ; #40226: <==negation-removal== 35197 (pos)
                    (not (at_a_p9))

                    ; #60276: <==negation-removal== 32146 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9))
        :effect (and
                    ; #25352: origin
                    (at_a_p11)

                    ; #35197: origin
                    (not_at_a_p9)

                    ; #26387: <==negation-removal== 25352 (pos)
                    (not (not_at_a_p11))

                    ; #40226: <==negation-removal== 35197 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #35197: origin
                    (not_at_a_p9)

                    ; #41728: origin
                    (at_a_p12)

                    ; #40226: <==negation-removal== 35197 (pos)
                    (not (at_a_p9))

                    ; #88293: <==negation-removal== 41728 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #35197: origin
                    (not_at_a_p9)

                    ; #44674: origin
                    (at_a_p2)

                    ; #40226: <==negation-removal== 35197 (pos)
                    (not (at_a_p9))

                    ; #50995: <==negation-removal== 44674 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #35197: origin
                    (not_at_a_p9)

                    ; #64685: origin
                    (at_a_p3)

                    ; #36387: <==negation-removal== 64685 (pos)
                    (not (not_at_a_p3))

                    ; #40226: <==negation-removal== 35197 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #35197: origin
                    (not_at_a_p9)

                    ; #44754: origin
                    (at_a_p4)

                    ; #40226: <==negation-removal== 35197 (pos)
                    (not (at_a_p9))

                    ; #79131: <==negation-removal== 44754 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #35197: origin
                    (not_at_a_p9)

                    ; #47520: origin
                    (at_a_p5)

                    ; #40226: <==negation-removal== 35197 (pos)
                    (not (at_a_p9))

                    ; #87778: <==negation-removal== 47520 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #35197: origin
                    (not_at_a_p9)

                    ; #91008: origin
                    (at_a_p6)

                    ; #40226: <==negation-removal== 35197 (pos)
                    (not (at_a_p9))

                    ; #50502: <==negation-removal== 91008 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #35197: origin
                    (not_at_a_p9)

                    ; #42697: origin
                    (at_a_p7)

                    ; #40226: <==negation-removal== 35197 (pos)
                    (not (at_a_p9))

                    ; #69013: <==negation-removal== 42697 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #35197: origin
                    (not_at_a_p9)

                    ; #90345: origin
                    (at_a_p8)

                    ; #40226: <==negation-removal== 35197 (pos)
                    (not (at_a_p9))

                    ; #40714: <==negation-removal== 90345 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #35197: origin
                    (not_at_a_p9)

                    ; #40226: origin
                    (at_a_p9)

                    ; #35197: <==negation-removal== 40226 (pos)
                    (not (not_at_a_p9))

                    ; #40226: <==negation-removal== 35197 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #41067: origin
                    (at_b_p1)

                    ; #69896: origin
                    (not_at_b_p10)

                    ; #54888: <==negation-removal== 69896 (pos)
                    (not (at_b_p10))

                    ; #85961: <==negation-removal== 41067 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #54888: origin
                    (at_b_p10)

                    ; #69896: origin
                    (not_at_b_p10)

                    ; #54888: <==negation-removal== 69896 (pos)
                    (not (at_b_p10))

                    ; #69896: <==negation-removal== 54888 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #15110: origin
                    (at_b_p11)

                    ; #69896: origin
                    (not_at_b_p10)

                    ; #19461: <==negation-removal== 15110 (pos)
                    (not (not_at_b_p11))

                    ; #54888: <==negation-removal== 69896 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #55237: origin
                    (at_b_p12)

                    ; #69896: origin
                    (not_at_b_p10)

                    ; #34918: <==negation-removal== 55237 (pos)
                    (not (not_at_b_p12))

                    ; #54888: <==negation-removal== 69896 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #32735: origin
                    (at_b_p2)

                    ; #69896: origin
                    (not_at_b_p10)

                    ; #21464: <==negation-removal== 32735 (pos)
                    (not (not_at_b_p2))

                    ; #54888: <==negation-removal== 69896 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #58547: origin
                    (at_b_p3)

                    ; #69896: origin
                    (not_at_b_p10)

                    ; #54888: <==negation-removal== 69896 (pos)
                    (not (at_b_p10))

                    ; #66197: <==negation-removal== 58547 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #69896: origin
                    (not_at_b_p10)

                    ; #89860: origin
                    (at_b_p4)

                    ; #26453: <==negation-removal== 89860 (pos)
                    (not (not_at_b_p4))

                    ; #54888: <==negation-removal== 69896 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #69896: origin
                    (not_at_b_p10)

                    ; #82670: origin
                    (at_b_p5)

                    ; #28245: <==negation-removal== 82670 (pos)
                    (not (not_at_b_p5))

                    ; #54888: <==negation-removal== 69896 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #25020: origin
                    (at_b_p6)

                    ; #69896: origin
                    (not_at_b_p10)

                    ; #50987: <==negation-removal== 25020 (pos)
                    (not (not_at_b_p6))

                    ; #54888: <==negation-removal== 69896 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #54087: origin
                    (at_b_p7)

                    ; #69896: origin
                    (not_at_b_p10)

                    ; #16512: <==negation-removal== 54087 (pos)
                    (not (not_at_b_p7))

                    ; #54888: <==negation-removal== 69896 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #29406: origin
                    (at_b_p8)

                    ; #69896: origin
                    (not_at_b_p10)

                    ; #32425: <==negation-removal== 29406 (pos)
                    (not (not_at_b_p8))

                    ; #54888: <==negation-removal== 69896 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #40085: origin
                    (at_b_p9)

                    ; #69896: origin
                    (not_at_b_p10)

                    ; #35763: <==negation-removal== 40085 (pos)
                    (not (not_at_b_p9))

                    ; #54888: <==negation-removal== 69896 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11))
        :effect (and
                    ; #19461: origin
                    (not_at_b_p11)

                    ; #41067: origin
                    (at_b_p1)

                    ; #15110: <==negation-removal== 19461 (pos)
                    (not (at_b_p11))

                    ; #85961: <==negation-removal== 41067 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11))
        :effect (and
                    ; #19461: origin
                    (not_at_b_p11)

                    ; #54888: origin
                    (at_b_p10)

                    ; #15110: <==negation-removal== 19461 (pos)
                    (not (at_b_p11))

                    ; #69896: <==negation-removal== 54888 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #15110: origin
                    (at_b_p11)

                    ; #19461: origin
                    (not_at_b_p11)

                    ; #15110: <==negation-removal== 19461 (pos)
                    (not (at_b_p11))

                    ; #19461: <==negation-removal== 15110 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11))
        :effect (and
                    ; #19461: origin
                    (not_at_b_p11)

                    ; #55237: origin
                    (at_b_p12)

                    ; #15110: <==negation-removal== 19461 (pos)
                    (not (at_b_p11))

                    ; #34918: <==negation-removal== 55237 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #19461: origin
                    (not_at_b_p11)

                    ; #32735: origin
                    (at_b_p2)

                    ; #15110: <==negation-removal== 19461 (pos)
                    (not (at_b_p11))

                    ; #21464: <==negation-removal== 32735 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11))
        :effect (and
                    ; #19461: origin
                    (not_at_b_p11)

                    ; #58547: origin
                    (at_b_p3)

                    ; #15110: <==negation-removal== 19461 (pos)
                    (not (at_b_p11))

                    ; #66197: <==negation-removal== 58547 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11))
        :effect (and
                    ; #19461: origin
                    (not_at_b_p11)

                    ; #89860: origin
                    (at_b_p4)

                    ; #15110: <==negation-removal== 19461 (pos)
                    (not (at_b_p11))

                    ; #26453: <==negation-removal== 89860 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11))
        :effect (and
                    ; #19461: origin
                    (not_at_b_p11)

                    ; #82670: origin
                    (at_b_p5)

                    ; #15110: <==negation-removal== 19461 (pos)
                    (not (at_b_p11))

                    ; #28245: <==negation-removal== 82670 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11))
        :effect (and
                    ; #19461: origin
                    (not_at_b_p11)

                    ; #25020: origin
                    (at_b_p6)

                    ; #15110: <==negation-removal== 19461 (pos)
                    (not (at_b_p11))

                    ; #50987: <==negation-removal== 25020 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11))
        :effect (and
                    ; #19461: origin
                    (not_at_b_p11)

                    ; #54087: origin
                    (at_b_p7)

                    ; #15110: <==negation-removal== 19461 (pos)
                    (not (at_b_p11))

                    ; #16512: <==negation-removal== 54087 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (at_b_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #19461: origin
                    (not_at_b_p11)

                    ; #29406: origin
                    (at_b_p8)

                    ; #15110: <==negation-removal== 19461 (pos)
                    (not (at_b_p11))

                    ; #32425: <==negation-removal== 29406 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #19461: origin
                    (not_at_b_p11)

                    ; #40085: origin
                    (at_b_p9)

                    ; #15110: <==negation-removal== 19461 (pos)
                    (not (at_b_p11))

                    ; #35763: <==negation-removal== 40085 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12))
        :effect (and
                    ; #34918: origin
                    (not_at_b_p12)

                    ; #41067: origin
                    (at_b_p1)

                    ; #55237: <==negation-removal== 34918 (pos)
                    (not (at_b_p12))

                    ; #85961: <==negation-removal== 41067 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_b_p12))
        :effect (and
                    ; #34918: origin
                    (not_at_b_p12)

                    ; #54888: origin
                    (at_b_p10)

                    ; #55237: <==negation-removal== 34918 (pos)
                    (not (at_b_p12))

                    ; #69896: <==negation-removal== 54888 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_b_p12))
        :effect (and
                    ; #15110: origin
                    (at_b_p11)

                    ; #34918: origin
                    (not_at_b_p12)

                    ; #19461: <==negation-removal== 15110 (pos)
                    (not (not_at_b_p11))

                    ; #55237: <==negation-removal== 34918 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_b_p12))
        :effect (and
                    ; #34918: origin
                    (not_at_b_p12)

                    ; #55237: origin
                    (at_b_p12)

                    ; #34918: <==negation-removal== 55237 (pos)
                    (not (not_at_b_p12))

                    ; #55237: <==negation-removal== 34918 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12))
        :effect (and
                    ; #32735: origin
                    (at_b_p2)

                    ; #34918: origin
                    (not_at_b_p12)

                    ; #21464: <==negation-removal== 32735 (pos)
                    (not (not_at_b_p2))

                    ; #55237: <==negation-removal== 34918 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12))
        :effect (and
                    ; #34918: origin
                    (not_at_b_p12)

                    ; #58547: origin
                    (at_b_p3)

                    ; #55237: <==negation-removal== 34918 (pos)
                    (not (at_b_p12))

                    ; #66197: <==negation-removal== 58547 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_b_p12))
        :effect (and
                    ; #34918: origin
                    (not_at_b_p12)

                    ; #89860: origin
                    (at_b_p4)

                    ; #26453: <==negation-removal== 89860 (pos)
                    (not (not_at_b_p4))

                    ; #55237: <==negation-removal== 34918 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12))
        :effect (and
                    ; #34918: origin
                    (not_at_b_p12)

                    ; #82670: origin
                    (at_b_p5)

                    ; #28245: <==negation-removal== 82670 (pos)
                    (not (not_at_b_p5))

                    ; #55237: <==negation-removal== 34918 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_b_p12))
        :effect (and
                    ; #25020: origin
                    (at_b_p6)

                    ; #34918: origin
                    (not_at_b_p12)

                    ; #50987: <==negation-removal== 25020 (pos)
                    (not (not_at_b_p6))

                    ; #55237: <==negation-removal== 34918 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_b_p12))
        :effect (and
                    ; #34918: origin
                    (not_at_b_p12)

                    ; #54087: origin
                    (at_b_p7)

                    ; #16512: <==negation-removal== 54087 (pos)
                    (not (not_at_b_p7))

                    ; #55237: <==negation-removal== 34918 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_b_p12))
        :effect (and
                    ; #29406: origin
                    (at_b_p8)

                    ; #34918: origin
                    (not_at_b_p12)

                    ; #32425: <==negation-removal== 29406 (pos)
                    (not (not_at_b_p8))

                    ; #55237: <==negation-removal== 34918 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12))
        :effect (and
                    ; #34918: origin
                    (not_at_b_p12)

                    ; #40085: origin
                    (at_b_p9)

                    ; #35763: <==negation-removal== 40085 (pos)
                    (not (not_at_b_p9))

                    ; #55237: <==negation-removal== 34918 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #41067: origin
                    (at_b_p1)

                    ; #85961: origin
                    (not_at_b_p1)

                    ; #41067: <==negation-removal== 85961 (pos)
                    (not (at_b_p1))

                    ; #85961: <==negation-removal== 41067 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1))
        :effect (and
                    ; #54888: origin
                    (at_b_p10)

                    ; #85961: origin
                    (not_at_b_p1)

                    ; #41067: <==negation-removal== 85961 (pos)
                    (not (at_b_p1))

                    ; #69896: <==negation-removal== 54888 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1))
        :effect (and
                    ; #15110: origin
                    (at_b_p11)

                    ; #85961: origin
                    (not_at_b_p1)

                    ; #19461: <==negation-removal== 15110 (pos)
                    (not (not_at_b_p11))

                    ; #41067: <==negation-removal== 85961 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #55237: origin
                    (at_b_p12)

                    ; #85961: origin
                    (not_at_b_p1)

                    ; #34918: <==negation-removal== 55237 (pos)
                    (not (not_at_b_p12))

                    ; #41067: <==negation-removal== 85961 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #32735: origin
                    (at_b_p2)

                    ; #85961: origin
                    (not_at_b_p1)

                    ; #21464: <==negation-removal== 32735 (pos)
                    (not (not_at_b_p2))

                    ; #41067: <==negation-removal== 85961 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #58547: origin
                    (at_b_p3)

                    ; #85961: origin
                    (not_at_b_p1)

                    ; #41067: <==negation-removal== 85961 (pos)
                    (not (at_b_p1))

                    ; #66197: <==negation-removal== 58547 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #85961: origin
                    (not_at_b_p1)

                    ; #89860: origin
                    (at_b_p4)

                    ; #26453: <==negation-removal== 89860 (pos)
                    (not (not_at_b_p4))

                    ; #41067: <==negation-removal== 85961 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #82670: origin
                    (at_b_p5)

                    ; #85961: origin
                    (not_at_b_p1)

                    ; #28245: <==negation-removal== 82670 (pos)
                    (not (not_at_b_p5))

                    ; #41067: <==negation-removal== 85961 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #25020: origin
                    (at_b_p6)

                    ; #85961: origin
                    (not_at_b_p1)

                    ; #41067: <==negation-removal== 85961 (pos)
                    (not (at_b_p1))

                    ; #50987: <==negation-removal== 25020 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #54087: origin
                    (at_b_p7)

                    ; #85961: origin
                    (not_at_b_p1)

                    ; #16512: <==negation-removal== 54087 (pos)
                    (not (not_at_b_p7))

                    ; #41067: <==negation-removal== 85961 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #29406: origin
                    (at_b_p8)

                    ; #85961: origin
                    (not_at_b_p1)

                    ; #32425: <==negation-removal== 29406 (pos)
                    (not (not_at_b_p8))

                    ; #41067: <==negation-removal== 85961 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #40085: origin
                    (at_b_p9)

                    ; #85961: origin
                    (not_at_b_p1)

                    ; #35763: <==negation-removal== 40085 (pos)
                    (not (not_at_b_p9))

                    ; #41067: <==negation-removal== 85961 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #21464: origin
                    (not_at_b_p2)

                    ; #41067: origin
                    (at_b_p1)

                    ; #32735: <==negation-removal== 21464 (pos)
                    (not (at_b_p2))

                    ; #85961: <==negation-removal== 41067 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #21464: origin
                    (not_at_b_p2)

                    ; #54888: origin
                    (at_b_p10)

                    ; #32735: <==negation-removal== 21464 (pos)
                    (not (at_b_p2))

                    ; #69896: <==negation-removal== 54888 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (at_b_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #15110: origin
                    (at_b_p11)

                    ; #21464: origin
                    (not_at_b_p2)

                    ; #19461: <==negation-removal== 15110 (pos)
                    (not (not_at_b_p11))

                    ; #32735: <==negation-removal== 21464 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #21464: origin
                    (not_at_b_p2)

                    ; #55237: origin
                    (at_b_p12)

                    ; #32735: <==negation-removal== 21464 (pos)
                    (not (at_b_p2))

                    ; #34918: <==negation-removal== 55237 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #21464: origin
                    (not_at_b_p2)

                    ; #32735: origin
                    (at_b_p2)

                    ; #21464: <==negation-removal== 32735 (pos)
                    (not (not_at_b_p2))

                    ; #32735: <==negation-removal== 21464 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #21464: origin
                    (not_at_b_p2)

                    ; #58547: origin
                    (at_b_p3)

                    ; #32735: <==negation-removal== 21464 (pos)
                    (not (at_b_p2))

                    ; #66197: <==negation-removal== 58547 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #21464: origin
                    (not_at_b_p2)

                    ; #89860: origin
                    (at_b_p4)

                    ; #26453: <==negation-removal== 89860 (pos)
                    (not (not_at_b_p4))

                    ; #32735: <==negation-removal== 21464 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #21464: origin
                    (not_at_b_p2)

                    ; #82670: origin
                    (at_b_p5)

                    ; #28245: <==negation-removal== 82670 (pos)
                    (not (not_at_b_p5))

                    ; #32735: <==negation-removal== 21464 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #21464: origin
                    (not_at_b_p2)

                    ; #25020: origin
                    (at_b_p6)

                    ; #32735: <==negation-removal== 21464 (pos)
                    (not (at_b_p2))

                    ; #50987: <==negation-removal== 25020 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #21464: origin
                    (not_at_b_p2)

                    ; #54087: origin
                    (at_b_p7)

                    ; #16512: <==negation-removal== 54087 (pos)
                    (not (not_at_b_p7))

                    ; #32735: <==negation-removal== 21464 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #21464: origin
                    (not_at_b_p2)

                    ; #29406: origin
                    (at_b_p8)

                    ; #32425: <==negation-removal== 29406 (pos)
                    (not (not_at_b_p8))

                    ; #32735: <==negation-removal== 21464 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #21464: origin
                    (not_at_b_p2)

                    ; #40085: origin
                    (at_b_p9)

                    ; #32735: <==negation-removal== 21464 (pos)
                    (not (at_b_p2))

                    ; #35763: <==negation-removal== 40085 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #41067: origin
                    (at_b_p1)

                    ; #66197: origin
                    (not_at_b_p3)

                    ; #58547: <==negation-removal== 66197 (pos)
                    (not (at_b_p3))

                    ; #85961: <==negation-removal== 41067 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3))
        :effect (and
                    ; #54888: origin
                    (at_b_p10)

                    ; #66197: origin
                    (not_at_b_p3)

                    ; #58547: <==negation-removal== 66197 (pos)
                    (not (at_b_p3))

                    ; #69896: <==negation-removal== 54888 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #15110: origin
                    (at_b_p11)

                    ; #66197: origin
                    (not_at_b_p3)

                    ; #19461: <==negation-removal== 15110 (pos)
                    (not (not_at_b_p11))

                    ; #58547: <==negation-removal== 66197 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #55237: origin
                    (at_b_p12)

                    ; #66197: origin
                    (not_at_b_p3)

                    ; #34918: <==negation-removal== 55237 (pos)
                    (not (not_at_b_p12))

                    ; #58547: <==negation-removal== 66197 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #32735: origin
                    (at_b_p2)

                    ; #66197: origin
                    (not_at_b_p3)

                    ; #21464: <==negation-removal== 32735 (pos)
                    (not (not_at_b_p2))

                    ; #58547: <==negation-removal== 66197 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #58547: origin
                    (at_b_p3)

                    ; #66197: origin
                    (not_at_b_p3)

                    ; #58547: <==negation-removal== 66197 (pos)
                    (not (at_b_p3))

                    ; #66197: <==negation-removal== 58547 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #66197: origin
                    (not_at_b_p3)

                    ; #89860: origin
                    (at_b_p4)

                    ; #26453: <==negation-removal== 89860 (pos)
                    (not (not_at_b_p4))

                    ; #58547: <==negation-removal== 66197 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #66197: origin
                    (not_at_b_p3)

                    ; #82670: origin
                    (at_b_p5)

                    ; #28245: <==negation-removal== 82670 (pos)
                    (not (not_at_b_p5))

                    ; #58547: <==negation-removal== 66197 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #25020: origin
                    (at_b_p6)

                    ; #66197: origin
                    (not_at_b_p3)

                    ; #50987: <==negation-removal== 25020 (pos)
                    (not (not_at_b_p6))

                    ; #58547: <==negation-removal== 66197 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #54087: origin
                    (at_b_p7)

                    ; #66197: origin
                    (not_at_b_p3)

                    ; #16512: <==negation-removal== 54087 (pos)
                    (not (not_at_b_p7))

                    ; #58547: <==negation-removal== 66197 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #29406: origin
                    (at_b_p8)

                    ; #66197: origin
                    (not_at_b_p3)

                    ; #32425: <==negation-removal== 29406 (pos)
                    (not (not_at_b_p8))

                    ; #58547: <==negation-removal== 66197 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #40085: origin
                    (at_b_p9)

                    ; #66197: origin
                    (not_at_b_p3)

                    ; #35763: <==negation-removal== 40085 (pos)
                    (not (not_at_b_p9))

                    ; #58547: <==negation-removal== 66197 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #26453: origin
                    (not_at_b_p4)

                    ; #41067: origin
                    (at_b_p1)

                    ; #85961: <==negation-removal== 41067 (pos)
                    (not (not_at_b_p1))

                    ; #89860: <==negation-removal== 26453 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #26453: origin
                    (not_at_b_p4)

                    ; #54888: origin
                    (at_b_p10)

                    ; #69896: <==negation-removal== 54888 (pos)
                    (not (not_at_b_p10))

                    ; #89860: <==negation-removal== 26453 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (at_b_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #15110: origin
                    (at_b_p11)

                    ; #26453: origin
                    (not_at_b_p4)

                    ; #19461: <==negation-removal== 15110 (pos)
                    (not (not_at_b_p11))

                    ; #89860: <==negation-removal== 26453 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4))
        :effect (and
                    ; #26453: origin
                    (not_at_b_p4)

                    ; #55237: origin
                    (at_b_p12)

                    ; #34918: <==negation-removal== 55237 (pos)
                    (not (not_at_b_p12))

                    ; #89860: <==negation-removal== 26453 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #26453: origin
                    (not_at_b_p4)

                    ; #32735: origin
                    (at_b_p2)

                    ; #21464: <==negation-removal== 32735 (pos)
                    (not (not_at_b_p2))

                    ; #89860: <==negation-removal== 26453 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #26453: origin
                    (not_at_b_p4)

                    ; #58547: origin
                    (at_b_p3)

                    ; #66197: <==negation-removal== 58547 (pos)
                    (not (not_at_b_p3))

                    ; #89860: <==negation-removal== 26453 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #26453: origin
                    (not_at_b_p4)

                    ; #89860: origin
                    (at_b_p4)

                    ; #26453: <==negation-removal== 89860 (pos)
                    (not (not_at_b_p4))

                    ; #89860: <==negation-removal== 26453 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #26453: origin
                    (not_at_b_p4)

                    ; #82670: origin
                    (at_b_p5)

                    ; #28245: <==negation-removal== 82670 (pos)
                    (not (not_at_b_p5))

                    ; #89860: <==negation-removal== 26453 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #25020: origin
                    (at_b_p6)

                    ; #26453: origin
                    (not_at_b_p4)

                    ; #50987: <==negation-removal== 25020 (pos)
                    (not (not_at_b_p6))

                    ; #89860: <==negation-removal== 26453 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #26453: origin
                    (not_at_b_p4)

                    ; #54087: origin
                    (at_b_p7)

                    ; #16512: <==negation-removal== 54087 (pos)
                    (not (not_at_b_p7))

                    ; #89860: <==negation-removal== 26453 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #26453: origin
                    (not_at_b_p4)

                    ; #29406: origin
                    (at_b_p8)

                    ; #32425: <==negation-removal== 29406 (pos)
                    (not (not_at_b_p8))

                    ; #89860: <==negation-removal== 26453 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #26453: origin
                    (not_at_b_p4)

                    ; #40085: origin
                    (at_b_p9)

                    ; #35763: <==negation-removal== 40085 (pos)
                    (not (not_at_b_p9))

                    ; #89860: <==negation-removal== 26453 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #28245: origin
                    (not_at_b_p5)

                    ; #41067: origin
                    (at_b_p1)

                    ; #82670: <==negation-removal== 28245 (pos)
                    (not (at_b_p5))

                    ; #85961: <==negation-removal== 41067 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5))
        :effect (and
                    ; #28245: origin
                    (not_at_b_p5)

                    ; #54888: origin
                    (at_b_p10)

                    ; #69896: <==negation-removal== 54888 (pos)
                    (not (not_at_b_p10))

                    ; #82670: <==negation-removal== 28245 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_b_p5))
        :effect (and
                    ; #15110: origin
                    (at_b_p11)

                    ; #28245: origin
                    (not_at_b_p5)

                    ; #19461: <==negation-removal== 15110 (pos)
                    (not (not_at_b_p11))

                    ; #82670: <==negation-removal== 28245 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5))
        :effect (and
                    ; #28245: origin
                    (not_at_b_p5)

                    ; #55237: origin
                    (at_b_p12)

                    ; #34918: <==negation-removal== 55237 (pos)
                    (not (not_at_b_p12))

                    ; #82670: <==negation-removal== 28245 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #28245: origin
                    (not_at_b_p5)

                    ; #32735: origin
                    (at_b_p2)

                    ; #21464: <==negation-removal== 32735 (pos)
                    (not (not_at_b_p2))

                    ; #82670: <==negation-removal== 28245 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #28245: origin
                    (not_at_b_p5)

                    ; #58547: origin
                    (at_b_p3)

                    ; #66197: <==negation-removal== 58547 (pos)
                    (not (not_at_b_p3))

                    ; #82670: <==negation-removal== 28245 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #28245: origin
                    (not_at_b_p5)

                    ; #89860: origin
                    (at_b_p4)

                    ; #26453: <==negation-removal== 89860 (pos)
                    (not (not_at_b_p4))

                    ; #82670: <==negation-removal== 28245 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #28245: origin
                    (not_at_b_p5)

                    ; #82670: origin
                    (at_b_p5)

                    ; #28245: <==negation-removal== 82670 (pos)
                    (not (not_at_b_p5))

                    ; #82670: <==negation-removal== 28245 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #25020: origin
                    (at_b_p6)

                    ; #28245: origin
                    (not_at_b_p5)

                    ; #50987: <==negation-removal== 25020 (pos)
                    (not (not_at_b_p6))

                    ; #82670: <==negation-removal== 28245 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #28245: origin
                    (not_at_b_p5)

                    ; #54087: origin
                    (at_b_p7)

                    ; #16512: <==negation-removal== 54087 (pos)
                    (not (not_at_b_p7))

                    ; #82670: <==negation-removal== 28245 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #28245: origin
                    (not_at_b_p5)

                    ; #29406: origin
                    (at_b_p8)

                    ; #32425: <==negation-removal== 29406 (pos)
                    (not (not_at_b_p8))

                    ; #82670: <==negation-removal== 28245 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #28245: origin
                    (not_at_b_p5)

                    ; #40085: origin
                    (at_b_p9)

                    ; #35763: <==negation-removal== 40085 (pos)
                    (not (not_at_b_p9))

                    ; #82670: <==negation-removal== 28245 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #41067: origin
                    (at_b_p1)

                    ; #50987: origin
                    (not_at_b_p6)

                    ; #25020: <==negation-removal== 50987 (pos)
                    (not (at_b_p6))

                    ; #85961: <==negation-removal== 41067 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6))
        :effect (and
                    ; #50987: origin
                    (not_at_b_p6)

                    ; #54888: origin
                    (at_b_p10)

                    ; #25020: <==negation-removal== 50987 (pos)
                    (not (at_b_p6))

                    ; #69896: <==negation-removal== 54888 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6))
        :effect (and
                    ; #15110: origin
                    (at_b_p11)

                    ; #50987: origin
                    (not_at_b_p6)

                    ; #19461: <==negation-removal== 15110 (pos)
                    (not (not_at_b_p11))

                    ; #25020: <==negation-removal== 50987 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6))
        :effect (and
                    ; #50987: origin
                    (not_at_b_p6)

                    ; #55237: origin
                    (at_b_p12)

                    ; #25020: <==negation-removal== 50987 (pos)
                    (not (at_b_p6))

                    ; #34918: <==negation-removal== 55237 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #32735: origin
                    (at_b_p2)

                    ; #50987: origin
                    (not_at_b_p6)

                    ; #21464: <==negation-removal== 32735 (pos)
                    (not (not_at_b_p2))

                    ; #25020: <==negation-removal== 50987 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #50987: origin
                    (not_at_b_p6)

                    ; #58547: origin
                    (at_b_p3)

                    ; #25020: <==negation-removal== 50987 (pos)
                    (not (at_b_p6))

                    ; #66197: <==negation-removal== 58547 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #50987: origin
                    (not_at_b_p6)

                    ; #89860: origin
                    (at_b_p4)

                    ; #25020: <==negation-removal== 50987 (pos)
                    (not (at_b_p6))

                    ; #26453: <==negation-removal== 89860 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #50987: origin
                    (not_at_b_p6)

                    ; #82670: origin
                    (at_b_p5)

                    ; #25020: <==negation-removal== 50987 (pos)
                    (not (at_b_p6))

                    ; #28245: <==negation-removal== 82670 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #25020: origin
                    (at_b_p6)

                    ; #50987: origin
                    (not_at_b_p6)

                    ; #25020: <==negation-removal== 50987 (pos)
                    (not (at_b_p6))

                    ; #50987: <==negation-removal== 25020 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #50987: origin
                    (not_at_b_p6)

                    ; #54087: origin
                    (at_b_p7)

                    ; #16512: <==negation-removal== 54087 (pos)
                    (not (not_at_b_p7))

                    ; #25020: <==negation-removal== 50987 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #29406: origin
                    (at_b_p8)

                    ; #50987: origin
                    (not_at_b_p6)

                    ; #25020: <==negation-removal== 50987 (pos)
                    (not (at_b_p6))

                    ; #32425: <==negation-removal== 29406 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #40085: origin
                    (at_b_p9)

                    ; #50987: origin
                    (not_at_b_p6)

                    ; #25020: <==negation-removal== 50987 (pos)
                    (not (at_b_p6))

                    ; #35763: <==negation-removal== 40085 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #16512: origin
                    (not_at_b_p7)

                    ; #41067: origin
                    (at_b_p1)

                    ; #54087: <==negation-removal== 16512 (pos)
                    (not (at_b_p7))

                    ; #85961: <==negation-removal== 41067 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7))
        :effect (and
                    ; #16512: origin
                    (not_at_b_p7)

                    ; #54888: origin
                    (at_b_p10)

                    ; #54087: <==negation-removal== 16512 (pos)
                    (not (at_b_p7))

                    ; #69896: <==negation-removal== 54888 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #15110: origin
                    (at_b_p11)

                    ; #16512: origin
                    (not_at_b_p7)

                    ; #19461: <==negation-removal== 15110 (pos)
                    (not (not_at_b_p11))

                    ; #54087: <==negation-removal== 16512 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7))
        :effect (and
                    ; #16512: origin
                    (not_at_b_p7)

                    ; #55237: origin
                    (at_b_p12)

                    ; #34918: <==negation-removal== 55237 (pos)
                    (not (not_at_b_p12))

                    ; #54087: <==negation-removal== 16512 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #16512: origin
                    (not_at_b_p7)

                    ; #32735: origin
                    (at_b_p2)

                    ; #21464: <==negation-removal== 32735 (pos)
                    (not (not_at_b_p2))

                    ; #54087: <==negation-removal== 16512 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #16512: origin
                    (not_at_b_p7)

                    ; #58547: origin
                    (at_b_p3)

                    ; #54087: <==negation-removal== 16512 (pos)
                    (not (at_b_p7))

                    ; #66197: <==negation-removal== 58547 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #16512: origin
                    (not_at_b_p7)

                    ; #89860: origin
                    (at_b_p4)

                    ; #26453: <==negation-removal== 89860 (pos)
                    (not (not_at_b_p4))

                    ; #54087: <==negation-removal== 16512 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #16512: origin
                    (not_at_b_p7)

                    ; #82670: origin
                    (at_b_p5)

                    ; #28245: <==negation-removal== 82670 (pos)
                    (not (not_at_b_p5))

                    ; #54087: <==negation-removal== 16512 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #16512: origin
                    (not_at_b_p7)

                    ; #25020: origin
                    (at_b_p6)

                    ; #50987: <==negation-removal== 25020 (pos)
                    (not (not_at_b_p6))

                    ; #54087: <==negation-removal== 16512 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #16512: origin
                    (not_at_b_p7)

                    ; #54087: origin
                    (at_b_p7)

                    ; #16512: <==negation-removal== 54087 (pos)
                    (not (not_at_b_p7))

                    ; #54087: <==negation-removal== 16512 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #16512: origin
                    (not_at_b_p7)

                    ; #29406: origin
                    (at_b_p8)

                    ; #32425: <==negation-removal== 29406 (pos)
                    (not (not_at_b_p8))

                    ; #54087: <==negation-removal== 16512 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #16512: origin
                    (not_at_b_p7)

                    ; #40085: origin
                    (at_b_p9)

                    ; #35763: <==negation-removal== 40085 (pos)
                    (not (not_at_b_p9))

                    ; #54087: <==negation-removal== 16512 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #32425: origin
                    (not_at_b_p8)

                    ; #41067: origin
                    (at_b_p1)

                    ; #29406: <==negation-removal== 32425 (pos)
                    (not (at_b_p8))

                    ; #85961: <==negation-removal== 41067 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #32425: origin
                    (not_at_b_p8)

                    ; #54888: origin
                    (at_b_p10)

                    ; #29406: <==negation-removal== 32425 (pos)
                    (not (at_b_p8))

                    ; #69896: <==negation-removal== 54888 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #15110: origin
                    (at_b_p11)

                    ; #32425: origin
                    (not_at_b_p8)

                    ; #19461: <==negation-removal== 15110 (pos)
                    (not (not_at_b_p11))

                    ; #29406: <==negation-removal== 32425 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #32425: origin
                    (not_at_b_p8)

                    ; #55237: origin
                    (at_b_p12)

                    ; #29406: <==negation-removal== 32425 (pos)
                    (not (at_b_p8))

                    ; #34918: <==negation-removal== 55237 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #32425: origin
                    (not_at_b_p8)

                    ; #32735: origin
                    (at_b_p2)

                    ; #21464: <==negation-removal== 32735 (pos)
                    (not (not_at_b_p2))

                    ; #29406: <==negation-removal== 32425 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #32425: origin
                    (not_at_b_p8)

                    ; #58547: origin
                    (at_b_p3)

                    ; #29406: <==negation-removal== 32425 (pos)
                    (not (at_b_p8))

                    ; #66197: <==negation-removal== 58547 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #32425: origin
                    (not_at_b_p8)

                    ; #89860: origin
                    (at_b_p4)

                    ; #26453: <==negation-removal== 89860 (pos)
                    (not (not_at_b_p4))

                    ; #29406: <==negation-removal== 32425 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #32425: origin
                    (not_at_b_p8)

                    ; #82670: origin
                    (at_b_p5)

                    ; #28245: <==negation-removal== 82670 (pos)
                    (not (not_at_b_p5))

                    ; #29406: <==negation-removal== 32425 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #25020: origin
                    (at_b_p6)

                    ; #32425: origin
                    (not_at_b_p8)

                    ; #29406: <==negation-removal== 32425 (pos)
                    (not (at_b_p8))

                    ; #50987: <==negation-removal== 25020 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #32425: origin
                    (not_at_b_p8)

                    ; #54087: origin
                    (at_b_p7)

                    ; #16512: <==negation-removal== 54087 (pos)
                    (not (not_at_b_p7))

                    ; #29406: <==negation-removal== 32425 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #29406: origin
                    (at_b_p8)

                    ; #32425: origin
                    (not_at_b_p8)

                    ; #29406: <==negation-removal== 32425 (pos)
                    (not (at_b_p8))

                    ; #32425: <==negation-removal== 29406 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #32425: origin
                    (not_at_b_p8)

                    ; #40085: origin
                    (at_b_p9)

                    ; #29406: <==negation-removal== 32425 (pos)
                    (not (at_b_p8))

                    ; #35763: <==negation-removal== 40085 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #35763: origin
                    (not_at_b_p9)

                    ; #41067: origin
                    (at_b_p1)

                    ; #40085: <==negation-removal== 35763 (pos)
                    (not (at_b_p9))

                    ; #85961: <==negation-removal== 41067 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (at_b_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #35763: origin
                    (not_at_b_p9)

                    ; #54888: origin
                    (at_b_p10)

                    ; #40085: <==negation-removal== 35763 (pos)
                    (not (at_b_p9))

                    ; #69896: <==negation-removal== 54888 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (at_b_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #15110: origin
                    (at_b_p11)

                    ; #35763: origin
                    (not_at_b_p9)

                    ; #19461: <==negation-removal== 15110 (pos)
                    (not (not_at_b_p11))

                    ; #40085: <==negation-removal== 35763 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #35763: origin
                    (not_at_b_p9)

                    ; #55237: origin
                    (at_b_p12)

                    ; #34918: <==negation-removal== 55237 (pos)
                    (not (not_at_b_p12))

                    ; #40085: <==negation-removal== 35763 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #32735: origin
                    (at_b_p2)

                    ; #35763: origin
                    (not_at_b_p9)

                    ; #21464: <==negation-removal== 32735 (pos)
                    (not (not_at_b_p2))

                    ; #40085: <==negation-removal== 35763 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #35763: origin
                    (not_at_b_p9)

                    ; #58547: origin
                    (at_b_p3)

                    ; #40085: <==negation-removal== 35763 (pos)
                    (not (at_b_p9))

                    ; #66197: <==negation-removal== 58547 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #35763: origin
                    (not_at_b_p9)

                    ; #89860: origin
                    (at_b_p4)

                    ; #26453: <==negation-removal== 89860 (pos)
                    (not (not_at_b_p4))

                    ; #40085: <==negation-removal== 35763 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #35763: origin
                    (not_at_b_p9)

                    ; #82670: origin
                    (at_b_p5)

                    ; #28245: <==negation-removal== 82670 (pos)
                    (not (not_at_b_p5))

                    ; #40085: <==negation-removal== 35763 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #25020: origin
                    (at_b_p6)

                    ; #35763: origin
                    (not_at_b_p9)

                    ; #40085: <==negation-removal== 35763 (pos)
                    (not (at_b_p9))

                    ; #50987: <==negation-removal== 25020 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #35763: origin
                    (not_at_b_p9)

                    ; #54087: origin
                    (at_b_p7)

                    ; #16512: <==negation-removal== 54087 (pos)
                    (not (not_at_b_p7))

                    ; #40085: <==negation-removal== 35763 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #29406: origin
                    (at_b_p8)

                    ; #35763: origin
                    (not_at_b_p9)

                    ; #32425: <==negation-removal== 29406 (pos)
                    (not (not_at_b_p8))

                    ; #40085: <==negation-removal== 35763 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #35763: origin
                    (not_at_b_p9)

                    ; #40085: origin
                    (at_b_p9)

                    ; #35763: <==negation-removal== 40085 (pos)
                    (not (not_at_b_p9))

                    ; #40085: <==negation-removal== 35763 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #63678: origin
                    (not_at_c_p10)

                    ; #83538: origin
                    (at_c_p1)

                    ; #53850: <==negation-removal== 83538 (pos)
                    (not (not_at_c_p1))

                    ; #91287: <==negation-removal== 63678 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #63678: origin
                    (not_at_c_p10)

                    ; #91287: origin
                    (at_c_p10)

                    ; #63678: <==negation-removal== 91287 (pos)
                    (not (not_at_c_p10))

                    ; #91287: <==negation-removal== 63678 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #35458: origin
                    (at_c_p11)

                    ; #63678: origin
                    (not_at_c_p10)

                    ; #32539: <==negation-removal== 35458 (pos)
                    (not (not_at_c_p11))

                    ; #91287: <==negation-removal== 63678 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #41067: origin
                    (at_c_p12)

                    ; #63678: origin
                    (not_at_c_p10)

                    ; #51900: <==negation-removal== 41067 (pos)
                    (not (not_at_c_p12))

                    ; #91287: <==negation-removal== 63678 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #48452: origin
                    (at_c_p2)

                    ; #63678: origin
                    (not_at_c_p10)

                    ; #36014: <==negation-removal== 48452 (pos)
                    (not (not_at_c_p2))

                    ; #91287: <==negation-removal== 63678 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #58273: origin
                    (at_c_p3)

                    ; #63678: origin
                    (not_at_c_p10)

                    ; #20240: <==negation-removal== 58273 (pos)
                    (not (not_at_c_p3))

                    ; #91287: <==negation-removal== 63678 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #12061: origin
                    (at_c_p4)

                    ; #63678: origin
                    (not_at_c_p10)

                    ; #53810: <==negation-removal== 12061 (pos)
                    (not (not_at_c_p4))

                    ; #91287: <==negation-removal== 63678 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #15929: origin
                    (at_c_p5)

                    ; #63678: origin
                    (not_at_c_p10)

                    ; #53672: <==negation-removal== 15929 (pos)
                    (not (not_at_c_p5))

                    ; #91287: <==negation-removal== 63678 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #26232: origin
                    (at_c_p6)

                    ; #63678: origin
                    (not_at_c_p10)

                    ; #16133: <==negation-removal== 26232 (pos)
                    (not (not_at_c_p6))

                    ; #91287: <==negation-removal== 63678 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #63678: origin
                    (not_at_c_p10)

                    ; #87960: origin
                    (at_c_p7)

                    ; #36451: <==negation-removal== 87960 (pos)
                    (not (not_at_c_p7))

                    ; #91287: <==negation-removal== 63678 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #49353: origin
                    (at_c_p8)

                    ; #63678: origin
                    (not_at_c_p10)

                    ; #35281: <==negation-removal== 49353 (pos)
                    (not (not_at_c_p8))

                    ; #91287: <==negation-removal== 63678 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #63678: origin
                    (not_at_c_p10)

                    ; #91833: origin
                    (at_c_p9)

                    ; #44581: <==negation-removal== 91833 (pos)
                    (not (not_at_c_p9))

                    ; #91287: <==negation-removal== 63678 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11))
        :effect (and
                    ; #32539: origin
                    (not_at_c_p11)

                    ; #83538: origin
                    (at_c_p1)

                    ; #35458: <==negation-removal== 32539 (pos)
                    (not (at_c_p11))

                    ; #53850: <==negation-removal== 83538 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11))
        :effect (and
                    ; #32539: origin
                    (not_at_c_p11)

                    ; #91287: origin
                    (at_c_p10)

                    ; #35458: <==negation-removal== 32539 (pos)
                    (not (at_c_p11))

                    ; #63678: <==negation-removal== 91287 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_c_p11))
        :effect (and
                    ; #32539: origin
                    (not_at_c_p11)

                    ; #35458: origin
                    (at_c_p11)

                    ; #32539: <==negation-removal== 35458 (pos)
                    (not (not_at_c_p11))

                    ; #35458: <==negation-removal== 32539 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11))
        :effect (and
                    ; #32539: origin
                    (not_at_c_p11)

                    ; #41067: origin
                    (at_c_p12)

                    ; #35458: <==negation-removal== 32539 (pos)
                    (not (at_c_p11))

                    ; #51900: <==negation-removal== 41067 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11))
        :effect (and
                    ; #32539: origin
                    (not_at_c_p11)

                    ; #48452: origin
                    (at_c_p2)

                    ; #35458: <==negation-removal== 32539 (pos)
                    (not (at_c_p11))

                    ; #36014: <==negation-removal== 48452 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_c_p11))
        :effect (and
                    ; #32539: origin
                    (not_at_c_p11)

                    ; #58273: origin
                    (at_c_p3)

                    ; #20240: <==negation-removal== 58273 (pos)
                    (not (not_at_c_p3))

                    ; #35458: <==negation-removal== 32539 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11))
        :effect (and
                    ; #12061: origin
                    (at_c_p4)

                    ; #32539: origin
                    (not_at_c_p11)

                    ; #35458: <==negation-removal== 32539 (pos)
                    (not (at_c_p11))

                    ; #53810: <==negation-removal== 12061 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_c_p11))
        :effect (and
                    ; #15929: origin
                    (at_c_p5)

                    ; #32539: origin
                    (not_at_c_p11)

                    ; #35458: <==negation-removal== 32539 (pos)
                    (not (at_c_p11))

                    ; #53672: <==negation-removal== 15929 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11))
        :effect (and
                    ; #26232: origin
                    (at_c_p6)

                    ; #32539: origin
                    (not_at_c_p11)

                    ; #16133: <==negation-removal== 26232 (pos)
                    (not (not_at_c_p6))

                    ; #35458: <==negation-removal== 32539 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11))
        :effect (and
                    ; #32539: origin
                    (not_at_c_p11)

                    ; #87960: origin
                    (at_c_p7)

                    ; #35458: <==negation-removal== 32539 (pos)
                    (not (at_c_p11))

                    ; #36451: <==negation-removal== 87960 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11))
        :effect (and
                    ; #32539: origin
                    (not_at_c_p11)

                    ; #49353: origin
                    (at_c_p8)

                    ; #35281: <==negation-removal== 49353 (pos)
                    (not (not_at_c_p8))

                    ; #35458: <==negation-removal== 32539 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11))
        :effect (and
                    ; #32539: origin
                    (not_at_c_p11)

                    ; #91833: origin
                    (at_c_p9)

                    ; #35458: <==negation-removal== 32539 (pos)
                    (not (at_c_p11))

                    ; #44581: <==negation-removal== 91833 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #51900: origin
                    (not_at_c_p12)

                    ; #83538: origin
                    (at_c_p1)

                    ; #41067: <==negation-removal== 51900 (pos)
                    (not (at_c_p12))

                    ; #53850: <==negation-removal== 83538 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #51900: origin
                    (not_at_c_p12)

                    ; #91287: origin
                    (at_c_p10)

                    ; #41067: <==negation-removal== 51900 (pos)
                    (not (at_c_p12))

                    ; #63678: <==negation-removal== 91287 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #35458: origin
                    (at_c_p11)

                    ; #51900: origin
                    (not_at_c_p12)

                    ; #32539: <==negation-removal== 35458 (pos)
                    (not (not_at_c_p11))

                    ; #41067: <==negation-removal== 51900 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #41067: origin
                    (at_c_p12)

                    ; #51900: origin
                    (not_at_c_p12)

                    ; #41067: <==negation-removal== 51900 (pos)
                    (not (at_c_p12))

                    ; #51900: <==negation-removal== 41067 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (at_c_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #48452: origin
                    (at_c_p2)

                    ; #51900: origin
                    (not_at_c_p12)

                    ; #36014: <==negation-removal== 48452 (pos)
                    (not (not_at_c_p2))

                    ; #41067: <==negation-removal== 51900 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (at_c_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #51900: origin
                    (not_at_c_p12)

                    ; #58273: origin
                    (at_c_p3)

                    ; #20240: <==negation-removal== 58273 (pos)
                    (not (not_at_c_p3))

                    ; #41067: <==negation-removal== 51900 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #12061: origin
                    (at_c_p4)

                    ; #51900: origin
                    (not_at_c_p12)

                    ; #41067: <==negation-removal== 51900 (pos)
                    (not (at_c_p12))

                    ; #53810: <==negation-removal== 12061 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #15929: origin
                    (at_c_p5)

                    ; #51900: origin
                    (not_at_c_p12)

                    ; #41067: <==negation-removal== 51900 (pos)
                    (not (at_c_p12))

                    ; #53672: <==negation-removal== 15929 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (at_c_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #26232: origin
                    (at_c_p6)

                    ; #51900: origin
                    (not_at_c_p12)

                    ; #16133: <==negation-removal== 26232 (pos)
                    (not (not_at_c_p6))

                    ; #41067: <==negation-removal== 51900 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #51900: origin
                    (not_at_c_p12)

                    ; #87960: origin
                    (at_c_p7)

                    ; #36451: <==negation-removal== 87960 (pos)
                    (not (not_at_c_p7))

                    ; #41067: <==negation-removal== 51900 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #49353: origin
                    (at_c_p8)

                    ; #51900: origin
                    (not_at_c_p12)

                    ; #35281: <==negation-removal== 49353 (pos)
                    (not (not_at_c_p8))

                    ; #41067: <==negation-removal== 51900 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #51900: origin
                    (not_at_c_p12)

                    ; #91833: origin
                    (at_c_p9)

                    ; #41067: <==negation-removal== 51900 (pos)
                    (not (at_c_p12))

                    ; #44581: <==negation-removal== 91833 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #53850: origin
                    (not_at_c_p1)

                    ; #83538: origin
                    (at_c_p1)

                    ; #53850: <==negation-removal== 83538 (pos)
                    (not (not_at_c_p1))

                    ; #83538: <==negation-removal== 53850 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #53850: origin
                    (not_at_c_p1)

                    ; #91287: origin
                    (at_c_p10)

                    ; #63678: <==negation-removal== 91287 (pos)
                    (not (not_at_c_p10))

                    ; #83538: <==negation-removal== 53850 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #35458: origin
                    (at_c_p11)

                    ; #53850: origin
                    (not_at_c_p1)

                    ; #32539: <==negation-removal== 35458 (pos)
                    (not (not_at_c_p11))

                    ; #83538: <==negation-removal== 53850 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #41067: origin
                    (at_c_p12)

                    ; #53850: origin
                    (not_at_c_p1)

                    ; #51900: <==negation-removal== 41067 (pos)
                    (not (not_at_c_p12))

                    ; #83538: <==negation-removal== 53850 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #48452: origin
                    (at_c_p2)

                    ; #53850: origin
                    (not_at_c_p1)

                    ; #36014: <==negation-removal== 48452 (pos)
                    (not (not_at_c_p2))

                    ; #83538: <==negation-removal== 53850 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #53850: origin
                    (not_at_c_p1)

                    ; #58273: origin
                    (at_c_p3)

                    ; #20240: <==negation-removal== 58273 (pos)
                    (not (not_at_c_p3))

                    ; #83538: <==negation-removal== 53850 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #12061: origin
                    (at_c_p4)

                    ; #53850: origin
                    (not_at_c_p1)

                    ; #53810: <==negation-removal== 12061 (pos)
                    (not (not_at_c_p4))

                    ; #83538: <==negation-removal== 53850 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #15929: origin
                    (at_c_p5)

                    ; #53850: origin
                    (not_at_c_p1)

                    ; #53672: <==negation-removal== 15929 (pos)
                    (not (not_at_c_p5))

                    ; #83538: <==negation-removal== 53850 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #26232: origin
                    (at_c_p6)

                    ; #53850: origin
                    (not_at_c_p1)

                    ; #16133: <==negation-removal== 26232 (pos)
                    (not (not_at_c_p6))

                    ; #83538: <==negation-removal== 53850 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #53850: origin
                    (not_at_c_p1)

                    ; #87960: origin
                    (at_c_p7)

                    ; #36451: <==negation-removal== 87960 (pos)
                    (not (not_at_c_p7))

                    ; #83538: <==negation-removal== 53850 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #49353: origin
                    (at_c_p8)

                    ; #53850: origin
                    (not_at_c_p1)

                    ; #35281: <==negation-removal== 49353 (pos)
                    (not (not_at_c_p8))

                    ; #83538: <==negation-removal== 53850 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #53850: origin
                    (not_at_c_p1)

                    ; #91833: origin
                    (at_c_p9)

                    ; #44581: <==negation-removal== 91833 (pos)
                    (not (not_at_c_p9))

                    ; #83538: <==negation-removal== 53850 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #36014: origin
                    (not_at_c_p2)

                    ; #83538: origin
                    (at_c_p1)

                    ; #48452: <==negation-removal== 36014 (pos)
                    (not (at_c_p2))

                    ; #53850: <==negation-removal== 83538 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #36014: origin
                    (not_at_c_p2)

                    ; #91287: origin
                    (at_c_p10)

                    ; #48452: <==negation-removal== 36014 (pos)
                    (not (at_c_p2))

                    ; #63678: <==negation-removal== 91287 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2))
        :effect (and
                    ; #35458: origin
                    (at_c_p11)

                    ; #36014: origin
                    (not_at_c_p2)

                    ; #32539: <==negation-removal== 35458 (pos)
                    (not (not_at_c_p11))

                    ; #48452: <==negation-removal== 36014 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #36014: origin
                    (not_at_c_p2)

                    ; #41067: origin
                    (at_c_p12)

                    ; #48452: <==negation-removal== 36014 (pos)
                    (not (at_c_p2))

                    ; #51900: <==negation-removal== 41067 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #36014: origin
                    (not_at_c_p2)

                    ; #48452: origin
                    (at_c_p2)

                    ; #36014: <==negation-removal== 48452 (pos)
                    (not (not_at_c_p2))

                    ; #48452: <==negation-removal== 36014 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #36014: origin
                    (not_at_c_p2)

                    ; #58273: origin
                    (at_c_p3)

                    ; #20240: <==negation-removal== 58273 (pos)
                    (not (not_at_c_p3))

                    ; #48452: <==negation-removal== 36014 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #12061: origin
                    (at_c_p4)

                    ; #36014: origin
                    (not_at_c_p2)

                    ; #48452: <==negation-removal== 36014 (pos)
                    (not (at_c_p2))

                    ; #53810: <==negation-removal== 12061 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #15929: origin
                    (at_c_p5)

                    ; #36014: origin
                    (not_at_c_p2)

                    ; #48452: <==negation-removal== 36014 (pos)
                    (not (at_c_p2))

                    ; #53672: <==negation-removal== 15929 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #26232: origin
                    (at_c_p6)

                    ; #36014: origin
                    (not_at_c_p2)

                    ; #16133: <==negation-removal== 26232 (pos)
                    (not (not_at_c_p6))

                    ; #48452: <==negation-removal== 36014 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #36014: origin
                    (not_at_c_p2)

                    ; #87960: origin
                    (at_c_p7)

                    ; #36451: <==negation-removal== 87960 (pos)
                    (not (not_at_c_p7))

                    ; #48452: <==negation-removal== 36014 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #36014: origin
                    (not_at_c_p2)

                    ; #49353: origin
                    (at_c_p8)

                    ; #35281: <==negation-removal== 49353 (pos)
                    (not (not_at_c_p8))

                    ; #48452: <==negation-removal== 36014 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #36014: origin
                    (not_at_c_p2)

                    ; #91833: origin
                    (at_c_p9)

                    ; #44581: <==negation-removal== 91833 (pos)
                    (not (not_at_c_p9))

                    ; #48452: <==negation-removal== 36014 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #20240: origin
                    (not_at_c_p3)

                    ; #83538: origin
                    (at_c_p1)

                    ; #53850: <==negation-removal== 83538 (pos)
                    (not (not_at_c_p1))

                    ; #58273: <==negation-removal== 20240 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3))
        :effect (and
                    ; #20240: origin
                    (not_at_c_p3)

                    ; #91287: origin
                    (at_c_p10)

                    ; #58273: <==negation-removal== 20240 (pos)
                    (not (at_c_p3))

                    ; #63678: <==negation-removal== 91287 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3))
        :effect (and
                    ; #20240: origin
                    (not_at_c_p3)

                    ; #35458: origin
                    (at_c_p11)

                    ; #32539: <==negation-removal== 35458 (pos)
                    (not (not_at_c_p11))

                    ; #58273: <==negation-removal== 20240 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_c_p3))
        :effect (and
                    ; #20240: origin
                    (not_at_c_p3)

                    ; #41067: origin
                    (at_c_p12)

                    ; #51900: <==negation-removal== 41067 (pos)
                    (not (not_at_c_p12))

                    ; #58273: <==negation-removal== 20240 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #20240: origin
                    (not_at_c_p3)

                    ; #48452: origin
                    (at_c_p2)

                    ; #36014: <==negation-removal== 48452 (pos)
                    (not (not_at_c_p2))

                    ; #58273: <==negation-removal== 20240 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #20240: origin
                    (not_at_c_p3)

                    ; #58273: origin
                    (at_c_p3)

                    ; #20240: <==negation-removal== 58273 (pos)
                    (not (not_at_c_p3))

                    ; #58273: <==negation-removal== 20240 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #12061: origin
                    (at_c_p4)

                    ; #20240: origin
                    (not_at_c_p3)

                    ; #53810: <==negation-removal== 12061 (pos)
                    (not (not_at_c_p4))

                    ; #58273: <==negation-removal== 20240 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #15929: origin
                    (at_c_p5)

                    ; #20240: origin
                    (not_at_c_p3)

                    ; #53672: <==negation-removal== 15929 (pos)
                    (not (not_at_c_p5))

                    ; #58273: <==negation-removal== 20240 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #20240: origin
                    (not_at_c_p3)

                    ; #26232: origin
                    (at_c_p6)

                    ; #16133: <==negation-removal== 26232 (pos)
                    (not (not_at_c_p6))

                    ; #58273: <==negation-removal== 20240 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #20240: origin
                    (not_at_c_p3)

                    ; #87960: origin
                    (at_c_p7)

                    ; #36451: <==negation-removal== 87960 (pos)
                    (not (not_at_c_p7))

                    ; #58273: <==negation-removal== 20240 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #20240: origin
                    (not_at_c_p3)

                    ; #49353: origin
                    (at_c_p8)

                    ; #35281: <==negation-removal== 49353 (pos)
                    (not (not_at_c_p8))

                    ; #58273: <==negation-removal== 20240 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #20240: origin
                    (not_at_c_p3)

                    ; #91833: origin
                    (at_c_p9)

                    ; #44581: <==negation-removal== 91833 (pos)
                    (not (not_at_c_p9))

                    ; #58273: <==negation-removal== 20240 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #53810: origin
                    (not_at_c_p4)

                    ; #83538: origin
                    (at_c_p1)

                    ; #12061: <==negation-removal== 53810 (pos)
                    (not (at_c_p4))

                    ; #53850: <==negation-removal== 83538 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #53810: origin
                    (not_at_c_p4)

                    ; #91287: origin
                    (at_c_p10)

                    ; #12061: <==negation-removal== 53810 (pos)
                    (not (at_c_p4))

                    ; #63678: <==negation-removal== 91287 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #35458: origin
                    (at_c_p11)

                    ; #53810: origin
                    (not_at_c_p4)

                    ; #12061: <==negation-removal== 53810 (pos)
                    (not (at_c_p4))

                    ; #32539: <==negation-removal== 35458 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #41067: origin
                    (at_c_p12)

                    ; #53810: origin
                    (not_at_c_p4)

                    ; #12061: <==negation-removal== 53810 (pos)
                    (not (at_c_p4))

                    ; #51900: <==negation-removal== 41067 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #48452: origin
                    (at_c_p2)

                    ; #53810: origin
                    (not_at_c_p4)

                    ; #12061: <==negation-removal== 53810 (pos)
                    (not (at_c_p4))

                    ; #36014: <==negation-removal== 48452 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #53810: origin
                    (not_at_c_p4)

                    ; #58273: origin
                    (at_c_p3)

                    ; #12061: <==negation-removal== 53810 (pos)
                    (not (at_c_p4))

                    ; #20240: <==negation-removal== 58273 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #12061: origin
                    (at_c_p4)

                    ; #53810: origin
                    (not_at_c_p4)

                    ; #12061: <==negation-removal== 53810 (pos)
                    (not (at_c_p4))

                    ; #53810: <==negation-removal== 12061 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #15929: origin
                    (at_c_p5)

                    ; #53810: origin
                    (not_at_c_p4)

                    ; #12061: <==negation-removal== 53810 (pos)
                    (not (at_c_p4))

                    ; #53672: <==negation-removal== 15929 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #26232: origin
                    (at_c_p6)

                    ; #53810: origin
                    (not_at_c_p4)

                    ; #12061: <==negation-removal== 53810 (pos)
                    (not (at_c_p4))

                    ; #16133: <==negation-removal== 26232 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #53810: origin
                    (not_at_c_p4)

                    ; #87960: origin
                    (at_c_p7)

                    ; #12061: <==negation-removal== 53810 (pos)
                    (not (at_c_p4))

                    ; #36451: <==negation-removal== 87960 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #49353: origin
                    (at_c_p8)

                    ; #53810: origin
                    (not_at_c_p4)

                    ; #12061: <==negation-removal== 53810 (pos)
                    (not (at_c_p4))

                    ; #35281: <==negation-removal== 49353 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #53810: origin
                    (not_at_c_p4)

                    ; #91833: origin
                    (at_c_p9)

                    ; #12061: <==negation-removal== 53810 (pos)
                    (not (at_c_p4))

                    ; #44581: <==negation-removal== 91833 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #53672: origin
                    (not_at_c_p5)

                    ; #83538: origin
                    (at_c_p1)

                    ; #15929: <==negation-removal== 53672 (pos)
                    (not (at_c_p5))

                    ; #53850: <==negation-removal== 83538 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #53672: origin
                    (not_at_c_p5)

                    ; #91287: origin
                    (at_c_p10)

                    ; #15929: <==negation-removal== 53672 (pos)
                    (not (at_c_p5))

                    ; #63678: <==negation-removal== 91287 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #35458: origin
                    (at_c_p11)

                    ; #53672: origin
                    (not_at_c_p5)

                    ; #15929: <==negation-removal== 53672 (pos)
                    (not (at_c_p5))

                    ; #32539: <==negation-removal== 35458 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #41067: origin
                    (at_c_p12)

                    ; #53672: origin
                    (not_at_c_p5)

                    ; #15929: <==negation-removal== 53672 (pos)
                    (not (at_c_p5))

                    ; #51900: <==negation-removal== 41067 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #48452: origin
                    (at_c_p2)

                    ; #53672: origin
                    (not_at_c_p5)

                    ; #15929: <==negation-removal== 53672 (pos)
                    (not (at_c_p5))

                    ; #36014: <==negation-removal== 48452 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #53672: origin
                    (not_at_c_p5)

                    ; #58273: origin
                    (at_c_p3)

                    ; #15929: <==negation-removal== 53672 (pos)
                    (not (at_c_p5))

                    ; #20240: <==negation-removal== 58273 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #12061: origin
                    (at_c_p4)

                    ; #53672: origin
                    (not_at_c_p5)

                    ; #15929: <==negation-removal== 53672 (pos)
                    (not (at_c_p5))

                    ; #53810: <==negation-removal== 12061 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #15929: origin
                    (at_c_p5)

                    ; #53672: origin
                    (not_at_c_p5)

                    ; #15929: <==negation-removal== 53672 (pos)
                    (not (at_c_p5))

                    ; #53672: <==negation-removal== 15929 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #26232: origin
                    (at_c_p6)

                    ; #53672: origin
                    (not_at_c_p5)

                    ; #15929: <==negation-removal== 53672 (pos)
                    (not (at_c_p5))

                    ; #16133: <==negation-removal== 26232 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #53672: origin
                    (not_at_c_p5)

                    ; #87960: origin
                    (at_c_p7)

                    ; #15929: <==negation-removal== 53672 (pos)
                    (not (at_c_p5))

                    ; #36451: <==negation-removal== 87960 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #49353: origin
                    (at_c_p8)

                    ; #53672: origin
                    (not_at_c_p5)

                    ; #15929: <==negation-removal== 53672 (pos)
                    (not (at_c_p5))

                    ; #35281: <==negation-removal== 49353 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #53672: origin
                    (not_at_c_p5)

                    ; #91833: origin
                    (at_c_p9)

                    ; #15929: <==negation-removal== 53672 (pos)
                    (not (at_c_p5))

                    ; #44581: <==negation-removal== 91833 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #16133: origin
                    (not_at_c_p6)

                    ; #83538: origin
                    (at_c_p1)

                    ; #26232: <==negation-removal== 16133 (pos)
                    (not (at_c_p6))

                    ; #53850: <==negation-removal== 83538 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6))
        :effect (and
                    ; #16133: origin
                    (not_at_c_p6)

                    ; #91287: origin
                    (at_c_p10)

                    ; #26232: <==negation-removal== 16133 (pos)
                    (not (at_c_p6))

                    ; #63678: <==negation-removal== 91287 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6))
        :effect (and
                    ; #16133: origin
                    (not_at_c_p6)

                    ; #35458: origin
                    (at_c_p11)

                    ; #26232: <==negation-removal== 16133 (pos)
                    (not (at_c_p6))

                    ; #32539: <==negation-removal== 35458 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6))
        :effect (and
                    ; #16133: origin
                    (not_at_c_p6)

                    ; #41067: origin
                    (at_c_p12)

                    ; #26232: <==negation-removal== 16133 (pos)
                    (not (at_c_p6))

                    ; #51900: <==negation-removal== 41067 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #16133: origin
                    (not_at_c_p6)

                    ; #48452: origin
                    (at_c_p2)

                    ; #26232: <==negation-removal== 16133 (pos)
                    (not (at_c_p6))

                    ; #36014: <==negation-removal== 48452 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #16133: origin
                    (not_at_c_p6)

                    ; #58273: origin
                    (at_c_p3)

                    ; #20240: <==negation-removal== 58273 (pos)
                    (not (not_at_c_p3))

                    ; #26232: <==negation-removal== 16133 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #12061: origin
                    (at_c_p4)

                    ; #16133: origin
                    (not_at_c_p6)

                    ; #26232: <==negation-removal== 16133 (pos)
                    (not (at_c_p6))

                    ; #53810: <==negation-removal== 12061 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #15929: origin
                    (at_c_p5)

                    ; #16133: origin
                    (not_at_c_p6)

                    ; #26232: <==negation-removal== 16133 (pos)
                    (not (at_c_p6))

                    ; #53672: <==negation-removal== 15929 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #16133: origin
                    (not_at_c_p6)

                    ; #26232: origin
                    (at_c_p6)

                    ; #16133: <==negation-removal== 26232 (pos)
                    (not (not_at_c_p6))

                    ; #26232: <==negation-removal== 16133 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #16133: origin
                    (not_at_c_p6)

                    ; #87960: origin
                    (at_c_p7)

                    ; #26232: <==negation-removal== 16133 (pos)
                    (not (at_c_p6))

                    ; #36451: <==negation-removal== 87960 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #16133: origin
                    (not_at_c_p6)

                    ; #49353: origin
                    (at_c_p8)

                    ; #26232: <==negation-removal== 16133 (pos)
                    (not (at_c_p6))

                    ; #35281: <==negation-removal== 49353 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #16133: origin
                    (not_at_c_p6)

                    ; #91833: origin
                    (at_c_p9)

                    ; #26232: <==negation-removal== 16133 (pos)
                    (not (at_c_p6))

                    ; #44581: <==negation-removal== 91833 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #36451: origin
                    (not_at_c_p7)

                    ; #83538: origin
                    (at_c_p1)

                    ; #53850: <==negation-removal== 83538 (pos)
                    (not (not_at_c_p1))

                    ; #87960: <==negation-removal== 36451 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7))
        :effect (and
                    ; #36451: origin
                    (not_at_c_p7)

                    ; #91287: origin
                    (at_c_p10)

                    ; #63678: <==negation-removal== 91287 (pos)
                    (not (not_at_c_p10))

                    ; #87960: <==negation-removal== 36451 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #35458: origin
                    (at_c_p11)

                    ; #36451: origin
                    (not_at_c_p7)

                    ; #32539: <==negation-removal== 35458 (pos)
                    (not (not_at_c_p11))

                    ; #87960: <==negation-removal== 36451 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7))
        :effect (and
                    ; #36451: origin
                    (not_at_c_p7)

                    ; #41067: origin
                    (at_c_p12)

                    ; #51900: <==negation-removal== 41067 (pos)
                    (not (not_at_c_p12))

                    ; #87960: <==negation-removal== 36451 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #36451: origin
                    (not_at_c_p7)

                    ; #48452: origin
                    (at_c_p2)

                    ; #36014: <==negation-removal== 48452 (pos)
                    (not (not_at_c_p2))

                    ; #87960: <==negation-removal== 36451 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #36451: origin
                    (not_at_c_p7)

                    ; #58273: origin
                    (at_c_p3)

                    ; #20240: <==negation-removal== 58273 (pos)
                    (not (not_at_c_p3))

                    ; #87960: <==negation-removal== 36451 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #12061: origin
                    (at_c_p4)

                    ; #36451: origin
                    (not_at_c_p7)

                    ; #53810: <==negation-removal== 12061 (pos)
                    (not (not_at_c_p4))

                    ; #87960: <==negation-removal== 36451 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #15929: origin
                    (at_c_p5)

                    ; #36451: origin
                    (not_at_c_p7)

                    ; #53672: <==negation-removal== 15929 (pos)
                    (not (not_at_c_p5))

                    ; #87960: <==negation-removal== 36451 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #26232: origin
                    (at_c_p6)

                    ; #36451: origin
                    (not_at_c_p7)

                    ; #16133: <==negation-removal== 26232 (pos)
                    (not (not_at_c_p6))

                    ; #87960: <==negation-removal== 36451 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #36451: origin
                    (not_at_c_p7)

                    ; #87960: origin
                    (at_c_p7)

                    ; #36451: <==negation-removal== 87960 (pos)
                    (not (not_at_c_p7))

                    ; #87960: <==negation-removal== 36451 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #36451: origin
                    (not_at_c_p7)

                    ; #49353: origin
                    (at_c_p8)

                    ; #35281: <==negation-removal== 49353 (pos)
                    (not (not_at_c_p8))

                    ; #87960: <==negation-removal== 36451 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #36451: origin
                    (not_at_c_p7)

                    ; #91833: origin
                    (at_c_p9)

                    ; #44581: <==negation-removal== 91833 (pos)
                    (not (not_at_c_p9))

                    ; #87960: <==negation-removal== 36451 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #35281: origin
                    (not_at_c_p8)

                    ; #83538: origin
                    (at_c_p1)

                    ; #49353: <==negation-removal== 35281 (pos)
                    (not (at_c_p8))

                    ; #53850: <==negation-removal== 83538 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #35281: origin
                    (not_at_c_p8)

                    ; #91287: origin
                    (at_c_p10)

                    ; #49353: <==negation-removal== 35281 (pos)
                    (not (at_c_p8))

                    ; #63678: <==negation-removal== 91287 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #35281: origin
                    (not_at_c_p8)

                    ; #35458: origin
                    (at_c_p11)

                    ; #32539: <==negation-removal== 35458 (pos)
                    (not (not_at_c_p11))

                    ; #49353: <==negation-removal== 35281 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #35281: origin
                    (not_at_c_p8)

                    ; #41067: origin
                    (at_c_p12)

                    ; #49353: <==negation-removal== 35281 (pos)
                    (not (at_c_p8))

                    ; #51900: <==negation-removal== 41067 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #35281: origin
                    (not_at_c_p8)

                    ; #48452: origin
                    (at_c_p2)

                    ; #36014: <==negation-removal== 48452 (pos)
                    (not (not_at_c_p2))

                    ; #49353: <==negation-removal== 35281 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #35281: origin
                    (not_at_c_p8)

                    ; #58273: origin
                    (at_c_p3)

                    ; #20240: <==negation-removal== 58273 (pos)
                    (not (not_at_c_p3))

                    ; #49353: <==negation-removal== 35281 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #12061: origin
                    (at_c_p4)

                    ; #35281: origin
                    (not_at_c_p8)

                    ; #49353: <==negation-removal== 35281 (pos)
                    (not (at_c_p8))

                    ; #53810: <==negation-removal== 12061 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #15929: origin
                    (at_c_p5)

                    ; #35281: origin
                    (not_at_c_p8)

                    ; #49353: <==negation-removal== 35281 (pos)
                    (not (at_c_p8))

                    ; #53672: <==negation-removal== 15929 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #26232: origin
                    (at_c_p6)

                    ; #35281: origin
                    (not_at_c_p8)

                    ; #16133: <==negation-removal== 26232 (pos)
                    (not (not_at_c_p6))

                    ; #49353: <==negation-removal== 35281 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #35281: origin
                    (not_at_c_p8)

                    ; #87960: origin
                    (at_c_p7)

                    ; #36451: <==negation-removal== 87960 (pos)
                    (not (not_at_c_p7))

                    ; #49353: <==negation-removal== 35281 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #35281: origin
                    (not_at_c_p8)

                    ; #49353: origin
                    (at_c_p8)

                    ; #35281: <==negation-removal== 49353 (pos)
                    (not (not_at_c_p8))

                    ; #49353: <==negation-removal== 35281 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #35281: origin
                    (not_at_c_p8)

                    ; #91833: origin
                    (at_c_p9)

                    ; #44581: <==negation-removal== 91833 (pos)
                    (not (not_at_c_p9))

                    ; #49353: <==negation-removal== 35281 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #44581: origin
                    (not_at_c_p9)

                    ; #83538: origin
                    (at_c_p1)

                    ; #53850: <==negation-removal== 83538 (pos)
                    (not (not_at_c_p1))

                    ; #91833: <==negation-removal== 44581 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9))
        :effect (and
                    ; #44581: origin
                    (not_at_c_p9)

                    ; #91287: origin
                    (at_c_p10)

                    ; #63678: <==negation-removal== 91287 (pos)
                    (not (not_at_c_p10))

                    ; #91833: <==negation-removal== 44581 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (at_c_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #35458: origin
                    (at_c_p11)

                    ; #44581: origin
                    (not_at_c_p9)

                    ; #32539: <==negation-removal== 35458 (pos)
                    (not (not_at_c_p11))

                    ; #91833: <==negation-removal== 44581 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #41067: origin
                    (at_c_p12)

                    ; #44581: origin
                    (not_at_c_p9)

                    ; #51900: <==negation-removal== 41067 (pos)
                    (not (not_at_c_p12))

                    ; #91833: <==negation-removal== 44581 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #44581: origin
                    (not_at_c_p9)

                    ; #48452: origin
                    (at_c_p2)

                    ; #36014: <==negation-removal== 48452 (pos)
                    (not (not_at_c_p2))

                    ; #91833: <==negation-removal== 44581 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #44581: origin
                    (not_at_c_p9)

                    ; #58273: origin
                    (at_c_p3)

                    ; #20240: <==negation-removal== 58273 (pos)
                    (not (not_at_c_p3))

                    ; #91833: <==negation-removal== 44581 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #12061: origin
                    (at_c_p4)

                    ; #44581: origin
                    (not_at_c_p9)

                    ; #53810: <==negation-removal== 12061 (pos)
                    (not (not_at_c_p4))

                    ; #91833: <==negation-removal== 44581 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #15929: origin
                    (at_c_p5)

                    ; #44581: origin
                    (not_at_c_p9)

                    ; #53672: <==negation-removal== 15929 (pos)
                    (not (not_at_c_p5))

                    ; #91833: <==negation-removal== 44581 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #26232: origin
                    (at_c_p6)

                    ; #44581: origin
                    (not_at_c_p9)

                    ; #16133: <==negation-removal== 26232 (pos)
                    (not (not_at_c_p6))

                    ; #91833: <==negation-removal== 44581 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #44581: origin
                    (not_at_c_p9)

                    ; #87960: origin
                    (at_c_p7)

                    ; #36451: <==negation-removal== 87960 (pos)
                    (not (not_at_c_p7))

                    ; #91833: <==negation-removal== 44581 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #44581: origin
                    (not_at_c_p9)

                    ; #49353: origin
                    (at_c_p8)

                    ; #35281: <==negation-removal== 49353 (pos)
                    (not (not_at_c_p8))

                    ; #91833: <==negation-removal== 44581 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #44581: origin
                    (not_at_c_p9)

                    ; #91833: origin
                    (at_c_p9)

                    ; #44581: <==negation-removal== 91833 (pos)
                    (not (not_at_c_p9))

                    ; #91833: <==negation-removal== 44581 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #21252: <==closure== 36765 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #25008: <==closure== 44718 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #27712: <==commonly_known== 88780 (pos)
                    (Bb_checked_p10)

                    ; #36284: <==commonly_known== 88780 (pos)
                    (Ba_checked_p10)

                    ; #36765: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #43818: <==commonly_known== 88780 (pos)
                    (Bc_checked_p10)

                    ; #44718: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #55205: <==commonly_known== 70498 (neg)
                    (Pa_checked_p10)

                    ; #69558: <==commonly_known== 70498 (neg)
                    (Pb_checked_p10)

                    ; #86696: <==commonly_known== 70498 (neg)
                    (Pc_checked_p10)

                    ; #88780: origin
                    (checked_p10)

                    ; #10773: <==negation-removal== 36284 (pos)
                    (not (Pa_not_checked_p10))

                    ; #12130: <==negation-removal== 44718 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #23579: <==uncertain_firing== 25008 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #25276: <==negation-removal== 25008 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #30550: <==uncertain_firing== 44718 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #34290: <==negation-removal== 55205 (pos)
                    (not (Ba_not_checked_p10))

                    ; #35917: <==uncertain_firing== 36765 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #36918: <==negation-removal== 21252 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #55019: <==negation-removal== 36765 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #58671: <==uncertain_firing== 21252 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #70498: <==negation-removal== 88780 (pos)
                    (not (not_checked_p10))

                    ; #84072: <==negation-removal== 86696 (pos)
                    (not (Bc_not_checked_p10))

                    ; #89211: <==negation-removal== 27712 (pos)
                    (not (Pb_not_checked_p10))

                    ; #90245: <==negation-removal== 43818 (pos)
                    (not (Pc_not_checked_p10))

                    ; #99468: <==negation-removal== 69558 (pos)
                    (not (Bb_not_checked_p10))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #20641: <==closure== 57844 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #29674: <==commonly_known== 20887 (neg)
                    (Pc_checked_p11)

                    ; #32584: <==commonly_known== 64797 (pos)
                    (Bc_checked_p11)

                    ; #34403: <==commonly_known== 20887 (neg)
                    (Pa_checked_p11)

                    ; #35052: <==commonly_known== 64797 (pos)
                    (Ba_checked_p11)

                    ; #48523: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #48800: <==commonly_known== 64797 (pos)
                    (Bb_checked_p11)

                    ; #53656: <==commonly_known== 20887 (neg)
                    (Pb_checked_p11)

                    ; #57844: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #64797: origin
                    (checked_p11)

                    ; #83642: <==closure== 48523 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #14602: <==negation-removal== 57844 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #20312: <==negation-removal== 29674 (pos)
                    (not (Bc_not_checked_p11))

                    ; #20887: <==negation-removal== 64797 (pos)
                    (not (not_checked_p11))

                    ; #21803: <==uncertain_firing== 57844 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #30129: <==negation-removal== 48800 (pos)
                    (not (Pb_not_checked_p11))

                    ; #30675: <==uncertain_firing== 83642 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #38943: <==negation-removal== 20641 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #46884: <==negation-removal== 35052 (pos)
                    (not (Pa_not_checked_p11))

                    ; #48594: <==negation-removal== 53656 (pos)
                    (not (Bb_not_checked_p11))

                    ; #50680: <==negation-removal== 83642 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #50821: <==negation-removal== 34403 (pos)
                    (not (Ba_not_checked_p11))

                    ; #56152: <==negation-removal== 32584 (pos)
                    (not (Pc_not_checked_p11))

                    ; #61139: <==uncertain_firing== 48523 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #72976: <==uncertain_firing== 20641 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #79537: <==negation-removal== 48523 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #16578: origin
                    (checked_p12)

                    ; #20757: <==commonly_known== 16578 (pos)
                    (Bc_checked_p12)

                    ; #22242: <==commonly_known== 16578 (pos)
                    (Ba_checked_p12)

                    ; #39919: <==closure== 63414 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #40473: <==commonly_known== 51196 (neg)
                    (Pc_checked_p12)

                    ; #41201: <==commonly_known== 51196 (neg)
                    (Pa_checked_p12)

                    ; #58446: <==closure== 75360 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #63414: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #65502: <==commonly_known== 51196 (neg)
                    (Pb_checked_p12)

                    ; #75360: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #90847: <==commonly_known== 16578 (pos)
                    (Bb_checked_p12)

                    ; #15883: <==negation-removal== 39919 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #25741: <==uncertain_firing== 39919 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #28199: <==uncertain_firing== 58446 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #31662: <==uncertain_firing== 63414 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #32271: <==negation-removal== 41201 (pos)
                    (not (Ba_not_checked_p12))

                    ; #37246: <==negation-removal== 20757 (pos)
                    (not (Pc_not_checked_p12))

                    ; #38914: <==negation-removal== 65502 (pos)
                    (not (Bb_not_checked_p12))

                    ; #44734: <==negation-removal== 90847 (pos)
                    (not (Pb_not_checked_p12))

                    ; #48579: <==negation-removal== 40473 (pos)
                    (not (Bc_not_checked_p12))

                    ; #51196: <==negation-removal== 16578 (pos)
                    (not (not_checked_p12))

                    ; #63053: <==uncertain_firing== 75360 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #66863: <==negation-removal== 22242 (pos)
                    (not (Pa_not_checked_p12))

                    ; #81400: <==negation-removal== 75360 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #87548: <==negation-removal== 63414 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #94291: <==negation-removal== 58446 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #22688: <==commonly_known== 41197 (neg)
                    (Pc_checked_p1)

                    ; #31302: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #31672: origin
                    (checked_p1)

                    ; #41192: <==commonly_known== 31672 (pos)
                    (Bc_checked_p1)

                    ; #45845: <==commonly_known== 41197 (neg)
                    (Pb_checked_p1)

                    ; #70944: <==commonly_known== 41197 (neg)
                    (Pa_checked_p1)

                    ; #74738: <==closure== 31302 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #78002: <==commonly_known== 31672 (pos)
                    (Ba_checked_p1)

                    ; #81030: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #84154: <==closure== 81030 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #84845: <==commonly_known== 31672 (pos)
                    (Bb_checked_p1)

                    ; #14318: <==negation-removal== 84845 (pos)
                    (not (Pb_not_checked_p1))

                    ; #14817: <==negation-removal== 81030 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #33211: <==uncertain_firing== 84154 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #41197: <==negation-removal== 31672 (pos)
                    (not (not_checked_p1))

                    ; #41901: <==negation-removal== 70944 (pos)
                    (not (Ba_not_checked_p1))

                    ; #45903: <==uncertain_firing== 74738 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #53454: <==negation-removal== 41192 (pos)
                    (not (Pc_not_checked_p1))

                    ; #53949: <==negation-removal== 22688 (pos)
                    (not (Bc_not_checked_p1))

                    ; #56047: <==negation-removal== 74738 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #70205: <==uncertain_firing== 31302 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #78047: <==uncertain_firing== 81030 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #81357: <==negation-removal== 78002 (pos)
                    (not (Pa_not_checked_p1))

                    ; #81962: <==negation-removal== 31302 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #83427: <==negation-removal== 45845 (pos)
                    (not (Bb_not_checked_p1))

                    ; #89745: <==negation-removal== 84154 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10654: <==closure== 37659 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #15279: <==commonly_known== 29803 (pos)
                    (Bb_checked_p2)

                    ; #19984: <==commonly_known== 29803 (pos)
                    (Ba_checked_p2)

                    ; #29803: origin
                    (checked_p2)

                    ; #36298: <==commonly_known== 21526 (neg)
                    (Pa_checked_p2)

                    ; #37659: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #37737: <==commonly_known== 29803 (pos)
                    (Bc_checked_p2)

                    ; #68166: <==commonly_known== 21526 (neg)
                    (Pb_checked_p2)

                    ; #73481: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #87852: <==commonly_known== 21526 (neg)
                    (Pc_checked_p2)

                    ; #97456: <==closure== 73481 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #10098: <==negation-removal== 97456 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #10900: <==negation-removal== 10654 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #15963: <==uncertain_firing== 37659 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #18604: <==negation-removal== 37659 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #21526: <==negation-removal== 29803 (pos)
                    (not (not_checked_p2))

                    ; #22122: <==uncertain_firing== 10654 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #28411: <==negation-removal== 15279 (pos)
                    (not (Pb_not_checked_p2))

                    ; #30323: <==negation-removal== 36298 (pos)
                    (not (Ba_not_checked_p2))

                    ; #38294: <==negation-removal== 19984 (pos)
                    (not (Pa_not_checked_p2))

                    ; #52932: <==negation-removal== 73481 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #56203: <==uncertain_firing== 97456 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #61426: <==negation-removal== 68166 (pos)
                    (not (Bb_not_checked_p2))

                    ; #72672: <==uncertain_firing== 73481 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #90075: <==negation-removal== 87852 (pos)
                    (not (Bc_not_checked_p2))

                    ; #90828: <==negation-removal== 37737 (pos)
                    (not (Pc_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #15875: origin
                    (checked_p3)

                    ; #24015: <==closure== 42201 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #30287: <==commonly_known== 15875 (pos)
                    (Bb_checked_p3)

                    ; #42201: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #45616: <==commonly_known== 88936 (neg)
                    (Pc_checked_p3)

                    ; #63078: <==commonly_known== 88936 (neg)
                    (Pa_checked_p3)

                    ; #65557: <==commonly_known== 15875 (pos)
                    (Ba_checked_p3)

                    ; #72181: <==commonly_known== 15875 (pos)
                    (Bc_checked_p3)

                    ; #72536: <==closure== 81691 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #81691: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #87083: <==commonly_known== 88936 (neg)
                    (Pb_checked_p3)

                    ; #13438: <==negation-removal== 24015 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #13586: <==negation-removal== 87083 (pos)
                    (not (Bb_not_checked_p3))

                    ; #21574: <==negation-removal== 63078 (pos)
                    (not (Ba_not_checked_p3))

                    ; #22165: <==negation-removal== 72181 (pos)
                    (not (Pc_not_checked_p3))

                    ; #27622: <==negation-removal== 81691 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #29776: <==uncertain_firing== 42201 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #35936: <==negation-removal== 30287 (pos)
                    (not (Pb_not_checked_p3))

                    ; #46858: <==negation-removal== 65557 (pos)
                    (not (Pa_not_checked_p3))

                    ; #50197: <==negation-removal== 72536 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #59607: <==uncertain_firing== 24015 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #59619: <==uncertain_firing== 81691 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #83178: <==negation-removal== 45616 (pos)
                    (not (Bc_not_checked_p3))

                    ; #83525: <==uncertain_firing== 72536 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #88732: <==negation-removal== 42201 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #88936: <==negation-removal== 15875 (pos)
                    (not (not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11952: <==commonly_known== 14579 (neg)
                    (Pb_checked_p4)

                    ; #22065: <==commonly_known== 65995 (pos)
                    (Bc_checked_p4)

                    ; #48705: <==closure== 50280 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #50280: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #51450: <==commonly_known== 65995 (pos)
                    (Bb_checked_p4)

                    ; #58267: <==commonly_known== 14579 (neg)
                    (Pa_checked_p4)

                    ; #61767: <==closure== 84109 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #65995: origin
                    (checked_p4)

                    ; #70734: <==commonly_known== 65995 (pos)
                    (Ba_checked_p4)

                    ; #84109: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #86331: <==commonly_known== 14579 (neg)
                    (Pc_checked_p4)

                    ; #14579: <==negation-removal== 65995 (pos)
                    (not (not_checked_p4))

                    ; #17386: <==negation-removal== 61767 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #17408: <==uncertain_firing== 84109 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #22871: <==negation-removal== 86331 (pos)
                    (not (Bc_not_checked_p4))

                    ; #26422: <==negation-removal== 11952 (pos)
                    (not (Bb_not_checked_p4))

                    ; #30722: <==uncertain_firing== 50280 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #47986: <==uncertain_firing== 61767 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #50409: <==negation-removal== 58267 (pos)
                    (not (Ba_not_checked_p4))

                    ; #51746: <==negation-removal== 70734 (pos)
                    (not (Pa_not_checked_p4))

                    ; #56255: <==negation-removal== 48705 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #59330: <==uncertain_firing== 48705 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #71559: <==negation-removal== 84109 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #86203: <==negation-removal== 22065 (pos)
                    (not (Pc_not_checked_p4))

                    ; #88330: <==negation-removal== 51450 (pos)
                    (not (Pb_not_checked_p4))

                    ; #90304: <==negation-removal== 50280 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12698: <==commonly_known== 91681 (pos)
                    (Bc_checked_p5)

                    ; #15967: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #21999: <==commonly_known== 91681 (pos)
                    (Bb_checked_p5)

                    ; #31979: <==commonly_known== 81548 (neg)
                    (Pb_checked_p5)

                    ; #51755: <==closure== 15967 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #56249: <==commonly_known== 81548 (neg)
                    (Pa_checked_p5)

                    ; #72083: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #74630: <==closure== 72083 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #82186: <==commonly_known== 91681 (pos)
                    (Ba_checked_p5)

                    ; #86838: <==commonly_known== 81548 (neg)
                    (Pc_checked_p5)

                    ; #91681: origin
                    (checked_p5)

                    ; #19233: <==negation-removal== 56249 (pos)
                    (not (Ba_not_checked_p5))

                    ; #29011: <==negation-removal== 82186 (pos)
                    (not (Pa_not_checked_p5))

                    ; #51064: <==uncertain_firing== 51755 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #53046: <==negation-removal== 86838 (pos)
                    (not (Bc_not_checked_p5))

                    ; #56981: <==negation-removal== 72083 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #59220: <==negation-removal== 74630 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #61772: <==negation-removal== 31979 (pos)
                    (not (Bb_not_checked_p5))

                    ; #78241: <==uncertain_firing== 72083 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #79319: <==negation-removal== 12698 (pos)
                    (not (Pc_not_checked_p5))

                    ; #81283: <==negation-removal== 21999 (pos)
                    (not (Pb_not_checked_p5))

                    ; #81548: <==negation-removal== 91681 (pos)
                    (not (not_checked_p5))

                    ; #84373: <==uncertain_firing== 15967 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #84865: <==negation-removal== 51755 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #87919: <==uncertain_firing== 74630 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #89073: <==negation-removal== 15967 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #16146: <==commonly_known== 67035 (pos)
                    (Bb_checked_p6)

                    ; #37621: <==commonly_known== 90849 (neg)
                    (Pa_checked_p6)

                    ; #45878: <==closure== 77856 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #62535: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #64164: <==commonly_known== 67035 (pos)
                    (Bc_checked_p6)

                    ; #64979: <==commonly_known== 67035 (pos)
                    (Ba_checked_p6)

                    ; #67035: origin
                    (checked_p6)

                    ; #77856: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #89131: <==closure== 62535 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #89206: <==commonly_known== 90849 (neg)
                    (Pb_checked_p6)

                    ; #89953: <==commonly_known== 90849 (neg)
                    (Pc_checked_p6)

                    ; #10031: <==uncertain_firing== 77856 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #14410: <==negation-removal== 64164 (pos)
                    (not (Pc_not_checked_p6))

                    ; #26258: <==negation-removal== 77856 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #43395: <==negation-removal== 16146 (pos)
                    (not (Pb_not_checked_p6))

                    ; #54160: <==negation-removal== 64979 (pos)
                    (not (Pa_not_checked_p6))

                    ; #56026: <==negation-removal== 89206 (pos)
                    (not (Bb_not_checked_p6))

                    ; #62168: <==negation-removal== 89131 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #69872: <==uncertain_firing== 62535 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #71320: <==negation-removal== 45878 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #74085: <==negation-removal== 37621 (pos)
                    (not (Ba_not_checked_p6))

                    ; #80816: <==uncertain_firing== 89131 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #85809: <==uncertain_firing== 45878 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #86874: <==negation-removal== 62535 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #90849: <==negation-removal== 67035 (pos)
                    (not (not_checked_p6))

                    ; #92163: <==negation-removal== 89953 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #17880: <==closure== 29323 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #29323: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #29525: <==commonly_known== 12735 (neg)
                    (Pa_checked_p7)

                    ; #32581: <==closure== 49421 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #38141: <==commonly_known== 12735 (neg)
                    (Pb_checked_p7)

                    ; #49421: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #50892: origin
                    (checked_p7)

                    ; #81314: <==commonly_known== 50892 (pos)
                    (Bc_checked_p7)

                    ; #81441: <==commonly_known== 50892 (pos)
                    (Ba_checked_p7)

                    ; #81998: <==commonly_known== 12735 (neg)
                    (Pc_checked_p7)

                    ; #91976: <==commonly_known== 50892 (pos)
                    (Bb_checked_p7)

                    ; #12735: <==negation-removal== 50892 (pos)
                    (not (not_checked_p7))

                    ; #47799: <==uncertain_firing== 32581 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #49000: <==uncertain_firing== 29323 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #57444: <==negation-removal== 32581 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #58413: <==negation-removal== 17880 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #59978: <==negation-removal== 49421 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #61979: <==negation-removal== 29323 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #63370: <==negation-removal== 81314 (pos)
                    (not (Pc_not_checked_p7))

                    ; #65744: <==negation-removal== 81998 (pos)
                    (not (Bc_not_checked_p7))

                    ; #74576: <==uncertain_firing== 17880 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #76137: <==negation-removal== 29525 (pos)
                    (not (Ba_not_checked_p7))

                    ; #81541: <==negation-removal== 91976 (pos)
                    (not (Pb_not_checked_p7))

                    ; #86796: <==uncertain_firing== 49421 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #89968: <==negation-removal== 81441 (pos)
                    (not (Pa_not_checked_p7))

                    ; #91308: <==negation-removal== 38141 (pos)
                    (not (Bb_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #16520: <==commonly_known== 84417 (pos)
                    (Ba_checked_p8)

                    ; #25701: <==commonly_known== 19878 (neg)
                    (Pa_checked_p8)

                    ; #28527: <==commonly_known== 84417 (pos)
                    (Bc_checked_p8)

                    ; #36923: <==closure== 47941 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #41581: <==closure== 66657 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #47941: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #54041: <==commonly_known== 19878 (neg)
                    (Pc_checked_p8)

                    ; #66657: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #76214: <==commonly_known== 84417 (pos)
                    (Bb_checked_p8)

                    ; #84417: origin
                    (checked_p8)

                    ; #87833: <==commonly_known== 19878 (neg)
                    (Pb_checked_p8)

                    ; #14862: <==uncertain_firing== 36923 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #17077: <==negation-removal== 28527 (pos)
                    (not (Pc_not_checked_p8))

                    ; #17729: <==negation-removal== 25701 (pos)
                    (not (Ba_not_checked_p8))

                    ; #19878: <==negation-removal== 84417 (pos)
                    (not (not_checked_p8))

                    ; #25152: <==uncertain_firing== 41581 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #38304: <==negation-removal== 16520 (pos)
                    (not (Pa_not_checked_p8))

                    ; #43939: <==negation-removal== 36923 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #53703: <==negation-removal== 76214 (pos)
                    (not (Pb_not_checked_p8))

                    ; #54201: <==negation-removal== 87833 (pos)
                    (not (Bb_not_checked_p8))

                    ; #66195: <==negation-removal== 66657 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #66556: <==negation-removal== 47941 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #69853: <==uncertain_firing== 47941 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #71594: <==negation-removal== 41581 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #80957: <==negation-removal== 54041 (pos)
                    (not (Bc_not_checked_p8))

                    ; #82725: <==uncertain_firing== 66657 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12385: <==commonly_known== 35774 (neg)
                    (Pa_checked_p9)

                    ; #14315: <==closure== 70808 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #20046: <==commonly_known== 35774 (neg)
                    (Pc_checked_p9)

                    ; #31033: <==commonly_known== 38777 (pos)
                    (Bc_checked_p9)

                    ; #37262: <==commonly_known== 38777 (pos)
                    (Bb_checked_p9)

                    ; #38777: origin
                    (checked_p9)

                    ; #51267: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #52733: <==commonly_known== 35774 (neg)
                    (Pb_checked_p9)

                    ; #53461: <==closure== 51267 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #61771: <==commonly_known== 38777 (pos)
                    (Ba_checked_p9)

                    ; #70808: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #12741: <==uncertain_firing== 53461 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #13805: <==uncertain_firing== 14315 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #15082: <==negation-removal== 20046 (pos)
                    (not (Bc_not_checked_p9))

                    ; #17268: <==uncertain_firing== 51267 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #35774: <==negation-removal== 38777 (pos)
                    (not (not_checked_p9))

                    ; #44727: <==negation-removal== 70808 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #45432: <==negation-removal== 61771 (pos)
                    (not (Pa_not_checked_p9))

                    ; #58505: <==negation-removal== 14315 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #63936: <==negation-removal== 52733 (pos)
                    (not (Bb_not_checked_p9))

                    ; #66751: <==uncertain_firing== 70808 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #67301: <==negation-removal== 51267 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #81755: <==negation-removal== 31033 (pos)
                    (not (Pc_not_checked_p9))

                    ; #83615: <==negation-removal== 53461 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #89961: <==negation-removal== 12385 (pos)
                    (not (Ba_not_checked_p9))

                    ; #91863: <==negation-removal== 37262 (pos)
                    (not (Pb_not_checked_p9))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #15265: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #27712: <==commonly_known== 88780 (pos)
                    (Bb_checked_p10)

                    ; #36284: <==commonly_known== 88780 (pos)
                    (Ba_checked_p10)

                    ; #38960: <==closure== 76269 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #43818: <==commonly_known== 88780 (pos)
                    (Bc_checked_p10)

                    ; #55205: <==commonly_known== 70498 (neg)
                    (Pa_checked_p10)

                    ; #68118: <==closure== 15265 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #69558: <==commonly_known== 70498 (neg)
                    (Pb_checked_p10)

                    ; #76269: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #86696: <==commonly_known== 70498 (neg)
                    (Pc_checked_p10)

                    ; #88780: origin
                    (checked_p10)

                    ; #10773: <==negation-removal== 36284 (pos)
                    (not (Pa_not_checked_p10))

                    ; #17368: <==negation-removal== 68118 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #29496: <==uncertain_firing== 15265 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #30463: <==negation-removal== 38960 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #34290: <==negation-removal== 55205 (pos)
                    (not (Ba_not_checked_p10))

                    ; #34406: <==uncertain_firing== 38960 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #41466: <==uncertain_firing== 68118 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #70498: <==negation-removal== 88780 (pos)
                    (not (not_checked_p10))

                    ; #77998: <==negation-removal== 15265 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #80317: <==negation-removal== 76269 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #84072: <==negation-removal== 86696 (pos)
                    (not (Bc_not_checked_p10))

                    ; #89211: <==negation-removal== 27712 (pos)
                    (not (Pb_not_checked_p10))

                    ; #90245: <==negation-removal== 43818 (pos)
                    (not (Pc_not_checked_p10))

                    ; #93275: <==uncertain_firing== 76269 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #99468: <==negation-removal== 69558 (pos)
                    (not (Bb_not_checked_p10))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #11800: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #29674: <==commonly_known== 20887 (neg)
                    (Pc_checked_p11)

                    ; #32584: <==commonly_known== 64797 (pos)
                    (Bc_checked_p11)

                    ; #34403: <==commonly_known== 20887 (neg)
                    (Pa_checked_p11)

                    ; #35052: <==commonly_known== 64797 (pos)
                    (Ba_checked_p11)

                    ; #47828: <==closure== 58043 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #48800: <==commonly_known== 64797 (pos)
                    (Bb_checked_p11)

                    ; #53656: <==commonly_known== 20887 (neg)
                    (Pb_checked_p11)

                    ; #58043: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #64797: origin
                    (checked_p11)

                    ; #81706: <==closure== 11800 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #15333: <==negation-removal== 11800 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #20312: <==negation-removal== 29674 (pos)
                    (not (Bc_not_checked_p11))

                    ; #20887: <==negation-removal== 64797 (pos)
                    (not (not_checked_p11))

                    ; #30129: <==negation-removal== 48800 (pos)
                    (not (Pb_not_checked_p11))

                    ; #32764: <==negation-removal== 47828 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #35195: <==uncertain_firing== 11800 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #36511: <==uncertain_firing== 47828 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #42773: <==uncertain_firing== 81706 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #46884: <==negation-removal== 35052 (pos)
                    (not (Pa_not_checked_p11))

                    ; #48594: <==negation-removal== 53656 (pos)
                    (not (Bb_not_checked_p11))

                    ; #50821: <==negation-removal== 34403 (pos)
                    (not (Ba_not_checked_p11))

                    ; #54296: <==uncertain_firing== 58043 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #56152: <==negation-removal== 32584 (pos)
                    (not (Pc_not_checked_p11))

                    ; #62581: <==negation-removal== 58043 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #87136: <==negation-removal== 81706 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #13527: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #16578: origin
                    (checked_p12)

                    ; #20757: <==commonly_known== 16578 (pos)
                    (Bc_checked_p12)

                    ; #22242: <==commonly_known== 16578 (pos)
                    (Ba_checked_p12)

                    ; #39849: <==closure== 89638 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #40473: <==commonly_known== 51196 (neg)
                    (Pc_checked_p12)

                    ; #41201: <==commonly_known== 51196 (neg)
                    (Pa_checked_p12)

                    ; #60664: <==closure== 13527 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #65502: <==commonly_known== 51196 (neg)
                    (Pb_checked_p12)

                    ; #89638: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #90847: <==commonly_known== 16578 (pos)
                    (Bb_checked_p12)

                    ; #28417: <==uncertain_firing== 89638 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #29623: <==negation-removal== 39849 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #32271: <==negation-removal== 41201 (pos)
                    (not (Ba_not_checked_p12))

                    ; #37246: <==negation-removal== 20757 (pos)
                    (not (Pc_not_checked_p12))

                    ; #38914: <==negation-removal== 65502 (pos)
                    (not (Bb_not_checked_p12))

                    ; #40057: <==uncertain_firing== 39849 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #44603: <==uncertain_firing== 60664 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #44734: <==negation-removal== 90847 (pos)
                    (not (Pb_not_checked_p12))

                    ; #48579: <==negation-removal== 40473 (pos)
                    (not (Bc_not_checked_p12))

                    ; #50696: <==negation-removal== 89638 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #51196: <==negation-removal== 16578 (pos)
                    (not (not_checked_p12))

                    ; #66863: <==negation-removal== 22242 (pos)
                    (not (Pa_not_checked_p12))

                    ; #73867: <==negation-removal== 13527 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #86755: <==negation-removal== 60664 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #91648: <==uncertain_firing== 13527 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #22688: <==commonly_known== 41197 (neg)
                    (Pc_checked_p1)

                    ; #24086: <==closure== 91177 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #31672: origin
                    (checked_p1)

                    ; #37502: <==closure== 41689 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #41192: <==commonly_known== 31672 (pos)
                    (Bc_checked_p1)

                    ; #41689: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #45845: <==commonly_known== 41197 (neg)
                    (Pb_checked_p1)

                    ; #70944: <==commonly_known== 41197 (neg)
                    (Pa_checked_p1)

                    ; #78002: <==commonly_known== 31672 (pos)
                    (Ba_checked_p1)

                    ; #84845: <==commonly_known== 31672 (pos)
                    (Bb_checked_p1)

                    ; #91177: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #14318: <==negation-removal== 84845 (pos)
                    (not (Pb_not_checked_p1))

                    ; #18015: <==negation-removal== 41689 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #41197: <==negation-removal== 31672 (pos)
                    (not (not_checked_p1))

                    ; #41901: <==negation-removal== 70944 (pos)
                    (not (Ba_not_checked_p1))

                    ; #50467: <==negation-removal== 91177 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #51980: <==uncertain_firing== 37502 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #53199: <==negation-removal== 37502 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #53454: <==negation-removal== 41192 (pos)
                    (not (Pc_not_checked_p1))

                    ; #53949: <==negation-removal== 22688 (pos)
                    (not (Bc_not_checked_p1))

                    ; #57423: <==uncertain_firing== 91177 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #58997: <==uncertain_firing== 41689 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #65454: <==uncertain_firing== 24086 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #81324: <==negation-removal== 24086 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #81357: <==negation-removal== 78002 (pos)
                    (not (Pa_not_checked_p1))

                    ; #83427: <==negation-removal== 45845 (pos)
                    (not (Bb_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #15279: <==commonly_known== 29803 (pos)
                    (Bb_checked_p2)

                    ; #16008: <==closure== 21299 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #19984: <==commonly_known== 29803 (pos)
                    (Ba_checked_p2)

                    ; #21299: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #29803: origin
                    (checked_p2)

                    ; #35253: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #36298: <==commonly_known== 21526 (neg)
                    (Pa_checked_p2)

                    ; #37737: <==commonly_known== 29803 (pos)
                    (Bc_checked_p2)

                    ; #68166: <==commonly_known== 21526 (neg)
                    (Pb_checked_p2)

                    ; #72607: <==closure== 35253 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #87852: <==commonly_known== 21526 (neg)
                    (Pc_checked_p2)

                    ; #12780: <==negation-removal== 16008 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #14586: <==negation-removal== 72607 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #21526: <==negation-removal== 29803 (pos)
                    (not (not_checked_p2))

                    ; #22471: <==uncertain_firing== 16008 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #28411: <==negation-removal== 15279 (pos)
                    (not (Pb_not_checked_p2))

                    ; #30323: <==negation-removal== 36298 (pos)
                    (not (Ba_not_checked_p2))

                    ; #38294: <==negation-removal== 19984 (pos)
                    (not (Pa_not_checked_p2))

                    ; #55367: <==uncertain_firing== 21299 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #61426: <==negation-removal== 68166 (pos)
                    (not (Bb_not_checked_p2))

                    ; #61458: <==uncertain_firing== 72607 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #61507: <==negation-removal== 35253 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #70169: <==negation-removal== 21299 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #88734: <==uncertain_firing== 35253 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #90075: <==negation-removal== 87852 (pos)
                    (not (Bc_not_checked_p2))

                    ; #90828: <==negation-removal== 37737 (pos)
                    (not (Pc_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #15875: origin
                    (checked_p3)

                    ; #20476: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #30287: <==commonly_known== 15875 (pos)
                    (Bb_checked_p3)

                    ; #31304: <==closure== 57836 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #43185: <==closure== 20476 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #45616: <==commonly_known== 88936 (neg)
                    (Pc_checked_p3)

                    ; #57836: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #63078: <==commonly_known== 88936 (neg)
                    (Pa_checked_p3)

                    ; #65557: <==commonly_known== 15875 (pos)
                    (Ba_checked_p3)

                    ; #72181: <==commonly_known== 15875 (pos)
                    (Bc_checked_p3)

                    ; #87083: <==commonly_known== 88936 (neg)
                    (Pb_checked_p3)

                    ; #13586: <==negation-removal== 87083 (pos)
                    (not (Bb_not_checked_p3))

                    ; #21574: <==negation-removal== 63078 (pos)
                    (not (Ba_not_checked_p3))

                    ; #22165: <==negation-removal== 72181 (pos)
                    (not (Pc_not_checked_p3))

                    ; #28800: <==negation-removal== 57836 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #35936: <==negation-removal== 30287 (pos)
                    (not (Pb_not_checked_p3))

                    ; #36594: <==uncertain_firing== 20476 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #46858: <==negation-removal== 65557 (pos)
                    (not (Pa_not_checked_p3))

                    ; #57712: <==uncertain_firing== 31304 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #59722: <==negation-removal== 31304 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #78816: <==uncertain_firing== 57836 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #83178: <==negation-removal== 45616 (pos)
                    (not (Bc_not_checked_p3))

                    ; #83416: <==negation-removal== 43185 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #88936: <==negation-removal== 15875 (pos)
                    (not (not_checked_p3))

                    ; #90399: <==uncertain_firing== 43185 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #91190: <==negation-removal== 20476 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11952: <==commonly_known== 14579 (neg)
                    (Pb_checked_p4)

                    ; #22065: <==commonly_known== 65995 (pos)
                    (Bc_checked_p4)

                    ; #51450: <==commonly_known== 65995 (pos)
                    (Bb_checked_p4)

                    ; #58267: <==commonly_known== 14579 (neg)
                    (Pa_checked_p4)

                    ; #65995: origin
                    (checked_p4)

                    ; #66371: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #68855: <==closure== 66371 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #70734: <==commonly_known== 65995 (pos)
                    (Ba_checked_p4)

                    ; #73462: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #80955: <==closure== 73462 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #86331: <==commonly_known== 14579 (neg)
                    (Pc_checked_p4)

                    ; #10686: <==negation-removal== 73462 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #14579: <==negation-removal== 65995 (pos)
                    (not (not_checked_p4))

                    ; #22871: <==negation-removal== 86331 (pos)
                    (not (Bc_not_checked_p4))

                    ; #23843: <==negation-removal== 66371 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #26422: <==negation-removal== 11952 (pos)
                    (not (Bb_not_checked_p4))

                    ; #29250: <==negation-removal== 80955 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #32991: <==uncertain_firing== 73462 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #33063: <==uncertain_firing== 80955 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #50409: <==negation-removal== 58267 (pos)
                    (not (Ba_not_checked_p4))

                    ; #51746: <==negation-removal== 70734 (pos)
                    (not (Pa_not_checked_p4))

                    ; #61248: <==uncertain_firing== 68855 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #86203: <==negation-removal== 22065 (pos)
                    (not (Pc_not_checked_p4))

                    ; #88330: <==negation-removal== 51450 (pos)
                    (not (Pb_not_checked_p4))

                    ; #90501: <==uncertain_firing== 66371 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #92523: <==negation-removal== 68855 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12698: <==commonly_known== 91681 (pos)
                    (Bc_checked_p5)

                    ; #14844: <==closure== 24748 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #21999: <==commonly_known== 91681 (pos)
                    (Bb_checked_p5)

                    ; #24748: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #31979: <==commonly_known== 81548 (neg)
                    (Pb_checked_p5)

                    ; #56249: <==commonly_known== 81548 (neg)
                    (Pa_checked_p5)

                    ; #60212: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #82186: <==commonly_known== 91681 (pos)
                    (Ba_checked_p5)

                    ; #86838: <==commonly_known== 81548 (neg)
                    (Pc_checked_p5)

                    ; #91156: <==closure== 60212 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #91681: origin
                    (checked_p5)

                    ; #19233: <==negation-removal== 56249 (pos)
                    (not (Ba_not_checked_p5))

                    ; #25303: <==negation-removal== 91156 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #29011: <==negation-removal== 82186 (pos)
                    (not (Pa_not_checked_p5))

                    ; #30349: <==negation-removal== 60212 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #36498: <==uncertain_firing== 60212 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #39605: <==uncertain_firing== 24748 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #53046: <==negation-removal== 86838 (pos)
                    (not (Bc_not_checked_p5))

                    ; #61772: <==negation-removal== 31979 (pos)
                    (not (Bb_not_checked_p5))

                    ; #71510: <==uncertain_firing== 14844 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #79319: <==negation-removal== 12698 (pos)
                    (not (Pc_not_checked_p5))

                    ; #80076: <==negation-removal== 14844 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #81283: <==negation-removal== 21999 (pos)
                    (not (Pb_not_checked_p5))

                    ; #81548: <==negation-removal== 91681 (pos)
                    (not (not_checked_p5))

                    ; #86981: <==uncertain_firing== 91156 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #88299: <==negation-removal== 24748 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #16146: <==commonly_known== 67035 (pos)
                    (Bb_checked_p6)

                    ; #28094: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #37621: <==commonly_known== 90849 (neg)
                    (Pa_checked_p6)

                    ; #57819: <==closure== 58092 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #58092: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #64164: <==commonly_known== 67035 (pos)
                    (Bc_checked_p6)

                    ; #64979: <==commonly_known== 67035 (pos)
                    (Ba_checked_p6)

                    ; #67035: origin
                    (checked_p6)

                    ; #75851: <==closure== 28094 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #89206: <==commonly_known== 90849 (neg)
                    (Pb_checked_p6)

                    ; #89953: <==commonly_known== 90849 (neg)
                    (Pc_checked_p6)

                    ; #13854: <==uncertain_firing== 75851 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #14410: <==negation-removal== 64164 (pos)
                    (not (Pc_not_checked_p6))

                    ; #16819: <==negation-removal== 75851 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #18957: <==negation-removal== 28094 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #28282: <==uncertain_firing== 28094 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #29889: <==negation-removal== 58092 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #33538: <==uncertain_firing== 58092 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #43395: <==negation-removal== 16146 (pos)
                    (not (Pb_not_checked_p6))

                    ; #54160: <==negation-removal== 64979 (pos)
                    (not (Pa_not_checked_p6))

                    ; #56026: <==negation-removal== 89206 (pos)
                    (not (Bb_not_checked_p6))

                    ; #74085: <==negation-removal== 37621 (pos)
                    (not (Ba_not_checked_p6))

                    ; #78185: <==uncertain_firing== 57819 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #82390: <==negation-removal== 57819 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #90849: <==negation-removal== 67035 (pos)
                    (not (not_checked_p6))

                    ; #92163: <==negation-removal== 89953 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #29525: <==commonly_known== 12735 (neg)
                    (Pa_checked_p7)

                    ; #34575: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #38141: <==commonly_known== 12735 (neg)
                    (Pb_checked_p7)

                    ; #50892: origin
                    (checked_p7)

                    ; #54831: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #73211: <==closure== 34575 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #74367: <==closure== 54831 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #81314: <==commonly_known== 50892 (pos)
                    (Bc_checked_p7)

                    ; #81441: <==commonly_known== 50892 (pos)
                    (Ba_checked_p7)

                    ; #81998: <==commonly_known== 12735 (neg)
                    (Pc_checked_p7)

                    ; #91976: <==commonly_known== 50892 (pos)
                    (Bb_checked_p7)

                    ; #12735: <==negation-removal== 50892 (pos)
                    (not (not_checked_p7))

                    ; #36876: <==uncertain_firing== 34575 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #47801: <==negation-removal== 74367 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #54823: <==uncertain_firing== 73211 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #60742: <==negation-removal== 34575 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #63370: <==negation-removal== 81314 (pos)
                    (not (Pc_not_checked_p7))

                    ; #65744: <==negation-removal== 81998 (pos)
                    (not (Bc_not_checked_p7))

                    ; #69357: <==negation-removal== 73211 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #74003: <==uncertain_firing== 74367 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #76137: <==negation-removal== 29525 (pos)
                    (not (Ba_not_checked_p7))

                    ; #81190: <==uncertain_firing== 54831 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #81541: <==negation-removal== 91976 (pos)
                    (not (Pb_not_checked_p7))

                    ; #88528: <==negation-removal== 54831 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #89968: <==negation-removal== 81441 (pos)
                    (not (Pa_not_checked_p7))

                    ; #91308: <==negation-removal== 38141 (pos)
                    (not (Bb_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #16520: <==commonly_known== 84417 (pos)
                    (Ba_checked_p8)

                    ; #25701: <==commonly_known== 19878 (neg)
                    (Pa_checked_p8)

                    ; #28527: <==commonly_known== 84417 (pos)
                    (Bc_checked_p8)

                    ; #32083: <==closure== 41304 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #41304: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #45589: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #54041: <==commonly_known== 19878 (neg)
                    (Pc_checked_p8)

                    ; #76214: <==commonly_known== 84417 (pos)
                    (Bb_checked_p8)

                    ; #80964: <==closure== 45589 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #84417: origin
                    (checked_p8)

                    ; #87833: <==commonly_known== 19878 (neg)
                    (Pb_checked_p8)

                    ; #12101: <==uncertain_firing== 80964 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #17077: <==negation-removal== 28527 (pos)
                    (not (Pc_not_checked_p8))

                    ; #17729: <==negation-removal== 25701 (pos)
                    (not (Ba_not_checked_p8))

                    ; #19878: <==negation-removal== 84417 (pos)
                    (not (not_checked_p8))

                    ; #30099: <==uncertain_firing== 41304 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #30605: <==negation-removal== 45589 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #38304: <==negation-removal== 16520 (pos)
                    (not (Pa_not_checked_p8))

                    ; #49027: <==negation-removal== 41304 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #53703: <==negation-removal== 76214 (pos)
                    (not (Pb_not_checked_p8))

                    ; #54201: <==negation-removal== 87833 (pos)
                    (not (Bb_not_checked_p8))

                    ; #67910: <==uncertain_firing== 32083 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #68612: <==uncertain_firing== 45589 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #72152: <==negation-removal== 32083 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #80957: <==negation-removal== 54041 (pos)
                    (not (Bc_not_checked_p8))

                    ; #87737: <==negation-removal== 80964 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12385: <==commonly_known== 35774 (neg)
                    (Pa_checked_p9)

                    ; #20046: <==commonly_known== 35774 (neg)
                    (Pc_checked_p9)

                    ; #25673: <==closure== 83274 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #31033: <==commonly_known== 38777 (pos)
                    (Bc_checked_p9)

                    ; #37262: <==commonly_known== 38777 (pos)
                    (Bb_checked_p9)

                    ; #38777: origin
                    (checked_p9)

                    ; #49326: <==closure== 79604 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #52733: <==commonly_known== 35774 (neg)
                    (Pb_checked_p9)

                    ; #61771: <==commonly_known== 38777 (pos)
                    (Ba_checked_p9)

                    ; #79604: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #83274: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #15082: <==negation-removal== 20046 (pos)
                    (not (Bc_not_checked_p9))

                    ; #23141: <==negation-removal== 83274 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #35774: <==negation-removal== 38777 (pos)
                    (not (not_checked_p9))

                    ; #36026: <==uncertain_firing== 83274 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #42487: <==negation-removal== 79604 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #45432: <==negation-removal== 61771 (pos)
                    (not (Pa_not_checked_p9))

                    ; #57195: <==uncertain_firing== 49326 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #63936: <==negation-removal== 52733 (pos)
                    (not (Bb_not_checked_p9))

                    ; #66105: <==uncertain_firing== 79604 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #70625: <==uncertain_firing== 25673 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #81755: <==negation-removal== 31033 (pos)
                    (not (Pc_not_checked_p9))

                    ; #88826: <==negation-removal== 49326 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #89961: <==negation-removal== 12385 (pos)
                    (not (Ba_not_checked_p9))

                    ; #90559: <==negation-removal== 25673 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #91863: <==negation-removal== 37262 (pos)
                    (not (Pb_not_checked_p9))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #27712: <==commonly_known== 88780 (pos)
                    (Bb_checked_p10)

                    ; #36284: <==commonly_known== 88780 (pos)
                    (Ba_checked_p10)

                    ; #43818: <==commonly_known== 88780 (pos)
                    (Bc_checked_p10)

                    ; #48889: <==closure== 60465 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #55205: <==commonly_known== 70498 (neg)
                    (Pa_checked_p10)

                    ; #60465: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #69558: <==commonly_known== 70498 (neg)
                    (Pb_checked_p10)

                    ; #74846: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #84949: <==closure== 74846 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #86696: <==commonly_known== 70498 (neg)
                    (Pc_checked_p10)

                    ; #88780: origin
                    (checked_p10)

                    ; #10773: <==negation-removal== 36284 (pos)
                    (not (Pa_not_checked_p10))

                    ; #12612: <==uncertain_firing== 60465 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #20152: <==uncertain_firing== 48889 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #20354: <==negation-removal== 84949 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #34290: <==negation-removal== 55205 (pos)
                    (not (Ba_not_checked_p10))

                    ; #35601: <==uncertain_firing== 74846 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #37136: <==negation-removal== 74846 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #49711: <==negation-removal== 48889 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #50293: <==uncertain_firing== 84949 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #70498: <==negation-removal== 88780 (pos)
                    (not (not_checked_p10))

                    ; #84072: <==negation-removal== 86696 (pos)
                    (not (Bc_not_checked_p10))

                    ; #89211: <==negation-removal== 27712 (pos)
                    (not (Pb_not_checked_p10))

                    ; #90245: <==negation-removal== 43818 (pos)
                    (not (Pc_not_checked_p10))

                    ; #92206: <==negation-removal== 60465 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #99468: <==negation-removal== 69558 (pos)
                    (not (Bb_not_checked_p10))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #28495: <==closure== 44322 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #29051: <==closure== 63802 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #29674: <==commonly_known== 20887 (neg)
                    (Pc_checked_p11)

                    ; #32584: <==commonly_known== 64797 (pos)
                    (Bc_checked_p11)

                    ; #34403: <==commonly_known== 20887 (neg)
                    (Pa_checked_p11)

                    ; #35052: <==commonly_known== 64797 (pos)
                    (Ba_checked_p11)

                    ; #44322: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #48800: <==commonly_known== 64797 (pos)
                    (Bb_checked_p11)

                    ; #53656: <==commonly_known== 20887 (neg)
                    (Pb_checked_p11)

                    ; #63802: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #64797: origin
                    (checked_p11)

                    ; #14082: <==uncertain_firing== 28495 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #20312: <==negation-removal== 29674 (pos)
                    (not (Bc_not_checked_p11))

                    ; #20887: <==negation-removal== 64797 (pos)
                    (not (not_checked_p11))

                    ; #30129: <==negation-removal== 48800 (pos)
                    (not (Pb_not_checked_p11))

                    ; #33162: <==uncertain_firing== 44322 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #35965: <==negation-removal== 28495 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #39662: <==negation-removal== 63802 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #44066: <==uncertain_firing== 29051 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #46884: <==negation-removal== 35052 (pos)
                    (not (Pa_not_checked_p11))

                    ; #48594: <==negation-removal== 53656 (pos)
                    (not (Bb_not_checked_p11))

                    ; #50821: <==negation-removal== 34403 (pos)
                    (not (Ba_not_checked_p11))

                    ; #56152: <==negation-removal== 32584 (pos)
                    (not (Pc_not_checked_p11))

                    ; #72035: <==negation-removal== 44322 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #77367: <==negation-removal== 29051 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #85747: <==uncertain_firing== 63802 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #16578: origin
                    (checked_p12)

                    ; #20757: <==commonly_known== 16578 (pos)
                    (Bc_checked_p12)

                    ; #22242: <==commonly_known== 16578 (pos)
                    (Ba_checked_p12)

                    ; #30324: <==closure== 81191 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #40473: <==commonly_known== 51196 (neg)
                    (Pc_checked_p12)

                    ; #41201: <==commonly_known== 51196 (neg)
                    (Pa_checked_p12)

                    ; #65502: <==commonly_known== 51196 (neg)
                    (Pb_checked_p12)

                    ; #81191: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #83135: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #85115: <==closure== 83135 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #90847: <==commonly_known== 16578 (pos)
                    (Bb_checked_p12)

                    ; #12623: <==negation-removal== 85115 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #13974: <==uncertain_firing== 81191 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #18622: <==uncertain_firing== 83135 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #20175: <==negation-removal== 81191 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #32271: <==negation-removal== 41201 (pos)
                    (not (Ba_not_checked_p12))

                    ; #36878: <==negation-removal== 30324 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #37246: <==negation-removal== 20757 (pos)
                    (not (Pc_not_checked_p12))

                    ; #38914: <==negation-removal== 65502 (pos)
                    (not (Bb_not_checked_p12))

                    ; #44734: <==negation-removal== 90847 (pos)
                    (not (Pb_not_checked_p12))

                    ; #48579: <==negation-removal== 40473 (pos)
                    (not (Bc_not_checked_p12))

                    ; #51196: <==negation-removal== 16578 (pos)
                    (not (not_checked_p12))

                    ; #54904: <==negation-removal== 83135 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #66863: <==negation-removal== 22242 (pos)
                    (not (Pa_not_checked_p12))

                    ; #69680: <==uncertain_firing== 30324 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #82797: <==uncertain_firing== 85115 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #10512: <==closure== 60031 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #22688: <==commonly_known== 41197 (neg)
                    (Pc_checked_p1)

                    ; #31672: origin
                    (checked_p1)

                    ; #35646: <==closure== 79826 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #41192: <==commonly_known== 31672 (pos)
                    (Bc_checked_p1)

                    ; #45845: <==commonly_known== 41197 (neg)
                    (Pb_checked_p1)

                    ; #60031: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #70944: <==commonly_known== 41197 (neg)
                    (Pa_checked_p1)

                    ; #78002: <==commonly_known== 31672 (pos)
                    (Ba_checked_p1)

                    ; #79826: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #84845: <==commonly_known== 31672 (pos)
                    (Bb_checked_p1)

                    ; #14318: <==negation-removal== 84845 (pos)
                    (not (Pb_not_checked_p1))

                    ; #15472: <==negation-removal== 10512 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #39673: <==negation-removal== 35646 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #41197: <==negation-removal== 31672 (pos)
                    (not (not_checked_p1))

                    ; #41602: <==uncertain_firing== 10512 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #41901: <==negation-removal== 70944 (pos)
                    (not (Ba_not_checked_p1))

                    ; #45273: <==negation-removal== 79826 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #47126: <==negation-removal== 60031 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #50363: <==uncertain_firing== 35646 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #53454: <==negation-removal== 41192 (pos)
                    (not (Pc_not_checked_p1))

                    ; #53949: <==negation-removal== 22688 (pos)
                    (not (Bc_not_checked_p1))

                    ; #71716: <==uncertain_firing== 60031 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #81357: <==negation-removal== 78002 (pos)
                    (not (Pa_not_checked_p1))

                    ; #83427: <==negation-removal== 45845 (pos)
                    (not (Bb_not_checked_p1))

                    ; #86688: <==uncertain_firing== 79826 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #15279: <==commonly_known== 29803 (pos)
                    (Bb_checked_p2)

                    ; #19984: <==commonly_known== 29803 (pos)
                    (Ba_checked_p2)

                    ; #29803: origin
                    (checked_p2)

                    ; #36298: <==commonly_known== 21526 (neg)
                    (Pa_checked_p2)

                    ; #37515: <==closure== 43962 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #37666: <==closure== 58400 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #37737: <==commonly_known== 29803 (pos)
                    (Bc_checked_p2)

                    ; #43962: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #58400: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #68166: <==commonly_known== 21526 (neg)
                    (Pb_checked_p2)

                    ; #87852: <==commonly_known== 21526 (neg)
                    (Pc_checked_p2)

                    ; #19127: <==negation-removal== 37666 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #21526: <==negation-removal== 29803 (pos)
                    (not (not_checked_p2))

                    ; #28411: <==negation-removal== 15279 (pos)
                    (not (Pb_not_checked_p2))

                    ; #29096: <==negation-removal== 43962 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #30323: <==negation-removal== 36298 (pos)
                    (not (Ba_not_checked_p2))

                    ; #34174: <==uncertain_firing== 37666 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #35966: <==negation-removal== 37515 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #38294: <==negation-removal== 19984 (pos)
                    (not (Pa_not_checked_p2))

                    ; #40951: <==uncertain_firing== 58400 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #61426: <==negation-removal== 68166 (pos)
                    (not (Bb_not_checked_p2))

                    ; #68153: <==uncertain_firing== 37515 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #72615: <==uncertain_firing== 43962 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #75942: <==negation-removal== 58400 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #90075: <==negation-removal== 87852 (pos)
                    (not (Bc_not_checked_p2))

                    ; #90828: <==negation-removal== 37737 (pos)
                    (not (Pc_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #10213: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #15875: origin
                    (checked_p3)

                    ; #23975: <==closure== 10213 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #30287: <==commonly_known== 15875 (pos)
                    (Bb_checked_p3)

                    ; #45616: <==commonly_known== 88936 (neg)
                    (Pc_checked_p3)

                    ; #63078: <==commonly_known== 88936 (neg)
                    (Pa_checked_p3)

                    ; #64165: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #65428: <==closure== 64165 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #65557: <==commonly_known== 15875 (pos)
                    (Ba_checked_p3)

                    ; #72181: <==commonly_known== 15875 (pos)
                    (Bc_checked_p3)

                    ; #87083: <==commonly_known== 88936 (neg)
                    (Pb_checked_p3)

                    ; #13586: <==negation-removal== 87083 (pos)
                    (not (Bb_not_checked_p3))

                    ; #17154: <==negation-removal== 65428 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #19013: <==uncertain_firing== 23975 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #21574: <==negation-removal== 63078 (pos)
                    (not (Ba_not_checked_p3))

                    ; #22165: <==negation-removal== 72181 (pos)
                    (not (Pc_not_checked_p3))

                    ; #27550: <==negation-removal== 64165 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #28135: <==uncertain_firing== 64165 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #29314: <==negation-removal== 23975 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #35936: <==negation-removal== 30287 (pos)
                    (not (Pb_not_checked_p3))

                    ; #37825: <==negation-removal== 10213 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #46858: <==negation-removal== 65557 (pos)
                    (not (Pa_not_checked_p3))

                    ; #75126: <==uncertain_firing== 10213 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #83178: <==negation-removal== 45616 (pos)
                    (not (Bc_not_checked_p3))

                    ; #88936: <==negation-removal== 15875 (pos)
                    (not (not_checked_p3))

                    ; #90257: <==uncertain_firing== 65428 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11952: <==commonly_known== 14579 (neg)
                    (Pb_checked_p4)

                    ; #22065: <==commonly_known== 65995 (pos)
                    (Bc_checked_p4)

                    ; #28317: <==closure== 79871 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #40940: <==closure== 57118 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #51450: <==commonly_known== 65995 (pos)
                    (Bb_checked_p4)

                    ; #57118: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #58267: <==commonly_known== 14579 (neg)
                    (Pa_checked_p4)

                    ; #65995: origin
                    (checked_p4)

                    ; #70734: <==commonly_known== 65995 (pos)
                    (Ba_checked_p4)

                    ; #79871: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #86331: <==commonly_known== 14579 (neg)
                    (Pc_checked_p4)

                    ; #13673: <==negation-removal== 79871 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #14579: <==negation-removal== 65995 (pos)
                    (not (not_checked_p4))

                    ; #17715: <==negation-removal== 40940 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #22871: <==negation-removal== 86331 (pos)
                    (not (Bc_not_checked_p4))

                    ; #26422: <==negation-removal== 11952 (pos)
                    (not (Bb_not_checked_p4))

                    ; #43419: <==negation-removal== 57118 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #50409: <==negation-removal== 58267 (pos)
                    (not (Ba_not_checked_p4))

                    ; #51746: <==negation-removal== 70734 (pos)
                    (not (Pa_not_checked_p4))

                    ; #72493: <==uncertain_firing== 40940 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #74437: <==uncertain_firing== 57118 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #74911: <==negation-removal== 28317 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #80938: <==uncertain_firing== 28317 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #86203: <==negation-removal== 22065 (pos)
                    (not (Pc_not_checked_p4))

                    ; #88330: <==negation-removal== 51450 (pos)
                    (not (Pb_not_checked_p4))

                    ; #88581: <==uncertain_firing== 79871 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12698: <==commonly_known== 91681 (pos)
                    (Bc_checked_p5)

                    ; #13956: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #21999: <==commonly_known== 91681 (pos)
                    (Bb_checked_p5)

                    ; #31979: <==commonly_known== 81548 (neg)
                    (Pb_checked_p5)

                    ; #45479: <==closure== 13956 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #56249: <==commonly_known== 81548 (neg)
                    (Pa_checked_p5)

                    ; #65939: <==closure== 82071 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #82071: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #82186: <==commonly_known== 91681 (pos)
                    (Ba_checked_p5)

                    ; #86838: <==commonly_known== 81548 (neg)
                    (Pc_checked_p5)

                    ; #91681: origin
                    (checked_p5)

                    ; #12639: <==negation-removal== 13956 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #19233: <==negation-removal== 56249 (pos)
                    (not (Ba_not_checked_p5))

                    ; #21287: <==negation-removal== 45479 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #21774: <==negation-removal== 82071 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #22508: <==uncertain_firing== 13956 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #29011: <==negation-removal== 82186 (pos)
                    (not (Pa_not_checked_p5))

                    ; #31275: <==uncertain_firing== 82071 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #31437: <==uncertain_firing== 45479 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #53046: <==negation-removal== 86838 (pos)
                    (not (Bc_not_checked_p5))

                    ; #61772: <==negation-removal== 31979 (pos)
                    (not (Bb_not_checked_p5))

                    ; #77871: <==negation-removal== 65939 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #79319: <==negation-removal== 12698 (pos)
                    (not (Pc_not_checked_p5))

                    ; #81283: <==negation-removal== 21999 (pos)
                    (not (Pb_not_checked_p5))

                    ; #81548: <==negation-removal== 91681 (pos)
                    (not (not_checked_p5))

                    ; #83612: <==uncertain_firing== 65939 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #16146: <==commonly_known== 67035 (pos)
                    (Bb_checked_p6)

                    ; #37621: <==commonly_known== 90849 (neg)
                    (Pa_checked_p6)

                    ; #42521: <==closure== 46266 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #46266: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #64164: <==commonly_known== 67035 (pos)
                    (Bc_checked_p6)

                    ; #64979: <==commonly_known== 67035 (pos)
                    (Ba_checked_p6)

                    ; #67035: origin
                    (checked_p6)

                    ; #70133: <==closure== 80478 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #80478: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #89206: <==commonly_known== 90849 (neg)
                    (Pb_checked_p6)

                    ; #89953: <==commonly_known== 90849 (neg)
                    (Pc_checked_p6)

                    ; #14410: <==negation-removal== 64164 (pos)
                    (not (Pc_not_checked_p6))

                    ; #23072: <==uncertain_firing== 70133 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #26073: <==negation-removal== 42521 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #30172: <==negation-removal== 70133 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #33644: <==uncertain_firing== 46266 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #43395: <==negation-removal== 16146 (pos)
                    (not (Pb_not_checked_p6))

                    ; #54160: <==negation-removal== 64979 (pos)
                    (not (Pa_not_checked_p6))

                    ; #55242: <==uncertain_firing== 42521 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #56026: <==negation-removal== 89206 (pos)
                    (not (Bb_not_checked_p6))

                    ; #57916: <==uncertain_firing== 80478 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #58259: <==negation-removal== 46266 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #74085: <==negation-removal== 37621 (pos)
                    (not (Ba_not_checked_p6))

                    ; #81079: <==negation-removal== 80478 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #90849: <==negation-removal== 67035 (pos)
                    (not (not_checked_p6))

                    ; #92163: <==negation-removal== 89953 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11707: <==closure== 37601 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #29525: <==commonly_known== 12735 (neg)
                    (Pa_checked_p7)

                    ; #37601: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #38141: <==commonly_known== 12735 (neg)
                    (Pb_checked_p7)

                    ; #44655: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #50892: origin
                    (checked_p7)

                    ; #67993: <==closure== 44655 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #81314: <==commonly_known== 50892 (pos)
                    (Bc_checked_p7)

                    ; #81441: <==commonly_known== 50892 (pos)
                    (Ba_checked_p7)

                    ; #81998: <==commonly_known== 12735 (neg)
                    (Pc_checked_p7)

                    ; #91976: <==commonly_known== 50892 (pos)
                    (Bb_checked_p7)

                    ; #10415: <==negation-removal== 67993 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #12735: <==negation-removal== 50892 (pos)
                    (not (not_checked_p7))

                    ; #17713: <==uncertain_firing== 44655 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #25342: <==uncertain_firing== 11707 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #27021: <==uncertain_firing== 67993 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #28098: <==negation-removal== 37601 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #55965: <==negation-removal== 11707 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #63370: <==negation-removal== 81314 (pos)
                    (not (Pc_not_checked_p7))

                    ; #65744: <==negation-removal== 81998 (pos)
                    (not (Bc_not_checked_p7))

                    ; #74728: <==uncertain_firing== 37601 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #76137: <==negation-removal== 29525 (pos)
                    (not (Ba_not_checked_p7))

                    ; #77810: <==negation-removal== 44655 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #81541: <==negation-removal== 91976 (pos)
                    (not (Pb_not_checked_p7))

                    ; #89968: <==negation-removal== 81441 (pos)
                    (not (Pa_not_checked_p7))

                    ; #91308: <==negation-removal== 38141 (pos)
                    (not (Bb_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #16520: <==commonly_known== 84417 (pos)
                    (Ba_checked_p8)

                    ; #25701: <==commonly_known== 19878 (neg)
                    (Pa_checked_p8)

                    ; #28527: <==commonly_known== 84417 (pos)
                    (Bc_checked_p8)

                    ; #30673: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #54041: <==commonly_known== 19878 (neg)
                    (Pc_checked_p8)

                    ; #74272: <==closure== 75332 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #75332: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #76214: <==commonly_known== 84417 (pos)
                    (Bb_checked_p8)

                    ; #77597: <==closure== 30673 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #84417: origin
                    (checked_p8)

                    ; #87833: <==commonly_known== 19878 (neg)
                    (Pb_checked_p8)

                    ; #17077: <==negation-removal== 28527 (pos)
                    (not (Pc_not_checked_p8))

                    ; #17729: <==negation-removal== 25701 (pos)
                    (not (Ba_not_checked_p8))

                    ; #17841: <==uncertain_firing== 74272 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #19878: <==negation-removal== 84417 (pos)
                    (not (not_checked_p8))

                    ; #38304: <==negation-removal== 16520 (pos)
                    (not (Pa_not_checked_p8))

                    ; #45441: <==negation-removal== 77597 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #46686: <==uncertain_firing== 30673 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #49552: <==negation-removal== 74272 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #53703: <==negation-removal== 76214 (pos)
                    (not (Pb_not_checked_p8))

                    ; #54201: <==negation-removal== 87833 (pos)
                    (not (Bb_not_checked_p8))

                    ; #57844: <==negation-removal== 30673 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #58976: <==negation-removal== 75332 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #73287: <==uncertain_firing== 75332 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #80957: <==negation-removal== 54041 (pos)
                    (not (Bc_not_checked_p8))

                    ; #84521: <==uncertain_firing== 77597 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12385: <==commonly_known== 35774 (neg)
                    (Pa_checked_p9)

                    ; #20046: <==commonly_known== 35774 (neg)
                    (Pc_checked_p9)

                    ; #21351: <==closure== 67489 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #24989: <==closure== 92073 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #31033: <==commonly_known== 38777 (pos)
                    (Bc_checked_p9)

                    ; #37262: <==commonly_known== 38777 (pos)
                    (Bb_checked_p9)

                    ; #38777: origin
                    (checked_p9)

                    ; #52733: <==commonly_known== 35774 (neg)
                    (Pb_checked_p9)

                    ; #61771: <==commonly_known== 38777 (pos)
                    (Ba_checked_p9)

                    ; #67489: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #92073: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #15082: <==negation-removal== 20046 (pos)
                    (not (Bc_not_checked_p9))

                    ; #19063: <==negation-removal== 92073 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #35774: <==negation-removal== 38777 (pos)
                    (not (not_checked_p9))

                    ; #37327: <==uncertain_firing== 67489 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #42147: <==uncertain_firing== 24989 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #45432: <==negation-removal== 61771 (pos)
                    (not (Pa_not_checked_p9))

                    ; #57783: <==uncertain_firing== 21351 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #63108: <==negation-removal== 24989 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #63936: <==negation-removal== 52733 (pos)
                    (not (Bb_not_checked_p9))

                    ; #64382: <==negation-removal== 67489 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #80247: <==negation-removal== 21351 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #81755: <==negation-removal== 31033 (pos)
                    (not (Pc_not_checked_p9))

                    ; #89807: <==uncertain_firing== 92073 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #89961: <==negation-removal== 12385 (pos)
                    (not (Ba_not_checked_p9))

                    ; #91863: <==negation-removal== 37262 (pos)
                    (not (Pb_not_checked_p9))))

)