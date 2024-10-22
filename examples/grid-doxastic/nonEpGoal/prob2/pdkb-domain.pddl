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
        :precondition (and (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #11897: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #26216: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #54966: <==closure== 86266 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #63351: <==closure== 26216 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #79711: <==closure== 11897 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #86266: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #22992: <==negation-removal== 54966 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #32930: <==negation-removal== 79711 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #33349: <==negation-removal== 86266 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #42079: <==uncertain_firing== 11897 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #47924: <==uncertain_firing== 63351 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #51363: <==negation-removal== 63351 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #56648: <==uncertain_firing== 86266 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #56805: <==uncertain_firing== 54966 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #63090: <==uncertain_firing== 79711 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #67648: <==negation-removal== 26216 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #76325: <==negation-removal== 11897 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #83769: <==uncertain_firing== 26216 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))))

    (:action badcomm_p10_b_s
        :precondition (and (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #11897: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #26216: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #54966: <==closure== 86266 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #63351: <==closure== 26216 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #79711: <==closure== 11897 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #86266: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #22992: <==negation-removal== 54966 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #32930: <==negation-removal== 79711 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #33349: <==negation-removal== 86266 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #42079: <==uncertain_firing== 11897 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #47924: <==uncertain_firing== 63351 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #51363: <==negation-removal== 63351 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #56648: <==uncertain_firing== 86266 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #56805: <==uncertain_firing== 54966 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #63090: <==uncertain_firing== 79711 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #67648: <==negation-removal== 26216 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #76325: <==negation-removal== 11897 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #83769: <==uncertain_firing== 26216 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))))

    (:action badcomm_p10_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #11897: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #26216: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #54966: <==closure== 86266 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #63351: <==closure== 26216 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #79711: <==closure== 11897 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #86266: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #22992: <==negation-removal== 54966 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #32930: <==negation-removal== 79711 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #33349: <==negation-removal== 86266 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #42079: <==uncertain_firing== 11897 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #47924: <==uncertain_firing== 63351 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #51363: <==negation-removal== 63351 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #56648: <==uncertain_firing== 86266 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #56805: <==uncertain_firing== 54966 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #63090: <==uncertain_firing== 79711 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #67648: <==negation-removal== 26216 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #76325: <==negation-removal== 11897 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #83769: <==uncertain_firing== 26216 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))))

    (:action badcomm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #29382: <==closure== 53946 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #37839: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #38673: <==closure== 50381 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #50381: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #53946: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #60323: <==closure== 37839 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #11013: <==negation-removal== 37839 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #23812: <==negation-removal== 60323 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #26379: <==negation-removal== 38673 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #42439: <==negation-removal== 29382 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #47609: <==uncertain_firing== 29382 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #47610: <==uncertain_firing== 50381 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #58386: <==uncertain_firing== 53946 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #64846: <==uncertain_firing== 60323 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #65023: <==uncertain_firing== 38673 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #69606: <==uncertain_firing== 37839 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #79568: <==negation-removal== 50381 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #82711: <==negation-removal== 53946 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))))

    (:action badcomm_p11_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #29382: <==closure== 53946 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #37839: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #38673: <==closure== 50381 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #50381: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #53946: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #60323: <==closure== 37839 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #11013: <==negation-removal== 37839 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #23812: <==negation-removal== 60323 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #26379: <==negation-removal== 38673 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #42439: <==negation-removal== 29382 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #47609: <==uncertain_firing== 29382 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #47610: <==uncertain_firing== 50381 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #58386: <==uncertain_firing== 53946 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #64846: <==uncertain_firing== 60323 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #65023: <==uncertain_firing== 38673 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #69606: <==uncertain_firing== 37839 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #79568: <==negation-removal== 50381 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #82711: <==negation-removal== 53946 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))))

    (:action badcomm_p11_c_s
        :precondition (and (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #29382: <==closure== 53946 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #37839: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #38673: <==closure== 50381 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #50381: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #53946: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #60323: <==closure== 37839 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #11013: <==negation-removal== 37839 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #23812: <==negation-removal== 60323 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #26379: <==negation-removal== 38673 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #42439: <==negation-removal== 29382 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #47609: <==uncertain_firing== 29382 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #47610: <==uncertain_firing== 50381 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #58386: <==uncertain_firing== 53946 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #64846: <==uncertain_firing== 60323 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #65023: <==uncertain_firing== 38673 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #69606: <==uncertain_firing== 37839 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #79568: <==negation-removal== 50381 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #82711: <==negation-removal== 53946 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))))

    (:action badcomm_p12_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #12422: <==closure== 19722 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #19722: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #48324: <==closure== 70547 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #70547: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #73899: <==closure== 86975 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #86975: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #13360: <==negation-removal== 73899 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #19132: <==uncertain_firing== 70547 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #20638: <==uncertain_firing== 19722 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #36055: <==uncertain_firing== 48324 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #38015: <==negation-removal== 70547 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #45379: <==uncertain_firing== 12422 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #50451: <==negation-removal== 48324 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #74552: <==negation-removal== 86975 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #75404: <==negation-removal== 12422 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #76855: <==uncertain_firing== 86975 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #85288: <==negation-removal== 19722 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #91494: <==uncertain_firing== 73899 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))))

    (:action badcomm_p12_b_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #12422: <==closure== 19722 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #19722: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #48324: <==closure== 70547 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #70547: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #73899: <==closure== 86975 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #86975: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #13360: <==negation-removal== 73899 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #19132: <==uncertain_firing== 70547 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #20638: <==uncertain_firing== 19722 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #36055: <==uncertain_firing== 48324 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #38015: <==negation-removal== 70547 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #45379: <==uncertain_firing== 12422 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #50451: <==negation-removal== 48324 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #74552: <==negation-removal== 86975 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #75404: <==negation-removal== 12422 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #76855: <==uncertain_firing== 86975 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #85288: <==negation-removal== 19722 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #91494: <==uncertain_firing== 73899 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))))

    (:action badcomm_p12_c_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #12422: <==closure== 19722 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #19722: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #48324: <==closure== 70547 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #70547: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #73899: <==closure== 86975 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #86975: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #13360: <==negation-removal== 73899 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #19132: <==uncertain_firing== 70547 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #20638: <==uncertain_firing== 19722 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #36055: <==uncertain_firing== 48324 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #38015: <==negation-removal== 70547 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #45379: <==uncertain_firing== 12422 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #50451: <==negation-removal== 48324 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #74552: <==negation-removal== 86975 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #75404: <==negation-removal== 12422 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #76855: <==uncertain_firing== 86975 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #85288: <==negation-removal== 19722 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #91494: <==uncertain_firing== 73899 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))))

    (:action badcomm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #11591: <==closure== 27547 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #25913: <==closure== 52284 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #27547: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #52284: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #82339: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #93623: <==closure== 82339 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #12519: <==uncertain_firing== 82339 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #42564: <==negation-removal== 11591 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #50862: <==negation-removal== 27547 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #53230: <==uncertain_firing== 52284 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #60120: <==uncertain_firing== 11591 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #62558: <==negation-removal== 25913 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #72726: <==negation-removal== 52284 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #81245: <==uncertain_firing== 25913 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #81409: <==uncertain_firing== 93623 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #81826: <==negation-removal== 93623 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #86864: <==negation-removal== 82339 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #88971: <==uncertain_firing== 27547 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #11591: <==closure== 27547 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #25913: <==closure== 52284 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #27547: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #52284: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #82339: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #93623: <==closure== 82339 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #12519: <==uncertain_firing== 82339 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #42564: <==negation-removal== 11591 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #50862: <==negation-removal== 27547 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #53230: <==uncertain_firing== 52284 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #60120: <==uncertain_firing== 11591 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #62558: <==negation-removal== 25913 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #72726: <==negation-removal== 52284 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #81245: <==uncertain_firing== 25913 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #81409: <==uncertain_firing== 93623 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #81826: <==negation-removal== 93623 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #86864: <==negation-removal== 82339 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #88971: <==uncertain_firing== 27547 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #11591: <==closure== 27547 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #25913: <==closure== 52284 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #27547: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #52284: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #82339: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #93623: <==closure== 82339 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #12519: <==uncertain_firing== 82339 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #42564: <==negation-removal== 11591 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #50862: <==negation-removal== 27547 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #53230: <==uncertain_firing== 52284 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #60120: <==uncertain_firing== 11591 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #62558: <==negation-removal== 25913 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #72726: <==negation-removal== 52284 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #81245: <==uncertain_firing== 25913 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #81409: <==uncertain_firing== 93623 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #81826: <==negation-removal== 93623 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #86864: <==negation-removal== 82339 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #88971: <==uncertain_firing== 27547 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #16813: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #35084: <==closure== 78032 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #36822: <==closure== 38410 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #38410: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #78032: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #92383: <==closure== 16813 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #13936: <==uncertain_firing== 38410 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #20879: <==uncertain_firing== 92383 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #27505: <==uncertain_firing== 35084 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #32240: <==negation-removal== 92383 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #34597: <==negation-removal== 38410 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #39214: <==negation-removal== 16813 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #40274: <==uncertain_firing== 16813 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #42483: <==uncertain_firing== 36822 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #57858: <==negation-removal== 35084 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #58154: <==negation-removal== 78032 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #72770: <==negation-removal== 36822 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #75867: <==uncertain_firing== 78032 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #16813: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #35084: <==closure== 78032 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #36822: <==closure== 38410 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #38410: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #78032: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #92383: <==closure== 16813 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #13936: <==uncertain_firing== 38410 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #20879: <==uncertain_firing== 92383 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #27505: <==uncertain_firing== 35084 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #32240: <==negation-removal== 92383 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #34597: <==negation-removal== 38410 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #39214: <==negation-removal== 16813 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #40274: <==uncertain_firing== 16813 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #42483: <==uncertain_firing== 36822 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #57858: <==negation-removal== 35084 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #58154: <==negation-removal== 78032 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #72770: <==negation-removal== 36822 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #75867: <==uncertain_firing== 78032 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #16813: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #35084: <==closure== 78032 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #36822: <==closure== 38410 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #38410: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #78032: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #92383: <==closure== 16813 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #13936: <==uncertain_firing== 38410 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #20879: <==uncertain_firing== 92383 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #27505: <==uncertain_firing== 35084 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #32240: <==negation-removal== 92383 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #34597: <==negation-removal== 38410 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #39214: <==negation-removal== 16813 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #40274: <==uncertain_firing== 16813 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #42483: <==uncertain_firing== 36822 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #57858: <==negation-removal== 35084 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #58154: <==negation-removal== 78032 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #72770: <==negation-removal== 36822 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #75867: <==uncertain_firing== 78032 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #56817: <==closure== 60286 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #60286: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #63795: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #64792: <==closure== 63795 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #86378: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #87147: <==closure== 86378 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #17752: <==negation-removal== 60286 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #25082: <==negation-removal== 56817 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #34263: <==uncertain_firing== 86378 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #35899: <==uncertain_firing== 63795 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #43797: <==uncertain_firing== 64792 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #55083: <==uncertain_firing== 87147 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #60848: <==negation-removal== 86378 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #69200: <==negation-removal== 64792 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #73693: <==negation-removal== 87147 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #73736: <==negation-removal== 63795 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #90793: <==uncertain_firing== 60286 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #91506: <==uncertain_firing== 56817 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #56817: <==closure== 60286 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #60286: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #63795: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #64792: <==closure== 63795 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #86378: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #87147: <==closure== 86378 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #17752: <==negation-removal== 60286 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #25082: <==negation-removal== 56817 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #34263: <==uncertain_firing== 86378 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #35899: <==uncertain_firing== 63795 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #43797: <==uncertain_firing== 64792 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #55083: <==uncertain_firing== 87147 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #60848: <==negation-removal== 86378 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #69200: <==negation-removal== 64792 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #73693: <==negation-removal== 87147 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #73736: <==negation-removal== 63795 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #90793: <==uncertain_firing== 60286 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #91506: <==uncertain_firing== 56817 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #56817: <==closure== 60286 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #60286: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #63795: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #64792: <==closure== 63795 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #86378: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #87147: <==closure== 86378 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #17752: <==negation-removal== 60286 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #25082: <==negation-removal== 56817 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #34263: <==uncertain_firing== 86378 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #35899: <==uncertain_firing== 63795 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #43797: <==uncertain_firing== 64792 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #55083: <==uncertain_firing== 87147 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #60848: <==negation-removal== 86378 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #69200: <==negation-removal== 64792 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #73693: <==negation-removal== 87147 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #73736: <==negation-removal== 63795 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #90793: <==uncertain_firing== 60286 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #91506: <==uncertain_firing== 56817 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #10391: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #13748: <==closure== 77424 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #23097: <==closure== 10391 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #37661: <==closure== 37965 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #37965: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #77424: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #16587: <==uncertain_firing== 13748 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #27685: <==negation-removal== 23097 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #45982: <==uncertain_firing== 23097 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #55060: <==uncertain_firing== 77424 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #62278: <==negation-removal== 77424 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #62289: <==uncertain_firing== 37965 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #68860: <==negation-removal== 13748 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #71689: <==uncertain_firing== 10391 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #71788: <==negation-removal== 37661 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #72231: <==negation-removal== 37965 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #75848: <==negation-removal== 10391 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #81462: <==uncertain_firing== 37661 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #10391: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #13748: <==closure== 77424 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #23097: <==closure== 10391 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #37661: <==closure== 37965 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #37965: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #77424: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #16587: <==uncertain_firing== 13748 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #27685: <==negation-removal== 23097 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #45982: <==uncertain_firing== 23097 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #55060: <==uncertain_firing== 77424 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #62278: <==negation-removal== 77424 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #62289: <==uncertain_firing== 37965 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #68860: <==negation-removal== 13748 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #71689: <==uncertain_firing== 10391 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #71788: <==negation-removal== 37661 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #72231: <==negation-removal== 37965 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #75848: <==negation-removal== 10391 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #81462: <==uncertain_firing== 37661 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (at_c_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #10391: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #13748: <==closure== 77424 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #23097: <==closure== 10391 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #37661: <==closure== 37965 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #37965: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #77424: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #16587: <==uncertain_firing== 13748 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #27685: <==negation-removal== 23097 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #45982: <==uncertain_firing== 23097 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #55060: <==uncertain_firing== 77424 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #62278: <==negation-removal== 77424 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #62289: <==uncertain_firing== 37965 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #68860: <==negation-removal== 13748 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #71689: <==uncertain_firing== 10391 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #71788: <==negation-removal== 37661 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #72231: <==negation-removal== 37965 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #75848: <==negation-removal== 10391 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #81462: <==uncertain_firing== 37661 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #13849: <==closure== 86070 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #31741: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #47027: <==closure== 31741 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #56097: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #86070: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #90898: <==closure== 56097 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #10013: <==uncertain_firing== 56097 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #18035: <==negation-removal== 47027 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #20588: <==uncertain_firing== 47027 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #21596: <==negation-removal== 31741 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #30970: <==uncertain_firing== 13849 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #49119: <==uncertain_firing== 86070 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #66837: <==negation-removal== 13849 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #72635: <==negation-removal== 56097 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #77413: <==negation-removal== 86070 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #77702: <==uncertain_firing== 90898 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #79067: <==negation-removal== 90898 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #87296: <==uncertain_firing== 31741 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #13849: <==closure== 86070 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #31741: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #47027: <==closure== 31741 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #56097: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #86070: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #90898: <==closure== 56097 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #10013: <==uncertain_firing== 56097 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #18035: <==negation-removal== 47027 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #20588: <==uncertain_firing== 47027 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #21596: <==negation-removal== 31741 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #30970: <==uncertain_firing== 13849 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #49119: <==uncertain_firing== 86070 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #66837: <==negation-removal== 13849 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #72635: <==negation-removal== 56097 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #77413: <==negation-removal== 86070 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #77702: <==uncertain_firing== 90898 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #79067: <==negation-removal== 90898 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #87296: <==uncertain_firing== 31741 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #13849: <==closure== 86070 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #31741: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #47027: <==closure== 31741 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #56097: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #86070: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #90898: <==closure== 56097 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #10013: <==uncertain_firing== 56097 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #18035: <==negation-removal== 47027 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #20588: <==uncertain_firing== 47027 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #21596: <==negation-removal== 31741 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #30970: <==uncertain_firing== 13849 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #49119: <==uncertain_firing== 86070 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #66837: <==negation-removal== 13849 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #72635: <==negation-removal== 56097 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #77413: <==negation-removal== 86070 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #77702: <==uncertain_firing== 90898 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #79067: <==negation-removal== 90898 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #87296: <==uncertain_firing== 31741 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #26114: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #55896: <==closure== 81054 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #70847: <==closure== 76153 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #76153: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #81054: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #82089: <==closure== 26114 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #14041: <==negation-removal== 82089 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #23203: <==negation-removal== 70847 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #31084: <==uncertain_firing== 76153 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #36574: <==uncertain_firing== 26114 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #39125: <==negation-removal== 26114 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #43113: <==uncertain_firing== 55896 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #44567: <==negation-removal== 81054 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #45879: <==uncertain_firing== 82089 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #71295: <==negation-removal== 76153 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #74115: <==negation-removal== 55896 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #75651: <==uncertain_firing== 81054 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #90891: <==uncertain_firing== 70847 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #26114: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #55896: <==closure== 81054 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #70847: <==closure== 76153 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #76153: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #81054: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #82089: <==closure== 26114 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #14041: <==negation-removal== 82089 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #23203: <==negation-removal== 70847 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #31084: <==uncertain_firing== 76153 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #36574: <==uncertain_firing== 26114 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #39125: <==negation-removal== 26114 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #43113: <==uncertain_firing== 55896 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #44567: <==negation-removal== 81054 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #45879: <==uncertain_firing== 82089 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #71295: <==negation-removal== 76153 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #74115: <==negation-removal== 55896 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #75651: <==uncertain_firing== 81054 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #90891: <==uncertain_firing== 70847 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #26114: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #55896: <==closure== 81054 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #70847: <==closure== 76153 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #76153: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #81054: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #82089: <==closure== 26114 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #14041: <==negation-removal== 82089 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #23203: <==negation-removal== 70847 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #31084: <==uncertain_firing== 76153 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #36574: <==uncertain_firing== 26114 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #39125: <==negation-removal== 26114 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #43113: <==uncertain_firing== 55896 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #44567: <==negation-removal== 81054 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #45879: <==uncertain_firing== 82089 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #71295: <==negation-removal== 76153 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #74115: <==negation-removal== 55896 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #75651: <==uncertain_firing== 81054 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #90891: <==uncertain_firing== 70847 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #29069: <==closure== 80714 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #42260: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #62221: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #65753: <==closure== 42260 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #70031: <==closure== 62221 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #80714: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #18262: <==uncertain_firing== 62221 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #19116: <==negation-removal== 62221 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #25116: <==negation-removal== 65753 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #26847: <==uncertain_firing== 42260 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #28199: <==uncertain_firing== 65753 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #43758: <==uncertain_firing== 70031 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #51385: <==negation-removal== 42260 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #71667: <==uncertain_firing== 29069 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #78901: <==negation-removal== 29069 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #82127: <==uncertain_firing== 80714 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #88511: <==negation-removal== 80714 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #90550: <==negation-removal== 70031 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #29069: <==closure== 80714 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #42260: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #62221: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #65753: <==closure== 42260 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #70031: <==closure== 62221 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #80714: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #18262: <==uncertain_firing== 62221 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #19116: <==negation-removal== 62221 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #25116: <==negation-removal== 65753 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #26847: <==uncertain_firing== 42260 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #28199: <==uncertain_firing== 65753 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #43758: <==uncertain_firing== 70031 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #51385: <==negation-removal== 42260 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #71667: <==uncertain_firing== 29069 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #78901: <==negation-removal== 29069 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #82127: <==uncertain_firing== 80714 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #88511: <==negation-removal== 80714 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #90550: <==negation-removal== 70031 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #29069: <==closure== 80714 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #42260: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #62221: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #65753: <==closure== 42260 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #70031: <==closure== 62221 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #80714: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #18262: <==uncertain_firing== 62221 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #19116: <==negation-removal== 62221 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #25116: <==negation-removal== 65753 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #26847: <==uncertain_firing== 42260 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #28199: <==uncertain_firing== 65753 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #43758: <==uncertain_firing== 70031 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #51385: <==negation-removal== 42260 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #71667: <==uncertain_firing== 29069 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #78901: <==negation-removal== 29069 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #82127: <==uncertain_firing== 80714 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #88511: <==negation-removal== 80714 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #90550: <==negation-removal== 70031 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #25808: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #28326: <==closure== 25808 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #31429: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #52607: <==closure== 81028 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #69003: <==closure== 31429 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #81028: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #12834: <==negation-removal== 31429 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #23931: <==negation-removal== 69003 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #28310: <==uncertain_firing== 69003 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #29809: <==uncertain_firing== 25808 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #32898: <==uncertain_firing== 52607 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #35750: <==uncertain_firing== 28326 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #42091: <==negation-removal== 28326 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #43414: <==negation-removal== 81028 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #49834: <==uncertain_firing== 31429 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #60072: <==negation-removal== 52607 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #70765: <==uncertain_firing== 81028 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #75001: <==negation-removal== 25808 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #25808: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #28326: <==closure== 25808 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #31429: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #52607: <==closure== 81028 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #69003: <==closure== 31429 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #81028: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #12834: <==negation-removal== 31429 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #23931: <==negation-removal== 69003 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #28310: <==uncertain_firing== 69003 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #29809: <==uncertain_firing== 25808 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #32898: <==uncertain_firing== 52607 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #35750: <==uncertain_firing== 28326 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #42091: <==negation-removal== 28326 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #43414: <==negation-removal== 81028 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #49834: <==uncertain_firing== 31429 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #60072: <==negation-removal== 52607 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #70765: <==uncertain_firing== 81028 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #75001: <==negation-removal== 25808 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #25808: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #28326: <==closure== 25808 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #31429: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #52607: <==closure== 81028 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #69003: <==closure== 31429 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #81028: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #12834: <==negation-removal== 31429 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #23931: <==negation-removal== 69003 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #28310: <==uncertain_firing== 69003 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #29809: <==uncertain_firing== 25808 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #32898: <==uncertain_firing== 52607 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #35750: <==uncertain_firing== 28326 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #42091: <==negation-removal== 28326 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #43414: <==negation-removal== 81028 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #49834: <==uncertain_firing== 31429 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #60072: <==negation-removal== 52607 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #70765: <==uncertain_firing== 81028 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #75001: <==negation-removal== 25808 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #22810: <==closure== 38993 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #28285: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #38993: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #47802: <==closure== 28285 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #55884: <==closure== 82405 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #82405: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #10955: <==uncertain_firing== 47802 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #23634: <==negation-removal== 22810 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #24517: <==negation-removal== 47802 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #36457: <==uncertain_firing== 28285 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #40838: <==negation-removal== 82405 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #43533: <==uncertain_firing== 22810 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #47558: <==negation-removal== 28285 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #53332: <==uncertain_firing== 82405 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #68863: <==uncertain_firing== 55884 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #78324: <==uncertain_firing== 38993 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #82186: <==negation-removal== 38993 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #91281: <==negation-removal== 55884 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #22810: <==closure== 38993 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #28285: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #38993: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #47802: <==closure== 28285 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #55884: <==closure== 82405 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #82405: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #10955: <==uncertain_firing== 47802 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #23634: <==negation-removal== 22810 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #24517: <==negation-removal== 47802 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #36457: <==uncertain_firing== 28285 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #40838: <==negation-removal== 82405 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #43533: <==uncertain_firing== 22810 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #47558: <==negation-removal== 28285 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #53332: <==uncertain_firing== 82405 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #68863: <==uncertain_firing== 55884 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #78324: <==uncertain_firing== 38993 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #82186: <==negation-removal== 38993 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #91281: <==negation-removal== 55884 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #22810: <==closure== 38993 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #28285: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #38993: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #47802: <==closure== 28285 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #55884: <==closure== 82405 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #82405: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #10955: <==uncertain_firing== 47802 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #23634: <==negation-removal== 22810 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #24517: <==negation-removal== 47802 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #36457: <==uncertain_firing== 28285 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #40838: <==negation-removal== 82405 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #43533: <==uncertain_firing== 22810 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #47558: <==negation-removal== 28285 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #53332: <==uncertain_firing== 82405 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #68863: <==uncertain_firing== 55884 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #78324: <==uncertain_firing== 38993 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #82186: <==negation-removal== 38993 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #91281: <==negation-removal== 55884 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action comm_p10_a_s
        :precondition (and (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #12587: origin
                    (Ba_survivorat_s_p10)

                    ; #13278: origin
                    (Bb_survivorat_s_p10)

                    ; #47956: <==closure== 64423 (pos)
                    (Pc_survivorat_s_p10)

                    ; #64423: origin
                    (Bc_survivorat_s_p10)

                    ; #72245: <==closure== 12587 (pos)
                    (Pa_survivorat_s_p10)

                    ; #85419: <==closure== 13278 (pos)
                    (Pb_survivorat_s_p10)

                    ; #10017: <==negation-removal== 64423 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #19479: <==negation-removal== 85419 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #47998: <==negation-removal== 47956 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #60564: <==negation-removal== 72245 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #61438: <==negation-removal== 12587 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #68848: <==negation-removal== 13278 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #12587: origin
                    (Ba_survivorat_s_p10)

                    ; #13278: origin
                    (Bb_survivorat_s_p10)

                    ; #47956: <==closure== 64423 (pos)
                    (Pc_survivorat_s_p10)

                    ; #64423: origin
                    (Bc_survivorat_s_p10)

                    ; #72245: <==closure== 12587 (pos)
                    (Pa_survivorat_s_p10)

                    ; #85419: <==closure== 13278 (pos)
                    (Pb_survivorat_s_p10)

                    ; #10017: <==negation-removal== 64423 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #19479: <==negation-removal== 85419 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #47998: <==negation-removal== 47956 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #60564: <==negation-removal== 72245 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #61438: <==negation-removal== 12587 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #68848: <==negation-removal== 13278 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #12587: origin
                    (Ba_survivorat_s_p10)

                    ; #13278: origin
                    (Bb_survivorat_s_p10)

                    ; #47956: <==closure== 64423 (pos)
                    (Pc_survivorat_s_p10)

                    ; #64423: origin
                    (Bc_survivorat_s_p10)

                    ; #72245: <==closure== 12587 (pos)
                    (Pa_survivorat_s_p10)

                    ; #85419: <==closure== 13278 (pos)
                    (Pb_survivorat_s_p10)

                    ; #10017: <==negation-removal== 64423 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #19479: <==negation-removal== 85419 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #47998: <==negation-removal== 47956 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #60564: <==negation-removal== 72245 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #61438: <==negation-removal== 12587 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #68848: <==negation-removal== 13278 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #15073: <==closure== 80759 (pos)
                    (Pb_survivorat_s_p11)

                    ; #41292: <==closure== 75316 (pos)
                    (Pc_survivorat_s_p11)

                    ; #44541: origin
                    (Ba_survivorat_s_p11)

                    ; #75316: origin
                    (Bc_survivorat_s_p11)

                    ; #77470: <==closure== 44541 (pos)
                    (Pa_survivorat_s_p11)

                    ; #80759: origin
                    (Bb_survivorat_s_p11)

                    ; #31714: <==negation-removal== 77470 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #38292: <==negation-removal== 41292 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #38700: <==negation-removal== 75316 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #57277: <==negation-removal== 15073 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #69031: <==negation-removal== 44541 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #84902: <==negation-removal== 80759 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #15073: <==closure== 80759 (pos)
                    (Pb_survivorat_s_p11)

                    ; #41292: <==closure== 75316 (pos)
                    (Pc_survivorat_s_p11)

                    ; #44541: origin
                    (Ba_survivorat_s_p11)

                    ; #75316: origin
                    (Bc_survivorat_s_p11)

                    ; #77470: <==closure== 44541 (pos)
                    (Pa_survivorat_s_p11)

                    ; #80759: origin
                    (Bb_survivorat_s_p11)

                    ; #31714: <==negation-removal== 77470 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #38292: <==negation-removal== 41292 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #38700: <==negation-removal== 75316 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #57277: <==negation-removal== 15073 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #69031: <==negation-removal== 44541 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #84902: <==negation-removal== 80759 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #15073: <==closure== 80759 (pos)
                    (Pb_survivorat_s_p11)

                    ; #41292: <==closure== 75316 (pos)
                    (Pc_survivorat_s_p11)

                    ; #44541: origin
                    (Ba_survivorat_s_p11)

                    ; #75316: origin
                    (Bc_survivorat_s_p11)

                    ; #77470: <==closure== 44541 (pos)
                    (Pa_survivorat_s_p11)

                    ; #80759: origin
                    (Bb_survivorat_s_p11)

                    ; #31714: <==negation-removal== 77470 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #38292: <==negation-removal== 41292 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #38700: <==negation-removal== 75316 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #57277: <==negation-removal== 15073 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #69031: <==negation-removal== 44541 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #84902: <==negation-removal== 80759 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #11114: <==closure== 17077 (pos)
                    (Pa_survivorat_s_p12)

                    ; #17077: origin
                    (Ba_survivorat_s_p12)

                    ; #19725: origin
                    (Bb_survivorat_s_p12)

                    ; #35700: <==closure== 82007 (pos)
                    (Pc_survivorat_s_p12)

                    ; #60836: <==closure== 19725 (pos)
                    (Pb_survivorat_s_p12)

                    ; #82007: origin
                    (Bc_survivorat_s_p12)

                    ; #11172: <==negation-removal== 19725 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #21144: <==negation-removal== 82007 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #30217: <==negation-removal== 17077 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #68115: <==negation-removal== 35700 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #82769: <==negation-removal== 60836 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #86868: <==negation-removal== 11114 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #11114: <==closure== 17077 (pos)
                    (Pa_survivorat_s_p12)

                    ; #17077: origin
                    (Ba_survivorat_s_p12)

                    ; #19725: origin
                    (Bb_survivorat_s_p12)

                    ; #35700: <==closure== 82007 (pos)
                    (Pc_survivorat_s_p12)

                    ; #60836: <==closure== 19725 (pos)
                    (Pb_survivorat_s_p12)

                    ; #82007: origin
                    (Bc_survivorat_s_p12)

                    ; #11172: <==negation-removal== 19725 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #21144: <==negation-removal== 82007 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #30217: <==negation-removal== 17077 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #68115: <==negation-removal== 35700 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #82769: <==negation-removal== 60836 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #86868: <==negation-removal== 11114 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #11114: <==closure== 17077 (pos)
                    (Pa_survivorat_s_p12)

                    ; #17077: origin
                    (Ba_survivorat_s_p12)

                    ; #19725: origin
                    (Bb_survivorat_s_p12)

                    ; #35700: <==closure== 82007 (pos)
                    (Pc_survivorat_s_p12)

                    ; #60836: <==closure== 19725 (pos)
                    (Pb_survivorat_s_p12)

                    ; #82007: origin
                    (Bc_survivorat_s_p12)

                    ; #11172: <==negation-removal== 19725 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #21144: <==negation-removal== 82007 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #30217: <==negation-removal== 17077 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #68115: <==negation-removal== 35700 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #82769: <==negation-removal== 60836 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #86868: <==negation-removal== 11114 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #10402: origin
                    (Ba_survivorat_s_p1)

                    ; #25759: origin
                    (Bc_survivorat_s_p1)

                    ; #45893: <==closure== 25759 (pos)
                    (Pc_survivorat_s_p1)

                    ; #64512: origin
                    (Bb_survivorat_s_p1)

                    ; #76801: <==closure== 10402 (pos)
                    (Pa_survivorat_s_p1)

                    ; #77751: <==closure== 64512 (pos)
                    (Pb_survivorat_s_p1)

                    ; #31969: <==negation-removal== 45893 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #41409: <==negation-removal== 64512 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #63763: <==negation-removal== 77751 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #64837: <==negation-removal== 10402 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #70522: <==negation-removal== 25759 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #81102: <==negation-removal== 76801 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #10402: origin
                    (Ba_survivorat_s_p1)

                    ; #25759: origin
                    (Bc_survivorat_s_p1)

                    ; #45893: <==closure== 25759 (pos)
                    (Pc_survivorat_s_p1)

                    ; #64512: origin
                    (Bb_survivorat_s_p1)

                    ; #76801: <==closure== 10402 (pos)
                    (Pa_survivorat_s_p1)

                    ; #77751: <==closure== 64512 (pos)
                    (Pb_survivorat_s_p1)

                    ; #31969: <==negation-removal== 45893 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #41409: <==negation-removal== 64512 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #63763: <==negation-removal== 77751 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #64837: <==negation-removal== 10402 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #70522: <==negation-removal== 25759 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #81102: <==negation-removal== 76801 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #10402: origin
                    (Ba_survivorat_s_p1)

                    ; #25759: origin
                    (Bc_survivorat_s_p1)

                    ; #45893: <==closure== 25759 (pos)
                    (Pc_survivorat_s_p1)

                    ; #64512: origin
                    (Bb_survivorat_s_p1)

                    ; #76801: <==closure== 10402 (pos)
                    (Pa_survivorat_s_p1)

                    ; #77751: <==closure== 64512 (pos)
                    (Pb_survivorat_s_p1)

                    ; #31969: <==negation-removal== 45893 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #41409: <==negation-removal== 64512 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #63763: <==negation-removal== 77751 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #64837: <==negation-removal== 10402 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #70522: <==negation-removal== 25759 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #81102: <==negation-removal== 76801 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #10314: <==closure== 49596 (pos)
                    (Pb_survivorat_s_p2)

                    ; #40738: origin
                    (Bc_survivorat_s_p2)

                    ; #49596: origin
                    (Bb_survivorat_s_p2)

                    ; #53789: <==closure== 63803 (pos)
                    (Pa_survivorat_s_p2)

                    ; #63803: origin
                    (Ba_survivorat_s_p2)

                    ; #65646: <==closure== 40738 (pos)
                    (Pc_survivorat_s_p2)

                    ; #30880: <==negation-removal== 40738 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #49267: <==negation-removal== 49596 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #77529: <==negation-removal== 53789 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #83899: <==negation-removal== 65646 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #85633: <==negation-removal== 63803 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #99111: <==negation-removal== 10314 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #10314: <==closure== 49596 (pos)
                    (Pb_survivorat_s_p2)

                    ; #40738: origin
                    (Bc_survivorat_s_p2)

                    ; #49596: origin
                    (Bb_survivorat_s_p2)

                    ; #53789: <==closure== 63803 (pos)
                    (Pa_survivorat_s_p2)

                    ; #63803: origin
                    (Ba_survivorat_s_p2)

                    ; #65646: <==closure== 40738 (pos)
                    (Pc_survivorat_s_p2)

                    ; #30880: <==negation-removal== 40738 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #49267: <==negation-removal== 49596 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #77529: <==negation-removal== 53789 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #83899: <==negation-removal== 65646 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #85633: <==negation-removal== 63803 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #99111: <==negation-removal== 10314 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #10314: <==closure== 49596 (pos)
                    (Pb_survivorat_s_p2)

                    ; #40738: origin
                    (Bc_survivorat_s_p2)

                    ; #49596: origin
                    (Bb_survivorat_s_p2)

                    ; #53789: <==closure== 63803 (pos)
                    (Pa_survivorat_s_p2)

                    ; #63803: origin
                    (Ba_survivorat_s_p2)

                    ; #65646: <==closure== 40738 (pos)
                    (Pc_survivorat_s_p2)

                    ; #30880: <==negation-removal== 40738 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #49267: <==negation-removal== 49596 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #77529: <==negation-removal== 53789 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #83899: <==negation-removal== 65646 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #85633: <==negation-removal== 63803 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #99111: <==negation-removal== 10314 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #33628: <==closure== 39028 (pos)
                    (Pa_survivorat_s_p3)

                    ; #39028: origin
                    (Ba_survivorat_s_p3)

                    ; #42629: <==closure== 54898 (pos)
                    (Pc_survivorat_s_p3)

                    ; #54898: origin
                    (Bc_survivorat_s_p3)

                    ; #81009: <==closure== 99905 (pos)
                    (Pb_survivorat_s_p3)

                    ; #99905: origin
                    (Bb_survivorat_s_p3)

                    ; #14539: <==negation-removal== 54898 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #19382: <==negation-removal== 81009 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #37249: <==negation-removal== 99905 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #50267: <==negation-removal== 39028 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #76823: <==negation-removal== 33628 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #85133: <==negation-removal== 42629 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #33628: <==closure== 39028 (pos)
                    (Pa_survivorat_s_p3)

                    ; #39028: origin
                    (Ba_survivorat_s_p3)

                    ; #42629: <==closure== 54898 (pos)
                    (Pc_survivorat_s_p3)

                    ; #54898: origin
                    (Bc_survivorat_s_p3)

                    ; #81009: <==closure== 99905 (pos)
                    (Pb_survivorat_s_p3)

                    ; #99905: origin
                    (Bb_survivorat_s_p3)

                    ; #14539: <==negation-removal== 54898 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #19382: <==negation-removal== 81009 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #37249: <==negation-removal== 99905 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #50267: <==negation-removal== 39028 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #76823: <==negation-removal== 33628 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #85133: <==negation-removal== 42629 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #33628: <==closure== 39028 (pos)
                    (Pa_survivorat_s_p3)

                    ; #39028: origin
                    (Ba_survivorat_s_p3)

                    ; #42629: <==closure== 54898 (pos)
                    (Pc_survivorat_s_p3)

                    ; #54898: origin
                    (Bc_survivorat_s_p3)

                    ; #81009: <==closure== 99905 (pos)
                    (Pb_survivorat_s_p3)

                    ; #99905: origin
                    (Bb_survivorat_s_p3)

                    ; #14539: <==negation-removal== 54898 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #19382: <==negation-removal== 81009 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #37249: <==negation-removal== 99905 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #50267: <==negation-removal== 39028 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #76823: <==negation-removal== 33628 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #85133: <==negation-removal== 42629 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #15973: origin
                    (Bc_survivorat_s_p4)

                    ; #56153: <==closure== 15973 (pos)
                    (Pc_survivorat_s_p4)

                    ; #73514: origin
                    (Ba_survivorat_s_p4)

                    ; #76455: origin
                    (Bb_survivorat_s_p4)

                    ; #84931: <==closure== 76455 (pos)
                    (Pb_survivorat_s_p4)

                    ; #88133: <==closure== 73514 (pos)
                    (Pa_survivorat_s_p4)

                    ; #10676: <==negation-removal== 84931 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #20007: <==negation-removal== 73514 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #21117: <==negation-removal== 88133 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #34865: <==negation-removal== 56153 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #48187: <==negation-removal== 15973 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #81359: <==negation-removal== 76455 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #15973: origin
                    (Bc_survivorat_s_p4)

                    ; #56153: <==closure== 15973 (pos)
                    (Pc_survivorat_s_p4)

                    ; #73514: origin
                    (Ba_survivorat_s_p4)

                    ; #76455: origin
                    (Bb_survivorat_s_p4)

                    ; #84931: <==closure== 76455 (pos)
                    (Pb_survivorat_s_p4)

                    ; #88133: <==closure== 73514 (pos)
                    (Pa_survivorat_s_p4)

                    ; #10676: <==negation-removal== 84931 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #20007: <==negation-removal== 73514 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #21117: <==negation-removal== 88133 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #34865: <==negation-removal== 56153 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #48187: <==negation-removal== 15973 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #81359: <==negation-removal== 76455 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (at_c_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #15973: origin
                    (Bc_survivorat_s_p4)

                    ; #56153: <==closure== 15973 (pos)
                    (Pc_survivorat_s_p4)

                    ; #73514: origin
                    (Ba_survivorat_s_p4)

                    ; #76455: origin
                    (Bb_survivorat_s_p4)

                    ; #84931: <==closure== 76455 (pos)
                    (Pb_survivorat_s_p4)

                    ; #88133: <==closure== 73514 (pos)
                    (Pa_survivorat_s_p4)

                    ; #10676: <==negation-removal== 84931 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #20007: <==negation-removal== 73514 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #21117: <==negation-removal== 88133 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #34865: <==negation-removal== 56153 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #48187: <==negation-removal== 15973 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #81359: <==negation-removal== 76455 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #37210: <==closure== 77960 (pos)
                    (Pa_survivorat_s_p5)

                    ; #59460: <==closure== 60248 (pos)
                    (Pc_survivorat_s_p5)

                    ; #60248: origin
                    (Bc_survivorat_s_p5)

                    ; #69555: <==closure== 73249 (pos)
                    (Pb_survivorat_s_p5)

                    ; #73249: origin
                    (Bb_survivorat_s_p5)

                    ; #77960: origin
                    (Ba_survivorat_s_p5)

                    ; #29688: <==negation-removal== 73249 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #35946: <==negation-removal== 59460 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #46115: <==negation-removal== 60248 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #48243: <==negation-removal== 77960 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #58725: <==negation-removal== 37210 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #71421: <==negation-removal== 69555 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #37210: <==closure== 77960 (pos)
                    (Pa_survivorat_s_p5)

                    ; #59460: <==closure== 60248 (pos)
                    (Pc_survivorat_s_p5)

                    ; #60248: origin
                    (Bc_survivorat_s_p5)

                    ; #69555: <==closure== 73249 (pos)
                    (Pb_survivorat_s_p5)

                    ; #73249: origin
                    (Bb_survivorat_s_p5)

                    ; #77960: origin
                    (Ba_survivorat_s_p5)

                    ; #29688: <==negation-removal== 73249 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #35946: <==negation-removal== 59460 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #46115: <==negation-removal== 60248 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #48243: <==negation-removal== 77960 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #58725: <==negation-removal== 37210 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #71421: <==negation-removal== 69555 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #37210: <==closure== 77960 (pos)
                    (Pa_survivorat_s_p5)

                    ; #59460: <==closure== 60248 (pos)
                    (Pc_survivorat_s_p5)

                    ; #60248: origin
                    (Bc_survivorat_s_p5)

                    ; #69555: <==closure== 73249 (pos)
                    (Pb_survivorat_s_p5)

                    ; #73249: origin
                    (Bb_survivorat_s_p5)

                    ; #77960: origin
                    (Ba_survivorat_s_p5)

                    ; #29688: <==negation-removal== 73249 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #35946: <==negation-removal== 59460 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #46115: <==negation-removal== 60248 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #48243: <==negation-removal== 77960 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #58725: <==negation-removal== 37210 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #71421: <==negation-removal== 69555 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #13315: <==closure== 92011 (pos)
                    (Pc_survivorat_s_p6)

                    ; #44879: <==closure== 86837 (pos)
                    (Pb_survivorat_s_p6)

                    ; #60532: <==closure== 78625 (pos)
                    (Pa_survivorat_s_p6)

                    ; #78625: origin
                    (Ba_survivorat_s_p6)

                    ; #86837: origin
                    (Bb_survivorat_s_p6)

                    ; #92011: origin
                    (Bc_survivorat_s_p6)

                    ; #25300: <==negation-removal== 60532 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #46509: <==negation-removal== 78625 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #51504: <==negation-removal== 44879 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #61298: <==negation-removal== 86837 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #64166: <==negation-removal== 92011 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #71158: <==negation-removal== 13315 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #13315: <==closure== 92011 (pos)
                    (Pc_survivorat_s_p6)

                    ; #44879: <==closure== 86837 (pos)
                    (Pb_survivorat_s_p6)

                    ; #60532: <==closure== 78625 (pos)
                    (Pa_survivorat_s_p6)

                    ; #78625: origin
                    (Ba_survivorat_s_p6)

                    ; #86837: origin
                    (Bb_survivorat_s_p6)

                    ; #92011: origin
                    (Bc_survivorat_s_p6)

                    ; #25300: <==negation-removal== 60532 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #46509: <==negation-removal== 78625 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #51504: <==negation-removal== 44879 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #61298: <==negation-removal== 86837 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #64166: <==negation-removal== 92011 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #71158: <==negation-removal== 13315 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #13315: <==closure== 92011 (pos)
                    (Pc_survivorat_s_p6)

                    ; #44879: <==closure== 86837 (pos)
                    (Pb_survivorat_s_p6)

                    ; #60532: <==closure== 78625 (pos)
                    (Pa_survivorat_s_p6)

                    ; #78625: origin
                    (Ba_survivorat_s_p6)

                    ; #86837: origin
                    (Bb_survivorat_s_p6)

                    ; #92011: origin
                    (Bc_survivorat_s_p6)

                    ; #25300: <==negation-removal== 60532 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #46509: <==negation-removal== 78625 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #51504: <==negation-removal== 44879 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #61298: <==negation-removal== 86837 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #64166: <==negation-removal== 92011 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #71158: <==negation-removal== 13315 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #15561: <==closure== 45282 (pos)
                    (Pa_survivorat_s_p7)

                    ; #45282: origin
                    (Ba_survivorat_s_p7)

                    ; #45775: origin
                    (Bb_survivorat_s_p7)

                    ; #54437: <==closure== 45775 (pos)
                    (Pb_survivorat_s_p7)

                    ; #57899: <==closure== 89537 (pos)
                    (Pc_survivorat_s_p7)

                    ; #89537: origin
                    (Bc_survivorat_s_p7)

                    ; #10856: <==negation-removal== 45282 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #32664: <==negation-removal== 54437 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #41644: <==negation-removal== 15561 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #78152: <==negation-removal== 89537 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #81141: <==negation-removal== 45775 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #84138: <==negation-removal== 57899 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #15561: <==closure== 45282 (pos)
                    (Pa_survivorat_s_p7)

                    ; #45282: origin
                    (Ba_survivorat_s_p7)

                    ; #45775: origin
                    (Bb_survivorat_s_p7)

                    ; #54437: <==closure== 45775 (pos)
                    (Pb_survivorat_s_p7)

                    ; #57899: <==closure== 89537 (pos)
                    (Pc_survivorat_s_p7)

                    ; #89537: origin
                    (Bc_survivorat_s_p7)

                    ; #10856: <==negation-removal== 45282 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #32664: <==negation-removal== 54437 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #41644: <==negation-removal== 15561 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #78152: <==negation-removal== 89537 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #81141: <==negation-removal== 45775 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #84138: <==negation-removal== 57899 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #15561: <==closure== 45282 (pos)
                    (Pa_survivorat_s_p7)

                    ; #45282: origin
                    (Ba_survivorat_s_p7)

                    ; #45775: origin
                    (Bb_survivorat_s_p7)

                    ; #54437: <==closure== 45775 (pos)
                    (Pb_survivorat_s_p7)

                    ; #57899: <==closure== 89537 (pos)
                    (Pc_survivorat_s_p7)

                    ; #89537: origin
                    (Bc_survivorat_s_p7)

                    ; #10856: <==negation-removal== 45282 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #32664: <==negation-removal== 54437 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #41644: <==negation-removal== 15561 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #78152: <==negation-removal== 89537 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #81141: <==negation-removal== 45775 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #84138: <==negation-removal== 57899 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #22365: origin
                    (Bc_survivorat_s_p8)

                    ; #54420: origin
                    (Bb_survivorat_s_p8)

                    ; #61899: origin
                    (Ba_survivorat_s_p8)

                    ; #71817: <==closure== 61899 (pos)
                    (Pa_survivorat_s_p8)

                    ; #86761: <==closure== 54420 (pos)
                    (Pb_survivorat_s_p8)

                    ; #90467: <==closure== 22365 (pos)
                    (Pc_survivorat_s_p8)

                    ; #20439: <==negation-removal== 90467 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #37451: <==negation-removal== 71817 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #43435: <==negation-removal== 54420 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #43451: <==negation-removal== 22365 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #66264: <==negation-removal== 86761 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #91618: <==negation-removal== 61899 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #22365: origin
                    (Bc_survivorat_s_p8)

                    ; #54420: origin
                    (Bb_survivorat_s_p8)

                    ; #61899: origin
                    (Ba_survivorat_s_p8)

                    ; #71817: <==closure== 61899 (pos)
                    (Pa_survivorat_s_p8)

                    ; #86761: <==closure== 54420 (pos)
                    (Pb_survivorat_s_p8)

                    ; #90467: <==closure== 22365 (pos)
                    (Pc_survivorat_s_p8)

                    ; #20439: <==negation-removal== 90467 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #37451: <==negation-removal== 71817 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #43435: <==negation-removal== 54420 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #43451: <==negation-removal== 22365 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #66264: <==negation-removal== 86761 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #91618: <==negation-removal== 61899 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #22365: origin
                    (Bc_survivorat_s_p8)

                    ; #54420: origin
                    (Bb_survivorat_s_p8)

                    ; #61899: origin
                    (Ba_survivorat_s_p8)

                    ; #71817: <==closure== 61899 (pos)
                    (Pa_survivorat_s_p8)

                    ; #86761: <==closure== 54420 (pos)
                    (Pb_survivorat_s_p8)

                    ; #90467: <==closure== 22365 (pos)
                    (Pc_survivorat_s_p8)

                    ; #20439: <==negation-removal== 90467 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #37451: <==negation-removal== 71817 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #43435: <==negation-removal== 54420 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #43451: <==negation-removal== 22365 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #66264: <==negation-removal== 86761 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #91618: <==negation-removal== 61899 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #16190: <==closure== 54041 (pos)
                    (Pa_survivorat_s_p9)

                    ; #24456: origin
                    (Bb_survivorat_s_p9)

                    ; #25263: <==closure== 66773 (pos)
                    (Pc_survivorat_s_p9)

                    ; #54041: origin
                    (Ba_survivorat_s_p9)

                    ; #66773: origin
                    (Bc_survivorat_s_p9)

                    ; #75965: <==closure== 24456 (pos)
                    (Pb_survivorat_s_p9)

                    ; #37293: <==negation-removal== 24456 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #45386: <==negation-removal== 75965 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #65346: <==negation-removal== 66773 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #66835: <==negation-removal== 25263 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #84831: <==negation-removal== 16190 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #86145: <==negation-removal== 54041 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #16190: <==closure== 54041 (pos)
                    (Pa_survivorat_s_p9)

                    ; #24456: origin
                    (Bb_survivorat_s_p9)

                    ; #25263: <==closure== 66773 (pos)
                    (Pc_survivorat_s_p9)

                    ; #54041: origin
                    (Ba_survivorat_s_p9)

                    ; #66773: origin
                    (Bc_survivorat_s_p9)

                    ; #75965: <==closure== 24456 (pos)
                    (Pb_survivorat_s_p9)

                    ; #37293: <==negation-removal== 24456 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #45386: <==negation-removal== 75965 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #65346: <==negation-removal== 66773 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #66835: <==negation-removal== 25263 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #84831: <==negation-removal== 16190 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #86145: <==negation-removal== 54041 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #16190: <==closure== 54041 (pos)
                    (Pa_survivorat_s_p9)

                    ; #24456: origin
                    (Bb_survivorat_s_p9)

                    ; #25263: <==closure== 66773 (pos)
                    (Pc_survivorat_s_p9)

                    ; #54041: origin
                    (Ba_survivorat_s_p9)

                    ; #66773: origin
                    (Bc_survivorat_s_p9)

                    ; #75965: <==closure== 24456 (pos)
                    (Pb_survivorat_s_p9)

                    ; #37293: <==negation-removal== 24456 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #45386: <==negation-removal== 75965 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #65346: <==negation-removal== 66773 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #66835: <==negation-removal== 25263 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #84831: <==negation-removal== 16190 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #86145: <==negation-removal== 54041 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #31878: origin
                    (at_a_p1)

                    ; #49640: origin
                    (not_at_a_p10)

                    ; #75257: <==negation-removal== 31878 (pos)
                    (not (not_at_a_p1))

                    ; #90139: <==negation-removal== 49640 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (at_a_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #49640: origin
                    (not_at_a_p10)

                    ; #90139: origin
                    (at_a_p10)

                    ; #49640: <==negation-removal== 90139 (pos)
                    (not (not_at_a_p10))

                    ; #90139: <==negation-removal== 49640 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #49640: origin
                    (not_at_a_p10)

                    ; #53551: origin
                    (at_a_p11)

                    ; #40633: <==negation-removal== 53551 (pos)
                    (not (not_at_a_p11))

                    ; #90139: <==negation-removal== 49640 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10))
        :effect (and
                    ; #49640: origin
                    (not_at_a_p10)

                    ; #95828: origin
                    (at_a_p12)

                    ; #71030: <==negation-removal== 95828 (pos)
                    (not (not_at_a_p12))

                    ; #90139: <==negation-removal== 49640 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10))
        :effect (and
                    ; #49640: origin
                    (not_at_a_p10)

                    ; #87976: origin
                    (at_a_p2)

                    ; #58569: <==negation-removal== 87976 (pos)
                    (not (not_at_a_p2))

                    ; #90139: <==negation-removal== 49640 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10))
        :effect (and
                    ; #45081: origin
                    (at_a_p3)

                    ; #49640: origin
                    (not_at_a_p10)

                    ; #21141: <==negation-removal== 45081 (pos)
                    (not (not_at_a_p3))

                    ; #90139: <==negation-removal== 49640 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10))
        :effect (and
                    ; #49640: origin
                    (not_at_a_p10)

                    ; #64948: origin
                    (at_a_p4)

                    ; #11451: <==negation-removal== 64948 (pos)
                    (not (not_at_a_p4))

                    ; #90139: <==negation-removal== 49640 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10))
        :effect (and
                    ; #49640: origin
                    (not_at_a_p10)

                    ; #84424: origin
                    (at_a_p5)

                    ; #51757: <==negation-removal== 84424 (pos)
                    (not (not_at_a_p5))

                    ; #90139: <==negation-removal== 49640 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10))
        :effect (and
                    ; #49640: origin
                    (not_at_a_p10)

                    ; #59479: origin
                    (at_a_p6)

                    ; #39443: <==negation-removal== 59479 (pos)
                    (not (not_at_a_p6))

                    ; #90139: <==negation-removal== 49640 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10))
        :effect (and
                    ; #43504: origin
                    (at_a_p7)

                    ; #49640: origin
                    (not_at_a_p10)

                    ; #50257: <==negation-removal== 43504 (pos)
                    (not (not_at_a_p7))

                    ; #90139: <==negation-removal== 49640 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p8
        :precondition (and (at_a_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #49640: origin
                    (not_at_a_p10)

                    ; #73990: origin
                    (at_a_p8)

                    ; #34683: <==negation-removal== 73990 (pos)
                    (not (not_at_a_p8))

                    ; #90139: <==negation-removal== 49640 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10))
        :effect (and
                    ; #49640: origin
                    (not_at_a_p10)

                    ; #59496: origin
                    (at_a_p9)

                    ; #80359: <==negation-removal== 59496 (pos)
                    (not (not_at_a_p9))

                    ; #90139: <==negation-removal== 49640 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11))
        :effect (and
                    ; #31878: origin
                    (at_a_p1)

                    ; #40633: origin
                    (not_at_a_p11)

                    ; #53551: <==negation-removal== 40633 (pos)
                    (not (at_a_p11))

                    ; #75257: <==negation-removal== 31878 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #40633: origin
                    (not_at_a_p11)

                    ; #90139: origin
                    (at_a_p10)

                    ; #49640: <==negation-removal== 90139 (pos)
                    (not (not_at_a_p10))

                    ; #53551: <==negation-removal== 40633 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #40633: origin
                    (not_at_a_p11)

                    ; #53551: origin
                    (at_a_p11)

                    ; #40633: <==negation-removal== 53551 (pos)
                    (not (not_at_a_p11))

                    ; #53551: <==negation-removal== 40633 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11))
        :effect (and
                    ; #40633: origin
                    (not_at_a_p11)

                    ; #95828: origin
                    (at_a_p12)

                    ; #53551: <==negation-removal== 40633 (pos)
                    (not (at_a_p11))

                    ; #71030: <==negation-removal== 95828 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_a_p11))
        :effect (and
                    ; #40633: origin
                    (not_at_a_p11)

                    ; #87976: origin
                    (at_a_p2)

                    ; #53551: <==negation-removal== 40633 (pos)
                    (not (at_a_p11))

                    ; #58569: <==negation-removal== 87976 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_a_p11))
        :effect (and
                    ; #40633: origin
                    (not_at_a_p11)

                    ; #45081: origin
                    (at_a_p3)

                    ; #21141: <==negation-removal== 45081 (pos)
                    (not (not_at_a_p3))

                    ; #53551: <==negation-removal== 40633 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11))
        :effect (and
                    ; #40633: origin
                    (not_at_a_p11)

                    ; #64948: origin
                    (at_a_p4)

                    ; #11451: <==negation-removal== 64948 (pos)
                    (not (not_at_a_p4))

                    ; #53551: <==negation-removal== 40633 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_a_p11))
        :effect (and
                    ; #40633: origin
                    (not_at_a_p11)

                    ; #84424: origin
                    (at_a_p5)

                    ; #51757: <==negation-removal== 84424 (pos)
                    (not (not_at_a_p5))

                    ; #53551: <==negation-removal== 40633 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_a_p11))
        :effect (and
                    ; #40633: origin
                    (not_at_a_p11)

                    ; #59479: origin
                    (at_a_p6)

                    ; #39443: <==negation-removal== 59479 (pos)
                    (not (not_at_a_p6))

                    ; #53551: <==negation-removal== 40633 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_a_p11))
        :effect (and
                    ; #40633: origin
                    (not_at_a_p11)

                    ; #43504: origin
                    (at_a_p7)

                    ; #50257: <==negation-removal== 43504 (pos)
                    (not (not_at_a_p7))

                    ; #53551: <==negation-removal== 40633 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11))
        :effect (and
                    ; #40633: origin
                    (not_at_a_p11)

                    ; #73990: origin
                    (at_a_p8)

                    ; #34683: <==negation-removal== 73990 (pos)
                    (not (not_at_a_p8))

                    ; #53551: <==negation-removal== 40633 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11))
        :effect (and
                    ; #40633: origin
                    (not_at_a_p11)

                    ; #59496: origin
                    (at_a_p9)

                    ; #53551: <==negation-removal== 40633 (pos)
                    (not (at_a_p11))

                    ; #80359: <==negation-removal== 59496 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12))
        :effect (and
                    ; #31878: origin
                    (at_a_p1)

                    ; #71030: origin
                    (not_at_a_p12)

                    ; #75257: <==negation-removal== 31878 (pos)
                    (not (not_at_a_p1))

                    ; #95828: <==negation-removal== 71030 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12))
        :effect (and
                    ; #71030: origin
                    (not_at_a_p12)

                    ; #90139: origin
                    (at_a_p10)

                    ; #49640: <==negation-removal== 90139 (pos)
                    (not (not_at_a_p10))

                    ; #95828: <==negation-removal== 71030 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12))
        :effect (and
                    ; #53551: origin
                    (at_a_p11)

                    ; #71030: origin
                    (not_at_a_p12)

                    ; #40633: <==negation-removal== 53551 (pos)
                    (not (not_at_a_p11))

                    ; #95828: <==negation-removal== 71030 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12))
        :effect (and
                    ; #71030: origin
                    (not_at_a_p12)

                    ; #95828: origin
                    (at_a_p12)

                    ; #71030: <==negation-removal== 95828 (pos)
                    (not (not_at_a_p12))

                    ; #95828: <==negation-removal== 71030 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12))
        :effect (and
                    ; #71030: origin
                    (not_at_a_p12)

                    ; #87976: origin
                    (at_a_p2)

                    ; #58569: <==negation-removal== 87976 (pos)
                    (not (not_at_a_p2))

                    ; #95828: <==negation-removal== 71030 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #45081: origin
                    (at_a_p3)

                    ; #71030: origin
                    (not_at_a_p12)

                    ; #21141: <==negation-removal== 45081 (pos)
                    (not (not_at_a_p3))

                    ; #95828: <==negation-removal== 71030 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12))
        :effect (and
                    ; #64948: origin
                    (at_a_p4)

                    ; #71030: origin
                    (not_at_a_p12)

                    ; #11451: <==negation-removal== 64948 (pos)
                    (not (not_at_a_p4))

                    ; #95828: <==negation-removal== 71030 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12))
        :effect (and
                    ; #71030: origin
                    (not_at_a_p12)

                    ; #84424: origin
                    (at_a_p5)

                    ; #51757: <==negation-removal== 84424 (pos)
                    (not (not_at_a_p5))

                    ; #95828: <==negation-removal== 71030 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12))
        :effect (and
                    ; #59479: origin
                    (at_a_p6)

                    ; #71030: origin
                    (not_at_a_p12)

                    ; #39443: <==negation-removal== 59479 (pos)
                    (not (not_at_a_p6))

                    ; #95828: <==negation-removal== 71030 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12))
        :effect (and
                    ; #43504: origin
                    (at_a_p7)

                    ; #71030: origin
                    (not_at_a_p12)

                    ; #50257: <==negation-removal== 43504 (pos)
                    (not (not_at_a_p7))

                    ; #95828: <==negation-removal== 71030 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12))
        :effect (and
                    ; #71030: origin
                    (not_at_a_p12)

                    ; #73990: origin
                    (at_a_p8)

                    ; #34683: <==negation-removal== 73990 (pos)
                    (not (not_at_a_p8))

                    ; #95828: <==negation-removal== 71030 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12))
        :effect (and
                    ; #59496: origin
                    (at_a_p9)

                    ; #71030: origin
                    (not_at_a_p12)

                    ; #80359: <==negation-removal== 59496 (pos)
                    (not (not_at_a_p9))

                    ; #95828: <==negation-removal== 71030 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #31878: origin
                    (at_a_p1)

                    ; #75257: origin
                    (not_at_a_p1)

                    ; #31878: <==negation-removal== 75257 (pos)
                    (not (at_a_p1))

                    ; #75257: <==negation-removal== 31878 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1))
        :effect (and
                    ; #75257: origin
                    (not_at_a_p1)

                    ; #90139: origin
                    (at_a_p10)

                    ; #31878: <==negation-removal== 75257 (pos)
                    (not (at_a_p1))

                    ; #49640: <==negation-removal== 90139 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1))
        :effect (and
                    ; #53551: origin
                    (at_a_p11)

                    ; #75257: origin
                    (not_at_a_p1)

                    ; #31878: <==negation-removal== 75257 (pos)
                    (not (at_a_p1))

                    ; #40633: <==negation-removal== 53551 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1))
        :effect (and
                    ; #75257: origin
                    (not_at_a_p1)

                    ; #95828: origin
                    (at_a_p12)

                    ; #31878: <==negation-removal== 75257 (pos)
                    (not (at_a_p1))

                    ; #71030: <==negation-removal== 95828 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #75257: origin
                    (not_at_a_p1)

                    ; #87976: origin
                    (at_a_p2)

                    ; #31878: <==negation-removal== 75257 (pos)
                    (not (at_a_p1))

                    ; #58569: <==negation-removal== 87976 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #45081: origin
                    (at_a_p3)

                    ; #75257: origin
                    (not_at_a_p1)

                    ; #21141: <==negation-removal== 45081 (pos)
                    (not (not_at_a_p3))

                    ; #31878: <==negation-removal== 75257 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #64948: origin
                    (at_a_p4)

                    ; #75257: origin
                    (not_at_a_p1)

                    ; #11451: <==negation-removal== 64948 (pos)
                    (not (not_at_a_p4))

                    ; #31878: <==negation-removal== 75257 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #75257: origin
                    (not_at_a_p1)

                    ; #84424: origin
                    (at_a_p5)

                    ; #31878: <==negation-removal== 75257 (pos)
                    (not (at_a_p1))

                    ; #51757: <==negation-removal== 84424 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #59479: origin
                    (at_a_p6)

                    ; #75257: origin
                    (not_at_a_p1)

                    ; #31878: <==negation-removal== 75257 (pos)
                    (not (at_a_p1))

                    ; #39443: <==negation-removal== 59479 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #43504: origin
                    (at_a_p7)

                    ; #75257: origin
                    (not_at_a_p1)

                    ; #31878: <==negation-removal== 75257 (pos)
                    (not (at_a_p1))

                    ; #50257: <==negation-removal== 43504 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #73990: origin
                    (at_a_p8)

                    ; #75257: origin
                    (not_at_a_p1)

                    ; #31878: <==negation-removal== 75257 (pos)
                    (not (at_a_p1))

                    ; #34683: <==negation-removal== 73990 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #59496: origin
                    (at_a_p9)

                    ; #75257: origin
                    (not_at_a_p1)

                    ; #31878: <==negation-removal== 75257 (pos)
                    (not (at_a_p1))

                    ; #80359: <==negation-removal== 59496 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #31878: origin
                    (at_a_p1)

                    ; #58569: origin
                    (not_at_a_p2)

                    ; #75257: <==negation-removal== 31878 (pos)
                    (not (not_at_a_p1))

                    ; #87976: <==negation-removal== 58569 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2))
        :effect (and
                    ; #58569: origin
                    (not_at_a_p2)

                    ; #90139: origin
                    (at_a_p10)

                    ; #49640: <==negation-removal== 90139 (pos)
                    (not (not_at_a_p10))

                    ; #87976: <==negation-removal== 58569 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2))
        :effect (and
                    ; #53551: origin
                    (at_a_p11)

                    ; #58569: origin
                    (not_at_a_p2)

                    ; #40633: <==negation-removal== 53551 (pos)
                    (not (not_at_a_p11))

                    ; #87976: <==negation-removal== 58569 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #58569: origin
                    (not_at_a_p2)

                    ; #95828: origin
                    (at_a_p12)

                    ; #71030: <==negation-removal== 95828 (pos)
                    (not (not_at_a_p12))

                    ; #87976: <==negation-removal== 58569 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #58569: origin
                    (not_at_a_p2)

                    ; #87976: origin
                    (at_a_p2)

                    ; #58569: <==negation-removal== 87976 (pos)
                    (not (not_at_a_p2))

                    ; #87976: <==negation-removal== 58569 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #45081: origin
                    (at_a_p3)

                    ; #58569: origin
                    (not_at_a_p2)

                    ; #21141: <==negation-removal== 45081 (pos)
                    (not (not_at_a_p3))

                    ; #87976: <==negation-removal== 58569 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #58569: origin
                    (not_at_a_p2)

                    ; #64948: origin
                    (at_a_p4)

                    ; #11451: <==negation-removal== 64948 (pos)
                    (not (not_at_a_p4))

                    ; #87976: <==negation-removal== 58569 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #58569: origin
                    (not_at_a_p2)

                    ; #84424: origin
                    (at_a_p5)

                    ; #51757: <==negation-removal== 84424 (pos)
                    (not (not_at_a_p5))

                    ; #87976: <==negation-removal== 58569 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #58569: origin
                    (not_at_a_p2)

                    ; #59479: origin
                    (at_a_p6)

                    ; #39443: <==negation-removal== 59479 (pos)
                    (not (not_at_a_p6))

                    ; #87976: <==negation-removal== 58569 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #43504: origin
                    (at_a_p7)

                    ; #58569: origin
                    (not_at_a_p2)

                    ; #50257: <==negation-removal== 43504 (pos)
                    (not (not_at_a_p7))

                    ; #87976: <==negation-removal== 58569 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #58569: origin
                    (not_at_a_p2)

                    ; #73990: origin
                    (at_a_p8)

                    ; #34683: <==negation-removal== 73990 (pos)
                    (not (not_at_a_p8))

                    ; #87976: <==negation-removal== 58569 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #58569: origin
                    (not_at_a_p2)

                    ; #59496: origin
                    (at_a_p9)

                    ; #80359: <==negation-removal== 59496 (pos)
                    (not (not_at_a_p9))

                    ; #87976: <==negation-removal== 58569 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #21141: origin
                    (not_at_a_p3)

                    ; #31878: origin
                    (at_a_p1)

                    ; #45081: <==negation-removal== 21141 (pos)
                    (not (at_a_p3))

                    ; #75257: <==negation-removal== 31878 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #21141: origin
                    (not_at_a_p3)

                    ; #90139: origin
                    (at_a_p10)

                    ; #45081: <==negation-removal== 21141 (pos)
                    (not (at_a_p3))

                    ; #49640: <==negation-removal== 90139 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #21141: origin
                    (not_at_a_p3)

                    ; #53551: origin
                    (at_a_p11)

                    ; #40633: <==negation-removal== 53551 (pos)
                    (not (not_at_a_p11))

                    ; #45081: <==negation-removal== 21141 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #21141: origin
                    (not_at_a_p3)

                    ; #95828: origin
                    (at_a_p12)

                    ; #45081: <==negation-removal== 21141 (pos)
                    (not (at_a_p3))

                    ; #71030: <==negation-removal== 95828 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #21141: origin
                    (not_at_a_p3)

                    ; #87976: origin
                    (at_a_p2)

                    ; #45081: <==negation-removal== 21141 (pos)
                    (not (at_a_p3))

                    ; #58569: <==negation-removal== 87976 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #21141: origin
                    (not_at_a_p3)

                    ; #45081: origin
                    (at_a_p3)

                    ; #21141: <==negation-removal== 45081 (pos)
                    (not (not_at_a_p3))

                    ; #45081: <==negation-removal== 21141 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #21141: origin
                    (not_at_a_p3)

                    ; #64948: origin
                    (at_a_p4)

                    ; #11451: <==negation-removal== 64948 (pos)
                    (not (not_at_a_p4))

                    ; #45081: <==negation-removal== 21141 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #21141: origin
                    (not_at_a_p3)

                    ; #84424: origin
                    (at_a_p5)

                    ; #45081: <==negation-removal== 21141 (pos)
                    (not (at_a_p3))

                    ; #51757: <==negation-removal== 84424 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #21141: origin
                    (not_at_a_p3)

                    ; #59479: origin
                    (at_a_p6)

                    ; #39443: <==negation-removal== 59479 (pos)
                    (not (not_at_a_p6))

                    ; #45081: <==negation-removal== 21141 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #21141: origin
                    (not_at_a_p3)

                    ; #43504: origin
                    (at_a_p7)

                    ; #45081: <==negation-removal== 21141 (pos)
                    (not (at_a_p3))

                    ; #50257: <==negation-removal== 43504 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #21141: origin
                    (not_at_a_p3)

                    ; #73990: origin
                    (at_a_p8)

                    ; #34683: <==negation-removal== 73990 (pos)
                    (not (not_at_a_p8))

                    ; #45081: <==negation-removal== 21141 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #21141: origin
                    (not_at_a_p3)

                    ; #59496: origin
                    (at_a_p9)

                    ; #45081: <==negation-removal== 21141 (pos)
                    (not (at_a_p3))

                    ; #80359: <==negation-removal== 59496 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #11451: origin
                    (not_at_a_p4)

                    ; #31878: origin
                    (at_a_p1)

                    ; #64948: <==negation-removal== 11451 (pos)
                    (not (at_a_p4))

                    ; #75257: <==negation-removal== 31878 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #11451: origin
                    (not_at_a_p4)

                    ; #90139: origin
                    (at_a_p10)

                    ; #49640: <==negation-removal== 90139 (pos)
                    (not (not_at_a_p10))

                    ; #64948: <==negation-removal== 11451 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #11451: origin
                    (not_at_a_p4)

                    ; #53551: origin
                    (at_a_p11)

                    ; #40633: <==negation-removal== 53551 (pos)
                    (not (not_at_a_p11))

                    ; #64948: <==negation-removal== 11451 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #11451: origin
                    (not_at_a_p4)

                    ; #95828: origin
                    (at_a_p12)

                    ; #64948: <==negation-removal== 11451 (pos)
                    (not (at_a_p4))

                    ; #71030: <==negation-removal== 95828 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #11451: origin
                    (not_at_a_p4)

                    ; #87976: origin
                    (at_a_p2)

                    ; #58569: <==negation-removal== 87976 (pos)
                    (not (not_at_a_p2))

                    ; #64948: <==negation-removal== 11451 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #11451: origin
                    (not_at_a_p4)

                    ; #45081: origin
                    (at_a_p3)

                    ; #21141: <==negation-removal== 45081 (pos)
                    (not (not_at_a_p3))

                    ; #64948: <==negation-removal== 11451 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #11451: origin
                    (not_at_a_p4)

                    ; #64948: origin
                    (at_a_p4)

                    ; #11451: <==negation-removal== 64948 (pos)
                    (not (not_at_a_p4))

                    ; #64948: <==negation-removal== 11451 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #11451: origin
                    (not_at_a_p4)

                    ; #84424: origin
                    (at_a_p5)

                    ; #51757: <==negation-removal== 84424 (pos)
                    (not (not_at_a_p5))

                    ; #64948: <==negation-removal== 11451 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #11451: origin
                    (not_at_a_p4)

                    ; #59479: origin
                    (at_a_p6)

                    ; #39443: <==negation-removal== 59479 (pos)
                    (not (not_at_a_p6))

                    ; #64948: <==negation-removal== 11451 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #11451: origin
                    (not_at_a_p4)

                    ; #43504: origin
                    (at_a_p7)

                    ; #50257: <==negation-removal== 43504 (pos)
                    (not (not_at_a_p7))

                    ; #64948: <==negation-removal== 11451 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #11451: origin
                    (not_at_a_p4)

                    ; #73990: origin
                    (at_a_p8)

                    ; #34683: <==negation-removal== 73990 (pos)
                    (not (not_at_a_p8))

                    ; #64948: <==negation-removal== 11451 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #11451: origin
                    (not_at_a_p4)

                    ; #59496: origin
                    (at_a_p9)

                    ; #64948: <==negation-removal== 11451 (pos)
                    (not (at_a_p4))

                    ; #80359: <==negation-removal== 59496 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #31878: origin
                    (at_a_p1)

                    ; #51757: origin
                    (not_at_a_p5)

                    ; #75257: <==negation-removal== 31878 (pos)
                    (not (not_at_a_p1))

                    ; #84424: <==negation-removal== 51757 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_a_p5))
        :effect (and
                    ; #51757: origin
                    (not_at_a_p5)

                    ; #90139: origin
                    (at_a_p10)

                    ; #49640: <==negation-removal== 90139 (pos)
                    (not (not_at_a_p10))

                    ; #84424: <==negation-removal== 51757 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_a_p5))
        :effect (and
                    ; #51757: origin
                    (not_at_a_p5)

                    ; #53551: origin
                    (at_a_p11)

                    ; #40633: <==negation-removal== 53551 (pos)
                    (not (not_at_a_p11))

                    ; #84424: <==negation-removal== 51757 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_a_p5))
        :effect (and
                    ; #51757: origin
                    (not_at_a_p5)

                    ; #95828: origin
                    (at_a_p12)

                    ; #71030: <==negation-removal== 95828 (pos)
                    (not (not_at_a_p12))

                    ; #84424: <==negation-removal== 51757 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #51757: origin
                    (not_at_a_p5)

                    ; #87976: origin
                    (at_a_p2)

                    ; #58569: <==negation-removal== 87976 (pos)
                    (not (not_at_a_p2))

                    ; #84424: <==negation-removal== 51757 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #45081: origin
                    (at_a_p3)

                    ; #51757: origin
                    (not_at_a_p5)

                    ; #21141: <==negation-removal== 45081 (pos)
                    (not (not_at_a_p3))

                    ; #84424: <==negation-removal== 51757 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #51757: origin
                    (not_at_a_p5)

                    ; #64948: origin
                    (at_a_p4)

                    ; #11451: <==negation-removal== 64948 (pos)
                    (not (not_at_a_p4))

                    ; #84424: <==negation-removal== 51757 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #51757: origin
                    (not_at_a_p5)

                    ; #84424: origin
                    (at_a_p5)

                    ; #51757: <==negation-removal== 84424 (pos)
                    (not (not_at_a_p5))

                    ; #84424: <==negation-removal== 51757 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #51757: origin
                    (not_at_a_p5)

                    ; #59479: origin
                    (at_a_p6)

                    ; #39443: <==negation-removal== 59479 (pos)
                    (not (not_at_a_p6))

                    ; #84424: <==negation-removal== 51757 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #43504: origin
                    (at_a_p7)

                    ; #51757: origin
                    (not_at_a_p5)

                    ; #50257: <==negation-removal== 43504 (pos)
                    (not (not_at_a_p7))

                    ; #84424: <==negation-removal== 51757 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #51757: origin
                    (not_at_a_p5)

                    ; #73990: origin
                    (at_a_p8)

                    ; #34683: <==negation-removal== 73990 (pos)
                    (not (not_at_a_p8))

                    ; #84424: <==negation-removal== 51757 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #51757: origin
                    (not_at_a_p5)

                    ; #59496: origin
                    (at_a_p9)

                    ; #80359: <==negation-removal== 59496 (pos)
                    (not (not_at_a_p9))

                    ; #84424: <==negation-removal== 51757 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #31878: origin
                    (at_a_p1)

                    ; #39443: origin
                    (not_at_a_p6)

                    ; #59479: <==negation-removal== 39443 (pos)
                    (not (at_a_p6))

                    ; #75257: <==negation-removal== 31878 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6))
        :effect (and
                    ; #39443: origin
                    (not_at_a_p6)

                    ; #90139: origin
                    (at_a_p10)

                    ; #49640: <==negation-removal== 90139 (pos)
                    (not (not_at_a_p10))

                    ; #59479: <==negation-removal== 39443 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6))
        :effect (and
                    ; #39443: origin
                    (not_at_a_p6)

                    ; #53551: origin
                    (at_a_p11)

                    ; #40633: <==negation-removal== 53551 (pos)
                    (not (not_at_a_p11))

                    ; #59479: <==negation-removal== 39443 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6))
        :effect (and
                    ; #39443: origin
                    (not_at_a_p6)

                    ; #95828: origin
                    (at_a_p12)

                    ; #59479: <==negation-removal== 39443 (pos)
                    (not (at_a_p6))

                    ; #71030: <==negation-removal== 95828 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #39443: origin
                    (not_at_a_p6)

                    ; #87976: origin
                    (at_a_p2)

                    ; #58569: <==negation-removal== 87976 (pos)
                    (not (not_at_a_p2))

                    ; #59479: <==negation-removal== 39443 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #39443: origin
                    (not_at_a_p6)

                    ; #45081: origin
                    (at_a_p3)

                    ; #21141: <==negation-removal== 45081 (pos)
                    (not (not_at_a_p3))

                    ; #59479: <==negation-removal== 39443 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #39443: origin
                    (not_at_a_p6)

                    ; #64948: origin
                    (at_a_p4)

                    ; #11451: <==negation-removal== 64948 (pos)
                    (not (not_at_a_p4))

                    ; #59479: <==negation-removal== 39443 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #39443: origin
                    (not_at_a_p6)

                    ; #84424: origin
                    (at_a_p5)

                    ; #51757: <==negation-removal== 84424 (pos)
                    (not (not_at_a_p5))

                    ; #59479: <==negation-removal== 39443 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #39443: origin
                    (not_at_a_p6)

                    ; #59479: origin
                    (at_a_p6)

                    ; #39443: <==negation-removal== 59479 (pos)
                    (not (not_at_a_p6))

                    ; #59479: <==negation-removal== 39443 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #39443: origin
                    (not_at_a_p6)

                    ; #43504: origin
                    (at_a_p7)

                    ; #50257: <==negation-removal== 43504 (pos)
                    (not (not_at_a_p7))

                    ; #59479: <==negation-removal== 39443 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #39443: origin
                    (not_at_a_p6)

                    ; #73990: origin
                    (at_a_p8)

                    ; #34683: <==negation-removal== 73990 (pos)
                    (not (not_at_a_p8))

                    ; #59479: <==negation-removal== 39443 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #39443: origin
                    (not_at_a_p6)

                    ; #59496: origin
                    (at_a_p9)

                    ; #59479: <==negation-removal== 39443 (pos)
                    (not (at_a_p6))

                    ; #80359: <==negation-removal== 59496 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #31878: origin
                    (at_a_p1)

                    ; #50257: origin
                    (not_at_a_p7)

                    ; #43504: <==negation-removal== 50257 (pos)
                    (not (at_a_p7))

                    ; #75257: <==negation-removal== 31878 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7))
        :effect (and
                    ; #50257: origin
                    (not_at_a_p7)

                    ; #90139: origin
                    (at_a_p10)

                    ; #43504: <==negation-removal== 50257 (pos)
                    (not (at_a_p7))

                    ; #49640: <==negation-removal== 90139 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7))
        :effect (and
                    ; #50257: origin
                    (not_at_a_p7)

                    ; #53551: origin
                    (at_a_p11)

                    ; #40633: <==negation-removal== 53551 (pos)
                    (not (not_at_a_p11))

                    ; #43504: <==negation-removal== 50257 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7))
        :effect (and
                    ; #50257: origin
                    (not_at_a_p7)

                    ; #95828: origin
                    (at_a_p12)

                    ; #43504: <==negation-removal== 50257 (pos)
                    (not (at_a_p7))

                    ; #71030: <==negation-removal== 95828 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #50257: origin
                    (not_at_a_p7)

                    ; #87976: origin
                    (at_a_p2)

                    ; #43504: <==negation-removal== 50257 (pos)
                    (not (at_a_p7))

                    ; #58569: <==negation-removal== 87976 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #45081: origin
                    (at_a_p3)

                    ; #50257: origin
                    (not_at_a_p7)

                    ; #21141: <==negation-removal== 45081 (pos)
                    (not (not_at_a_p3))

                    ; #43504: <==negation-removal== 50257 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #50257: origin
                    (not_at_a_p7)

                    ; #64948: origin
                    (at_a_p4)

                    ; #11451: <==negation-removal== 64948 (pos)
                    (not (not_at_a_p4))

                    ; #43504: <==negation-removal== 50257 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #50257: origin
                    (not_at_a_p7)

                    ; #84424: origin
                    (at_a_p5)

                    ; #43504: <==negation-removal== 50257 (pos)
                    (not (at_a_p7))

                    ; #51757: <==negation-removal== 84424 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #50257: origin
                    (not_at_a_p7)

                    ; #59479: origin
                    (at_a_p6)

                    ; #39443: <==negation-removal== 59479 (pos)
                    (not (not_at_a_p6))

                    ; #43504: <==negation-removal== 50257 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #43504: origin
                    (at_a_p7)

                    ; #50257: origin
                    (not_at_a_p7)

                    ; #43504: <==negation-removal== 50257 (pos)
                    (not (at_a_p7))

                    ; #50257: <==negation-removal== 43504 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #50257: origin
                    (not_at_a_p7)

                    ; #73990: origin
                    (at_a_p8)

                    ; #34683: <==negation-removal== 73990 (pos)
                    (not (not_at_a_p8))

                    ; #43504: <==negation-removal== 50257 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #50257: origin
                    (not_at_a_p7)

                    ; #59496: origin
                    (at_a_p9)

                    ; #43504: <==negation-removal== 50257 (pos)
                    (not (at_a_p7))

                    ; #80359: <==negation-removal== 59496 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #31878: origin
                    (at_a_p1)

                    ; #34683: origin
                    (not_at_a_p8)

                    ; #73990: <==negation-removal== 34683 (pos)
                    (not (at_a_p8))

                    ; #75257: <==negation-removal== 31878 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #34683: origin
                    (not_at_a_p8)

                    ; #90139: origin
                    (at_a_p10)

                    ; #49640: <==negation-removal== 90139 (pos)
                    (not (not_at_a_p10))

                    ; #73990: <==negation-removal== 34683 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8))
        :effect (and
                    ; #34683: origin
                    (not_at_a_p8)

                    ; #53551: origin
                    (at_a_p11)

                    ; #40633: <==negation-removal== 53551 (pos)
                    (not (not_at_a_p11))

                    ; #73990: <==negation-removal== 34683 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #34683: origin
                    (not_at_a_p8)

                    ; #95828: origin
                    (at_a_p12)

                    ; #71030: <==negation-removal== 95828 (pos)
                    (not (not_at_a_p12))

                    ; #73990: <==negation-removal== 34683 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #34683: origin
                    (not_at_a_p8)

                    ; #87976: origin
                    (at_a_p2)

                    ; #58569: <==negation-removal== 87976 (pos)
                    (not (not_at_a_p2))

                    ; #73990: <==negation-removal== 34683 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #34683: origin
                    (not_at_a_p8)

                    ; #45081: origin
                    (at_a_p3)

                    ; #21141: <==negation-removal== 45081 (pos)
                    (not (not_at_a_p3))

                    ; #73990: <==negation-removal== 34683 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #34683: origin
                    (not_at_a_p8)

                    ; #64948: origin
                    (at_a_p4)

                    ; #11451: <==negation-removal== 64948 (pos)
                    (not (not_at_a_p4))

                    ; #73990: <==negation-removal== 34683 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #34683: origin
                    (not_at_a_p8)

                    ; #84424: origin
                    (at_a_p5)

                    ; #51757: <==negation-removal== 84424 (pos)
                    (not (not_at_a_p5))

                    ; #73990: <==negation-removal== 34683 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #34683: origin
                    (not_at_a_p8)

                    ; #59479: origin
                    (at_a_p6)

                    ; #39443: <==negation-removal== 59479 (pos)
                    (not (not_at_a_p6))

                    ; #73990: <==negation-removal== 34683 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #34683: origin
                    (not_at_a_p8)

                    ; #43504: origin
                    (at_a_p7)

                    ; #50257: <==negation-removal== 43504 (pos)
                    (not (not_at_a_p7))

                    ; #73990: <==negation-removal== 34683 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #34683: origin
                    (not_at_a_p8)

                    ; #73990: origin
                    (at_a_p8)

                    ; #34683: <==negation-removal== 73990 (pos)
                    (not (not_at_a_p8))

                    ; #73990: <==negation-removal== 34683 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #34683: origin
                    (not_at_a_p8)

                    ; #59496: origin
                    (at_a_p9)

                    ; #73990: <==negation-removal== 34683 (pos)
                    (not (at_a_p8))

                    ; #80359: <==negation-removal== 59496 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #31878: origin
                    (at_a_p1)

                    ; #80359: origin
                    (not_at_a_p9)

                    ; #59496: <==negation-removal== 80359 (pos)
                    (not (at_a_p9))

                    ; #75257: <==negation-removal== 31878 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9))
        :effect (and
                    ; #80359: origin
                    (not_at_a_p9)

                    ; #90139: origin
                    (at_a_p10)

                    ; #49640: <==negation-removal== 90139 (pos)
                    (not (not_at_a_p10))

                    ; #59496: <==negation-removal== 80359 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9))
        :effect (and
                    ; #53551: origin
                    (at_a_p11)

                    ; #80359: origin
                    (not_at_a_p9)

                    ; #40633: <==negation-removal== 53551 (pos)
                    (not (not_at_a_p11))

                    ; #59496: <==negation-removal== 80359 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9))
        :effect (and
                    ; #80359: origin
                    (not_at_a_p9)

                    ; #95828: origin
                    (at_a_p12)

                    ; #59496: <==negation-removal== 80359 (pos)
                    (not (at_a_p9))

                    ; #71030: <==negation-removal== 95828 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #80359: origin
                    (not_at_a_p9)

                    ; #87976: origin
                    (at_a_p2)

                    ; #58569: <==negation-removal== 87976 (pos)
                    (not (not_at_a_p2))

                    ; #59496: <==negation-removal== 80359 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #45081: origin
                    (at_a_p3)

                    ; #80359: origin
                    (not_at_a_p9)

                    ; #21141: <==negation-removal== 45081 (pos)
                    (not (not_at_a_p3))

                    ; #59496: <==negation-removal== 80359 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #64948: origin
                    (at_a_p4)

                    ; #80359: origin
                    (not_at_a_p9)

                    ; #11451: <==negation-removal== 64948 (pos)
                    (not (not_at_a_p4))

                    ; #59496: <==negation-removal== 80359 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #80359: origin
                    (not_at_a_p9)

                    ; #84424: origin
                    (at_a_p5)

                    ; #51757: <==negation-removal== 84424 (pos)
                    (not (not_at_a_p5))

                    ; #59496: <==negation-removal== 80359 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #59479: origin
                    (at_a_p6)

                    ; #80359: origin
                    (not_at_a_p9)

                    ; #39443: <==negation-removal== 59479 (pos)
                    (not (not_at_a_p6))

                    ; #59496: <==negation-removal== 80359 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #43504: origin
                    (at_a_p7)

                    ; #80359: origin
                    (not_at_a_p9)

                    ; #50257: <==negation-removal== 43504 (pos)
                    (not (not_at_a_p7))

                    ; #59496: <==negation-removal== 80359 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #73990: origin
                    (at_a_p8)

                    ; #80359: origin
                    (not_at_a_p9)

                    ; #34683: <==negation-removal== 73990 (pos)
                    (not (not_at_a_p8))

                    ; #59496: <==negation-removal== 80359 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #59496: origin
                    (at_a_p9)

                    ; #80359: origin
                    (not_at_a_p9)

                    ; #59496: <==negation-removal== 80359 (pos)
                    (not (at_a_p9))

                    ; #80359: <==negation-removal== 59496 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10))
        :effect (and
                    ; #54441: origin
                    (at_b_p1)

                    ; #63500: origin
                    (not_at_b_p10)

                    ; #54828: <==negation-removal== 54441 (pos)
                    (not (not_at_b_p1))

                    ; #66040: <==negation-removal== 63500 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10))
        :effect (and
                    ; #63500: origin
                    (not_at_b_p10)

                    ; #66040: origin
                    (at_b_p10)

                    ; #63500: <==negation-removal== 66040 (pos)
                    (not (not_at_b_p10))

                    ; #66040: <==negation-removal== 63500 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10))
        :effect (and
                    ; #38404: origin
                    (at_b_p11)

                    ; #63500: origin
                    (not_at_b_p10)

                    ; #32289: <==negation-removal== 38404 (pos)
                    (not (not_at_b_p11))

                    ; #66040: <==negation-removal== 63500 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_b_p10))
        :effect (and
                    ; #29961: origin
                    (at_b_p12)

                    ; #63500: origin
                    (not_at_b_p10)

                    ; #15514: <==negation-removal== 29961 (pos)
                    (not (not_at_b_p12))

                    ; #66040: <==negation-removal== 63500 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_b_p10))
        :effect (and
                    ; #63500: origin
                    (not_at_b_p10)

                    ; #76243: origin
                    (at_b_p2)

                    ; #40029: <==negation-removal== 76243 (pos)
                    (not (not_at_b_p2))

                    ; #66040: <==negation-removal== 63500 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_b_p10))
        :effect (and
                    ; #63500: origin
                    (not_at_b_p10)

                    ; #88788: origin
                    (at_b_p3)

                    ; #66040: <==negation-removal== 63500 (pos)
                    (not (at_b_p10))

                    ; #83841: <==negation-removal== 88788 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_b_p10))
        :effect (and
                    ; #27591: origin
                    (at_b_p4)

                    ; #63500: origin
                    (not_at_b_p10)

                    ; #53179: <==negation-removal== 27591 (pos)
                    (not (not_at_b_p4))

                    ; #66040: <==negation-removal== 63500 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_b_p10))
        :effect (and
                    ; #62537: origin
                    (at_b_p5)

                    ; #63500: origin
                    (not_at_b_p10)

                    ; #64161: <==negation-removal== 62537 (pos)
                    (not (not_at_b_p5))

                    ; #66040: <==negation-removal== 63500 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_b_p10))
        :effect (and
                    ; #63500: origin
                    (not_at_b_p10)

                    ; #75915: origin
                    (at_b_p6)

                    ; #66040: <==negation-removal== 63500 (pos)
                    (not (at_b_p10))

                    ; #82757: <==negation-removal== 75915 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_b_p10))
        :effect (and
                    ; #30512: origin
                    (at_b_p7)

                    ; #63500: origin
                    (not_at_b_p10)

                    ; #15850: <==negation-removal== 30512 (pos)
                    (not (not_at_b_p7))

                    ; #66040: <==negation-removal== 63500 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_b_p10))
        :effect (and
                    ; #34460: origin
                    (at_b_p8)

                    ; #63500: origin
                    (not_at_b_p10)

                    ; #59582: <==negation-removal== 34460 (pos)
                    (not (not_at_b_p8))

                    ; #66040: <==negation-removal== 63500 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_b_p10))
        :effect (and
                    ; #39394: origin
                    (at_b_p9)

                    ; #63500: origin
                    (not_at_b_p10)

                    ; #66040: <==negation-removal== 63500 (pos)
                    (not (at_b_p10))

                    ; #72447: <==negation-removal== 39394 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11))
        :effect (and
                    ; #32289: origin
                    (not_at_b_p11)

                    ; #54441: origin
                    (at_b_p1)

                    ; #38404: <==negation-removal== 32289 (pos)
                    (not (at_b_p11))

                    ; #54828: <==negation-removal== 54441 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #32289: origin
                    (not_at_b_p11)

                    ; #66040: origin
                    (at_b_p10)

                    ; #38404: <==negation-removal== 32289 (pos)
                    (not (at_b_p11))

                    ; #63500: <==negation-removal== 66040 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #32289: origin
                    (not_at_b_p11)

                    ; #38404: origin
                    (at_b_p11)

                    ; #32289: <==negation-removal== 38404 (pos)
                    (not (not_at_b_p11))

                    ; #38404: <==negation-removal== 32289 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11))
        :effect (and
                    ; #29961: origin
                    (at_b_p12)

                    ; #32289: origin
                    (not_at_b_p11)

                    ; #15514: <==negation-removal== 29961 (pos)
                    (not (not_at_b_p12))

                    ; #38404: <==negation-removal== 32289 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #32289: origin
                    (not_at_b_p11)

                    ; #76243: origin
                    (at_b_p2)

                    ; #38404: <==negation-removal== 32289 (pos)
                    (not (at_b_p11))

                    ; #40029: <==negation-removal== 76243 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11))
        :effect (and
                    ; #32289: origin
                    (not_at_b_p11)

                    ; #88788: origin
                    (at_b_p3)

                    ; #38404: <==negation-removal== 32289 (pos)
                    (not (at_b_p11))

                    ; #83841: <==negation-removal== 88788 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11))
        :effect (and
                    ; #27591: origin
                    (at_b_p4)

                    ; #32289: origin
                    (not_at_b_p11)

                    ; #38404: <==negation-removal== 32289 (pos)
                    (not (at_b_p11))

                    ; #53179: <==negation-removal== 27591 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11))
        :effect (and
                    ; #32289: origin
                    (not_at_b_p11)

                    ; #62537: origin
                    (at_b_p5)

                    ; #38404: <==negation-removal== 32289 (pos)
                    (not (at_b_p11))

                    ; #64161: <==negation-removal== 62537 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11))
        :effect (and
                    ; #32289: origin
                    (not_at_b_p11)

                    ; #75915: origin
                    (at_b_p6)

                    ; #38404: <==negation-removal== 32289 (pos)
                    (not (at_b_p11))

                    ; #82757: <==negation-removal== 75915 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11))
        :effect (and
                    ; #30512: origin
                    (at_b_p7)

                    ; #32289: origin
                    (not_at_b_p11)

                    ; #15850: <==negation-removal== 30512 (pos)
                    (not (not_at_b_p7))

                    ; #38404: <==negation-removal== 32289 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11))
        :effect (and
                    ; #32289: origin
                    (not_at_b_p11)

                    ; #34460: origin
                    (at_b_p8)

                    ; #38404: <==negation-removal== 32289 (pos)
                    (not (at_b_p11))

                    ; #59582: <==negation-removal== 34460 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11))
        :effect (and
                    ; #32289: origin
                    (not_at_b_p11)

                    ; #39394: origin
                    (at_b_p9)

                    ; #38404: <==negation-removal== 32289 (pos)
                    (not (at_b_p11))

                    ; #72447: <==negation-removal== 39394 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #15514: origin
                    (not_at_b_p12)

                    ; #54441: origin
                    (at_b_p1)

                    ; #29961: <==negation-removal== 15514 (pos)
                    (not (at_b_p12))

                    ; #54828: <==negation-removal== 54441 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #15514: origin
                    (not_at_b_p12)

                    ; #66040: origin
                    (at_b_p10)

                    ; #29961: <==negation-removal== 15514 (pos)
                    (not (at_b_p12))

                    ; #63500: <==negation-removal== 66040 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_b_p12))
        :effect (and
                    ; #15514: origin
                    (not_at_b_p12)

                    ; #38404: origin
                    (at_b_p11)

                    ; #29961: <==negation-removal== 15514 (pos)
                    (not (at_b_p12))

                    ; #32289: <==negation-removal== 38404 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #15514: origin
                    (not_at_b_p12)

                    ; #29961: origin
                    (at_b_p12)

                    ; #15514: <==negation-removal== 29961 (pos)
                    (not (not_at_b_p12))

                    ; #29961: <==negation-removal== 15514 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #15514: origin
                    (not_at_b_p12)

                    ; #76243: origin
                    (at_b_p2)

                    ; #29961: <==negation-removal== 15514 (pos)
                    (not (at_b_p12))

                    ; #40029: <==negation-removal== 76243 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12))
        :effect (and
                    ; #15514: origin
                    (not_at_b_p12)

                    ; #88788: origin
                    (at_b_p3)

                    ; #29961: <==negation-removal== 15514 (pos)
                    (not (at_b_p12))

                    ; #83841: <==negation-removal== 88788 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #15514: origin
                    (not_at_b_p12)

                    ; #27591: origin
                    (at_b_p4)

                    ; #29961: <==negation-removal== 15514 (pos)
                    (not (at_b_p12))

                    ; #53179: <==negation-removal== 27591 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12))
        :effect (and
                    ; #15514: origin
                    (not_at_b_p12)

                    ; #62537: origin
                    (at_b_p5)

                    ; #29961: <==negation-removal== 15514 (pos)
                    (not (at_b_p12))

                    ; #64161: <==negation-removal== 62537 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #15514: origin
                    (not_at_b_p12)

                    ; #75915: origin
                    (at_b_p6)

                    ; #29961: <==negation-removal== 15514 (pos)
                    (not (at_b_p12))

                    ; #82757: <==negation-removal== 75915 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #15514: origin
                    (not_at_b_p12)

                    ; #30512: origin
                    (at_b_p7)

                    ; #15850: <==negation-removal== 30512 (pos)
                    (not (not_at_b_p7))

                    ; #29961: <==negation-removal== 15514 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #15514: origin
                    (not_at_b_p12)

                    ; #34460: origin
                    (at_b_p8)

                    ; #29961: <==negation-removal== 15514 (pos)
                    (not (at_b_p12))

                    ; #59582: <==negation-removal== 34460 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #15514: origin
                    (not_at_b_p12)

                    ; #39394: origin
                    (at_b_p9)

                    ; #29961: <==negation-removal== 15514 (pos)
                    (not (at_b_p12))

                    ; #72447: <==negation-removal== 39394 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #54441: origin
                    (at_b_p1)

                    ; #54828: origin
                    (not_at_b_p1)

                    ; #54441: <==negation-removal== 54828 (pos)
                    (not (at_b_p1))

                    ; #54828: <==negation-removal== 54441 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1))
        :effect (and
                    ; #54828: origin
                    (not_at_b_p1)

                    ; #66040: origin
                    (at_b_p10)

                    ; #54441: <==negation-removal== 54828 (pos)
                    (not (at_b_p1))

                    ; #63500: <==negation-removal== 66040 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1))
        :effect (and
                    ; #38404: origin
                    (at_b_p11)

                    ; #54828: origin
                    (not_at_b_p1)

                    ; #32289: <==negation-removal== 38404 (pos)
                    (not (not_at_b_p11))

                    ; #54441: <==negation-removal== 54828 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1))
        :effect (and
                    ; #29961: origin
                    (at_b_p12)

                    ; #54828: origin
                    (not_at_b_p1)

                    ; #15514: <==negation-removal== 29961 (pos)
                    (not (not_at_b_p12))

                    ; #54441: <==negation-removal== 54828 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #54828: origin
                    (not_at_b_p1)

                    ; #76243: origin
                    (at_b_p2)

                    ; #40029: <==negation-removal== 76243 (pos)
                    (not (not_at_b_p2))

                    ; #54441: <==negation-removal== 54828 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #54828: origin
                    (not_at_b_p1)

                    ; #88788: origin
                    (at_b_p3)

                    ; #54441: <==negation-removal== 54828 (pos)
                    (not (at_b_p1))

                    ; #83841: <==negation-removal== 88788 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #27591: origin
                    (at_b_p4)

                    ; #54828: origin
                    (not_at_b_p1)

                    ; #53179: <==negation-removal== 27591 (pos)
                    (not (not_at_b_p4))

                    ; #54441: <==negation-removal== 54828 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #54828: origin
                    (not_at_b_p1)

                    ; #62537: origin
                    (at_b_p5)

                    ; #54441: <==negation-removal== 54828 (pos)
                    (not (at_b_p1))

                    ; #64161: <==negation-removal== 62537 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #54828: origin
                    (not_at_b_p1)

                    ; #75915: origin
                    (at_b_p6)

                    ; #54441: <==negation-removal== 54828 (pos)
                    (not (at_b_p1))

                    ; #82757: <==negation-removal== 75915 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #30512: origin
                    (at_b_p7)

                    ; #54828: origin
                    (not_at_b_p1)

                    ; #15850: <==negation-removal== 30512 (pos)
                    (not (not_at_b_p7))

                    ; #54441: <==negation-removal== 54828 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #34460: origin
                    (at_b_p8)

                    ; #54828: origin
                    (not_at_b_p1)

                    ; #54441: <==negation-removal== 54828 (pos)
                    (not (at_b_p1))

                    ; #59582: <==negation-removal== 34460 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #39394: origin
                    (at_b_p9)

                    ; #54828: origin
                    (not_at_b_p1)

                    ; #54441: <==negation-removal== 54828 (pos)
                    (not (at_b_p1))

                    ; #72447: <==negation-removal== 39394 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #40029: origin
                    (not_at_b_p2)

                    ; #54441: origin
                    (at_b_p1)

                    ; #54828: <==negation-removal== 54441 (pos)
                    (not (not_at_b_p1))

                    ; #76243: <==negation-removal== 40029 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2))
        :effect (and
                    ; #40029: origin
                    (not_at_b_p2)

                    ; #66040: origin
                    (at_b_p10)

                    ; #63500: <==negation-removal== 66040 (pos)
                    (not (not_at_b_p10))

                    ; #76243: <==negation-removal== 40029 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2))
        :effect (and
                    ; #38404: origin
                    (at_b_p11)

                    ; #40029: origin
                    (not_at_b_p2)

                    ; #32289: <==negation-removal== 38404 (pos)
                    (not (not_at_b_p11))

                    ; #76243: <==negation-removal== 40029 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2))
        :effect (and
                    ; #29961: origin
                    (at_b_p12)

                    ; #40029: origin
                    (not_at_b_p2)

                    ; #15514: <==negation-removal== 29961 (pos)
                    (not (not_at_b_p12))

                    ; #76243: <==negation-removal== 40029 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #40029: origin
                    (not_at_b_p2)

                    ; #76243: origin
                    (at_b_p2)

                    ; #40029: <==negation-removal== 76243 (pos)
                    (not (not_at_b_p2))

                    ; #76243: <==negation-removal== 40029 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #40029: origin
                    (not_at_b_p2)

                    ; #88788: origin
                    (at_b_p3)

                    ; #76243: <==negation-removal== 40029 (pos)
                    (not (at_b_p2))

                    ; #83841: <==negation-removal== 88788 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #27591: origin
                    (at_b_p4)

                    ; #40029: origin
                    (not_at_b_p2)

                    ; #53179: <==negation-removal== 27591 (pos)
                    (not (not_at_b_p4))

                    ; #76243: <==negation-removal== 40029 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #40029: origin
                    (not_at_b_p2)

                    ; #62537: origin
                    (at_b_p5)

                    ; #64161: <==negation-removal== 62537 (pos)
                    (not (not_at_b_p5))

                    ; #76243: <==negation-removal== 40029 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #40029: origin
                    (not_at_b_p2)

                    ; #75915: origin
                    (at_b_p6)

                    ; #76243: <==negation-removal== 40029 (pos)
                    (not (at_b_p2))

                    ; #82757: <==negation-removal== 75915 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #30512: origin
                    (at_b_p7)

                    ; #40029: origin
                    (not_at_b_p2)

                    ; #15850: <==negation-removal== 30512 (pos)
                    (not (not_at_b_p7))

                    ; #76243: <==negation-removal== 40029 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #34460: origin
                    (at_b_p8)

                    ; #40029: origin
                    (not_at_b_p2)

                    ; #59582: <==negation-removal== 34460 (pos)
                    (not (not_at_b_p8))

                    ; #76243: <==negation-removal== 40029 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #39394: origin
                    (at_b_p9)

                    ; #40029: origin
                    (not_at_b_p2)

                    ; #72447: <==negation-removal== 39394 (pos)
                    (not (not_at_b_p9))

                    ; #76243: <==negation-removal== 40029 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #54441: origin
                    (at_b_p1)

                    ; #83841: origin
                    (not_at_b_p3)

                    ; #54828: <==negation-removal== 54441 (pos)
                    (not (not_at_b_p1))

                    ; #88788: <==negation-removal== 83841 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #66040: origin
                    (at_b_p10)

                    ; #83841: origin
                    (not_at_b_p3)

                    ; #63500: <==negation-removal== 66040 (pos)
                    (not (not_at_b_p10))

                    ; #88788: <==negation-removal== 83841 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #38404: origin
                    (at_b_p11)

                    ; #83841: origin
                    (not_at_b_p3)

                    ; #32289: <==negation-removal== 38404 (pos)
                    (not (not_at_b_p11))

                    ; #88788: <==negation-removal== 83841 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #29961: origin
                    (at_b_p12)

                    ; #83841: origin
                    (not_at_b_p3)

                    ; #15514: <==negation-removal== 29961 (pos)
                    (not (not_at_b_p12))

                    ; #88788: <==negation-removal== 83841 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #76243: origin
                    (at_b_p2)

                    ; #83841: origin
                    (not_at_b_p3)

                    ; #40029: <==negation-removal== 76243 (pos)
                    (not (not_at_b_p2))

                    ; #88788: <==negation-removal== 83841 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #83841: origin
                    (not_at_b_p3)

                    ; #88788: origin
                    (at_b_p3)

                    ; #83841: <==negation-removal== 88788 (pos)
                    (not (not_at_b_p3))

                    ; #88788: <==negation-removal== 83841 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #27591: origin
                    (at_b_p4)

                    ; #83841: origin
                    (not_at_b_p3)

                    ; #53179: <==negation-removal== 27591 (pos)
                    (not (not_at_b_p4))

                    ; #88788: <==negation-removal== 83841 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #62537: origin
                    (at_b_p5)

                    ; #83841: origin
                    (not_at_b_p3)

                    ; #64161: <==negation-removal== 62537 (pos)
                    (not (not_at_b_p5))

                    ; #88788: <==negation-removal== 83841 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #75915: origin
                    (at_b_p6)

                    ; #83841: origin
                    (not_at_b_p3)

                    ; #82757: <==negation-removal== 75915 (pos)
                    (not (not_at_b_p6))

                    ; #88788: <==negation-removal== 83841 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #30512: origin
                    (at_b_p7)

                    ; #83841: origin
                    (not_at_b_p3)

                    ; #15850: <==negation-removal== 30512 (pos)
                    (not (not_at_b_p7))

                    ; #88788: <==negation-removal== 83841 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #34460: origin
                    (at_b_p8)

                    ; #83841: origin
                    (not_at_b_p3)

                    ; #59582: <==negation-removal== 34460 (pos)
                    (not (not_at_b_p8))

                    ; #88788: <==negation-removal== 83841 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #39394: origin
                    (at_b_p9)

                    ; #83841: origin
                    (not_at_b_p3)

                    ; #72447: <==negation-removal== 39394 (pos)
                    (not (not_at_b_p9))

                    ; #88788: <==negation-removal== 83841 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #53179: origin
                    (not_at_b_p4)

                    ; #54441: origin
                    (at_b_p1)

                    ; #27591: <==negation-removal== 53179 (pos)
                    (not (at_b_p4))

                    ; #54828: <==negation-removal== 54441 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #53179: origin
                    (not_at_b_p4)

                    ; #66040: origin
                    (at_b_p10)

                    ; #27591: <==negation-removal== 53179 (pos)
                    (not (at_b_p4))

                    ; #63500: <==negation-removal== 66040 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4))
        :effect (and
                    ; #38404: origin
                    (at_b_p11)

                    ; #53179: origin
                    (not_at_b_p4)

                    ; #27591: <==negation-removal== 53179 (pos)
                    (not (at_b_p4))

                    ; #32289: <==negation-removal== 38404 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #29961: origin
                    (at_b_p12)

                    ; #53179: origin
                    (not_at_b_p4)

                    ; #15514: <==negation-removal== 29961 (pos)
                    (not (not_at_b_p12))

                    ; #27591: <==negation-removal== 53179 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #53179: origin
                    (not_at_b_p4)

                    ; #76243: origin
                    (at_b_p2)

                    ; #27591: <==negation-removal== 53179 (pos)
                    (not (at_b_p4))

                    ; #40029: <==negation-removal== 76243 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #53179: origin
                    (not_at_b_p4)

                    ; #88788: origin
                    (at_b_p3)

                    ; #27591: <==negation-removal== 53179 (pos)
                    (not (at_b_p4))

                    ; #83841: <==negation-removal== 88788 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #27591: origin
                    (at_b_p4)

                    ; #53179: origin
                    (not_at_b_p4)

                    ; #27591: <==negation-removal== 53179 (pos)
                    (not (at_b_p4))

                    ; #53179: <==negation-removal== 27591 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #53179: origin
                    (not_at_b_p4)

                    ; #62537: origin
                    (at_b_p5)

                    ; #27591: <==negation-removal== 53179 (pos)
                    (not (at_b_p4))

                    ; #64161: <==negation-removal== 62537 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #53179: origin
                    (not_at_b_p4)

                    ; #75915: origin
                    (at_b_p6)

                    ; #27591: <==negation-removal== 53179 (pos)
                    (not (at_b_p4))

                    ; #82757: <==negation-removal== 75915 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #30512: origin
                    (at_b_p7)

                    ; #53179: origin
                    (not_at_b_p4)

                    ; #15850: <==negation-removal== 30512 (pos)
                    (not (not_at_b_p7))

                    ; #27591: <==negation-removal== 53179 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #34460: origin
                    (at_b_p8)

                    ; #53179: origin
                    (not_at_b_p4)

                    ; #27591: <==negation-removal== 53179 (pos)
                    (not (at_b_p4))

                    ; #59582: <==negation-removal== 34460 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #39394: origin
                    (at_b_p9)

                    ; #53179: origin
                    (not_at_b_p4)

                    ; #27591: <==negation-removal== 53179 (pos)
                    (not (at_b_p4))

                    ; #72447: <==negation-removal== 39394 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #54441: origin
                    (at_b_p1)

                    ; #64161: origin
                    (not_at_b_p5)

                    ; #54828: <==negation-removal== 54441 (pos)
                    (not (not_at_b_p1))

                    ; #62537: <==negation-removal== 64161 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #64161: origin
                    (not_at_b_p5)

                    ; #66040: origin
                    (at_b_p10)

                    ; #62537: <==negation-removal== 64161 (pos)
                    (not (at_b_p5))

                    ; #63500: <==negation-removal== 66040 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #38404: origin
                    (at_b_p11)

                    ; #64161: origin
                    (not_at_b_p5)

                    ; #32289: <==negation-removal== 38404 (pos)
                    (not (not_at_b_p11))

                    ; #62537: <==negation-removal== 64161 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #29961: origin
                    (at_b_p12)

                    ; #64161: origin
                    (not_at_b_p5)

                    ; #15514: <==negation-removal== 29961 (pos)
                    (not (not_at_b_p12))

                    ; #62537: <==negation-removal== 64161 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #64161: origin
                    (not_at_b_p5)

                    ; #76243: origin
                    (at_b_p2)

                    ; #40029: <==negation-removal== 76243 (pos)
                    (not (not_at_b_p2))

                    ; #62537: <==negation-removal== 64161 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #64161: origin
                    (not_at_b_p5)

                    ; #88788: origin
                    (at_b_p3)

                    ; #62537: <==negation-removal== 64161 (pos)
                    (not (at_b_p5))

                    ; #83841: <==negation-removal== 88788 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #27591: origin
                    (at_b_p4)

                    ; #64161: origin
                    (not_at_b_p5)

                    ; #53179: <==negation-removal== 27591 (pos)
                    (not (not_at_b_p4))

                    ; #62537: <==negation-removal== 64161 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #62537: origin
                    (at_b_p5)

                    ; #64161: origin
                    (not_at_b_p5)

                    ; #62537: <==negation-removal== 64161 (pos)
                    (not (at_b_p5))

                    ; #64161: <==negation-removal== 62537 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #64161: origin
                    (not_at_b_p5)

                    ; #75915: origin
                    (at_b_p6)

                    ; #62537: <==negation-removal== 64161 (pos)
                    (not (at_b_p5))

                    ; #82757: <==negation-removal== 75915 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #30512: origin
                    (at_b_p7)

                    ; #64161: origin
                    (not_at_b_p5)

                    ; #15850: <==negation-removal== 30512 (pos)
                    (not (not_at_b_p7))

                    ; #62537: <==negation-removal== 64161 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #34460: origin
                    (at_b_p8)

                    ; #64161: origin
                    (not_at_b_p5)

                    ; #59582: <==negation-removal== 34460 (pos)
                    (not (not_at_b_p8))

                    ; #62537: <==negation-removal== 64161 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #39394: origin
                    (at_b_p9)

                    ; #64161: origin
                    (not_at_b_p5)

                    ; #62537: <==negation-removal== 64161 (pos)
                    (not (at_b_p5))

                    ; #72447: <==negation-removal== 39394 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #54441: origin
                    (at_b_p1)

                    ; #82757: origin
                    (not_at_b_p6)

                    ; #54828: <==negation-removal== 54441 (pos)
                    (not (not_at_b_p1))

                    ; #75915: <==negation-removal== 82757 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6))
        :effect (and
                    ; #66040: origin
                    (at_b_p10)

                    ; #82757: origin
                    (not_at_b_p6)

                    ; #63500: <==negation-removal== 66040 (pos)
                    (not (not_at_b_p10))

                    ; #75915: <==negation-removal== 82757 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6))
        :effect (and
                    ; #38404: origin
                    (at_b_p11)

                    ; #82757: origin
                    (not_at_b_p6)

                    ; #32289: <==negation-removal== 38404 (pos)
                    (not (not_at_b_p11))

                    ; #75915: <==negation-removal== 82757 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (at_b_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #29961: origin
                    (at_b_p12)

                    ; #82757: origin
                    (not_at_b_p6)

                    ; #15514: <==negation-removal== 29961 (pos)
                    (not (not_at_b_p12))

                    ; #75915: <==negation-removal== 82757 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #76243: origin
                    (at_b_p2)

                    ; #82757: origin
                    (not_at_b_p6)

                    ; #40029: <==negation-removal== 76243 (pos)
                    (not (not_at_b_p2))

                    ; #75915: <==negation-removal== 82757 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #82757: origin
                    (not_at_b_p6)

                    ; #88788: origin
                    (at_b_p3)

                    ; #75915: <==negation-removal== 82757 (pos)
                    (not (at_b_p6))

                    ; #83841: <==negation-removal== 88788 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #27591: origin
                    (at_b_p4)

                    ; #82757: origin
                    (not_at_b_p6)

                    ; #53179: <==negation-removal== 27591 (pos)
                    (not (not_at_b_p4))

                    ; #75915: <==negation-removal== 82757 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #62537: origin
                    (at_b_p5)

                    ; #82757: origin
                    (not_at_b_p6)

                    ; #64161: <==negation-removal== 62537 (pos)
                    (not (not_at_b_p5))

                    ; #75915: <==negation-removal== 82757 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #75915: origin
                    (at_b_p6)

                    ; #82757: origin
                    (not_at_b_p6)

                    ; #75915: <==negation-removal== 82757 (pos)
                    (not (at_b_p6))

                    ; #82757: <==negation-removal== 75915 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #30512: origin
                    (at_b_p7)

                    ; #82757: origin
                    (not_at_b_p6)

                    ; #15850: <==negation-removal== 30512 (pos)
                    (not (not_at_b_p7))

                    ; #75915: <==negation-removal== 82757 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #34460: origin
                    (at_b_p8)

                    ; #82757: origin
                    (not_at_b_p6)

                    ; #59582: <==negation-removal== 34460 (pos)
                    (not (not_at_b_p8))

                    ; #75915: <==negation-removal== 82757 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #39394: origin
                    (at_b_p9)

                    ; #82757: origin
                    (not_at_b_p6)

                    ; #72447: <==negation-removal== 39394 (pos)
                    (not (not_at_b_p9))

                    ; #75915: <==negation-removal== 82757 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #15850: origin
                    (not_at_b_p7)

                    ; #54441: origin
                    (at_b_p1)

                    ; #30512: <==negation-removal== 15850 (pos)
                    (not (at_b_p7))

                    ; #54828: <==negation-removal== 54441 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #15850: origin
                    (not_at_b_p7)

                    ; #66040: origin
                    (at_b_p10)

                    ; #30512: <==negation-removal== 15850 (pos)
                    (not (at_b_p7))

                    ; #63500: <==negation-removal== 66040 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #15850: origin
                    (not_at_b_p7)

                    ; #38404: origin
                    (at_b_p11)

                    ; #30512: <==negation-removal== 15850 (pos)
                    (not (at_b_p7))

                    ; #32289: <==negation-removal== 38404 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7))
        :effect (and
                    ; #15850: origin
                    (not_at_b_p7)

                    ; #29961: origin
                    (at_b_p12)

                    ; #15514: <==negation-removal== 29961 (pos)
                    (not (not_at_b_p12))

                    ; #30512: <==negation-removal== 15850 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #15850: origin
                    (not_at_b_p7)

                    ; #76243: origin
                    (at_b_p2)

                    ; #30512: <==negation-removal== 15850 (pos)
                    (not (at_b_p7))

                    ; #40029: <==negation-removal== 76243 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #15850: origin
                    (not_at_b_p7)

                    ; #88788: origin
                    (at_b_p3)

                    ; #30512: <==negation-removal== 15850 (pos)
                    (not (at_b_p7))

                    ; #83841: <==negation-removal== 88788 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #15850: origin
                    (not_at_b_p7)

                    ; #27591: origin
                    (at_b_p4)

                    ; #30512: <==negation-removal== 15850 (pos)
                    (not (at_b_p7))

                    ; #53179: <==negation-removal== 27591 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #15850: origin
                    (not_at_b_p7)

                    ; #62537: origin
                    (at_b_p5)

                    ; #30512: <==negation-removal== 15850 (pos)
                    (not (at_b_p7))

                    ; #64161: <==negation-removal== 62537 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #15850: origin
                    (not_at_b_p7)

                    ; #75915: origin
                    (at_b_p6)

                    ; #30512: <==negation-removal== 15850 (pos)
                    (not (at_b_p7))

                    ; #82757: <==negation-removal== 75915 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #15850: origin
                    (not_at_b_p7)

                    ; #30512: origin
                    (at_b_p7)

                    ; #15850: <==negation-removal== 30512 (pos)
                    (not (not_at_b_p7))

                    ; #30512: <==negation-removal== 15850 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #15850: origin
                    (not_at_b_p7)

                    ; #34460: origin
                    (at_b_p8)

                    ; #30512: <==negation-removal== 15850 (pos)
                    (not (at_b_p7))

                    ; #59582: <==negation-removal== 34460 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #15850: origin
                    (not_at_b_p7)

                    ; #39394: origin
                    (at_b_p9)

                    ; #30512: <==negation-removal== 15850 (pos)
                    (not (at_b_p7))

                    ; #72447: <==negation-removal== 39394 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #54441: origin
                    (at_b_p1)

                    ; #59582: origin
                    (not_at_b_p8)

                    ; #34460: <==negation-removal== 59582 (pos)
                    (not (at_b_p8))

                    ; #54828: <==negation-removal== 54441 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8))
        :effect (and
                    ; #59582: origin
                    (not_at_b_p8)

                    ; #66040: origin
                    (at_b_p10)

                    ; #34460: <==negation-removal== 59582 (pos)
                    (not (at_b_p8))

                    ; #63500: <==negation-removal== 66040 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8))
        :effect (and
                    ; #38404: origin
                    (at_b_p11)

                    ; #59582: origin
                    (not_at_b_p8)

                    ; #32289: <==negation-removal== 38404 (pos)
                    (not (not_at_b_p11))

                    ; #34460: <==negation-removal== 59582 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #29961: origin
                    (at_b_p12)

                    ; #59582: origin
                    (not_at_b_p8)

                    ; #15514: <==negation-removal== 29961 (pos)
                    (not (not_at_b_p12))

                    ; #34460: <==negation-removal== 59582 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #59582: origin
                    (not_at_b_p8)

                    ; #76243: origin
                    (at_b_p2)

                    ; #34460: <==negation-removal== 59582 (pos)
                    (not (at_b_p8))

                    ; #40029: <==negation-removal== 76243 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #59582: origin
                    (not_at_b_p8)

                    ; #88788: origin
                    (at_b_p3)

                    ; #34460: <==negation-removal== 59582 (pos)
                    (not (at_b_p8))

                    ; #83841: <==negation-removal== 88788 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #27591: origin
                    (at_b_p4)

                    ; #59582: origin
                    (not_at_b_p8)

                    ; #34460: <==negation-removal== 59582 (pos)
                    (not (at_b_p8))

                    ; #53179: <==negation-removal== 27591 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #59582: origin
                    (not_at_b_p8)

                    ; #62537: origin
                    (at_b_p5)

                    ; #34460: <==negation-removal== 59582 (pos)
                    (not (at_b_p8))

                    ; #64161: <==negation-removal== 62537 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #59582: origin
                    (not_at_b_p8)

                    ; #75915: origin
                    (at_b_p6)

                    ; #34460: <==negation-removal== 59582 (pos)
                    (not (at_b_p8))

                    ; #82757: <==negation-removal== 75915 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #30512: origin
                    (at_b_p7)

                    ; #59582: origin
                    (not_at_b_p8)

                    ; #15850: <==negation-removal== 30512 (pos)
                    (not (not_at_b_p7))

                    ; #34460: <==negation-removal== 59582 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #34460: origin
                    (at_b_p8)

                    ; #59582: origin
                    (not_at_b_p8)

                    ; #34460: <==negation-removal== 59582 (pos)
                    (not (at_b_p8))

                    ; #59582: <==negation-removal== 34460 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #39394: origin
                    (at_b_p9)

                    ; #59582: origin
                    (not_at_b_p8)

                    ; #34460: <==negation-removal== 59582 (pos)
                    (not (at_b_p8))

                    ; #72447: <==negation-removal== 39394 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #54441: origin
                    (at_b_p1)

                    ; #72447: origin
                    (not_at_b_p9)

                    ; #39394: <==negation-removal== 72447 (pos)
                    (not (at_b_p9))

                    ; #54828: <==negation-removal== 54441 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9))
        :effect (and
                    ; #66040: origin
                    (at_b_p10)

                    ; #72447: origin
                    (not_at_b_p9)

                    ; #39394: <==negation-removal== 72447 (pos)
                    (not (at_b_p9))

                    ; #63500: <==negation-removal== 66040 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (at_b_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #38404: origin
                    (at_b_p11)

                    ; #72447: origin
                    (not_at_b_p9)

                    ; #32289: <==negation-removal== 38404 (pos)
                    (not (not_at_b_p11))

                    ; #39394: <==negation-removal== 72447 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #29961: origin
                    (at_b_p12)

                    ; #72447: origin
                    (not_at_b_p9)

                    ; #15514: <==negation-removal== 29961 (pos)
                    (not (not_at_b_p12))

                    ; #39394: <==negation-removal== 72447 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #72447: origin
                    (not_at_b_p9)

                    ; #76243: origin
                    (at_b_p2)

                    ; #39394: <==negation-removal== 72447 (pos)
                    (not (at_b_p9))

                    ; #40029: <==negation-removal== 76243 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #72447: origin
                    (not_at_b_p9)

                    ; #88788: origin
                    (at_b_p3)

                    ; #39394: <==negation-removal== 72447 (pos)
                    (not (at_b_p9))

                    ; #83841: <==negation-removal== 88788 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #27591: origin
                    (at_b_p4)

                    ; #72447: origin
                    (not_at_b_p9)

                    ; #39394: <==negation-removal== 72447 (pos)
                    (not (at_b_p9))

                    ; #53179: <==negation-removal== 27591 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #62537: origin
                    (at_b_p5)

                    ; #72447: origin
                    (not_at_b_p9)

                    ; #39394: <==negation-removal== 72447 (pos)
                    (not (at_b_p9))

                    ; #64161: <==negation-removal== 62537 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #72447: origin
                    (not_at_b_p9)

                    ; #75915: origin
                    (at_b_p6)

                    ; #39394: <==negation-removal== 72447 (pos)
                    (not (at_b_p9))

                    ; #82757: <==negation-removal== 75915 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #30512: origin
                    (at_b_p7)

                    ; #72447: origin
                    (not_at_b_p9)

                    ; #15850: <==negation-removal== 30512 (pos)
                    (not (not_at_b_p7))

                    ; #39394: <==negation-removal== 72447 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #34460: origin
                    (at_b_p8)

                    ; #72447: origin
                    (not_at_b_p9)

                    ; #39394: <==negation-removal== 72447 (pos)
                    (not (at_b_p9))

                    ; #59582: <==negation-removal== 34460 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #39394: origin
                    (at_b_p9)

                    ; #72447: origin
                    (not_at_b_p9)

                    ; #39394: <==negation-removal== 72447 (pos)
                    (not (at_b_p9))

                    ; #72447: <==negation-removal== 39394 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10))
        :effect (and
                    ; #75449: origin
                    (not_at_c_p10)

                    ; #91666: origin
                    (at_c_p1)

                    ; #34639: <==negation-removal== 91666 (pos)
                    (not (not_at_c_p1))

                    ; #87700: <==negation-removal== 75449 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #75449: origin
                    (not_at_c_p10)

                    ; #87700: origin
                    (at_c_p10)

                    ; #75449: <==negation-removal== 87700 (pos)
                    (not (not_at_c_p10))

                    ; #87700: <==negation-removal== 75449 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10))
        :effect (and
                    ; #52426: origin
                    (at_c_p11)

                    ; #75449: origin
                    (not_at_c_p10)

                    ; #87700: <==negation-removal== 75449 (pos)
                    (not (at_c_p10))

                    ; #90342: <==negation-removal== 52426 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10))
        :effect (and
                    ; #34834: origin
                    (at_c_p12)

                    ; #75449: origin
                    (not_at_c_p10)

                    ; #19606: <==negation-removal== 34834 (pos)
                    (not (not_at_c_p12))

                    ; #87700: <==negation-removal== 75449 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_c_p10))
        :effect (and
                    ; #28072: origin
                    (at_c_p2)

                    ; #75449: origin
                    (not_at_c_p10)

                    ; #50457: <==negation-removal== 28072 (pos)
                    (not (not_at_c_p2))

                    ; #87700: <==negation-removal== 75449 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10))
        :effect (and
                    ; #75449: origin
                    (not_at_c_p10)

                    ; #83769: origin
                    (at_c_p3)

                    ; #62153: <==negation-removal== 83769 (pos)
                    (not (not_at_c_p3))

                    ; #87700: <==negation-removal== 75449 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_c_p10))
        :effect (and
                    ; #56891: origin
                    (at_c_p4)

                    ; #75449: origin
                    (not_at_c_p10)

                    ; #80904: <==negation-removal== 56891 (pos)
                    (not (not_at_c_p4))

                    ; #87700: <==negation-removal== 75449 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_c_p10))
        :effect (and
                    ; #28038: origin
                    (at_c_p5)

                    ; #75449: origin
                    (not_at_c_p10)

                    ; #84263: <==negation-removal== 28038 (pos)
                    (not (not_at_c_p5))

                    ; #87700: <==negation-removal== 75449 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_c_p10))
        :effect (and
                    ; #13961: origin
                    (at_c_p6)

                    ; #75449: origin
                    (not_at_c_p10)

                    ; #86893: <==negation-removal== 13961 (pos)
                    (not (not_at_c_p6))

                    ; #87700: <==negation-removal== 75449 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_c_p10))
        :effect (and
                    ; #75449: origin
                    (not_at_c_p10)

                    ; #80752: origin
                    (at_c_p7)

                    ; #11179: <==negation-removal== 80752 (pos)
                    (not (not_at_c_p7))

                    ; #87700: <==negation-removal== 75449 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #73032: origin
                    (at_c_p8)

                    ; #75449: origin
                    (not_at_c_p10)

                    ; #16258: <==negation-removal== 73032 (pos)
                    (not (not_at_c_p8))

                    ; #87700: <==negation-removal== 75449 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_c_p10))
        :effect (and
                    ; #73327: origin
                    (at_c_p9)

                    ; #75449: origin
                    (not_at_c_p10)

                    ; #83887: <==negation-removal== 73327 (pos)
                    (not (not_at_c_p9))

                    ; #87700: <==negation-removal== 75449 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11))
        :effect (and
                    ; #90342: origin
                    (not_at_c_p11)

                    ; #91666: origin
                    (at_c_p1)

                    ; #34639: <==negation-removal== 91666 (pos)
                    (not (not_at_c_p1))

                    ; #52426: <==negation-removal== 90342 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #87700: origin
                    (at_c_p10)

                    ; #90342: origin
                    (not_at_c_p11)

                    ; #52426: <==negation-removal== 90342 (pos)
                    (not (at_c_p11))

                    ; #75449: <==negation-removal== 87700 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #52426: origin
                    (at_c_p11)

                    ; #90342: origin
                    (not_at_c_p11)

                    ; #52426: <==negation-removal== 90342 (pos)
                    (not (at_c_p11))

                    ; #90342: <==negation-removal== 52426 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #34834: origin
                    (at_c_p12)

                    ; #90342: origin
                    (not_at_c_p11)

                    ; #19606: <==negation-removal== 34834 (pos)
                    (not (not_at_c_p12))

                    ; #52426: <==negation-removal== 90342 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (at_c_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #28072: origin
                    (at_c_p2)

                    ; #90342: origin
                    (not_at_c_p11)

                    ; #50457: <==negation-removal== 28072 (pos)
                    (not (not_at_c_p2))

                    ; #52426: <==negation-removal== 90342 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #83769: origin
                    (at_c_p3)

                    ; #90342: origin
                    (not_at_c_p11)

                    ; #52426: <==negation-removal== 90342 (pos)
                    (not (at_c_p11))

                    ; #62153: <==negation-removal== 83769 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #56891: origin
                    (at_c_p4)

                    ; #90342: origin
                    (not_at_c_p11)

                    ; #52426: <==negation-removal== 90342 (pos)
                    (not (at_c_p11))

                    ; #80904: <==negation-removal== 56891 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #28038: origin
                    (at_c_p5)

                    ; #90342: origin
                    (not_at_c_p11)

                    ; #52426: <==negation-removal== 90342 (pos)
                    (not (at_c_p11))

                    ; #84263: <==negation-removal== 28038 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #13961: origin
                    (at_c_p6)

                    ; #90342: origin
                    (not_at_c_p11)

                    ; #52426: <==negation-removal== 90342 (pos)
                    (not (at_c_p11))

                    ; #86893: <==negation-removal== 13961 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #80752: origin
                    (at_c_p7)

                    ; #90342: origin
                    (not_at_c_p11)

                    ; #11179: <==negation-removal== 80752 (pos)
                    (not (not_at_c_p7))

                    ; #52426: <==negation-removal== 90342 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #73032: origin
                    (at_c_p8)

                    ; #90342: origin
                    (not_at_c_p11)

                    ; #16258: <==negation-removal== 73032 (pos)
                    (not (not_at_c_p8))

                    ; #52426: <==negation-removal== 90342 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #73327: origin
                    (at_c_p9)

                    ; #90342: origin
                    (not_at_c_p11)

                    ; #52426: <==negation-removal== 90342 (pos)
                    (not (at_c_p11))

                    ; #83887: <==negation-removal== 73327 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #19606: origin
                    (not_at_c_p12)

                    ; #91666: origin
                    (at_c_p1)

                    ; #34639: <==negation-removal== 91666 (pos)
                    (not (not_at_c_p1))

                    ; #34834: <==negation-removal== 19606 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #19606: origin
                    (not_at_c_p12)

                    ; #87700: origin
                    (at_c_p10)

                    ; #34834: <==negation-removal== 19606 (pos)
                    (not (at_c_p12))

                    ; #75449: <==negation-removal== 87700 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #19606: origin
                    (not_at_c_p12)

                    ; #52426: origin
                    (at_c_p11)

                    ; #34834: <==negation-removal== 19606 (pos)
                    (not (at_c_p12))

                    ; #90342: <==negation-removal== 52426 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #19606: origin
                    (not_at_c_p12)

                    ; #34834: origin
                    (at_c_p12)

                    ; #19606: <==negation-removal== 34834 (pos)
                    (not (not_at_c_p12))

                    ; #34834: <==negation-removal== 19606 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (at_c_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #19606: origin
                    (not_at_c_p12)

                    ; #28072: origin
                    (at_c_p2)

                    ; #34834: <==negation-removal== 19606 (pos)
                    (not (at_c_p12))

                    ; #50457: <==negation-removal== 28072 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (at_c_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #19606: origin
                    (not_at_c_p12)

                    ; #83769: origin
                    (at_c_p3)

                    ; #34834: <==negation-removal== 19606 (pos)
                    (not (at_c_p12))

                    ; #62153: <==negation-removal== 83769 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #19606: origin
                    (not_at_c_p12)

                    ; #56891: origin
                    (at_c_p4)

                    ; #34834: <==negation-removal== 19606 (pos)
                    (not (at_c_p12))

                    ; #80904: <==negation-removal== 56891 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #19606: origin
                    (not_at_c_p12)

                    ; #28038: origin
                    (at_c_p5)

                    ; #34834: <==negation-removal== 19606 (pos)
                    (not (at_c_p12))

                    ; #84263: <==negation-removal== 28038 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (at_c_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #13961: origin
                    (at_c_p6)

                    ; #19606: origin
                    (not_at_c_p12)

                    ; #34834: <==negation-removal== 19606 (pos)
                    (not (at_c_p12))

                    ; #86893: <==negation-removal== 13961 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #19606: origin
                    (not_at_c_p12)

                    ; #80752: origin
                    (at_c_p7)

                    ; #11179: <==negation-removal== 80752 (pos)
                    (not (not_at_c_p7))

                    ; #34834: <==negation-removal== 19606 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #19606: origin
                    (not_at_c_p12)

                    ; #73032: origin
                    (at_c_p8)

                    ; #16258: <==negation-removal== 73032 (pos)
                    (not (not_at_c_p8))

                    ; #34834: <==negation-removal== 19606 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #19606: origin
                    (not_at_c_p12)

                    ; #73327: origin
                    (at_c_p9)

                    ; #34834: <==negation-removal== 19606 (pos)
                    (not (at_c_p12))

                    ; #83887: <==negation-removal== 73327 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #34639: origin
                    (not_at_c_p1)

                    ; #91666: origin
                    (at_c_p1)

                    ; #34639: <==negation-removal== 91666 (pos)
                    (not (not_at_c_p1))

                    ; #91666: <==negation-removal== 34639 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #34639: origin
                    (not_at_c_p1)

                    ; #87700: origin
                    (at_c_p10)

                    ; #75449: <==negation-removal== 87700 (pos)
                    (not (not_at_c_p10))

                    ; #91666: <==negation-removal== 34639 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #34639: origin
                    (not_at_c_p1)

                    ; #52426: origin
                    (at_c_p11)

                    ; #90342: <==negation-removal== 52426 (pos)
                    (not (not_at_c_p11))

                    ; #91666: <==negation-removal== 34639 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #34639: origin
                    (not_at_c_p1)

                    ; #34834: origin
                    (at_c_p12)

                    ; #19606: <==negation-removal== 34834 (pos)
                    (not (not_at_c_p12))

                    ; #91666: <==negation-removal== 34639 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #28072: origin
                    (at_c_p2)

                    ; #34639: origin
                    (not_at_c_p1)

                    ; #50457: <==negation-removal== 28072 (pos)
                    (not (not_at_c_p2))

                    ; #91666: <==negation-removal== 34639 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #34639: origin
                    (not_at_c_p1)

                    ; #83769: origin
                    (at_c_p3)

                    ; #62153: <==negation-removal== 83769 (pos)
                    (not (not_at_c_p3))

                    ; #91666: <==negation-removal== 34639 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #34639: origin
                    (not_at_c_p1)

                    ; #56891: origin
                    (at_c_p4)

                    ; #80904: <==negation-removal== 56891 (pos)
                    (not (not_at_c_p4))

                    ; #91666: <==negation-removal== 34639 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #28038: origin
                    (at_c_p5)

                    ; #34639: origin
                    (not_at_c_p1)

                    ; #84263: <==negation-removal== 28038 (pos)
                    (not (not_at_c_p5))

                    ; #91666: <==negation-removal== 34639 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #13961: origin
                    (at_c_p6)

                    ; #34639: origin
                    (not_at_c_p1)

                    ; #86893: <==negation-removal== 13961 (pos)
                    (not (not_at_c_p6))

                    ; #91666: <==negation-removal== 34639 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #34639: origin
                    (not_at_c_p1)

                    ; #80752: origin
                    (at_c_p7)

                    ; #11179: <==negation-removal== 80752 (pos)
                    (not (not_at_c_p7))

                    ; #91666: <==negation-removal== 34639 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #34639: origin
                    (not_at_c_p1)

                    ; #73032: origin
                    (at_c_p8)

                    ; #16258: <==negation-removal== 73032 (pos)
                    (not (not_at_c_p8))

                    ; #91666: <==negation-removal== 34639 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #34639: origin
                    (not_at_c_p1)

                    ; #73327: origin
                    (at_c_p9)

                    ; #83887: <==negation-removal== 73327 (pos)
                    (not (not_at_c_p9))

                    ; #91666: <==negation-removal== 34639 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #50457: origin
                    (not_at_c_p2)

                    ; #91666: origin
                    (at_c_p1)

                    ; #28072: <==negation-removal== 50457 (pos)
                    (not (at_c_p2))

                    ; #34639: <==negation-removal== 91666 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2))
        :effect (and
                    ; #50457: origin
                    (not_at_c_p2)

                    ; #87700: origin
                    (at_c_p10)

                    ; #28072: <==negation-removal== 50457 (pos)
                    (not (at_c_p2))

                    ; #75449: <==negation-removal== 87700 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2))
        :effect (and
                    ; #50457: origin
                    (not_at_c_p2)

                    ; #52426: origin
                    (at_c_p11)

                    ; #28072: <==negation-removal== 50457 (pos)
                    (not (at_c_p2))

                    ; #90342: <==negation-removal== 52426 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #34834: origin
                    (at_c_p12)

                    ; #50457: origin
                    (not_at_c_p2)

                    ; #19606: <==negation-removal== 34834 (pos)
                    (not (not_at_c_p12))

                    ; #28072: <==negation-removal== 50457 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #28072: origin
                    (at_c_p2)

                    ; #50457: origin
                    (not_at_c_p2)

                    ; #28072: <==negation-removal== 50457 (pos)
                    (not (at_c_p2))

                    ; #50457: <==negation-removal== 28072 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #50457: origin
                    (not_at_c_p2)

                    ; #83769: origin
                    (at_c_p3)

                    ; #28072: <==negation-removal== 50457 (pos)
                    (not (at_c_p2))

                    ; #62153: <==negation-removal== 83769 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #50457: origin
                    (not_at_c_p2)

                    ; #56891: origin
                    (at_c_p4)

                    ; #28072: <==negation-removal== 50457 (pos)
                    (not (at_c_p2))

                    ; #80904: <==negation-removal== 56891 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #28038: origin
                    (at_c_p5)

                    ; #50457: origin
                    (not_at_c_p2)

                    ; #28072: <==negation-removal== 50457 (pos)
                    (not (at_c_p2))

                    ; #84263: <==negation-removal== 28038 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #13961: origin
                    (at_c_p6)

                    ; #50457: origin
                    (not_at_c_p2)

                    ; #28072: <==negation-removal== 50457 (pos)
                    (not (at_c_p2))

                    ; #86893: <==negation-removal== 13961 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #50457: origin
                    (not_at_c_p2)

                    ; #80752: origin
                    (at_c_p7)

                    ; #11179: <==negation-removal== 80752 (pos)
                    (not (not_at_c_p7))

                    ; #28072: <==negation-removal== 50457 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #50457: origin
                    (not_at_c_p2)

                    ; #73032: origin
                    (at_c_p8)

                    ; #16258: <==negation-removal== 73032 (pos)
                    (not (not_at_c_p8))

                    ; #28072: <==negation-removal== 50457 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #50457: origin
                    (not_at_c_p2)

                    ; #73327: origin
                    (at_c_p9)

                    ; #28072: <==negation-removal== 50457 (pos)
                    (not (at_c_p2))

                    ; #83887: <==negation-removal== 73327 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #62153: origin
                    (not_at_c_p3)

                    ; #91666: origin
                    (at_c_p1)

                    ; #34639: <==negation-removal== 91666 (pos)
                    (not (not_at_c_p1))

                    ; #83769: <==negation-removal== 62153 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #62153: origin
                    (not_at_c_p3)

                    ; #87700: origin
                    (at_c_p10)

                    ; #75449: <==negation-removal== 87700 (pos)
                    (not (not_at_c_p10))

                    ; #83769: <==negation-removal== 62153 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #52426: origin
                    (at_c_p11)

                    ; #62153: origin
                    (not_at_c_p3)

                    ; #83769: <==negation-removal== 62153 (pos)
                    (not (at_c_p3))

                    ; #90342: <==negation-removal== 52426 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #34834: origin
                    (at_c_p12)

                    ; #62153: origin
                    (not_at_c_p3)

                    ; #19606: <==negation-removal== 34834 (pos)
                    (not (not_at_c_p12))

                    ; #83769: <==negation-removal== 62153 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #28072: origin
                    (at_c_p2)

                    ; #62153: origin
                    (not_at_c_p3)

                    ; #50457: <==negation-removal== 28072 (pos)
                    (not (not_at_c_p2))

                    ; #83769: <==negation-removal== 62153 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #62153: origin
                    (not_at_c_p3)

                    ; #83769: origin
                    (at_c_p3)

                    ; #62153: <==negation-removal== 83769 (pos)
                    (not (not_at_c_p3))

                    ; #83769: <==negation-removal== 62153 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #56891: origin
                    (at_c_p4)

                    ; #62153: origin
                    (not_at_c_p3)

                    ; #80904: <==negation-removal== 56891 (pos)
                    (not (not_at_c_p4))

                    ; #83769: <==negation-removal== 62153 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #28038: origin
                    (at_c_p5)

                    ; #62153: origin
                    (not_at_c_p3)

                    ; #83769: <==negation-removal== 62153 (pos)
                    (not (at_c_p3))

                    ; #84263: <==negation-removal== 28038 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #13961: origin
                    (at_c_p6)

                    ; #62153: origin
                    (not_at_c_p3)

                    ; #83769: <==negation-removal== 62153 (pos)
                    (not (at_c_p3))

                    ; #86893: <==negation-removal== 13961 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #62153: origin
                    (not_at_c_p3)

                    ; #80752: origin
                    (at_c_p7)

                    ; #11179: <==negation-removal== 80752 (pos)
                    (not (not_at_c_p7))

                    ; #83769: <==negation-removal== 62153 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #62153: origin
                    (not_at_c_p3)

                    ; #73032: origin
                    (at_c_p8)

                    ; #16258: <==negation-removal== 73032 (pos)
                    (not (not_at_c_p8))

                    ; #83769: <==negation-removal== 62153 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #62153: origin
                    (not_at_c_p3)

                    ; #73327: origin
                    (at_c_p9)

                    ; #83769: <==negation-removal== 62153 (pos)
                    (not (at_c_p3))

                    ; #83887: <==negation-removal== 73327 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #80904: origin
                    (not_at_c_p4)

                    ; #91666: origin
                    (at_c_p1)

                    ; #34639: <==negation-removal== 91666 (pos)
                    (not (not_at_c_p1))

                    ; #56891: <==negation-removal== 80904 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #80904: origin
                    (not_at_c_p4)

                    ; #87700: origin
                    (at_c_p10)

                    ; #56891: <==negation-removal== 80904 (pos)
                    (not (at_c_p4))

                    ; #75449: <==negation-removal== 87700 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4))
        :effect (and
                    ; #52426: origin
                    (at_c_p11)

                    ; #80904: origin
                    (not_at_c_p4)

                    ; #56891: <==negation-removal== 80904 (pos)
                    (not (at_c_p4))

                    ; #90342: <==negation-removal== 52426 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #34834: origin
                    (at_c_p12)

                    ; #80904: origin
                    (not_at_c_p4)

                    ; #19606: <==negation-removal== 34834 (pos)
                    (not (not_at_c_p12))

                    ; #56891: <==negation-removal== 80904 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #28072: origin
                    (at_c_p2)

                    ; #80904: origin
                    (not_at_c_p4)

                    ; #50457: <==negation-removal== 28072 (pos)
                    (not (not_at_c_p2))

                    ; #56891: <==negation-removal== 80904 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #80904: origin
                    (not_at_c_p4)

                    ; #83769: origin
                    (at_c_p3)

                    ; #56891: <==negation-removal== 80904 (pos)
                    (not (at_c_p4))

                    ; #62153: <==negation-removal== 83769 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #56891: origin
                    (at_c_p4)

                    ; #80904: origin
                    (not_at_c_p4)

                    ; #56891: <==negation-removal== 80904 (pos)
                    (not (at_c_p4))

                    ; #80904: <==negation-removal== 56891 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #28038: origin
                    (at_c_p5)

                    ; #80904: origin
                    (not_at_c_p4)

                    ; #56891: <==negation-removal== 80904 (pos)
                    (not (at_c_p4))

                    ; #84263: <==negation-removal== 28038 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #13961: origin
                    (at_c_p6)

                    ; #80904: origin
                    (not_at_c_p4)

                    ; #56891: <==negation-removal== 80904 (pos)
                    (not (at_c_p4))

                    ; #86893: <==negation-removal== 13961 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #80752: origin
                    (at_c_p7)

                    ; #80904: origin
                    (not_at_c_p4)

                    ; #11179: <==negation-removal== 80752 (pos)
                    (not (not_at_c_p7))

                    ; #56891: <==negation-removal== 80904 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #73032: origin
                    (at_c_p8)

                    ; #80904: origin
                    (not_at_c_p4)

                    ; #16258: <==negation-removal== 73032 (pos)
                    (not (not_at_c_p8))

                    ; #56891: <==negation-removal== 80904 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #73327: origin
                    (at_c_p9)

                    ; #80904: origin
                    (not_at_c_p4)

                    ; #56891: <==negation-removal== 80904 (pos)
                    (not (at_c_p4))

                    ; #83887: <==negation-removal== 73327 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #84263: origin
                    (not_at_c_p5)

                    ; #91666: origin
                    (at_c_p1)

                    ; #28038: <==negation-removal== 84263 (pos)
                    (not (at_c_p5))

                    ; #34639: <==negation-removal== 91666 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #84263: origin
                    (not_at_c_p5)

                    ; #87700: origin
                    (at_c_p10)

                    ; #28038: <==negation-removal== 84263 (pos)
                    (not (at_c_p5))

                    ; #75449: <==negation-removal== 87700 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #52426: origin
                    (at_c_p11)

                    ; #84263: origin
                    (not_at_c_p5)

                    ; #28038: <==negation-removal== 84263 (pos)
                    (not (at_c_p5))

                    ; #90342: <==negation-removal== 52426 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #34834: origin
                    (at_c_p12)

                    ; #84263: origin
                    (not_at_c_p5)

                    ; #19606: <==negation-removal== 34834 (pos)
                    (not (not_at_c_p12))

                    ; #28038: <==negation-removal== 84263 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #28072: origin
                    (at_c_p2)

                    ; #84263: origin
                    (not_at_c_p5)

                    ; #28038: <==negation-removal== 84263 (pos)
                    (not (at_c_p5))

                    ; #50457: <==negation-removal== 28072 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #83769: origin
                    (at_c_p3)

                    ; #84263: origin
                    (not_at_c_p5)

                    ; #28038: <==negation-removal== 84263 (pos)
                    (not (at_c_p5))

                    ; #62153: <==negation-removal== 83769 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #56891: origin
                    (at_c_p4)

                    ; #84263: origin
                    (not_at_c_p5)

                    ; #28038: <==negation-removal== 84263 (pos)
                    (not (at_c_p5))

                    ; #80904: <==negation-removal== 56891 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #28038: origin
                    (at_c_p5)

                    ; #84263: origin
                    (not_at_c_p5)

                    ; #28038: <==negation-removal== 84263 (pos)
                    (not (at_c_p5))

                    ; #84263: <==negation-removal== 28038 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #13961: origin
                    (at_c_p6)

                    ; #84263: origin
                    (not_at_c_p5)

                    ; #28038: <==negation-removal== 84263 (pos)
                    (not (at_c_p5))

                    ; #86893: <==negation-removal== 13961 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #80752: origin
                    (at_c_p7)

                    ; #84263: origin
                    (not_at_c_p5)

                    ; #11179: <==negation-removal== 80752 (pos)
                    (not (not_at_c_p7))

                    ; #28038: <==negation-removal== 84263 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #73032: origin
                    (at_c_p8)

                    ; #84263: origin
                    (not_at_c_p5)

                    ; #16258: <==negation-removal== 73032 (pos)
                    (not (not_at_c_p8))

                    ; #28038: <==negation-removal== 84263 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #73327: origin
                    (at_c_p9)

                    ; #84263: origin
                    (not_at_c_p5)

                    ; #28038: <==negation-removal== 84263 (pos)
                    (not (at_c_p5))

                    ; #83887: <==negation-removal== 73327 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #86893: origin
                    (not_at_c_p6)

                    ; #91666: origin
                    (at_c_p1)

                    ; #13961: <==negation-removal== 86893 (pos)
                    (not (at_c_p6))

                    ; #34639: <==negation-removal== 91666 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6))
        :effect (and
                    ; #86893: origin
                    (not_at_c_p6)

                    ; #87700: origin
                    (at_c_p10)

                    ; #13961: <==negation-removal== 86893 (pos)
                    (not (at_c_p6))

                    ; #75449: <==negation-removal== 87700 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6))
        :effect (and
                    ; #52426: origin
                    (at_c_p11)

                    ; #86893: origin
                    (not_at_c_p6)

                    ; #13961: <==negation-removal== 86893 (pos)
                    (not (at_c_p6))

                    ; #90342: <==negation-removal== 52426 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6))
        :effect (and
                    ; #34834: origin
                    (at_c_p12)

                    ; #86893: origin
                    (not_at_c_p6)

                    ; #13961: <==negation-removal== 86893 (pos)
                    (not (at_c_p6))

                    ; #19606: <==negation-removal== 34834 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #28072: origin
                    (at_c_p2)

                    ; #86893: origin
                    (not_at_c_p6)

                    ; #13961: <==negation-removal== 86893 (pos)
                    (not (at_c_p6))

                    ; #50457: <==negation-removal== 28072 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #83769: origin
                    (at_c_p3)

                    ; #86893: origin
                    (not_at_c_p6)

                    ; #13961: <==negation-removal== 86893 (pos)
                    (not (at_c_p6))

                    ; #62153: <==negation-removal== 83769 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #56891: origin
                    (at_c_p4)

                    ; #86893: origin
                    (not_at_c_p6)

                    ; #13961: <==negation-removal== 86893 (pos)
                    (not (at_c_p6))

                    ; #80904: <==negation-removal== 56891 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #28038: origin
                    (at_c_p5)

                    ; #86893: origin
                    (not_at_c_p6)

                    ; #13961: <==negation-removal== 86893 (pos)
                    (not (at_c_p6))

                    ; #84263: <==negation-removal== 28038 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #13961: origin
                    (at_c_p6)

                    ; #86893: origin
                    (not_at_c_p6)

                    ; #13961: <==negation-removal== 86893 (pos)
                    (not (at_c_p6))

                    ; #86893: <==negation-removal== 13961 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #80752: origin
                    (at_c_p7)

                    ; #86893: origin
                    (not_at_c_p6)

                    ; #11179: <==negation-removal== 80752 (pos)
                    (not (not_at_c_p7))

                    ; #13961: <==negation-removal== 86893 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #73032: origin
                    (at_c_p8)

                    ; #86893: origin
                    (not_at_c_p6)

                    ; #13961: <==negation-removal== 86893 (pos)
                    (not (at_c_p6))

                    ; #16258: <==negation-removal== 73032 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #73327: origin
                    (at_c_p9)

                    ; #86893: origin
                    (not_at_c_p6)

                    ; #13961: <==negation-removal== 86893 (pos)
                    (not (at_c_p6))

                    ; #83887: <==negation-removal== 73327 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #11179: origin
                    (not_at_c_p7)

                    ; #91666: origin
                    (at_c_p1)

                    ; #34639: <==negation-removal== 91666 (pos)
                    (not (not_at_c_p1))

                    ; #80752: <==negation-removal== 11179 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (at_c_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #11179: origin
                    (not_at_c_p7)

                    ; #87700: origin
                    (at_c_p10)

                    ; #75449: <==negation-removal== 87700 (pos)
                    (not (not_at_c_p10))

                    ; #80752: <==negation-removal== 11179 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #11179: origin
                    (not_at_c_p7)

                    ; #52426: origin
                    (at_c_p11)

                    ; #80752: <==negation-removal== 11179 (pos)
                    (not (at_c_p7))

                    ; #90342: <==negation-removal== 52426 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7))
        :effect (and
                    ; #11179: origin
                    (not_at_c_p7)

                    ; #34834: origin
                    (at_c_p12)

                    ; #19606: <==negation-removal== 34834 (pos)
                    (not (not_at_c_p12))

                    ; #80752: <==negation-removal== 11179 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #11179: origin
                    (not_at_c_p7)

                    ; #28072: origin
                    (at_c_p2)

                    ; #50457: <==negation-removal== 28072 (pos)
                    (not (not_at_c_p2))

                    ; #80752: <==negation-removal== 11179 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #11179: origin
                    (not_at_c_p7)

                    ; #83769: origin
                    (at_c_p3)

                    ; #62153: <==negation-removal== 83769 (pos)
                    (not (not_at_c_p3))

                    ; #80752: <==negation-removal== 11179 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #11179: origin
                    (not_at_c_p7)

                    ; #56891: origin
                    (at_c_p4)

                    ; #80752: <==negation-removal== 11179 (pos)
                    (not (at_c_p7))

                    ; #80904: <==negation-removal== 56891 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #11179: origin
                    (not_at_c_p7)

                    ; #28038: origin
                    (at_c_p5)

                    ; #80752: <==negation-removal== 11179 (pos)
                    (not (at_c_p7))

                    ; #84263: <==negation-removal== 28038 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #11179: origin
                    (not_at_c_p7)

                    ; #13961: origin
                    (at_c_p6)

                    ; #80752: <==negation-removal== 11179 (pos)
                    (not (at_c_p7))

                    ; #86893: <==negation-removal== 13961 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #11179: origin
                    (not_at_c_p7)

                    ; #80752: origin
                    (at_c_p7)

                    ; #11179: <==negation-removal== 80752 (pos)
                    (not (not_at_c_p7))

                    ; #80752: <==negation-removal== 11179 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #11179: origin
                    (not_at_c_p7)

                    ; #73032: origin
                    (at_c_p8)

                    ; #16258: <==negation-removal== 73032 (pos)
                    (not (not_at_c_p8))

                    ; #80752: <==negation-removal== 11179 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #11179: origin
                    (not_at_c_p7)

                    ; #73327: origin
                    (at_c_p9)

                    ; #80752: <==negation-removal== 11179 (pos)
                    (not (at_c_p7))

                    ; #83887: <==negation-removal== 73327 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #16258: origin
                    (not_at_c_p8)

                    ; #91666: origin
                    (at_c_p1)

                    ; #34639: <==negation-removal== 91666 (pos)
                    (not (not_at_c_p1))

                    ; #73032: <==negation-removal== 16258 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8))
        :effect (and
                    ; #16258: origin
                    (not_at_c_p8)

                    ; #87700: origin
                    (at_c_p10)

                    ; #73032: <==negation-removal== 16258 (pos)
                    (not (at_c_p8))

                    ; #75449: <==negation-removal== 87700 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8))
        :effect (and
                    ; #16258: origin
                    (not_at_c_p8)

                    ; #52426: origin
                    (at_c_p11)

                    ; #73032: <==negation-removal== 16258 (pos)
                    (not (at_c_p8))

                    ; #90342: <==negation-removal== 52426 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #16258: origin
                    (not_at_c_p8)

                    ; #34834: origin
                    (at_c_p12)

                    ; #19606: <==negation-removal== 34834 (pos)
                    (not (not_at_c_p12))

                    ; #73032: <==negation-removal== 16258 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #16258: origin
                    (not_at_c_p8)

                    ; #28072: origin
                    (at_c_p2)

                    ; #50457: <==negation-removal== 28072 (pos)
                    (not (not_at_c_p2))

                    ; #73032: <==negation-removal== 16258 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #16258: origin
                    (not_at_c_p8)

                    ; #83769: origin
                    (at_c_p3)

                    ; #62153: <==negation-removal== 83769 (pos)
                    (not (not_at_c_p3))

                    ; #73032: <==negation-removal== 16258 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #16258: origin
                    (not_at_c_p8)

                    ; #56891: origin
                    (at_c_p4)

                    ; #73032: <==negation-removal== 16258 (pos)
                    (not (at_c_p8))

                    ; #80904: <==negation-removal== 56891 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #16258: origin
                    (not_at_c_p8)

                    ; #28038: origin
                    (at_c_p5)

                    ; #73032: <==negation-removal== 16258 (pos)
                    (not (at_c_p8))

                    ; #84263: <==negation-removal== 28038 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #13961: origin
                    (at_c_p6)

                    ; #16258: origin
                    (not_at_c_p8)

                    ; #73032: <==negation-removal== 16258 (pos)
                    (not (at_c_p8))

                    ; #86893: <==negation-removal== 13961 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #16258: origin
                    (not_at_c_p8)

                    ; #80752: origin
                    (at_c_p7)

                    ; #11179: <==negation-removal== 80752 (pos)
                    (not (not_at_c_p7))

                    ; #73032: <==negation-removal== 16258 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #16258: origin
                    (not_at_c_p8)

                    ; #73032: origin
                    (at_c_p8)

                    ; #16258: <==negation-removal== 73032 (pos)
                    (not (not_at_c_p8))

                    ; #73032: <==negation-removal== 16258 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #16258: origin
                    (not_at_c_p8)

                    ; #73327: origin
                    (at_c_p9)

                    ; #73032: <==negation-removal== 16258 (pos)
                    (not (at_c_p8))

                    ; #83887: <==negation-removal== 73327 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #83887: origin
                    (not_at_c_p9)

                    ; #91666: origin
                    (at_c_p1)

                    ; #34639: <==negation-removal== 91666 (pos)
                    (not (not_at_c_p1))

                    ; #73327: <==negation-removal== 83887 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9))
        :effect (and
                    ; #83887: origin
                    (not_at_c_p9)

                    ; #87700: origin
                    (at_c_p10)

                    ; #73327: <==negation-removal== 83887 (pos)
                    (not (at_c_p9))

                    ; #75449: <==negation-removal== 87700 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p9_p11
        :precondition (and (at_c_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #52426: origin
                    (at_c_p11)

                    ; #83887: origin
                    (not_at_c_p9)

                    ; #73327: <==negation-removal== 83887 (pos)
                    (not (at_c_p9))

                    ; #90342: <==negation-removal== 52426 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_c_p9))
        :effect (and
                    ; #34834: origin
                    (at_c_p12)

                    ; #83887: origin
                    (not_at_c_p9)

                    ; #19606: <==negation-removal== 34834 (pos)
                    (not (not_at_c_p12))

                    ; #73327: <==negation-removal== 83887 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #28072: origin
                    (at_c_p2)

                    ; #83887: origin
                    (not_at_c_p9)

                    ; #50457: <==negation-removal== 28072 (pos)
                    (not (not_at_c_p2))

                    ; #73327: <==negation-removal== 83887 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #83769: origin
                    (at_c_p3)

                    ; #83887: origin
                    (not_at_c_p9)

                    ; #62153: <==negation-removal== 83769 (pos)
                    (not (not_at_c_p3))

                    ; #73327: <==negation-removal== 83887 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #56891: origin
                    (at_c_p4)

                    ; #83887: origin
                    (not_at_c_p9)

                    ; #73327: <==negation-removal== 83887 (pos)
                    (not (at_c_p9))

                    ; #80904: <==negation-removal== 56891 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #28038: origin
                    (at_c_p5)

                    ; #83887: origin
                    (not_at_c_p9)

                    ; #73327: <==negation-removal== 83887 (pos)
                    (not (at_c_p9))

                    ; #84263: <==negation-removal== 28038 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #13961: origin
                    (at_c_p6)

                    ; #83887: origin
                    (not_at_c_p9)

                    ; #73327: <==negation-removal== 83887 (pos)
                    (not (at_c_p9))

                    ; #86893: <==negation-removal== 13961 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #80752: origin
                    (at_c_p7)

                    ; #83887: origin
                    (not_at_c_p9)

                    ; #11179: <==negation-removal== 80752 (pos)
                    (not (not_at_c_p7))

                    ; #73327: <==negation-removal== 83887 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #73032: origin
                    (at_c_p8)

                    ; #83887: origin
                    (not_at_c_p9)

                    ; #16258: <==negation-removal== 73032 (pos)
                    (not (not_at_c_p8))

                    ; #73327: <==negation-removal== 83887 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #73327: origin
                    (at_c_p9)

                    ; #83887: origin
                    (not_at_c_p9)

                    ; #73327: <==negation-removal== 83887 (pos)
                    (not (at_c_p9))

                    ; #83887: <==negation-removal== 73327 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #11953: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #13622: <==commonly_known== 19772 (pos)
                    (Bc_checked_p10)

                    ; #19657: <==commonly_known== 19772 (pos)
                    (Bb_checked_p10)

                    ; #19772: origin
                    (checked_p10)

                    ; #36423: <==commonly_known== 19772 (pos)
                    (Ba_checked_p10)

                    ; #46890: <==commonly_known== 16725 (neg)
                    (Pb_checked_p10)

                    ; #52658: <==commonly_known== 16725 (neg)
                    (Pa_checked_p10)

                    ; #53200: <==commonly_known== 16725 (neg)
                    (Pc_checked_p10)

                    ; #56677: <==closure== 11953 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #65626: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #91613: <==closure== 65626 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #13810: <==negation-removal== 11953 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #16725: <==negation-removal== 19772 (pos)
                    (not (not_checked_p10))

                    ; #20006: <==uncertain_firing== 11953 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #22680: <==negation-removal== 56677 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #29060: <==negation-removal== 46890 (pos)
                    (not (Bb_not_checked_p10))

                    ; #31219: <==negation-removal== 91613 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #44648: <==negation-removal== 19657 (pos)
                    (not (Pb_not_checked_p10))

                    ; #51808: <==negation-removal== 52658 (pos)
                    (not (Ba_not_checked_p10))

                    ; #53739: <==negation-removal== 53200 (pos)
                    (not (Bc_not_checked_p10))

                    ; #55637: <==negation-removal== 13622 (pos)
                    (not (Pc_not_checked_p10))

                    ; #59334: <==uncertain_firing== 91613 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #62563: <==negation-removal== 36423 (pos)
                    (not (Pa_not_checked_p10))

                    ; #67945: <==uncertain_firing== 56677 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #82586: <==uncertain_firing== 65626 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #88945: <==negation-removal== 65626 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #13683: <==commonly_known== 72667 (neg)
                    (Pa_checked_p11)

                    ; #22212: <==commonly_known== 88146 (pos)
                    (Bc_checked_p11)

                    ; #32700: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #41235: <==closure== 74690 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #50529: <==commonly_known== 72667 (neg)
                    (Pb_checked_p11)

                    ; #53292: <==closure== 32700 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #56080: <==commonly_known== 72667 (neg)
                    (Pc_checked_p11)

                    ; #62512: <==commonly_known== 88146 (pos)
                    (Bb_checked_p11)

                    ; #74690: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #79704: <==commonly_known== 88146 (pos)
                    (Ba_checked_p11)

                    ; #88146: origin
                    (checked_p11)

                    ; #18033: <==negation-removal== 50529 (pos)
                    (not (Bb_not_checked_p11))

                    ; #20652: <==negation-removal== 53292 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #26309: <==negation-removal== 79704 (pos)
                    (not (Pa_not_checked_p11))

                    ; #27198: <==uncertain_firing== 74690 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #27926: <==uncertain_firing== 32700 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #33585: <==negation-removal== 41235 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #48502: <==negation-removal== 56080 (pos)
                    (not (Bc_not_checked_p11))

                    ; #60794: <==negation-removal== 74690 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #64685: <==negation-removal== 13683 (pos)
                    (not (Ba_not_checked_p11))

                    ; #67000: <==negation-removal== 32700 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #72667: <==negation-removal== 88146 (pos)
                    (not (not_checked_p11))

                    ; #73223: <==uncertain_firing== 41235 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #75633: <==negation-removal== 22212 (pos)
                    (not (Pc_not_checked_p11))

                    ; #84602: <==negation-removal== 62512 (pos)
                    (not (Pb_not_checked_p11))

                    ; #91046: <==uncertain_firing== 53292 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #22672: <==closure== 48040 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #23630: <==commonly_known== 55074 (pos)
                    (Ba_checked_p12)

                    ; #29623: <==commonly_known== 67617 (neg)
                    (Pb_checked_p12)

                    ; #39929: <==commonly_known== 67617 (neg)
                    (Pa_checked_p12)

                    ; #48040: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #49201: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #49715: <==commonly_known== 67617 (neg)
                    (Pc_checked_p12)

                    ; #55074: origin
                    (checked_p12)

                    ; #59622: <==closure== 49201 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #76804: <==commonly_known== 55074 (pos)
                    (Bc_checked_p12)

                    ; #81044: <==commonly_known== 55074 (pos)
                    (Bb_checked_p12)

                    ; #21250: <==negation-removal== 81044 (pos)
                    (not (Pb_not_checked_p12))

                    ; #26724: <==uncertain_firing== 59622 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #31670: <==uncertain_firing== 48040 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #34394: <==uncertain_firing== 22672 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #40990: <==negation-removal== 48040 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #43198: <==negation-removal== 49201 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #47898: <==negation-removal== 76804 (pos)
                    (not (Pc_not_checked_p12))

                    ; #49373: <==uncertain_firing== 49201 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #54375: <==negation-removal== 23630 (pos)
                    (not (Pa_not_checked_p12))

                    ; #67617: <==negation-removal== 55074 (pos)
                    (not (not_checked_p12))

                    ; #68148: <==negation-removal== 22672 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #68764: <==negation-removal== 29623 (pos)
                    (not (Bb_not_checked_p12))

                    ; #71622: <==negation-removal== 39929 (pos)
                    (not (Ba_not_checked_p12))

                    ; #79213: <==negation-removal== 59622 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #84512: <==negation-removal== 49715 (pos)
                    (not (Bc_not_checked_p12))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12684: <==closure== 70903 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #21710: <==commonly_known== 46547 (pos)
                    (Ba_checked_p1)

                    ; #25147: <==commonly_known== 46547 (pos)
                    (Bb_checked_p1)

                    ; #31249: <==closure== 50395 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #41940: <==commonly_known== 17107 (neg)
                    (Pa_checked_p1)

                    ; #46458: <==commonly_known== 46547 (pos)
                    (Bc_checked_p1)

                    ; #46547: origin
                    (checked_p1)

                    ; #50395: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #70903: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #74628: <==commonly_known== 17107 (neg)
                    (Pc_checked_p1)

                    ; #77515: <==commonly_known== 17107 (neg)
                    (Pb_checked_p1)

                    ; #17107: <==negation-removal== 46547 (pos)
                    (not (not_checked_p1))

                    ; #25427: <==negation-removal== 74628 (pos)
                    (not (Bc_not_checked_p1))

                    ; #31214: <==negation-removal== 31249 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #34178: <==negation-removal== 25147 (pos)
                    (not (Pb_not_checked_p1))

                    ; #39354: <==negation-removal== 46458 (pos)
                    (not (Pc_not_checked_p1))

                    ; #46546: <==uncertain_firing== 70903 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #48423: <==negation-removal== 41940 (pos)
                    (not (Ba_not_checked_p1))

                    ; #49344: <==uncertain_firing== 50395 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #50482: <==negation-removal== 21710 (pos)
                    (not (Pa_not_checked_p1))

                    ; #53211: <==negation-removal== 70903 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #68686: <==uncertain_firing== 31249 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #74814: <==uncertain_firing== 12684 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #83986: <==negation-removal== 12684 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #84180: <==negation-removal== 77515 (pos)
                    (not (Bb_not_checked_p1))

                    ; #91667: <==negation-removal== 50395 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #15142: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #17917: <==closure== 15142 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #27557: <==commonly_known== 19515 (neg)
                    (Pa_checked_p2)

                    ; #27584: origin
                    (checked_p2)

                    ; #27739: <==closure== 29963 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #28471: <==commonly_known== 27584 (pos)
                    (Bc_checked_p2)

                    ; #29963: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #39389: <==commonly_known== 27584 (pos)
                    (Ba_checked_p2)

                    ; #72387: <==commonly_known== 27584 (pos)
                    (Bb_checked_p2)

                    ; #75604: <==commonly_known== 19515 (neg)
                    (Pc_checked_p2)

                    ; #89849: <==commonly_known== 19515 (neg)
                    (Pb_checked_p2)

                    ; #12346: <==negation-removal== 89849 (pos)
                    (not (Bb_not_checked_p2))

                    ; #19515: <==negation-removal== 27584 (pos)
                    (not (not_checked_p2))

                    ; #22927: <==negation-removal== 29963 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #28006: <==negation-removal== 28471 (pos)
                    (not (Pc_not_checked_p2))

                    ; #37383: <==negation-removal== 75604 (pos)
                    (not (Bc_not_checked_p2))

                    ; #41579: <==negation-removal== 39389 (pos)
                    (not (Pa_not_checked_p2))

                    ; #61433: <==uncertain_firing== 17917 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #63344: <==negation-removal== 27557 (pos)
                    (not (Ba_not_checked_p2))

                    ; #64128: <==negation-removal== 15142 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #69918: <==uncertain_firing== 27739 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #76825: <==negation-removal== 27739 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #78581: <==negation-removal== 17917 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #81424: <==uncertain_firing== 29963 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #87091: <==negation-removal== 72387 (pos)
                    (not (Pb_not_checked_p2))

                    ; #89039: <==uncertain_firing== 15142 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13144: <==commonly_known== 48779 (pos)
                    (Bb_checked_p3)

                    ; #14535: <==commonly_known== 91523 (neg)
                    (Pb_checked_p3)

                    ; #15884: <==commonly_known== 48779 (pos)
                    (Ba_checked_p3)

                    ; #31017: <==closure== 89031 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #41559: <==commonly_known== 91523 (neg)
                    (Pa_checked_p3)

                    ; #43899: <==closure== 52584 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #48779: origin
                    (checked_p3)

                    ; #49038: <==commonly_known== 91523 (neg)
                    (Pc_checked_p3)

                    ; #52584: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #77163: <==commonly_known== 48779 (pos)
                    (Bc_checked_p3)

                    ; #89031: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #24638: <==uncertain_firing== 89031 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #30925: <==negation-removal== 77163 (pos)
                    (not (Pc_not_checked_p3))

                    ; #53739: <==uncertain_firing== 43899 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #54570: <==negation-removal== 49038 (pos)
                    (not (Bc_not_checked_p3))

                    ; #55079: <==negation-removal== 31017 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #55327: <==negation-removal== 13144 (pos)
                    (not (Pb_not_checked_p3))

                    ; #55761: <==negation-removal== 43899 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #58179: <==negation-removal== 89031 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #76690: <==uncertain_firing== 31017 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #79051: <==negation-removal== 14535 (pos)
                    (not (Bb_not_checked_p3))

                    ; #80936: <==negation-removal== 15884 (pos)
                    (not (Pa_not_checked_p3))

                    ; #82306: <==negation-removal== 52584 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #85785: <==negation-removal== 41559 (pos)
                    (not (Ba_not_checked_p3))

                    ; #91523: <==negation-removal== 48779 (pos)
                    (not (not_checked_p3))

                    ; #96873: <==uncertain_firing== 52584 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #31993: <==commonly_known== 84380 (neg)
                    (Pb_checked_p4)

                    ; #43388: <==closure== 68094 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #45496: <==commonly_known== 84380 (neg)
                    (Pc_checked_p4)

                    ; #50347: <==commonly_known== 84380 (neg)
                    (Pa_checked_p4)

                    ; #61934: <==commonly_known== 71130 (pos)
                    (Bb_checked_p4)

                    ; #68094: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #69585: <==commonly_known== 71130 (pos)
                    (Bc_checked_p4)

                    ; #71130: origin
                    (checked_p4)

                    ; #74724: <==closure== 89345 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #86661: <==commonly_known== 71130 (pos)
                    (Ba_checked_p4)

                    ; #89345: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #11706: <==uncertain_firing== 68094 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #19584: <==uncertain_firing== 74724 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #26362: <==negation-removal== 61934 (pos)
                    (not (Pb_not_checked_p4))

                    ; #26380: <==uncertain_firing== 89345 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #29063: <==negation-removal== 89345 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #45389: <==negation-removal== 68094 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #54405: <==negation-removal== 31993 (pos)
                    (not (Bb_not_checked_p4))

                    ; #56914: <==negation-removal== 45496 (pos)
                    (not (Bc_not_checked_p4))

                    ; #58197: <==negation-removal== 43388 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #69522: <==negation-removal== 86661 (pos)
                    (not (Pa_not_checked_p4))

                    ; #70096: <==negation-removal== 74724 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #70402: <==negation-removal== 50347 (pos)
                    (not (Ba_not_checked_p4))

                    ; #83418: <==uncertain_firing== 43388 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #84380: <==negation-removal== 71130 (pos)
                    (not (not_checked_p4))

                    ; #86041: <==negation-removal== 69585 (pos)
                    (not (Pc_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12410: <==commonly_known== 86258 (pos)
                    (Bb_checked_p5)

                    ; #16272: <==closure== 46990 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #22080: <==commonly_known== 16089 (neg)
                    (Pb_checked_p5)

                    ; #23611: <==commonly_known== 16089 (neg)
                    (Pc_checked_p5)

                    ; #24802: <==commonly_known== 16089 (neg)
                    (Pa_checked_p5)

                    ; #30118: <==closure== 50024 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #33793: <==commonly_known== 86258 (pos)
                    (Ba_checked_p5)

                    ; #46990: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #50024: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #79280: <==commonly_known== 86258 (pos)
                    (Bc_checked_p5)

                    ; #86258: origin
                    (checked_p5)

                    ; #16089: <==negation-removal== 86258 (pos)
                    (not (not_checked_p5))

                    ; #17103: <==negation-removal== 30118 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #22050: <==negation-removal== 50024 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #25139: <==uncertain_firing== 30118 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #30812: <==negation-removal== 24802 (pos)
                    (not (Ba_not_checked_p5))

                    ; #38818: <==negation-removal== 46990 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #44528: <==negation-removal== 12410 (pos)
                    (not (Pb_not_checked_p5))

                    ; #50281: <==uncertain_firing== 50024 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #71352: <==negation-removal== 79280 (pos)
                    (not (Pc_not_checked_p5))

                    ; #71359: <==uncertain_firing== 46990 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #77305: <==negation-removal== 23611 (pos)
                    (not (Bc_not_checked_p5))

                    ; #79078: <==negation-removal== 22080 (pos)
                    (not (Bb_not_checked_p5))

                    ; #84068: <==negation-removal== 16272 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #84966: <==uncertain_firing== 16272 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #90618: <==negation-removal== 33793 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #23006: <==commonly_known== 44999 (pos)
                    (Bb_checked_p6)

                    ; #34312: <==commonly_known== 44999 (pos)
                    (Bc_checked_p6)

                    ; #34429: <==commonly_known== 44999 (pos)
                    (Ba_checked_p6)

                    ; #44999: origin
                    (checked_p6)

                    ; #45655: <==closure== 81685 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #55916: <==commonly_known== 85838 (neg)
                    (Pb_checked_p6)

                    ; #60074: <==commonly_known== 85838 (neg)
                    (Pc_checked_p6)

                    ; #81685: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #85279: <==closure== 91389 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #86842: <==commonly_known== 85838 (neg)
                    (Pa_checked_p6)

                    ; #91389: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #12131: <==negation-removal== 86842 (pos)
                    (not (Ba_not_checked_p6))

                    ; #16951: <==negation-removal== 23006 (pos)
                    (not (Pb_not_checked_p6))

                    ; #21414: <==negation-removal== 34312 (pos)
                    (not (Pc_not_checked_p6))

                    ; #23409: <==negation-removal== 60074 (pos)
                    (not (Bc_not_checked_p6))

                    ; #34384: <==negation-removal== 85279 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #35181: <==negation-removal== 91389 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #35528: <==negation-removal== 55916 (pos)
                    (not (Bb_not_checked_p6))

                    ; #41929: <==uncertain_firing== 81685 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #54691: <==negation-removal== 45655 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #60741: <==uncertain_firing== 45655 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #73687: <==negation-removal== 34429 (pos)
                    (not (Pa_not_checked_p6))

                    ; #84416: <==uncertain_firing== 85279 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #85838: <==negation-removal== 44999 (pos)
                    (not (not_checked_p6))

                    ; #89919: <==uncertain_firing== 91389 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #92000: <==negation-removal== 81685 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #15095: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #19348: <==closure== 92071 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #20180: <==commonly_known== 29058 (neg)
                    (Pc_checked_p7)

                    ; #23544: <==commonly_known== 29058 (neg)
                    (Pa_checked_p7)

                    ; #34043: <==commonly_known== 56656 (pos)
                    (Ba_checked_p7)

                    ; #34100: <==closure== 15095 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #56344: <==commonly_known== 56656 (pos)
                    (Bb_checked_p7)

                    ; #56656: origin
                    (checked_p7)

                    ; #73686: <==commonly_known== 29058 (neg)
                    (Pb_checked_p7)

                    ; #86983: <==commonly_known== 56656 (pos)
                    (Bc_checked_p7)

                    ; #92071: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #12597: <==negation-removal== 15095 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #14734: <==uncertain_firing== 19348 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #16938: <==negation-removal== 20180 (pos)
                    (not (Bc_not_checked_p7))

                    ; #18008: <==negation-removal== 23544 (pos)
                    (not (Ba_not_checked_p7))

                    ; #26196: <==negation-removal== 19348 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #29058: <==negation-removal== 56656 (pos)
                    (not (not_checked_p7))

                    ; #40955: <==uncertain_firing== 15095 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #42319: <==negation-removal== 73686 (pos)
                    (not (Bb_not_checked_p7))

                    ; #43090: <==negation-removal== 56344 (pos)
                    (not (Pb_not_checked_p7))

                    ; #52724: <==uncertain_firing== 34100 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #59179: <==negation-removal== 86983 (pos)
                    (not (Pc_not_checked_p7))

                    ; #73980: <==negation-removal== 92071 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #87257: <==negation-removal== 34100 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #88806: <==uncertain_firing== 92071 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #90648: <==negation-removal== 34043 (pos)
                    (not (Pa_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #28455: <==closure== 47525 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #30192: <==commonly_known== 68314 (pos)
                    (Bb_checked_p8)

                    ; #38928: <==commonly_known== 24759 (neg)
                    (Pc_checked_p8)

                    ; #42431: <==closure== 82113 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #47525: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #60635: <==commonly_known== 24759 (neg)
                    (Pa_checked_p8)

                    ; #63809: <==commonly_known== 24759 (neg)
                    (Pb_checked_p8)

                    ; #68314: origin
                    (checked_p8)

                    ; #70914: <==commonly_known== 68314 (pos)
                    (Bc_checked_p8)

                    ; #82113: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #86714: <==commonly_known== 68314 (pos)
                    (Ba_checked_p8)

                    ; #18747: <==uncertain_firing== 82113 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #24759: <==negation-removal== 68314 (pos)
                    (not (not_checked_p8))

                    ; #25023: <==negation-removal== 82113 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #25916: <==negation-removal== 28455 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #27674: <==uncertain_firing== 47525 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #30384: <==negation-removal== 38928 (pos)
                    (not (Bc_not_checked_p8))

                    ; #36618: <==negation-removal== 63809 (pos)
                    (not (Bb_not_checked_p8))

                    ; #38156: <==negation-removal== 42431 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #43752: <==negation-removal== 47525 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #58479: <==uncertain_firing== 42431 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #70443: <==negation-removal== 30192 (pos)
                    (not (Pb_not_checked_p8))

                    ; #81621: <==negation-removal== 86714 (pos)
                    (not (Pa_not_checked_p8))

                    ; #83258: <==negation-removal== 70914 (pos)
                    (not (Pc_not_checked_p8))

                    ; #88216: <==negation-removal== 60635 (pos)
                    (not (Ba_not_checked_p8))

                    ; #90134: <==uncertain_firing== 28455 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #15339: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #21275: <==commonly_known== 68121 (pos)
                    (Bc_checked_p9)

                    ; #22337: <==closure== 15339 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #23794: <==commonly_known== 58906 (neg)
                    (Pc_checked_p9)

                    ; #45373: <==commonly_known== 58906 (neg)
                    (Pb_checked_p9)

                    ; #48781: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #68121: origin
                    (checked_p9)

                    ; #69740: <==commonly_known== 68121 (pos)
                    (Ba_checked_p9)

                    ; #86800: <==commonly_known== 58906 (neg)
                    (Pa_checked_p9)

                    ; #87827: <==commonly_known== 68121 (pos)
                    (Bb_checked_p9)

                    ; #97205: <==closure== 48781 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #19253: <==negation-removal== 21275 (pos)
                    (not (Pc_not_checked_p9))

                    ; #23067: <==negation-removal== 23794 (pos)
                    (not (Bc_not_checked_p9))

                    ; #27723: <==negation-removal== 48781 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #30406: <==negation-removal== 97205 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #49316: <==negation-removal== 69740 (pos)
                    (not (Pa_not_checked_p9))

                    ; #56548: <==negation-removal== 87827 (pos)
                    (not (Pb_not_checked_p9))

                    ; #58871: <==uncertain_firing== 15339 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #58906: <==negation-removal== 68121 (pos)
                    (not (not_checked_p9))

                    ; #62677: <==negation-removal== 45373 (pos)
                    (not (Bb_not_checked_p9))

                    ; #64043: <==negation-removal== 22337 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #66460: <==uncertain_firing== 97205 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #77565: <==negation-removal== 86800 (pos)
                    (not (Ba_not_checked_p9))

                    ; #79911: <==uncertain_firing== 48781 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #90014: <==uncertain_firing== 22337 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #91332: <==negation-removal== 15339 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #13622: <==commonly_known== 19772 (pos)
                    (Bc_checked_p10)

                    ; #19276: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #19657: <==commonly_known== 19772 (pos)
                    (Bb_checked_p10)

                    ; #19772: origin
                    (checked_p10)

                    ; #36423: <==commonly_known== 19772 (pos)
                    (Ba_checked_p10)

                    ; #46890: <==commonly_known== 16725 (neg)
                    (Pb_checked_p10)

                    ; #52658: <==commonly_known== 16725 (neg)
                    (Pa_checked_p10)

                    ; #53200: <==commonly_known== 16725 (neg)
                    (Pc_checked_p10)

                    ; #57166: <==closure== 67644 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #67644: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #79671: <==closure== 19276 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #16725: <==negation-removal== 19772 (pos)
                    (not (not_checked_p10))

                    ; #17591: <==uncertain_firing== 67644 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #25766: <==uncertain_firing== 19276 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #29060: <==negation-removal== 46890 (pos)
                    (not (Bb_not_checked_p10))

                    ; #44648: <==negation-removal== 19657 (pos)
                    (not (Pb_not_checked_p10))

                    ; #49588: <==negation-removal== 19276 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #51808: <==negation-removal== 52658 (pos)
                    (not (Ba_not_checked_p10))

                    ; #53739: <==negation-removal== 53200 (pos)
                    (not (Bc_not_checked_p10))

                    ; #55637: <==negation-removal== 13622 (pos)
                    (not (Pc_not_checked_p10))

                    ; #60290: <==negation-removal== 67644 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #62563: <==negation-removal== 36423 (pos)
                    (not (Pa_not_checked_p10))

                    ; #65390: <==uncertain_firing== 79671 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #79901: <==negation-removal== 79671 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #81203: <==negation-removal== 57166 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #83389: <==uncertain_firing== 57166 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #13683: <==commonly_known== 72667 (neg)
                    (Pa_checked_p11)

                    ; #14564: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #22212: <==commonly_known== 88146 (pos)
                    (Bc_checked_p11)

                    ; #26321: <==closure== 14564 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #26621: <==closure== 36429 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #36429: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #50529: <==commonly_known== 72667 (neg)
                    (Pb_checked_p11)

                    ; #56080: <==commonly_known== 72667 (neg)
                    (Pc_checked_p11)

                    ; #62512: <==commonly_known== 88146 (pos)
                    (Bb_checked_p11)

                    ; #79704: <==commonly_known== 88146 (pos)
                    (Ba_checked_p11)

                    ; #88146: origin
                    (checked_p11)

                    ; #11307: <==negation-removal== 26621 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #18033: <==negation-removal== 50529 (pos)
                    (not (Bb_not_checked_p11))

                    ; #18100: <==uncertain_firing== 36429 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #26309: <==negation-removal== 79704 (pos)
                    (not (Pa_not_checked_p11))

                    ; #35967: <==uncertain_firing== 26621 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #44606: <==uncertain_firing== 14564 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #48502: <==negation-removal== 56080 (pos)
                    (not (Bc_not_checked_p11))

                    ; #48676: <==negation-removal== 36429 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #50473: <==negation-removal== 26321 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #62416: <==negation-removal== 14564 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #64685: <==negation-removal== 13683 (pos)
                    (not (Ba_not_checked_p11))

                    ; #72019: <==uncertain_firing== 26321 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #72667: <==negation-removal== 88146 (pos)
                    (not (not_checked_p11))

                    ; #75633: <==negation-removal== 22212 (pos)
                    (not (Pc_not_checked_p11))

                    ; #84602: <==negation-removal== 62512 (pos)
                    (not (Pb_not_checked_p11))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #10462: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #23630: <==commonly_known== 55074 (pos)
                    (Ba_checked_p12)

                    ; #29623: <==commonly_known== 67617 (neg)
                    (Pb_checked_p12)

                    ; #39929: <==commonly_known== 67617 (neg)
                    (Pa_checked_p12)

                    ; #45459: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #49715: <==commonly_known== 67617 (neg)
                    (Pc_checked_p12)

                    ; #55074: origin
                    (checked_p12)

                    ; #76804: <==commonly_known== 55074 (pos)
                    (Bc_checked_p12)

                    ; #78353: <==closure== 45459 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #81044: <==commonly_known== 55074 (pos)
                    (Bb_checked_p12)

                    ; #91130: <==closure== 10462 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #10915: <==negation-removal== 45459 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #15651: <==negation-removal== 10462 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #16831: <==uncertain_firing== 78353 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #21250: <==negation-removal== 81044 (pos)
                    (not (Pb_not_checked_p12))

                    ; #34902: <==negation-removal== 78353 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #47898: <==negation-removal== 76804 (pos)
                    (not (Pc_not_checked_p12))

                    ; #52747: <==uncertain_firing== 91130 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #54375: <==negation-removal== 23630 (pos)
                    (not (Pa_not_checked_p12))

                    ; #67617: <==negation-removal== 55074 (pos)
                    (not (not_checked_p12))

                    ; #67885: <==negation-removal== 91130 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #68764: <==negation-removal== 29623 (pos)
                    (not (Bb_not_checked_p12))

                    ; #71622: <==negation-removal== 39929 (pos)
                    (not (Ba_not_checked_p12))

                    ; #80941: <==uncertain_firing== 10462 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #83827: <==uncertain_firing== 45459 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #84512: <==negation-removal== 49715 (pos)
                    (not (Bc_not_checked_p12))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #21710: <==commonly_known== 46547 (pos)
                    (Ba_checked_p1)

                    ; #25013: <==closure== 73083 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #25147: <==commonly_known== 46547 (pos)
                    (Bb_checked_p1)

                    ; #30772: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #41940: <==commonly_known== 17107 (neg)
                    (Pa_checked_p1)

                    ; #46458: <==commonly_known== 46547 (pos)
                    (Bc_checked_p1)

                    ; #46547: origin
                    (checked_p1)

                    ; #72518: <==closure== 30772 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #73083: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #74628: <==commonly_known== 17107 (neg)
                    (Pc_checked_p1)

                    ; #77515: <==commonly_known== 17107 (neg)
                    (Pb_checked_p1)

                    ; #17107: <==negation-removal== 46547 (pos)
                    (not (not_checked_p1))

                    ; #17863: <==uncertain_firing== 30772 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #25427: <==negation-removal== 74628 (pos)
                    (not (Bc_not_checked_p1))

                    ; #34178: <==negation-removal== 25147 (pos)
                    (not (Pb_not_checked_p1))

                    ; #39354: <==negation-removal== 46458 (pos)
                    (not (Pc_not_checked_p1))

                    ; #41444: <==uncertain_firing== 25013 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #48423: <==negation-removal== 41940 (pos)
                    (not (Ba_not_checked_p1))

                    ; #50482: <==negation-removal== 21710 (pos)
                    (not (Pa_not_checked_p1))

                    ; #60242: <==negation-removal== 25013 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #61143: <==uncertain_firing== 72518 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #70445: <==negation-removal== 30772 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #71068: <==negation-removal== 72518 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #81670: <==uncertain_firing== 73083 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #84180: <==negation-removal== 77515 (pos)
                    (not (Bb_not_checked_p1))

                    ; #88350: <==negation-removal== 73083 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #27557: <==commonly_known== 19515 (neg)
                    (Pa_checked_p2)

                    ; #27584: origin
                    (checked_p2)

                    ; #28471: <==commonly_known== 27584 (pos)
                    (Bc_checked_p2)

                    ; #31771: <==closure== 86322 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #39389: <==commonly_known== 27584 (pos)
                    (Ba_checked_p2)

                    ; #58685: <==closure== 77116 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #72387: <==commonly_known== 27584 (pos)
                    (Bb_checked_p2)

                    ; #75604: <==commonly_known== 19515 (neg)
                    (Pc_checked_p2)

                    ; #77116: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #86322: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #89849: <==commonly_known== 19515 (neg)
                    (Pb_checked_p2)

                    ; #10187: <==negation-removal== 77116 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #12346: <==negation-removal== 89849 (pos)
                    (not (Bb_not_checked_p2))

                    ; #19515: <==negation-removal== 27584 (pos)
                    (not (not_checked_p2))

                    ; #28006: <==negation-removal== 28471 (pos)
                    (not (Pc_not_checked_p2))

                    ; #32442: <==negation-removal== 86322 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #37383: <==negation-removal== 75604 (pos)
                    (not (Bc_not_checked_p2))

                    ; #41579: <==negation-removal== 39389 (pos)
                    (not (Pa_not_checked_p2))

                    ; #55825: <==uncertain_firing== 58685 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #59260: <==uncertain_firing== 86322 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #62742: <==negation-removal== 58685 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #63344: <==negation-removal== 27557 (pos)
                    (not (Ba_not_checked_p2))

                    ; #65101: <==uncertain_firing== 77116 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #87091: <==negation-removal== 72387 (pos)
                    (not (Pb_not_checked_p2))

                    ; #90649: <==negation-removal== 31771 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #91909: <==uncertain_firing== 31771 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13144: <==commonly_known== 48779 (pos)
                    (Bb_checked_p3)

                    ; #14535: <==commonly_known== 91523 (neg)
                    (Pb_checked_p3)

                    ; #15884: <==commonly_known== 48779 (pos)
                    (Ba_checked_p3)

                    ; #31465: <==closure== 69637 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #41559: <==commonly_known== 91523 (neg)
                    (Pa_checked_p3)

                    ; #48546: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #48779: origin
                    (checked_p3)

                    ; #49038: <==commonly_known== 91523 (neg)
                    (Pc_checked_p3)

                    ; #69637: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #73487: <==closure== 48546 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #77163: <==commonly_known== 48779 (pos)
                    (Bc_checked_p3)

                    ; #13618: <==uncertain_firing== 31465 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #18283: <==uncertain_firing== 73487 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #29679: <==uncertain_firing== 48546 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #30925: <==negation-removal== 77163 (pos)
                    (not (Pc_not_checked_p3))

                    ; #43073: <==negation-removal== 73487 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #54570: <==negation-removal== 49038 (pos)
                    (not (Bc_not_checked_p3))

                    ; #55327: <==negation-removal== 13144 (pos)
                    (not (Pb_not_checked_p3))

                    ; #71210: <==negation-removal== 48546 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #79051: <==negation-removal== 14535 (pos)
                    (not (Bb_not_checked_p3))

                    ; #80936: <==negation-removal== 15884 (pos)
                    (not (Pa_not_checked_p3))

                    ; #82131: <==negation-removal== 69637 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #85785: <==negation-removal== 41559 (pos)
                    (not (Ba_not_checked_p3))

                    ; #89501: <==uncertain_firing== 69637 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #91112: <==negation-removal== 31465 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #91523: <==negation-removal== 48779 (pos)
                    (not (not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #31993: <==commonly_known== 84380 (neg)
                    (Pb_checked_p4)

                    ; #33090: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #45496: <==commonly_known== 84380 (neg)
                    (Pc_checked_p4)

                    ; #50347: <==commonly_known== 84380 (neg)
                    (Pa_checked_p4)

                    ; #61934: <==commonly_known== 71130 (pos)
                    (Bb_checked_p4)

                    ; #69585: <==commonly_known== 71130 (pos)
                    (Bc_checked_p4)

                    ; #71130: origin
                    (checked_p4)

                    ; #72394: <==closure== 92671 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #76273: <==closure== 33090 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #86661: <==commonly_known== 71130 (pos)
                    (Ba_checked_p4)

                    ; #92671: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #15518: <==uncertain_firing== 92671 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #26362: <==negation-removal== 61934 (pos)
                    (not (Pb_not_checked_p4))

                    ; #31880: <==negation-removal== 92671 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #34301: <==uncertain_firing== 76273 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #35801: <==negation-removal== 33090 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #40909: <==uncertain_firing== 33090 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #48683: <==uncertain_firing== 72394 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #54405: <==negation-removal== 31993 (pos)
                    (not (Bb_not_checked_p4))

                    ; #56914: <==negation-removal== 45496 (pos)
                    (not (Bc_not_checked_p4))

                    ; #59351: <==negation-removal== 76273 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #59604: <==negation-removal== 72394 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #69522: <==negation-removal== 86661 (pos)
                    (not (Pa_not_checked_p4))

                    ; #70402: <==negation-removal== 50347 (pos)
                    (not (Ba_not_checked_p4))

                    ; #84380: <==negation-removal== 71130 (pos)
                    (not (not_checked_p4))

                    ; #86041: <==negation-removal== 69585 (pos)
                    (not (Pc_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12410: <==commonly_known== 86258 (pos)
                    (Bb_checked_p5)

                    ; #22080: <==commonly_known== 16089 (neg)
                    (Pb_checked_p5)

                    ; #22823: <==closure== 81248 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #23611: <==commonly_known== 16089 (neg)
                    (Pc_checked_p5)

                    ; #24802: <==commonly_known== 16089 (neg)
                    (Pa_checked_p5)

                    ; #33678: <==closure== 37719 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #33793: <==commonly_known== 86258 (pos)
                    (Ba_checked_p5)

                    ; #37719: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #79280: <==commonly_known== 86258 (pos)
                    (Bc_checked_p5)

                    ; #81248: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #86258: origin
                    (checked_p5)

                    ; #14163: <==negation-removal== 22823 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #16089: <==negation-removal== 86258 (pos)
                    (not (not_checked_p5))

                    ; #30812: <==negation-removal== 24802 (pos)
                    (not (Ba_not_checked_p5))

                    ; #31908: <==negation-removal== 81248 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #33672: <==uncertain_firing== 37719 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #34918: <==uncertain_firing== 22823 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #44528: <==negation-removal== 12410 (pos)
                    (not (Pb_not_checked_p5))

                    ; #53102: <==negation-removal== 33678 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #57569: <==uncertain_firing== 33678 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #65061: <==uncertain_firing== 81248 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #71352: <==negation-removal== 79280 (pos)
                    (not (Pc_not_checked_p5))

                    ; #77305: <==negation-removal== 23611 (pos)
                    (not (Bc_not_checked_p5))

                    ; #78738: <==negation-removal== 37719 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #79078: <==negation-removal== 22080 (pos)
                    (not (Bb_not_checked_p5))

                    ; #90618: <==negation-removal== 33793 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #17007: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #23006: <==commonly_known== 44999 (pos)
                    (Bb_checked_p6)

                    ; #34312: <==commonly_known== 44999 (pos)
                    (Bc_checked_p6)

                    ; #34429: <==commonly_known== 44999 (pos)
                    (Ba_checked_p6)

                    ; #35173: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #44584: <==closure== 35173 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #44999: origin
                    (checked_p6)

                    ; #51034: <==closure== 17007 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #55916: <==commonly_known== 85838 (neg)
                    (Pb_checked_p6)

                    ; #60074: <==commonly_known== 85838 (neg)
                    (Pc_checked_p6)

                    ; #86842: <==commonly_known== 85838 (neg)
                    (Pa_checked_p6)

                    ; #12131: <==negation-removal== 86842 (pos)
                    (not (Ba_not_checked_p6))

                    ; #15673: <==uncertain_firing== 44584 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #16951: <==negation-removal== 23006 (pos)
                    (not (Pb_not_checked_p6))

                    ; #21414: <==negation-removal== 34312 (pos)
                    (not (Pc_not_checked_p6))

                    ; #23409: <==negation-removal== 60074 (pos)
                    (not (Bc_not_checked_p6))

                    ; #34565: <==negation-removal== 35173 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #35528: <==negation-removal== 55916 (pos)
                    (not (Bb_not_checked_p6))

                    ; #55522: <==uncertain_firing== 17007 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #62053: <==negation-removal== 17007 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #73687: <==negation-removal== 34429 (pos)
                    (not (Pa_not_checked_p6))

                    ; #74201: <==negation-removal== 44584 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #85838: <==negation-removal== 44999 (pos)
                    (not (not_checked_p6))

                    ; #90730: <==uncertain_firing== 35173 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #91881: <==uncertain_firing== 51034 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #92279: <==negation-removal== 51034 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #20180: <==commonly_known== 29058 (neg)
                    (Pc_checked_p7)

                    ; #21754: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #23544: <==commonly_known== 29058 (neg)
                    (Pa_checked_p7)

                    ; #34043: <==commonly_known== 56656 (pos)
                    (Ba_checked_p7)

                    ; #49680: <==closure== 72504 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #56344: <==commonly_known== 56656 (pos)
                    (Bb_checked_p7)

                    ; #56656: origin
                    (checked_p7)

                    ; #72504: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #73686: <==commonly_known== 29058 (neg)
                    (Pb_checked_p7)

                    ; #86983: <==commonly_known== 56656 (pos)
                    (Bc_checked_p7)

                    ; #88220: <==closure== 21754 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #13000: <==negation-removal== 72504 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #16938: <==negation-removal== 20180 (pos)
                    (not (Bc_not_checked_p7))

                    ; #18008: <==negation-removal== 23544 (pos)
                    (not (Ba_not_checked_p7))

                    ; #19870: <==uncertain_firing== 49680 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #28600: <==negation-removal== 49680 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #29058: <==negation-removal== 56656 (pos)
                    (not (not_checked_p7))

                    ; #42319: <==negation-removal== 73686 (pos)
                    (not (Bb_not_checked_p7))

                    ; #43090: <==negation-removal== 56344 (pos)
                    (not (Pb_not_checked_p7))

                    ; #48301: <==uncertain_firing== 21754 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #59179: <==negation-removal== 86983 (pos)
                    (not (Pc_not_checked_p7))

                    ; #63214: <==uncertain_firing== 72504 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #65616: <==uncertain_firing== 88220 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #70782: <==negation-removal== 21754 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #75554: <==negation-removal== 88220 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #90648: <==negation-removal== 34043 (pos)
                    (not (Pa_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #15658: <==closure== 37247 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #17872: <==closure== 55809 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #30192: <==commonly_known== 68314 (pos)
                    (Bb_checked_p8)

                    ; #37247: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #38928: <==commonly_known== 24759 (neg)
                    (Pc_checked_p8)

                    ; #55809: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #60635: <==commonly_known== 24759 (neg)
                    (Pa_checked_p8)

                    ; #63809: <==commonly_known== 24759 (neg)
                    (Pb_checked_p8)

                    ; #68314: origin
                    (checked_p8)

                    ; #70914: <==commonly_known== 68314 (pos)
                    (Bc_checked_p8)

                    ; #86714: <==commonly_known== 68314 (pos)
                    (Ba_checked_p8)

                    ; #24759: <==negation-removal== 68314 (pos)
                    (not (not_checked_p8))

                    ; #26321: <==negation-removal== 55809 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #28254: <==uncertain_firing== 37247 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #30384: <==negation-removal== 38928 (pos)
                    (not (Bc_not_checked_p8))

                    ; #36618: <==negation-removal== 63809 (pos)
                    (not (Bb_not_checked_p8))

                    ; #38425: <==uncertain_firing== 17872 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #50163: <==negation-removal== 17872 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #64424: <==negation-removal== 37247 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #70443: <==negation-removal== 30192 (pos)
                    (not (Pb_not_checked_p8))

                    ; #73339: <==negation-removal== 15658 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #81621: <==negation-removal== 86714 (pos)
                    (not (Pa_not_checked_p8))

                    ; #82617: <==uncertain_firing== 15658 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #83258: <==negation-removal== 70914 (pos)
                    (not (Pc_not_checked_p8))

                    ; #83559: <==uncertain_firing== 55809 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #88216: <==negation-removal== 60635 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #21275: <==commonly_known== 68121 (pos)
                    (Bc_checked_p9)

                    ; #23794: <==commonly_known== 58906 (neg)
                    (Pc_checked_p9)

                    ; #45373: <==commonly_known== 58906 (neg)
                    (Pb_checked_p9)

                    ; #55415: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #55606: <==closure== 91707 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #57423: <==closure== 55415 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #68121: origin
                    (checked_p9)

                    ; #69740: <==commonly_known== 68121 (pos)
                    (Ba_checked_p9)

                    ; #86800: <==commonly_known== 58906 (neg)
                    (Pa_checked_p9)

                    ; #87827: <==commonly_known== 68121 (pos)
                    (Bb_checked_p9)

                    ; #91707: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #19253: <==negation-removal== 21275 (pos)
                    (not (Pc_not_checked_p9))

                    ; #20998: <==uncertain_firing== 91707 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #23067: <==negation-removal== 23794 (pos)
                    (not (Bc_not_checked_p9))

                    ; #36762: <==uncertain_firing== 55606 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #49316: <==negation-removal== 69740 (pos)
                    (not (Pa_not_checked_p9))

                    ; #49749: <==negation-removal== 55606 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #56548: <==negation-removal== 87827 (pos)
                    (not (Pb_not_checked_p9))

                    ; #58906: <==negation-removal== 68121 (pos)
                    (not (not_checked_p9))

                    ; #62677: <==negation-removal== 45373 (pos)
                    (not (Bb_not_checked_p9))

                    ; #64737: <==negation-removal== 55415 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #70909: <==negation-removal== 91707 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #76639: <==negation-removal== 57423 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #77565: <==negation-removal== 86800 (pos)
                    (not (Ba_not_checked_p9))

                    ; #89233: <==uncertain_firing== 55415 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #89508: <==uncertain_firing== 57423 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #13622: <==commonly_known== 19772 (pos)
                    (Bc_checked_p10)

                    ; #17992: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #19657: <==commonly_known== 19772 (pos)
                    (Bb_checked_p10)

                    ; #19772: origin
                    (checked_p10)

                    ; #30812: <==closure== 17992 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #36423: <==commonly_known== 19772 (pos)
                    (Ba_checked_p10)

                    ; #46890: <==commonly_known== 16725 (neg)
                    (Pb_checked_p10)

                    ; #52658: <==commonly_known== 16725 (neg)
                    (Pa_checked_p10)

                    ; #53200: <==commonly_known== 16725 (neg)
                    (Pc_checked_p10)

                    ; #61756: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #84011: <==closure== 61756 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #16725: <==negation-removal== 19772 (pos)
                    (not (not_checked_p10))

                    ; #20405: <==uncertain_firing== 84011 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #29060: <==negation-removal== 46890 (pos)
                    (not (Bb_not_checked_p10))

                    ; #34289: <==negation-removal== 30812 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #44648: <==negation-removal== 19657 (pos)
                    (not (Pb_not_checked_p10))

                    ; #49838: <==uncertain_firing== 30812 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #51808: <==negation-removal== 52658 (pos)
                    (not (Ba_not_checked_p10))

                    ; #51990: <==negation-removal== 61756 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #53651: <==uncertain_firing== 61756 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #53739: <==negation-removal== 53200 (pos)
                    (not (Bc_not_checked_p10))

                    ; #55637: <==negation-removal== 13622 (pos)
                    (not (Pc_not_checked_p10))

                    ; #58779: <==negation-removal== 17992 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #62563: <==negation-removal== 36423 (pos)
                    (not (Pa_not_checked_p10))

                    ; #84432: <==negation-removal== 84011 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #91022: <==uncertain_firing== 17992 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #13683: <==commonly_known== 72667 (neg)
                    (Pa_checked_p11)

                    ; #22212: <==commonly_known== 88146 (pos)
                    (Bc_checked_p11)

                    ; #24230: <==closure== 24314 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #24314: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #42154: <==closure== 76556 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #50529: <==commonly_known== 72667 (neg)
                    (Pb_checked_p11)

                    ; #56080: <==commonly_known== 72667 (neg)
                    (Pc_checked_p11)

                    ; #62512: <==commonly_known== 88146 (pos)
                    (Bb_checked_p11)

                    ; #76556: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #79704: <==commonly_known== 88146 (pos)
                    (Ba_checked_p11)

                    ; #88146: origin
                    (checked_p11)

                    ; #12833: <==uncertain_firing== 76556 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #18033: <==negation-removal== 50529 (pos)
                    (not (Bb_not_checked_p11))

                    ; #20113: <==negation-removal== 76556 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #25481: <==negation-removal== 24314 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #26309: <==negation-removal== 79704 (pos)
                    (not (Pa_not_checked_p11))

                    ; #41359: <==uncertain_firing== 42154 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #48502: <==negation-removal== 56080 (pos)
                    (not (Bc_not_checked_p11))

                    ; #53384: <==negation-removal== 24230 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #56989: <==uncertain_firing== 24230 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #59286: <==uncertain_firing== 24314 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #64685: <==negation-removal== 13683 (pos)
                    (not (Ba_not_checked_p11))

                    ; #72667: <==negation-removal== 88146 (pos)
                    (not (not_checked_p11))

                    ; #75633: <==negation-removal== 22212 (pos)
                    (not (Pc_not_checked_p11))

                    ; #84602: <==negation-removal== 62512 (pos)
                    (not (Pb_not_checked_p11))

                    ; #84785: <==negation-removal== 42154 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #15112: <==closure== 38666 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #23630: <==commonly_known== 55074 (pos)
                    (Ba_checked_p12)

                    ; #29623: <==commonly_known== 67617 (neg)
                    (Pb_checked_p12)

                    ; #32715: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #36666: <==closure== 32715 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #38666: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #39929: <==commonly_known== 67617 (neg)
                    (Pa_checked_p12)

                    ; #49715: <==commonly_known== 67617 (neg)
                    (Pc_checked_p12)

                    ; #55074: origin
                    (checked_p12)

                    ; #76804: <==commonly_known== 55074 (pos)
                    (Bc_checked_p12)

                    ; #81044: <==commonly_known== 55074 (pos)
                    (Bb_checked_p12)

                    ; #10089: <==uncertain_firing== 32715 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #19584: <==negation-removal== 32715 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #21250: <==negation-removal== 81044 (pos)
                    (not (Pb_not_checked_p12))

                    ; #26821: <==negation-removal== 38666 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #39273: <==negation-removal== 15112 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #47898: <==negation-removal== 76804 (pos)
                    (not (Pc_not_checked_p12))

                    ; #54375: <==negation-removal== 23630 (pos)
                    (not (Pa_not_checked_p12))

                    ; #67617: <==negation-removal== 55074 (pos)
                    (not (not_checked_p12))

                    ; #68764: <==negation-removal== 29623 (pos)
                    (not (Bb_not_checked_p12))

                    ; #71622: <==negation-removal== 39929 (pos)
                    (not (Ba_not_checked_p12))

                    ; #75191: <==uncertain_firing== 38666 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #76599: <==negation-removal== 36666 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #76739: <==uncertain_firing== 15112 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #84512: <==negation-removal== 49715 (pos)
                    (not (Bc_not_checked_p12))

                    ; #85192: <==uncertain_firing== 36666 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #18464: <==closure== 31896 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #21710: <==commonly_known== 46547 (pos)
                    (Ba_checked_p1)

                    ; #25147: <==commonly_known== 46547 (pos)
                    (Bb_checked_p1)

                    ; #26753: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #31896: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #41940: <==commonly_known== 17107 (neg)
                    (Pa_checked_p1)

                    ; #46458: <==commonly_known== 46547 (pos)
                    (Bc_checked_p1)

                    ; #46547: origin
                    (checked_p1)

                    ; #55496: <==closure== 26753 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #74628: <==commonly_known== 17107 (neg)
                    (Pc_checked_p1)

                    ; #77515: <==commonly_known== 17107 (neg)
                    (Pb_checked_p1)

                    ; #12388: <==uncertain_firing== 18464 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #17107: <==negation-removal== 46547 (pos)
                    (not (not_checked_p1))

                    ; #17212: <==uncertain_firing== 26753 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #25427: <==negation-removal== 74628 (pos)
                    (not (Bc_not_checked_p1))

                    ; #32452: <==uncertain_firing== 31896 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #32592: <==uncertain_firing== 55496 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #34178: <==negation-removal== 25147 (pos)
                    (not (Pb_not_checked_p1))

                    ; #39354: <==negation-removal== 46458 (pos)
                    (not (Pc_not_checked_p1))

                    ; #47898: <==negation-removal== 18464 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #48423: <==negation-removal== 41940 (pos)
                    (not (Ba_not_checked_p1))

                    ; #50482: <==negation-removal== 21710 (pos)
                    (not (Pa_not_checked_p1))

                    ; #73719: <==negation-removal== 31896 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #76832: <==negation-removal== 26753 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #84180: <==negation-removal== 77515 (pos)
                    (not (Bb_not_checked_p1))

                    ; #90142: <==negation-removal== 55496 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #27557: <==commonly_known== 19515 (neg)
                    (Pa_checked_p2)

                    ; #27584: origin
                    (checked_p2)

                    ; #28471: <==commonly_known== 27584 (pos)
                    (Bc_checked_p2)

                    ; #38494: <==closure== 81782 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #39389: <==commonly_known== 27584 (pos)
                    (Ba_checked_p2)

                    ; #57127: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #72387: <==commonly_known== 27584 (pos)
                    (Bb_checked_p2)

                    ; #75604: <==commonly_known== 19515 (neg)
                    (Pc_checked_p2)

                    ; #81782: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #89849: <==commonly_known== 19515 (neg)
                    (Pb_checked_p2)

                    ; #92074: <==closure== 57127 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #12346: <==negation-removal== 89849 (pos)
                    (not (Bb_not_checked_p2))

                    ; #19515: <==negation-removal== 27584 (pos)
                    (not (not_checked_p2))

                    ; #28006: <==negation-removal== 28471 (pos)
                    (not (Pc_not_checked_p2))

                    ; #29427: <==negation-removal== 81782 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #37383: <==negation-removal== 75604 (pos)
                    (not (Bc_not_checked_p2))

                    ; #38857: <==uncertain_firing== 81782 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #41579: <==negation-removal== 39389 (pos)
                    (not (Pa_not_checked_p2))

                    ; #62407: <==uncertain_firing== 38494 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #63344: <==negation-removal== 27557 (pos)
                    (not (Ba_not_checked_p2))

                    ; #66313: <==uncertain_firing== 57127 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #69574: <==uncertain_firing== 92074 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #83367: <==negation-removal== 92074 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #87091: <==negation-removal== 72387 (pos)
                    (not (Pb_not_checked_p2))

                    ; #89114: <==negation-removal== 57127 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #92027: <==negation-removal== 38494 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11153: <==closure== 89968 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #13144: <==commonly_known== 48779 (pos)
                    (Bb_checked_p3)

                    ; #14535: <==commonly_known== 91523 (neg)
                    (Pb_checked_p3)

                    ; #15884: <==commonly_known== 48779 (pos)
                    (Ba_checked_p3)

                    ; #17717: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #41559: <==commonly_known== 91523 (neg)
                    (Pa_checked_p3)

                    ; #48779: origin
                    (checked_p3)

                    ; #49038: <==commonly_known== 91523 (neg)
                    (Pc_checked_p3)

                    ; #51232: <==closure== 17717 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #77163: <==commonly_known== 48779 (pos)
                    (Bc_checked_p3)

                    ; #89968: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #18780: <==negation-removal== 17717 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #21817: <==negation-removal== 51232 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #23031: <==negation-removal== 11153 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #30925: <==negation-removal== 77163 (pos)
                    (not (Pc_not_checked_p3))

                    ; #52550: <==uncertain_firing== 89968 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #54570: <==negation-removal== 49038 (pos)
                    (not (Bc_not_checked_p3))

                    ; #55327: <==negation-removal== 13144 (pos)
                    (not (Pb_not_checked_p3))

                    ; #72579: <==uncertain_firing== 11153 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #78472: <==uncertain_firing== 17717 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #79051: <==negation-removal== 14535 (pos)
                    (not (Bb_not_checked_p3))

                    ; #79958: <==uncertain_firing== 51232 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #80936: <==negation-removal== 15884 (pos)
                    (not (Pa_not_checked_p3))

                    ; #85785: <==negation-removal== 41559 (pos)
                    (not (Ba_not_checked_p3))

                    ; #85833: <==negation-removal== 89968 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #91523: <==negation-removal== 48779 (pos)
                    (not (not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #31993: <==commonly_known== 84380 (neg)
                    (Pb_checked_p4)

                    ; #44276: <==closure== 94962 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #45496: <==commonly_known== 84380 (neg)
                    (Pc_checked_p4)

                    ; #50347: <==commonly_known== 84380 (neg)
                    (Pa_checked_p4)

                    ; #56399: <==closure== 77460 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #61934: <==commonly_known== 71130 (pos)
                    (Bb_checked_p4)

                    ; #69585: <==commonly_known== 71130 (pos)
                    (Bc_checked_p4)

                    ; #71130: origin
                    (checked_p4)

                    ; #77460: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #86661: <==commonly_known== 71130 (pos)
                    (Ba_checked_p4)

                    ; #94962: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #11915: <==negation-removal== 77460 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #20310: <==uncertain_firing== 56399 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #24151: <==uncertain_firing== 77460 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #26362: <==negation-removal== 61934 (pos)
                    (not (Pb_not_checked_p4))

                    ; #51101: <==uncertain_firing== 44276 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #54405: <==negation-removal== 31993 (pos)
                    (not (Bb_not_checked_p4))

                    ; #54938: <==uncertain_firing== 94962 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #56914: <==negation-removal== 45496 (pos)
                    (not (Bc_not_checked_p4))

                    ; #69522: <==negation-removal== 86661 (pos)
                    (not (Pa_not_checked_p4))

                    ; #70402: <==negation-removal== 50347 (pos)
                    (not (Ba_not_checked_p4))

                    ; #74088: <==negation-removal== 56399 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #83361: <==negation-removal== 44276 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #84380: <==negation-removal== 71130 (pos)
                    (not (not_checked_p4))

                    ; #86041: <==negation-removal== 69585 (pos)
                    (not (Pc_not_checked_p4))

                    ; #91135: <==negation-removal== 94962 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12410: <==commonly_known== 86258 (pos)
                    (Bb_checked_p5)

                    ; #20395: <==closure== 56872 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #22080: <==commonly_known== 16089 (neg)
                    (Pb_checked_p5)

                    ; #23611: <==commonly_known== 16089 (neg)
                    (Pc_checked_p5)

                    ; #24802: <==commonly_known== 16089 (neg)
                    (Pa_checked_p5)

                    ; #25763: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #33793: <==commonly_known== 86258 (pos)
                    (Ba_checked_p5)

                    ; #56872: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #79280: <==commonly_known== 86258 (pos)
                    (Bc_checked_p5)

                    ; #82690: <==closure== 25763 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #86258: origin
                    (checked_p5)

                    ; #16089: <==negation-removal== 86258 (pos)
                    (not (not_checked_p5))

                    ; #30812: <==negation-removal== 24802 (pos)
                    (not (Ba_not_checked_p5))

                    ; #44314: <==uncertain_firing== 56872 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #44528: <==negation-removal== 12410 (pos)
                    (not (Pb_not_checked_p5))

                    ; #47649: <==negation-removal== 56872 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #59825: <==negation-removal== 25763 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #66475: <==uncertain_firing== 20395 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #71352: <==negation-removal== 79280 (pos)
                    (not (Pc_not_checked_p5))

                    ; #72726: <==negation-removal== 82690 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #77305: <==negation-removal== 23611 (pos)
                    (not (Bc_not_checked_p5))

                    ; #79078: <==negation-removal== 22080 (pos)
                    (not (Bb_not_checked_p5))

                    ; #83833: <==uncertain_firing== 25763 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #87703: <==uncertain_firing== 82690 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #90207: <==negation-removal== 20395 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #90618: <==negation-removal== 33793 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #23006: <==commonly_known== 44999 (pos)
                    (Bb_checked_p6)

                    ; #34312: <==commonly_known== 44999 (pos)
                    (Bc_checked_p6)

                    ; #34429: <==commonly_known== 44999 (pos)
                    (Ba_checked_p6)

                    ; #44999: origin
                    (checked_p6)

                    ; #47995: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #49475: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #55916: <==commonly_known== 85838 (neg)
                    (Pb_checked_p6)

                    ; #60074: <==commonly_known== 85838 (neg)
                    (Pc_checked_p6)

                    ; #63223: <==closure== 47995 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #85222: <==closure== 49475 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #86842: <==commonly_known== 85838 (neg)
                    (Pa_checked_p6)

                    ; #12131: <==negation-removal== 86842 (pos)
                    (not (Ba_not_checked_p6))

                    ; #16642: <==uncertain_firing== 49475 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #16951: <==negation-removal== 23006 (pos)
                    (not (Pb_not_checked_p6))

                    ; #21414: <==negation-removal== 34312 (pos)
                    (not (Pc_not_checked_p6))

                    ; #23409: <==negation-removal== 60074 (pos)
                    (not (Bc_not_checked_p6))

                    ; #30971: <==negation-removal== 47995 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #35515: <==negation-removal== 85222 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #35528: <==negation-removal== 55916 (pos)
                    (not (Bb_not_checked_p6))

                    ; #36381: <==uncertain_firing== 63223 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #42726: <==negation-removal== 63223 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #72691: <==uncertain_firing== 85222 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #73687: <==negation-removal== 34429 (pos)
                    (not (Pa_not_checked_p6))

                    ; #75808: <==negation-removal== 49475 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #85838: <==negation-removal== 44999 (pos)
                    (not (not_checked_p6))

                    ; #91887: <==uncertain_firing== 47995 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #15803: <==closure== 82477 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #20180: <==commonly_known== 29058 (neg)
                    (Pc_checked_p7)

                    ; #21142: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #23544: <==commonly_known== 29058 (neg)
                    (Pa_checked_p7)

                    ; #34043: <==commonly_known== 56656 (pos)
                    (Ba_checked_p7)

                    ; #56344: <==commonly_known== 56656 (pos)
                    (Bb_checked_p7)

                    ; #56656: origin
                    (checked_p7)

                    ; #71483: <==closure== 21142 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #73686: <==commonly_known== 29058 (neg)
                    (Pb_checked_p7)

                    ; #82477: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #86983: <==commonly_known== 56656 (pos)
                    (Bc_checked_p7)

                    ; #14970: <==uncertain_firing== 21142 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #16938: <==negation-removal== 20180 (pos)
                    (not (Bc_not_checked_p7))

                    ; #18008: <==negation-removal== 23544 (pos)
                    (not (Ba_not_checked_p7))

                    ; #29058: <==negation-removal== 56656 (pos)
                    (not (not_checked_p7))

                    ; #29698: <==uncertain_firing== 71483 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #34635: <==negation-removal== 21142 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #42319: <==negation-removal== 73686 (pos)
                    (not (Bb_not_checked_p7))

                    ; #43090: <==negation-removal== 56344 (pos)
                    (not (Pb_not_checked_p7))

                    ; #43632: <==uncertain_firing== 82477 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #59179: <==negation-removal== 86983 (pos)
                    (not (Pc_not_checked_p7))

                    ; #59801: <==uncertain_firing== 15803 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #62069: <==negation-removal== 15803 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #70753: <==negation-removal== 82477 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #86087: <==negation-removal== 71483 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #90648: <==negation-removal== 34043 (pos)
                    (not (Pa_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #21653: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #24813: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #30192: <==commonly_known== 68314 (pos)
                    (Bb_checked_p8)

                    ; #38928: <==commonly_known== 24759 (neg)
                    (Pc_checked_p8)

                    ; #43094: <==closure== 21653 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #49496: <==closure== 24813 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #60635: <==commonly_known== 24759 (neg)
                    (Pa_checked_p8)

                    ; #63809: <==commonly_known== 24759 (neg)
                    (Pb_checked_p8)

                    ; #68314: origin
                    (checked_p8)

                    ; #70914: <==commonly_known== 68314 (pos)
                    (Bc_checked_p8)

                    ; #86714: <==commonly_known== 68314 (pos)
                    (Ba_checked_p8)

                    ; #24759: <==negation-removal== 68314 (pos)
                    (not (not_checked_p8))

                    ; #27193: <==uncertain_firing== 21653 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #30384: <==negation-removal== 38928 (pos)
                    (not (Bc_not_checked_p8))

                    ; #35532: <==uncertain_firing== 43094 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #36618: <==negation-removal== 63809 (pos)
                    (not (Bb_not_checked_p8))

                    ; #42493: <==negation-removal== 49496 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #63421: <==negation-removal== 43094 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #65310: <==uncertain_firing== 24813 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #67011: <==negation-removal== 24813 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #70443: <==negation-removal== 30192 (pos)
                    (not (Pb_not_checked_p8))

                    ; #72871: <==uncertain_firing== 49496 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #75246: <==negation-removal== 21653 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #81621: <==negation-removal== 86714 (pos)
                    (not (Pa_not_checked_p8))

                    ; #83258: <==negation-removal== 70914 (pos)
                    (not (Pc_not_checked_p8))

                    ; #88216: <==negation-removal== 60635 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #13292: <==closure== 56244 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #18495: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #21275: <==commonly_known== 68121 (pos)
                    (Bc_checked_p9)

                    ; #23794: <==commonly_known== 58906 (neg)
                    (Pc_checked_p9)

                    ; #45373: <==commonly_known== 58906 (neg)
                    (Pb_checked_p9)

                    ; #56244: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #57391: <==closure== 18495 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #68121: origin
                    (checked_p9)

                    ; #69740: <==commonly_known== 68121 (pos)
                    (Ba_checked_p9)

                    ; #86800: <==commonly_known== 58906 (neg)
                    (Pa_checked_p9)

                    ; #87827: <==commonly_known== 68121 (pos)
                    (Bb_checked_p9)

                    ; #11564: <==uncertain_firing== 13292 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #13752: <==uncertain_firing== 18495 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #19253: <==negation-removal== 21275 (pos)
                    (not (Pc_not_checked_p9))

                    ; #23067: <==negation-removal== 23794 (pos)
                    (not (Bc_not_checked_p9))

                    ; #31427: <==negation-removal== 13292 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #38074: <==uncertain_firing== 57391 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #49316: <==negation-removal== 69740 (pos)
                    (not (Pa_not_checked_p9))

                    ; #56548: <==negation-removal== 87827 (pos)
                    (not (Pb_not_checked_p9))

                    ; #58906: <==negation-removal== 68121 (pos)
                    (not (not_checked_p9))

                    ; #62677: <==negation-removal== 45373 (pos)
                    (not (Bb_not_checked_p9))

                    ; #62790: <==negation-removal== 18495 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #70370: <==negation-removal== 56244 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #77565: <==negation-removal== 86800 (pos)
                    (not (Ba_not_checked_p9))

                    ; #79489: <==uncertain_firing== 56244 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #85438: <==negation-removal== 57391 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))))

)