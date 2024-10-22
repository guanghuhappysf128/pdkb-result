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

    (:action comm_p10_a_s
        :precondition (and (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #11904: <==closure== 20889 (pos)
                    (Pc_survivorat_s_p10)

                    ; #20170: <==closure== 86706 (pos)
                    (Pb_survivorat_s_p10)

                    ; #20889: origin
                    (Bc_survivorat_s_p10)

                    ; #72001: <==closure== 74563 (pos)
                    (Pa_survivorat_s_p10)

                    ; #74563: origin
                    (Ba_survivorat_s_p10)

                    ; #86706: origin
                    (Bb_survivorat_s_p10)

                    ; #13797: <==negation-removal== 11904 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #16171: <==negation-removal== 86706 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #19749: <==negation-removal== 72001 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #24300: <==negation-removal== 74563 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #69591: <==negation-removal== 20170 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #73419: <==negation-removal== 20889 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (at_b_p10)
                           (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #11904: <==closure== 20889 (pos)
                    (Pc_survivorat_s_p10)

                    ; #20170: <==closure== 86706 (pos)
                    (Pb_survivorat_s_p10)

                    ; #20889: origin
                    (Bc_survivorat_s_p10)

                    ; #72001: <==closure== 74563 (pos)
                    (Pa_survivorat_s_p10)

                    ; #74563: origin
                    (Ba_survivorat_s_p10)

                    ; #86706: origin
                    (Bb_survivorat_s_p10)

                    ; #13797: <==negation-removal== 11904 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #16171: <==negation-removal== 86706 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #19749: <==negation-removal== 72001 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #24300: <==negation-removal== 74563 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #69591: <==negation-removal== 20170 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #73419: <==negation-removal== 20889 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (at_c_p10)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #11904: <==closure== 20889 (pos)
                    (Pc_survivorat_s_p10)

                    ; #20170: <==closure== 86706 (pos)
                    (Pb_survivorat_s_p10)

                    ; #20889: origin
                    (Bc_survivorat_s_p10)

                    ; #72001: <==closure== 74563 (pos)
                    (Pa_survivorat_s_p10)

                    ; #74563: origin
                    (Ba_survivorat_s_p10)

                    ; #86706: origin
                    (Bb_survivorat_s_p10)

                    ; #13797: <==negation-removal== 11904 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #16171: <==negation-removal== 86706 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #19749: <==negation-removal== 72001 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #24300: <==negation-removal== 74563 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #69591: <==negation-removal== 20170 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #73419: <==negation-removal== 20889 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Pa_survivorat_s_p11)
                           (at_a_p11)
                           (Ba_survivorat_s_p11))
        :effect (and
                    ; #30195: <==closure== 68461 (pos)
                    (Pb_survivorat_s_p11)

                    ; #34631: <==closure== 61055 (pos)
                    (Pc_survivorat_s_p11)

                    ; #53702: <==closure== 65624 (pos)
                    (Pa_survivorat_s_p11)

                    ; #61055: origin
                    (Bc_survivorat_s_p11)

                    ; #65624: origin
                    (Ba_survivorat_s_p11)

                    ; #68461: origin
                    (Bb_survivorat_s_p11)

                    ; #44692: <==negation-removal== 30195 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #63820: <==negation-removal== 53702 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #72376: <==negation-removal== 34631 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #75576: <==negation-removal== 65624 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #77409: <==negation-removal== 68461 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #81625: <==negation-removal== 61055 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #30195: <==closure== 68461 (pos)
                    (Pb_survivorat_s_p11)

                    ; #34631: <==closure== 61055 (pos)
                    (Pc_survivorat_s_p11)

                    ; #53702: <==closure== 65624 (pos)
                    (Pa_survivorat_s_p11)

                    ; #61055: origin
                    (Bc_survivorat_s_p11)

                    ; #65624: origin
                    (Ba_survivorat_s_p11)

                    ; #68461: origin
                    (Bb_survivorat_s_p11)

                    ; #44692: <==negation-removal== 30195 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #63820: <==negation-removal== 53702 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #72376: <==negation-removal== 34631 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #75576: <==negation-removal== 65624 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #77409: <==negation-removal== 68461 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #81625: <==negation-removal== 61055 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (at_c_p11)
                           (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #30195: <==closure== 68461 (pos)
                    (Pb_survivorat_s_p11)

                    ; #34631: <==closure== 61055 (pos)
                    (Pc_survivorat_s_p11)

                    ; #53702: <==closure== 65624 (pos)
                    (Pa_survivorat_s_p11)

                    ; #61055: origin
                    (Bc_survivorat_s_p11)

                    ; #65624: origin
                    (Ba_survivorat_s_p11)

                    ; #68461: origin
                    (Bb_survivorat_s_p11)

                    ; #44692: <==negation-removal== 30195 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #63820: <==negation-removal== 53702 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #72376: <==negation-removal== 34631 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #75576: <==negation-removal== 65624 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #77409: <==negation-removal== 68461 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #81625: <==negation-removal== 61055 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #38386: <==closure== 89159 (pos)
                    (Pc_survivorat_s_p12)

                    ; #51210: origin
                    (Bb_survivorat_s_p12)

                    ; #54506: <==closure== 51210 (pos)
                    (Pb_survivorat_s_p12)

                    ; #58684: <==closure== 86240 (pos)
                    (Pa_survivorat_s_p12)

                    ; #86240: origin
                    (Ba_survivorat_s_p12)

                    ; #89159: origin
                    (Bc_survivorat_s_p12)

                    ; #16912: <==negation-removal== 51210 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #29186: <==negation-removal== 86240 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #55417: <==negation-removal== 54506 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #65640: <==negation-removal== 38386 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #89567: <==negation-removal== 58684 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #91236: <==negation-removal== 89159 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #38386: <==closure== 89159 (pos)
                    (Pc_survivorat_s_p12)

                    ; #51210: origin
                    (Bb_survivorat_s_p12)

                    ; #54506: <==closure== 51210 (pos)
                    (Pb_survivorat_s_p12)

                    ; #58684: <==closure== 86240 (pos)
                    (Pa_survivorat_s_p12)

                    ; #86240: origin
                    (Ba_survivorat_s_p12)

                    ; #89159: origin
                    (Bc_survivorat_s_p12)

                    ; #16912: <==negation-removal== 51210 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #29186: <==negation-removal== 86240 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #55417: <==negation-removal== 54506 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #65640: <==negation-removal== 38386 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #89567: <==negation-removal== 58684 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #91236: <==negation-removal== 89159 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #38386: <==closure== 89159 (pos)
                    (Pc_survivorat_s_p12)

                    ; #51210: origin
                    (Bb_survivorat_s_p12)

                    ; #54506: <==closure== 51210 (pos)
                    (Pb_survivorat_s_p12)

                    ; #58684: <==closure== 86240 (pos)
                    (Pa_survivorat_s_p12)

                    ; #86240: origin
                    (Ba_survivorat_s_p12)

                    ; #89159: origin
                    (Bc_survivorat_s_p12)

                    ; #16912: <==negation-removal== 51210 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #29186: <==negation-removal== 86240 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #55417: <==negation-removal== 54506 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #65640: <==negation-removal== 38386 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #89567: <==negation-removal== 58684 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #91236: <==negation-removal== 89159 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #59806: <==closure== 68715 (pos)
                    (Pc_survivorat_s_p1)

                    ; #59965: <==closure== 82035 (pos)
                    (Pa_survivorat_s_p1)

                    ; #68715: origin
                    (Bc_survivorat_s_p1)

                    ; #77605: <==closure== 77811 (pos)
                    (Pb_survivorat_s_p1)

                    ; #77811: origin
                    (Bb_survivorat_s_p1)

                    ; #82035: origin
                    (Ba_survivorat_s_p1)

                    ; #17130: <==negation-removal== 77811 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #47498: <==negation-removal== 59806 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #52737: <==negation-removal== 59965 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #55653: <==negation-removal== 68715 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #66565: <==negation-removal== 77605 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #91731: <==negation-removal== 82035 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #59806: <==closure== 68715 (pos)
                    (Pc_survivorat_s_p1)

                    ; #59965: <==closure== 82035 (pos)
                    (Pa_survivorat_s_p1)

                    ; #68715: origin
                    (Bc_survivorat_s_p1)

                    ; #77605: <==closure== 77811 (pos)
                    (Pb_survivorat_s_p1)

                    ; #77811: origin
                    (Bb_survivorat_s_p1)

                    ; #82035: origin
                    (Ba_survivorat_s_p1)

                    ; #17130: <==negation-removal== 77811 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #47498: <==negation-removal== 59806 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #52737: <==negation-removal== 59965 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #55653: <==negation-removal== 68715 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #66565: <==negation-removal== 77605 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #91731: <==negation-removal== 82035 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #59806: <==closure== 68715 (pos)
                    (Pc_survivorat_s_p1)

                    ; #59965: <==closure== 82035 (pos)
                    (Pa_survivorat_s_p1)

                    ; #68715: origin
                    (Bc_survivorat_s_p1)

                    ; #77605: <==closure== 77811 (pos)
                    (Pb_survivorat_s_p1)

                    ; #77811: origin
                    (Bb_survivorat_s_p1)

                    ; #82035: origin
                    (Ba_survivorat_s_p1)

                    ; #17130: <==negation-removal== 77811 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #47498: <==negation-removal== 59806 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #52737: <==negation-removal== 59965 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #55653: <==negation-removal== 68715 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #66565: <==negation-removal== 77605 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #91731: <==negation-removal== 82035 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #31909: origin
                    (Bc_survivorat_s_p2)

                    ; #44178: origin
                    (Bb_survivorat_s_p2)

                    ; #54607: <==closure== 88321 (pos)
                    (Pa_survivorat_s_p2)

                    ; #81065: <==closure== 31909 (pos)
                    (Pc_survivorat_s_p2)

                    ; #88321: origin
                    (Ba_survivorat_s_p2)

                    ; #91616: <==closure== 44178 (pos)
                    (Pb_survivorat_s_p2)

                    ; #12026: <==negation-removal== 81065 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #16481: <==negation-removal== 88321 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #34804: <==negation-removal== 54607 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #41069: <==negation-removal== 91616 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #71161: <==negation-removal== 44178 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #87459: <==negation-removal== 31909 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #31909: origin
                    (Bc_survivorat_s_p2)

                    ; #44178: origin
                    (Bb_survivorat_s_p2)

                    ; #54607: <==closure== 88321 (pos)
                    (Pa_survivorat_s_p2)

                    ; #81065: <==closure== 31909 (pos)
                    (Pc_survivorat_s_p2)

                    ; #88321: origin
                    (Ba_survivorat_s_p2)

                    ; #91616: <==closure== 44178 (pos)
                    (Pb_survivorat_s_p2)

                    ; #12026: <==negation-removal== 81065 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #16481: <==negation-removal== 88321 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #34804: <==negation-removal== 54607 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #41069: <==negation-removal== 91616 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #71161: <==negation-removal== 44178 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #87459: <==negation-removal== 31909 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #31909: origin
                    (Bc_survivorat_s_p2)

                    ; #44178: origin
                    (Bb_survivorat_s_p2)

                    ; #54607: <==closure== 88321 (pos)
                    (Pa_survivorat_s_p2)

                    ; #81065: <==closure== 31909 (pos)
                    (Pc_survivorat_s_p2)

                    ; #88321: origin
                    (Ba_survivorat_s_p2)

                    ; #91616: <==closure== 44178 (pos)
                    (Pb_survivorat_s_p2)

                    ; #12026: <==negation-removal== 81065 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #16481: <==negation-removal== 88321 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #34804: <==negation-removal== 54607 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #41069: <==negation-removal== 91616 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #71161: <==negation-removal== 44178 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #87459: <==negation-removal== 31909 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #11938: origin
                    (Ba_survivorat_s_p3)

                    ; #26661: origin
                    (Bc_survivorat_s_p3)

                    ; #32316: <==closure== 26661 (pos)
                    (Pc_survivorat_s_p3)

                    ; #61204: <==closure== 63779 (pos)
                    (Pb_survivorat_s_p3)

                    ; #63779: origin
                    (Bb_survivorat_s_p3)

                    ; #81208: <==closure== 11938 (pos)
                    (Pa_survivorat_s_p3)

                    ; #21338: <==negation-removal== 11938 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #25412: <==negation-removal== 26661 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #46032: <==negation-removal== 63779 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #56994: <==negation-removal== 32316 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #64050: <==negation-removal== 81208 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #86195: <==negation-removal== 61204 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #11938: origin
                    (Ba_survivorat_s_p3)

                    ; #26661: origin
                    (Bc_survivorat_s_p3)

                    ; #32316: <==closure== 26661 (pos)
                    (Pc_survivorat_s_p3)

                    ; #61204: <==closure== 63779 (pos)
                    (Pb_survivorat_s_p3)

                    ; #63779: origin
                    (Bb_survivorat_s_p3)

                    ; #81208: <==closure== 11938 (pos)
                    (Pa_survivorat_s_p3)

                    ; #21338: <==negation-removal== 11938 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #25412: <==negation-removal== 26661 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #46032: <==negation-removal== 63779 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #56994: <==negation-removal== 32316 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #64050: <==negation-removal== 81208 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #86195: <==negation-removal== 61204 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #11938: origin
                    (Ba_survivorat_s_p3)

                    ; #26661: origin
                    (Bc_survivorat_s_p3)

                    ; #32316: <==closure== 26661 (pos)
                    (Pc_survivorat_s_p3)

                    ; #61204: <==closure== 63779 (pos)
                    (Pb_survivorat_s_p3)

                    ; #63779: origin
                    (Bb_survivorat_s_p3)

                    ; #81208: <==closure== 11938 (pos)
                    (Pa_survivorat_s_p3)

                    ; #21338: <==negation-removal== 11938 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #25412: <==negation-removal== 26661 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #46032: <==negation-removal== 63779 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #56994: <==negation-removal== 32316 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #64050: <==negation-removal== 81208 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #86195: <==negation-removal== 61204 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #18271: <==closure== 61011 (pos)
                    (Pc_survivorat_s_p4)

                    ; #35722: origin
                    (Ba_survivorat_s_p4)

                    ; #45597: origin
                    (Bb_survivorat_s_p4)

                    ; #61011: origin
                    (Bc_survivorat_s_p4)

                    ; #66865: <==closure== 35722 (pos)
                    (Pa_survivorat_s_p4)

                    ; #67166: <==closure== 45597 (pos)
                    (Pb_survivorat_s_p4)

                    ; #11375: <==negation-removal== 67166 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #26873: <==negation-removal== 45597 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #31804: <==negation-removal== 18271 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #34415: <==negation-removal== 66865 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #58937: <==negation-removal== 35722 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #84607: <==negation-removal== 61011 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #18271: <==closure== 61011 (pos)
                    (Pc_survivorat_s_p4)

                    ; #35722: origin
                    (Ba_survivorat_s_p4)

                    ; #45597: origin
                    (Bb_survivorat_s_p4)

                    ; #61011: origin
                    (Bc_survivorat_s_p4)

                    ; #66865: <==closure== 35722 (pos)
                    (Pa_survivorat_s_p4)

                    ; #67166: <==closure== 45597 (pos)
                    (Pb_survivorat_s_p4)

                    ; #11375: <==negation-removal== 67166 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #26873: <==negation-removal== 45597 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #31804: <==negation-removal== 18271 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #34415: <==negation-removal== 66865 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #58937: <==negation-removal== 35722 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #84607: <==negation-removal== 61011 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #18271: <==closure== 61011 (pos)
                    (Pc_survivorat_s_p4)

                    ; #35722: origin
                    (Ba_survivorat_s_p4)

                    ; #45597: origin
                    (Bb_survivorat_s_p4)

                    ; #61011: origin
                    (Bc_survivorat_s_p4)

                    ; #66865: <==closure== 35722 (pos)
                    (Pa_survivorat_s_p4)

                    ; #67166: <==closure== 45597 (pos)
                    (Pb_survivorat_s_p4)

                    ; #11375: <==negation-removal== 67166 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #26873: <==negation-removal== 45597 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #31804: <==negation-removal== 18271 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #34415: <==negation-removal== 66865 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #58937: <==negation-removal== 35722 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #84607: <==negation-removal== 61011 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #10163: <==closure== 66629 (pos)
                    (Pb_survivorat_s_p5)

                    ; #27233: origin
                    (Bc_survivorat_s_p5)

                    ; #51237: <==closure== 51863 (pos)
                    (Pa_survivorat_s_p5)

                    ; #51863: origin
                    (Ba_survivorat_s_p5)

                    ; #66629: origin
                    (Bb_survivorat_s_p5)

                    ; #98354: <==closure== 27233 (pos)
                    (Pc_survivorat_s_p5)

                    ; #12132: <==negation-removal== 51237 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #18280: <==negation-removal== 98354 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #23264: <==negation-removal== 10163 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #32478: <==negation-removal== 51863 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #41765: <==negation-removal== 27233 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #89027: <==negation-removal== 66629 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #10163: <==closure== 66629 (pos)
                    (Pb_survivorat_s_p5)

                    ; #27233: origin
                    (Bc_survivorat_s_p5)

                    ; #51237: <==closure== 51863 (pos)
                    (Pa_survivorat_s_p5)

                    ; #51863: origin
                    (Ba_survivorat_s_p5)

                    ; #66629: origin
                    (Bb_survivorat_s_p5)

                    ; #98354: <==closure== 27233 (pos)
                    (Pc_survivorat_s_p5)

                    ; #12132: <==negation-removal== 51237 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #18280: <==negation-removal== 98354 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #23264: <==negation-removal== 10163 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #32478: <==negation-removal== 51863 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #41765: <==negation-removal== 27233 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #89027: <==negation-removal== 66629 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #10163: <==closure== 66629 (pos)
                    (Pb_survivorat_s_p5)

                    ; #27233: origin
                    (Bc_survivorat_s_p5)

                    ; #51237: <==closure== 51863 (pos)
                    (Pa_survivorat_s_p5)

                    ; #51863: origin
                    (Ba_survivorat_s_p5)

                    ; #66629: origin
                    (Bb_survivorat_s_p5)

                    ; #98354: <==closure== 27233 (pos)
                    (Pc_survivorat_s_p5)

                    ; #12132: <==negation-removal== 51237 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #18280: <==negation-removal== 98354 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #23264: <==negation-removal== 10163 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #32478: <==negation-removal== 51863 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #41765: <==negation-removal== 27233 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #89027: <==negation-removal== 66629 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #38479: origin
                    (Bb_survivorat_s_p6)

                    ; #44174: <==closure== 83479 (pos)
                    (Pa_survivorat_s_p6)

                    ; #49484: <==closure== 59937 (pos)
                    (Pc_survivorat_s_p6)

                    ; #59937: origin
                    (Bc_survivorat_s_p6)

                    ; #83146: <==closure== 38479 (pos)
                    (Pb_survivorat_s_p6)

                    ; #83479: origin
                    (Ba_survivorat_s_p6)

                    ; #18734: <==negation-removal== 59937 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #25315: <==negation-removal== 38479 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #27099: <==negation-removal== 83479 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #42890: <==negation-removal== 44174 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #48349: <==negation-removal== 49484 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #67525: <==negation-removal== 83146 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #38479: origin
                    (Bb_survivorat_s_p6)

                    ; #44174: <==closure== 83479 (pos)
                    (Pa_survivorat_s_p6)

                    ; #49484: <==closure== 59937 (pos)
                    (Pc_survivorat_s_p6)

                    ; #59937: origin
                    (Bc_survivorat_s_p6)

                    ; #83146: <==closure== 38479 (pos)
                    (Pb_survivorat_s_p6)

                    ; #83479: origin
                    (Ba_survivorat_s_p6)

                    ; #18734: <==negation-removal== 59937 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #25315: <==negation-removal== 38479 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #27099: <==negation-removal== 83479 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #42890: <==negation-removal== 44174 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #48349: <==negation-removal== 49484 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #67525: <==negation-removal== 83146 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #38479: origin
                    (Bb_survivorat_s_p6)

                    ; #44174: <==closure== 83479 (pos)
                    (Pa_survivorat_s_p6)

                    ; #49484: <==closure== 59937 (pos)
                    (Pc_survivorat_s_p6)

                    ; #59937: origin
                    (Bc_survivorat_s_p6)

                    ; #83146: <==closure== 38479 (pos)
                    (Pb_survivorat_s_p6)

                    ; #83479: origin
                    (Ba_survivorat_s_p6)

                    ; #18734: <==negation-removal== 59937 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #25315: <==negation-removal== 38479 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #27099: <==negation-removal== 83479 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #42890: <==negation-removal== 44174 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #48349: <==negation-removal== 49484 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #67525: <==negation-removal== 83146 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #16276: origin
                    (Bc_survivorat_s_p7)

                    ; #17054: <==closure== 16276 (pos)
                    (Pc_survivorat_s_p7)

                    ; #28880: origin
                    (Bb_survivorat_s_p7)

                    ; #30443: <==closure== 28880 (pos)
                    (Pb_survivorat_s_p7)

                    ; #55427: origin
                    (Ba_survivorat_s_p7)

                    ; #87388: <==closure== 55427 (pos)
                    (Pa_survivorat_s_p7)

                    ; #32918: <==negation-removal== 30443 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #46319: <==negation-removal== 16276 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #71275: <==negation-removal== 28880 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #73315: <==negation-removal== 87388 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #86458: <==negation-removal== 55427 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #87413: <==negation-removal== 17054 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #16276: origin
                    (Bc_survivorat_s_p7)

                    ; #17054: <==closure== 16276 (pos)
                    (Pc_survivorat_s_p7)

                    ; #28880: origin
                    (Bb_survivorat_s_p7)

                    ; #30443: <==closure== 28880 (pos)
                    (Pb_survivorat_s_p7)

                    ; #55427: origin
                    (Ba_survivorat_s_p7)

                    ; #87388: <==closure== 55427 (pos)
                    (Pa_survivorat_s_p7)

                    ; #32918: <==negation-removal== 30443 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #46319: <==negation-removal== 16276 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #71275: <==negation-removal== 28880 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #73315: <==negation-removal== 87388 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #86458: <==negation-removal== 55427 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #87413: <==negation-removal== 17054 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #16276: origin
                    (Bc_survivorat_s_p7)

                    ; #17054: <==closure== 16276 (pos)
                    (Pc_survivorat_s_p7)

                    ; #28880: origin
                    (Bb_survivorat_s_p7)

                    ; #30443: <==closure== 28880 (pos)
                    (Pb_survivorat_s_p7)

                    ; #55427: origin
                    (Ba_survivorat_s_p7)

                    ; #87388: <==closure== 55427 (pos)
                    (Pa_survivorat_s_p7)

                    ; #32918: <==negation-removal== 30443 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #46319: <==negation-removal== 16276 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #71275: <==negation-removal== 28880 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #73315: <==negation-removal== 87388 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #86458: <==negation-removal== 55427 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #87413: <==negation-removal== 17054 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #22441: origin
                    (Bb_survivorat_s_p8)

                    ; #42087: <==closure== 77765 (pos)
                    (Pc_survivorat_s_p8)

                    ; #71942: <==closure== 22441 (pos)
                    (Pb_survivorat_s_p8)

                    ; #77765: origin
                    (Bc_survivorat_s_p8)

                    ; #78071: origin
                    (Ba_survivorat_s_p8)

                    ; #91211: <==closure== 78071 (pos)
                    (Pa_survivorat_s_p8)

                    ; #17990: <==negation-removal== 22441 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #31744: <==negation-removal== 71942 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #41458: <==negation-removal== 91211 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #43116: <==negation-removal== 77765 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #50508: <==negation-removal== 42087 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #83266: <==negation-removal== 78071 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #22441: origin
                    (Bb_survivorat_s_p8)

                    ; #42087: <==closure== 77765 (pos)
                    (Pc_survivorat_s_p8)

                    ; #71942: <==closure== 22441 (pos)
                    (Pb_survivorat_s_p8)

                    ; #77765: origin
                    (Bc_survivorat_s_p8)

                    ; #78071: origin
                    (Ba_survivorat_s_p8)

                    ; #91211: <==closure== 78071 (pos)
                    (Pa_survivorat_s_p8)

                    ; #17990: <==negation-removal== 22441 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #31744: <==negation-removal== 71942 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #41458: <==negation-removal== 91211 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #43116: <==negation-removal== 77765 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #50508: <==negation-removal== 42087 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #83266: <==negation-removal== 78071 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #22441: origin
                    (Bb_survivorat_s_p8)

                    ; #42087: <==closure== 77765 (pos)
                    (Pc_survivorat_s_p8)

                    ; #71942: <==closure== 22441 (pos)
                    (Pb_survivorat_s_p8)

                    ; #77765: origin
                    (Bc_survivorat_s_p8)

                    ; #78071: origin
                    (Ba_survivorat_s_p8)

                    ; #91211: <==closure== 78071 (pos)
                    (Pa_survivorat_s_p8)

                    ; #17990: <==negation-removal== 22441 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #31744: <==negation-removal== 71942 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #41458: <==negation-removal== 91211 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #43116: <==negation-removal== 77765 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #50508: <==negation-removal== 42087 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #83266: <==negation-removal== 78071 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #10766: origin
                    (Ba_survivorat_s_p9)

                    ; #64045: origin
                    (Bc_survivorat_s_p9)

                    ; #67585: origin
                    (Bb_survivorat_s_p9)

                    ; #69866: <==closure== 67585 (pos)
                    (Pb_survivorat_s_p9)

                    ; #77149: <==closure== 10766 (pos)
                    (Pa_survivorat_s_p9)

                    ; #88090: <==closure== 64045 (pos)
                    (Pc_survivorat_s_p9)

                    ; #26930: <==negation-removal== 64045 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #27021: <==negation-removal== 77149 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #42798: <==negation-removal== 10766 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #60383: <==negation-removal== 69866 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #71727: <==negation-removal== 67585 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #81721: <==negation-removal== 88090 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #10766: origin
                    (Ba_survivorat_s_p9)

                    ; #64045: origin
                    (Bc_survivorat_s_p9)

                    ; #67585: origin
                    (Bb_survivorat_s_p9)

                    ; #69866: <==closure== 67585 (pos)
                    (Pb_survivorat_s_p9)

                    ; #77149: <==closure== 10766 (pos)
                    (Pa_survivorat_s_p9)

                    ; #88090: <==closure== 64045 (pos)
                    (Pc_survivorat_s_p9)

                    ; #26930: <==negation-removal== 64045 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #27021: <==negation-removal== 77149 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #42798: <==negation-removal== 10766 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #60383: <==negation-removal== 69866 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #71727: <==negation-removal== 67585 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #81721: <==negation-removal== 88090 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #10766: origin
                    (Ba_survivorat_s_p9)

                    ; #64045: origin
                    (Bc_survivorat_s_p9)

                    ; #67585: origin
                    (Bb_survivorat_s_p9)

                    ; #69866: <==closure== 67585 (pos)
                    (Pb_survivorat_s_p9)

                    ; #77149: <==closure== 10766 (pos)
                    (Pa_survivorat_s_p9)

                    ; #88090: <==closure== 64045 (pos)
                    (Pc_survivorat_s_p9)

                    ; #26930: <==negation-removal== 64045 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #27021: <==negation-removal== 77149 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #42798: <==negation-removal== 10766 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #60383: <==negation-removal== 69866 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #71727: <==negation-removal== 67585 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #81721: <==negation-removal== 88090 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #79167: origin
                    (at_a_p1)

                    ; #86964: origin
                    (not_at_a_p10)

                    ; #78156: <==negation-removal== 86964 (pos)
                    (not (at_a_p10))

                    ; #92785: <==negation-removal== 79167 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #78156: origin
                    (at_a_p10)

                    ; #86964: origin
                    (not_at_a_p10)

                    ; #78156: <==negation-removal== 86964 (pos)
                    (not (at_a_p10))

                    ; #86964: <==negation-removal== 78156 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #11937: origin
                    (at_a_p11)

                    ; #86964: origin
                    (not_at_a_p10)

                    ; #63709: <==negation-removal== 11937 (pos)
                    (not (not_at_a_p11))

                    ; #78156: <==negation-removal== 86964 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #49481: origin
                    (at_a_p12)

                    ; #86964: origin
                    (not_at_a_p10)

                    ; #78156: <==negation-removal== 86964 (pos)
                    (not (at_a_p10))

                    ; #82946: <==negation-removal== 49481 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10))
        :effect (and
                    ; #50663: origin
                    (at_a_p2)

                    ; #86964: origin
                    (not_at_a_p10)

                    ; #40811: <==negation-removal== 50663 (pos)
                    (not (not_at_a_p2))

                    ; #78156: <==negation-removal== 86964 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10))
        :effect (and
                    ; #76606: origin
                    (at_a_p3)

                    ; #86964: origin
                    (not_at_a_p10)

                    ; #78009: <==negation-removal== 76606 (pos)
                    (not (not_at_a_p3))

                    ; #78156: <==negation-removal== 86964 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #51221: origin
                    (at_a_p4)

                    ; #86964: origin
                    (not_at_a_p10)

                    ; #78156: <==negation-removal== 86964 (pos)
                    (not (at_a_p10))

                    ; #82599: <==negation-removal== 51221 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (at_a_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #55108: origin
                    (at_a_p5)

                    ; #86964: origin
                    (not_at_a_p10)

                    ; #57802: <==negation-removal== 55108 (pos)
                    (not (not_at_a_p5))

                    ; #78156: <==negation-removal== 86964 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10))
        :effect (and
                    ; #86964: origin
                    (not_at_a_p10)

                    ; #93091: origin
                    (at_a_p6)

                    ; #25743: <==negation-removal== 93091 (pos)
                    (not (not_at_a_p6))

                    ; #78156: <==negation-removal== 86964 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #84569: origin
                    (at_a_p7)

                    ; #86964: origin
                    (not_at_a_p10)

                    ; #32740: <==negation-removal== 84569 (pos)
                    (not (not_at_a_p7))

                    ; #78156: <==negation-removal== 86964 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p8
        :precondition (and (at_a_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #39174: origin
                    (at_a_p8)

                    ; #86964: origin
                    (not_at_a_p10)

                    ; #64570: <==negation-removal== 39174 (pos)
                    (not (not_at_a_p8))

                    ; #78156: <==negation-removal== 86964 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #74891: origin
                    (at_a_p9)

                    ; #86964: origin
                    (not_at_a_p10)

                    ; #44363: <==negation-removal== 74891 (pos)
                    (not (not_at_a_p9))

                    ; #78156: <==negation-removal== 86964 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11))
        :effect (and
                    ; #63709: origin
                    (not_at_a_p11)

                    ; #79167: origin
                    (at_a_p1)

                    ; #11937: <==negation-removal== 63709 (pos)
                    (not (at_a_p11))

                    ; #92785: <==negation-removal== 79167 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_a_p11))
        :effect (and
                    ; #63709: origin
                    (not_at_a_p11)

                    ; #78156: origin
                    (at_a_p10)

                    ; #11937: <==negation-removal== 63709 (pos)
                    (not (at_a_p11))

                    ; #86964: <==negation-removal== 78156 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_a_p11))
        :effect (and
                    ; #11937: origin
                    (at_a_p11)

                    ; #63709: origin
                    (not_at_a_p11)

                    ; #11937: <==negation-removal== 63709 (pos)
                    (not (at_a_p11))

                    ; #63709: <==negation-removal== 11937 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11))
        :effect (and
                    ; #49481: origin
                    (at_a_p12)

                    ; #63709: origin
                    (not_at_a_p11)

                    ; #11937: <==negation-removal== 63709 (pos)
                    (not (at_a_p11))

                    ; #82946: <==negation-removal== 49481 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_a_p11))
        :effect (and
                    ; #50663: origin
                    (at_a_p2)

                    ; #63709: origin
                    (not_at_a_p11)

                    ; #11937: <==negation-removal== 63709 (pos)
                    (not (at_a_p11))

                    ; #40811: <==negation-removal== 50663 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_a_p11))
        :effect (and
                    ; #63709: origin
                    (not_at_a_p11)

                    ; #76606: origin
                    (at_a_p3)

                    ; #11937: <==negation-removal== 63709 (pos)
                    (not (at_a_p11))

                    ; #78009: <==negation-removal== 76606 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11))
        :effect (and
                    ; #51221: origin
                    (at_a_p4)

                    ; #63709: origin
                    (not_at_a_p11)

                    ; #11937: <==negation-removal== 63709 (pos)
                    (not (at_a_p11))

                    ; #82599: <==negation-removal== 51221 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #55108: origin
                    (at_a_p5)

                    ; #63709: origin
                    (not_at_a_p11)

                    ; #11937: <==negation-removal== 63709 (pos)
                    (not (at_a_p11))

                    ; #57802: <==negation-removal== 55108 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_a_p11))
        :effect (and
                    ; #63709: origin
                    (not_at_a_p11)

                    ; #93091: origin
                    (at_a_p6)

                    ; #11937: <==negation-removal== 63709 (pos)
                    (not (at_a_p11))

                    ; #25743: <==negation-removal== 93091 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_a_p11))
        :effect (and
                    ; #63709: origin
                    (not_at_a_p11)

                    ; #84569: origin
                    (at_a_p7)

                    ; #11937: <==negation-removal== 63709 (pos)
                    (not (at_a_p11))

                    ; #32740: <==negation-removal== 84569 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11))
        :effect (and
                    ; #39174: origin
                    (at_a_p8)

                    ; #63709: origin
                    (not_at_a_p11)

                    ; #11937: <==negation-removal== 63709 (pos)
                    (not (at_a_p11))

                    ; #64570: <==negation-removal== 39174 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11))
        :effect (and
                    ; #63709: origin
                    (not_at_a_p11)

                    ; #74891: origin
                    (at_a_p9)

                    ; #11937: <==negation-removal== 63709 (pos)
                    (not (at_a_p11))

                    ; #44363: <==negation-removal== 74891 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12))
        :effect (and
                    ; #79167: origin
                    (at_a_p1)

                    ; #82946: origin
                    (not_at_a_p12)

                    ; #49481: <==negation-removal== 82946 (pos)
                    (not (at_a_p12))

                    ; #92785: <==negation-removal== 79167 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #78156: origin
                    (at_a_p10)

                    ; #82946: origin
                    (not_at_a_p12)

                    ; #49481: <==negation-removal== 82946 (pos)
                    (not (at_a_p12))

                    ; #86964: <==negation-removal== 78156 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12))
        :effect (and
                    ; #11937: origin
                    (at_a_p11)

                    ; #82946: origin
                    (not_at_a_p12)

                    ; #49481: <==negation-removal== 82946 (pos)
                    (not (at_a_p12))

                    ; #63709: <==negation-removal== 11937 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (at_a_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #49481: origin
                    (at_a_p12)

                    ; #82946: origin
                    (not_at_a_p12)

                    ; #49481: <==negation-removal== 82946 (pos)
                    (not (at_a_p12))

                    ; #82946: <==negation-removal== 49481 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12))
        :effect (and
                    ; #50663: origin
                    (at_a_p2)

                    ; #82946: origin
                    (not_at_a_p12)

                    ; #40811: <==negation-removal== 50663 (pos)
                    (not (not_at_a_p2))

                    ; #49481: <==negation-removal== 82946 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #76606: origin
                    (at_a_p3)

                    ; #82946: origin
                    (not_at_a_p12)

                    ; #49481: <==negation-removal== 82946 (pos)
                    (not (at_a_p12))

                    ; #78009: <==negation-removal== 76606 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p12_p4
        :precondition (and (at_a_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #51221: origin
                    (at_a_p4)

                    ; #82946: origin
                    (not_at_a_p12)

                    ; #49481: <==negation-removal== 82946 (pos)
                    (not (at_a_p12))

                    ; #82599: <==negation-removal== 51221 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (at_a_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #55108: origin
                    (at_a_p5)

                    ; #82946: origin
                    (not_at_a_p12)

                    ; #49481: <==negation-removal== 82946 (pos)
                    (not (at_a_p12))

                    ; #57802: <==negation-removal== 55108 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #82946: origin
                    (not_at_a_p12)

                    ; #93091: origin
                    (at_a_p6)

                    ; #25743: <==negation-removal== 93091 (pos)
                    (not (not_at_a_p6))

                    ; #49481: <==negation-removal== 82946 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (at_a_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #82946: origin
                    (not_at_a_p12)

                    ; #84569: origin
                    (at_a_p7)

                    ; #32740: <==negation-removal== 84569 (pos)
                    (not (not_at_a_p7))

                    ; #49481: <==negation-removal== 82946 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12))
        :effect (and
                    ; #39174: origin
                    (at_a_p8)

                    ; #82946: origin
                    (not_at_a_p12)

                    ; #49481: <==negation-removal== 82946 (pos)
                    (not (at_a_p12))

                    ; #64570: <==negation-removal== 39174 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (at_a_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #74891: origin
                    (at_a_p9)

                    ; #82946: origin
                    (not_at_a_p12)

                    ; #44363: <==negation-removal== 74891 (pos)
                    (not (not_at_a_p9))

                    ; #49481: <==negation-removal== 82946 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #79167: origin
                    (at_a_p1)

                    ; #92785: origin
                    (not_at_a_p1)

                    ; #79167: <==negation-removal== 92785 (pos)
                    (not (at_a_p1))

                    ; #92785: <==negation-removal== 79167 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1))
        :effect (and
                    ; #78156: origin
                    (at_a_p10)

                    ; #92785: origin
                    (not_at_a_p1)

                    ; #79167: <==negation-removal== 92785 (pos)
                    (not (at_a_p1))

                    ; #86964: <==negation-removal== 78156 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1))
        :effect (and
                    ; #11937: origin
                    (at_a_p11)

                    ; #92785: origin
                    (not_at_a_p1)

                    ; #63709: <==negation-removal== 11937 (pos)
                    (not (not_at_a_p11))

                    ; #79167: <==negation-removal== 92785 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1))
        :effect (and
                    ; #49481: origin
                    (at_a_p12)

                    ; #92785: origin
                    (not_at_a_p1)

                    ; #79167: <==negation-removal== 92785 (pos)
                    (not (at_a_p1))

                    ; #82946: <==negation-removal== 49481 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #50663: origin
                    (at_a_p2)

                    ; #92785: origin
                    (not_at_a_p1)

                    ; #40811: <==negation-removal== 50663 (pos)
                    (not (not_at_a_p2))

                    ; #79167: <==negation-removal== 92785 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #76606: origin
                    (at_a_p3)

                    ; #92785: origin
                    (not_at_a_p1)

                    ; #78009: <==negation-removal== 76606 (pos)
                    (not (not_at_a_p3))

                    ; #79167: <==negation-removal== 92785 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #51221: origin
                    (at_a_p4)

                    ; #92785: origin
                    (not_at_a_p1)

                    ; #79167: <==negation-removal== 92785 (pos)
                    (not (at_a_p1))

                    ; #82599: <==negation-removal== 51221 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #55108: origin
                    (at_a_p5)

                    ; #92785: origin
                    (not_at_a_p1)

                    ; #57802: <==negation-removal== 55108 (pos)
                    (not (not_at_a_p5))

                    ; #79167: <==negation-removal== 92785 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #92785: origin
                    (not_at_a_p1)

                    ; #93091: origin
                    (at_a_p6)

                    ; #25743: <==negation-removal== 93091 (pos)
                    (not (not_at_a_p6))

                    ; #79167: <==negation-removal== 92785 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #84569: origin
                    (at_a_p7)

                    ; #92785: origin
                    (not_at_a_p1)

                    ; #32740: <==negation-removal== 84569 (pos)
                    (not (not_at_a_p7))

                    ; #79167: <==negation-removal== 92785 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #39174: origin
                    (at_a_p8)

                    ; #92785: origin
                    (not_at_a_p1)

                    ; #64570: <==negation-removal== 39174 (pos)
                    (not (not_at_a_p8))

                    ; #79167: <==negation-removal== 92785 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #74891: origin
                    (at_a_p9)

                    ; #92785: origin
                    (not_at_a_p1)

                    ; #44363: <==negation-removal== 74891 (pos)
                    (not (not_at_a_p9))

                    ; #79167: <==negation-removal== 92785 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #40811: origin
                    (not_at_a_p2)

                    ; #79167: origin
                    (at_a_p1)

                    ; #50663: <==negation-removal== 40811 (pos)
                    (not (at_a_p2))

                    ; #92785: <==negation-removal== 79167 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (at_a_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #40811: origin
                    (not_at_a_p2)

                    ; #78156: origin
                    (at_a_p10)

                    ; #50663: <==negation-removal== 40811 (pos)
                    (not (at_a_p2))

                    ; #86964: <==negation-removal== 78156 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2))
        :effect (and
                    ; #11937: origin
                    (at_a_p11)

                    ; #40811: origin
                    (not_at_a_p2)

                    ; #50663: <==negation-removal== 40811 (pos)
                    (not (at_a_p2))

                    ; #63709: <==negation-removal== 11937 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #40811: origin
                    (not_at_a_p2)

                    ; #49481: origin
                    (at_a_p12)

                    ; #50663: <==negation-removal== 40811 (pos)
                    (not (at_a_p2))

                    ; #82946: <==negation-removal== 49481 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #40811: origin
                    (not_at_a_p2)

                    ; #50663: origin
                    (at_a_p2)

                    ; #40811: <==negation-removal== 50663 (pos)
                    (not (not_at_a_p2))

                    ; #50663: <==negation-removal== 40811 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #40811: origin
                    (not_at_a_p2)

                    ; #76606: origin
                    (at_a_p3)

                    ; #50663: <==negation-removal== 40811 (pos)
                    (not (at_a_p2))

                    ; #78009: <==negation-removal== 76606 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #40811: origin
                    (not_at_a_p2)

                    ; #51221: origin
                    (at_a_p4)

                    ; #50663: <==negation-removal== 40811 (pos)
                    (not (at_a_p2))

                    ; #82599: <==negation-removal== 51221 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #40811: origin
                    (not_at_a_p2)

                    ; #55108: origin
                    (at_a_p5)

                    ; #50663: <==negation-removal== 40811 (pos)
                    (not (at_a_p2))

                    ; #57802: <==negation-removal== 55108 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #40811: origin
                    (not_at_a_p2)

                    ; #93091: origin
                    (at_a_p6)

                    ; #25743: <==negation-removal== 93091 (pos)
                    (not (not_at_a_p6))

                    ; #50663: <==negation-removal== 40811 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #40811: origin
                    (not_at_a_p2)

                    ; #84569: origin
                    (at_a_p7)

                    ; #32740: <==negation-removal== 84569 (pos)
                    (not (not_at_a_p7))

                    ; #50663: <==negation-removal== 40811 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #39174: origin
                    (at_a_p8)

                    ; #40811: origin
                    (not_at_a_p2)

                    ; #50663: <==negation-removal== 40811 (pos)
                    (not (at_a_p2))

                    ; #64570: <==negation-removal== 39174 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #40811: origin
                    (not_at_a_p2)

                    ; #74891: origin
                    (at_a_p9)

                    ; #44363: <==negation-removal== 74891 (pos)
                    (not (not_at_a_p9))

                    ; #50663: <==negation-removal== 40811 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #78009: origin
                    (not_at_a_p3)

                    ; #79167: origin
                    (at_a_p1)

                    ; #76606: <==negation-removal== 78009 (pos)
                    (not (at_a_p3))

                    ; #92785: <==negation-removal== 79167 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3))
        :effect (and
                    ; #78009: origin
                    (not_at_a_p3)

                    ; #78156: origin
                    (at_a_p10)

                    ; #76606: <==negation-removal== 78009 (pos)
                    (not (at_a_p3))

                    ; #86964: <==negation-removal== 78156 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #11937: origin
                    (at_a_p11)

                    ; #78009: origin
                    (not_at_a_p3)

                    ; #63709: <==negation-removal== 11937 (pos)
                    (not (not_at_a_p11))

                    ; #76606: <==negation-removal== 78009 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3))
        :effect (and
                    ; #49481: origin
                    (at_a_p12)

                    ; #78009: origin
                    (not_at_a_p3)

                    ; #76606: <==negation-removal== 78009 (pos)
                    (not (at_a_p3))

                    ; #82946: <==negation-removal== 49481 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #50663: origin
                    (at_a_p2)

                    ; #78009: origin
                    (not_at_a_p3)

                    ; #40811: <==negation-removal== 50663 (pos)
                    (not (not_at_a_p2))

                    ; #76606: <==negation-removal== 78009 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #76606: origin
                    (at_a_p3)

                    ; #78009: origin
                    (not_at_a_p3)

                    ; #76606: <==negation-removal== 78009 (pos)
                    (not (at_a_p3))

                    ; #78009: <==negation-removal== 76606 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #51221: origin
                    (at_a_p4)

                    ; #78009: origin
                    (not_at_a_p3)

                    ; #76606: <==negation-removal== 78009 (pos)
                    (not (at_a_p3))

                    ; #82599: <==negation-removal== 51221 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #55108: origin
                    (at_a_p5)

                    ; #78009: origin
                    (not_at_a_p3)

                    ; #57802: <==negation-removal== 55108 (pos)
                    (not (not_at_a_p5))

                    ; #76606: <==negation-removal== 78009 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #78009: origin
                    (not_at_a_p3)

                    ; #93091: origin
                    (at_a_p6)

                    ; #25743: <==negation-removal== 93091 (pos)
                    (not (not_at_a_p6))

                    ; #76606: <==negation-removal== 78009 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #78009: origin
                    (not_at_a_p3)

                    ; #84569: origin
                    (at_a_p7)

                    ; #32740: <==negation-removal== 84569 (pos)
                    (not (not_at_a_p7))

                    ; #76606: <==negation-removal== 78009 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #39174: origin
                    (at_a_p8)

                    ; #78009: origin
                    (not_at_a_p3)

                    ; #64570: <==negation-removal== 39174 (pos)
                    (not (not_at_a_p8))

                    ; #76606: <==negation-removal== 78009 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #74891: origin
                    (at_a_p9)

                    ; #78009: origin
                    (not_at_a_p3)

                    ; #44363: <==negation-removal== 74891 (pos)
                    (not (not_at_a_p9))

                    ; #76606: <==negation-removal== 78009 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #79167: origin
                    (at_a_p1)

                    ; #82599: origin
                    (not_at_a_p4)

                    ; #51221: <==negation-removal== 82599 (pos)
                    (not (at_a_p4))

                    ; #92785: <==negation-removal== 79167 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #78156: origin
                    (at_a_p10)

                    ; #82599: origin
                    (not_at_a_p4)

                    ; #51221: <==negation-removal== 82599 (pos)
                    (not (at_a_p4))

                    ; #86964: <==negation-removal== 78156 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4))
        :effect (and
                    ; #11937: origin
                    (at_a_p11)

                    ; #82599: origin
                    (not_at_a_p4)

                    ; #51221: <==negation-removal== 82599 (pos)
                    (not (at_a_p4))

                    ; #63709: <==negation-removal== 11937 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #49481: origin
                    (at_a_p12)

                    ; #82599: origin
                    (not_at_a_p4)

                    ; #51221: <==negation-removal== 82599 (pos)
                    (not (at_a_p4))

                    ; #82946: <==negation-removal== 49481 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #50663: origin
                    (at_a_p2)

                    ; #82599: origin
                    (not_at_a_p4)

                    ; #40811: <==negation-removal== 50663 (pos)
                    (not (not_at_a_p2))

                    ; #51221: <==negation-removal== 82599 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #76606: origin
                    (at_a_p3)

                    ; #82599: origin
                    (not_at_a_p4)

                    ; #51221: <==negation-removal== 82599 (pos)
                    (not (at_a_p4))

                    ; #78009: <==negation-removal== 76606 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #51221: origin
                    (at_a_p4)

                    ; #82599: origin
                    (not_at_a_p4)

                    ; #51221: <==negation-removal== 82599 (pos)
                    (not (at_a_p4))

                    ; #82599: <==negation-removal== 51221 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #55108: origin
                    (at_a_p5)

                    ; #82599: origin
                    (not_at_a_p4)

                    ; #51221: <==negation-removal== 82599 (pos)
                    (not (at_a_p4))

                    ; #57802: <==negation-removal== 55108 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #82599: origin
                    (not_at_a_p4)

                    ; #93091: origin
                    (at_a_p6)

                    ; #25743: <==negation-removal== 93091 (pos)
                    (not (not_at_a_p6))

                    ; #51221: <==negation-removal== 82599 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #82599: origin
                    (not_at_a_p4)

                    ; #84569: origin
                    (at_a_p7)

                    ; #32740: <==negation-removal== 84569 (pos)
                    (not (not_at_a_p7))

                    ; #51221: <==negation-removal== 82599 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #39174: origin
                    (at_a_p8)

                    ; #82599: origin
                    (not_at_a_p4)

                    ; #51221: <==negation-removal== 82599 (pos)
                    (not (at_a_p4))

                    ; #64570: <==negation-removal== 39174 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #74891: origin
                    (at_a_p9)

                    ; #82599: origin
                    (not_at_a_p4)

                    ; #44363: <==negation-removal== 74891 (pos)
                    (not (not_at_a_p9))

                    ; #51221: <==negation-removal== 82599 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #57802: origin
                    (not_at_a_p5)

                    ; #79167: origin
                    (at_a_p1)

                    ; #55108: <==negation-removal== 57802 (pos)
                    (not (at_a_p5))

                    ; #92785: <==negation-removal== 79167 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #57802: origin
                    (not_at_a_p5)

                    ; #78156: origin
                    (at_a_p10)

                    ; #55108: <==negation-removal== 57802 (pos)
                    (not (at_a_p5))

                    ; #86964: <==negation-removal== 78156 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #11937: origin
                    (at_a_p11)

                    ; #57802: origin
                    (not_at_a_p5)

                    ; #55108: <==negation-removal== 57802 (pos)
                    (not (at_a_p5))

                    ; #63709: <==negation-removal== 11937 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #49481: origin
                    (at_a_p12)

                    ; #57802: origin
                    (not_at_a_p5)

                    ; #55108: <==negation-removal== 57802 (pos)
                    (not (at_a_p5))

                    ; #82946: <==negation-removal== 49481 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #50663: origin
                    (at_a_p2)

                    ; #57802: origin
                    (not_at_a_p5)

                    ; #40811: <==negation-removal== 50663 (pos)
                    (not (not_at_a_p2))

                    ; #55108: <==negation-removal== 57802 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #57802: origin
                    (not_at_a_p5)

                    ; #76606: origin
                    (at_a_p3)

                    ; #55108: <==negation-removal== 57802 (pos)
                    (not (at_a_p5))

                    ; #78009: <==negation-removal== 76606 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #51221: origin
                    (at_a_p4)

                    ; #57802: origin
                    (not_at_a_p5)

                    ; #55108: <==negation-removal== 57802 (pos)
                    (not (at_a_p5))

                    ; #82599: <==negation-removal== 51221 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #55108: origin
                    (at_a_p5)

                    ; #57802: origin
                    (not_at_a_p5)

                    ; #55108: <==negation-removal== 57802 (pos)
                    (not (at_a_p5))

                    ; #57802: <==negation-removal== 55108 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #57802: origin
                    (not_at_a_p5)

                    ; #93091: origin
                    (at_a_p6)

                    ; #25743: <==negation-removal== 93091 (pos)
                    (not (not_at_a_p6))

                    ; #55108: <==negation-removal== 57802 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #57802: origin
                    (not_at_a_p5)

                    ; #84569: origin
                    (at_a_p7)

                    ; #32740: <==negation-removal== 84569 (pos)
                    (not (not_at_a_p7))

                    ; #55108: <==negation-removal== 57802 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #39174: origin
                    (at_a_p8)

                    ; #57802: origin
                    (not_at_a_p5)

                    ; #55108: <==negation-removal== 57802 (pos)
                    (not (at_a_p5))

                    ; #64570: <==negation-removal== 39174 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #57802: origin
                    (not_at_a_p5)

                    ; #74891: origin
                    (at_a_p9)

                    ; #44363: <==negation-removal== 74891 (pos)
                    (not (not_at_a_p9))

                    ; #55108: <==negation-removal== 57802 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #25743: origin
                    (not_at_a_p6)

                    ; #79167: origin
                    (at_a_p1)

                    ; #92785: <==negation-removal== 79167 (pos)
                    (not (not_at_a_p1))

                    ; #93091: <==negation-removal== 25743 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #25743: origin
                    (not_at_a_p6)

                    ; #78156: origin
                    (at_a_p10)

                    ; #86964: <==negation-removal== 78156 (pos)
                    (not (not_at_a_p10))

                    ; #93091: <==negation-removal== 25743 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (at_a_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #11937: origin
                    (at_a_p11)

                    ; #25743: origin
                    (not_at_a_p6)

                    ; #63709: <==negation-removal== 11937 (pos)
                    (not (not_at_a_p11))

                    ; #93091: <==negation-removal== 25743 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #25743: origin
                    (not_at_a_p6)

                    ; #49481: origin
                    (at_a_p12)

                    ; #82946: <==negation-removal== 49481 (pos)
                    (not (not_at_a_p12))

                    ; #93091: <==negation-removal== 25743 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #25743: origin
                    (not_at_a_p6)

                    ; #50663: origin
                    (at_a_p2)

                    ; #40811: <==negation-removal== 50663 (pos)
                    (not (not_at_a_p2))

                    ; #93091: <==negation-removal== 25743 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #25743: origin
                    (not_at_a_p6)

                    ; #76606: origin
                    (at_a_p3)

                    ; #78009: <==negation-removal== 76606 (pos)
                    (not (not_at_a_p3))

                    ; #93091: <==negation-removal== 25743 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #25743: origin
                    (not_at_a_p6)

                    ; #51221: origin
                    (at_a_p4)

                    ; #82599: <==negation-removal== 51221 (pos)
                    (not (not_at_a_p4))

                    ; #93091: <==negation-removal== 25743 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #25743: origin
                    (not_at_a_p6)

                    ; #55108: origin
                    (at_a_p5)

                    ; #57802: <==negation-removal== 55108 (pos)
                    (not (not_at_a_p5))

                    ; #93091: <==negation-removal== 25743 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #25743: origin
                    (not_at_a_p6)

                    ; #93091: origin
                    (at_a_p6)

                    ; #25743: <==negation-removal== 93091 (pos)
                    (not (not_at_a_p6))

                    ; #93091: <==negation-removal== 25743 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #25743: origin
                    (not_at_a_p6)

                    ; #84569: origin
                    (at_a_p7)

                    ; #32740: <==negation-removal== 84569 (pos)
                    (not (not_at_a_p7))

                    ; #93091: <==negation-removal== 25743 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #25743: origin
                    (not_at_a_p6)

                    ; #39174: origin
                    (at_a_p8)

                    ; #64570: <==negation-removal== 39174 (pos)
                    (not (not_at_a_p8))

                    ; #93091: <==negation-removal== 25743 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #25743: origin
                    (not_at_a_p6)

                    ; #74891: origin
                    (at_a_p9)

                    ; #44363: <==negation-removal== 74891 (pos)
                    (not (not_at_a_p9))

                    ; #93091: <==negation-removal== 25743 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #32740: origin
                    (not_at_a_p7)

                    ; #79167: origin
                    (at_a_p1)

                    ; #84569: <==negation-removal== 32740 (pos)
                    (not (at_a_p7))

                    ; #92785: <==negation-removal== 79167 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7))
        :effect (and
                    ; #32740: origin
                    (not_at_a_p7)

                    ; #78156: origin
                    (at_a_p10)

                    ; #84569: <==negation-removal== 32740 (pos)
                    (not (at_a_p7))

                    ; #86964: <==negation-removal== 78156 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #11937: origin
                    (at_a_p11)

                    ; #32740: origin
                    (not_at_a_p7)

                    ; #63709: <==negation-removal== 11937 (pos)
                    (not (not_at_a_p11))

                    ; #84569: <==negation-removal== 32740 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7))
        :effect (and
                    ; #32740: origin
                    (not_at_a_p7)

                    ; #49481: origin
                    (at_a_p12)

                    ; #82946: <==negation-removal== 49481 (pos)
                    (not (not_at_a_p12))

                    ; #84569: <==negation-removal== 32740 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #32740: origin
                    (not_at_a_p7)

                    ; #50663: origin
                    (at_a_p2)

                    ; #40811: <==negation-removal== 50663 (pos)
                    (not (not_at_a_p2))

                    ; #84569: <==negation-removal== 32740 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #32740: origin
                    (not_at_a_p7)

                    ; #76606: origin
                    (at_a_p3)

                    ; #78009: <==negation-removal== 76606 (pos)
                    (not (not_at_a_p3))

                    ; #84569: <==negation-removal== 32740 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #32740: origin
                    (not_at_a_p7)

                    ; #51221: origin
                    (at_a_p4)

                    ; #82599: <==negation-removal== 51221 (pos)
                    (not (not_at_a_p4))

                    ; #84569: <==negation-removal== 32740 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #32740: origin
                    (not_at_a_p7)

                    ; #55108: origin
                    (at_a_p5)

                    ; #57802: <==negation-removal== 55108 (pos)
                    (not (not_at_a_p5))

                    ; #84569: <==negation-removal== 32740 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #32740: origin
                    (not_at_a_p7)

                    ; #93091: origin
                    (at_a_p6)

                    ; #25743: <==negation-removal== 93091 (pos)
                    (not (not_at_a_p6))

                    ; #84569: <==negation-removal== 32740 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #32740: origin
                    (not_at_a_p7)

                    ; #84569: origin
                    (at_a_p7)

                    ; #32740: <==negation-removal== 84569 (pos)
                    (not (not_at_a_p7))

                    ; #84569: <==negation-removal== 32740 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #32740: origin
                    (not_at_a_p7)

                    ; #39174: origin
                    (at_a_p8)

                    ; #64570: <==negation-removal== 39174 (pos)
                    (not (not_at_a_p8))

                    ; #84569: <==negation-removal== 32740 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #32740: origin
                    (not_at_a_p7)

                    ; #74891: origin
                    (at_a_p9)

                    ; #44363: <==negation-removal== 74891 (pos)
                    (not (not_at_a_p9))

                    ; #84569: <==negation-removal== 32740 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #64570: origin
                    (not_at_a_p8)

                    ; #79167: origin
                    (at_a_p1)

                    ; #39174: <==negation-removal== 64570 (pos)
                    (not (at_a_p8))

                    ; #92785: <==negation-removal== 79167 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #64570: origin
                    (not_at_a_p8)

                    ; #78156: origin
                    (at_a_p10)

                    ; #39174: <==negation-removal== 64570 (pos)
                    (not (at_a_p8))

                    ; #86964: <==negation-removal== 78156 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8))
        :effect (and
                    ; #11937: origin
                    (at_a_p11)

                    ; #64570: origin
                    (not_at_a_p8)

                    ; #39174: <==negation-removal== 64570 (pos)
                    (not (at_a_p8))

                    ; #63709: <==negation-removal== 11937 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #49481: origin
                    (at_a_p12)

                    ; #64570: origin
                    (not_at_a_p8)

                    ; #39174: <==negation-removal== 64570 (pos)
                    (not (at_a_p8))

                    ; #82946: <==negation-removal== 49481 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #50663: origin
                    (at_a_p2)

                    ; #64570: origin
                    (not_at_a_p8)

                    ; #39174: <==negation-removal== 64570 (pos)
                    (not (at_a_p8))

                    ; #40811: <==negation-removal== 50663 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #64570: origin
                    (not_at_a_p8)

                    ; #76606: origin
                    (at_a_p3)

                    ; #39174: <==negation-removal== 64570 (pos)
                    (not (at_a_p8))

                    ; #78009: <==negation-removal== 76606 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #51221: origin
                    (at_a_p4)

                    ; #64570: origin
                    (not_at_a_p8)

                    ; #39174: <==negation-removal== 64570 (pos)
                    (not (at_a_p8))

                    ; #82599: <==negation-removal== 51221 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #55108: origin
                    (at_a_p5)

                    ; #64570: origin
                    (not_at_a_p8)

                    ; #39174: <==negation-removal== 64570 (pos)
                    (not (at_a_p8))

                    ; #57802: <==negation-removal== 55108 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #64570: origin
                    (not_at_a_p8)

                    ; #93091: origin
                    (at_a_p6)

                    ; #25743: <==negation-removal== 93091 (pos)
                    (not (not_at_a_p6))

                    ; #39174: <==negation-removal== 64570 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #64570: origin
                    (not_at_a_p8)

                    ; #84569: origin
                    (at_a_p7)

                    ; #32740: <==negation-removal== 84569 (pos)
                    (not (not_at_a_p7))

                    ; #39174: <==negation-removal== 64570 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #39174: origin
                    (at_a_p8)

                    ; #64570: origin
                    (not_at_a_p8)

                    ; #39174: <==negation-removal== 64570 (pos)
                    (not (at_a_p8))

                    ; #64570: <==negation-removal== 39174 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #64570: origin
                    (not_at_a_p8)

                    ; #74891: origin
                    (at_a_p9)

                    ; #39174: <==negation-removal== 64570 (pos)
                    (not (at_a_p8))

                    ; #44363: <==negation-removal== 74891 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #44363: origin
                    (not_at_a_p9)

                    ; #79167: origin
                    (at_a_p1)

                    ; #74891: <==negation-removal== 44363 (pos)
                    (not (at_a_p9))

                    ; #92785: <==negation-removal== 79167 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (at_a_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #44363: origin
                    (not_at_a_p9)

                    ; #78156: origin
                    (at_a_p10)

                    ; #74891: <==negation-removal== 44363 (pos)
                    (not (at_a_p9))

                    ; #86964: <==negation-removal== 78156 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9))
        :effect (and
                    ; #11937: origin
                    (at_a_p11)

                    ; #44363: origin
                    (not_at_a_p9)

                    ; #63709: <==negation-removal== 11937 (pos)
                    (not (not_at_a_p11))

                    ; #74891: <==negation-removal== 44363 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #44363: origin
                    (not_at_a_p9)

                    ; #49481: origin
                    (at_a_p12)

                    ; #74891: <==negation-removal== 44363 (pos)
                    (not (at_a_p9))

                    ; #82946: <==negation-removal== 49481 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #44363: origin
                    (not_at_a_p9)

                    ; #50663: origin
                    (at_a_p2)

                    ; #40811: <==negation-removal== 50663 (pos)
                    (not (not_at_a_p2))

                    ; #74891: <==negation-removal== 44363 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #44363: origin
                    (not_at_a_p9)

                    ; #76606: origin
                    (at_a_p3)

                    ; #74891: <==negation-removal== 44363 (pos)
                    (not (at_a_p9))

                    ; #78009: <==negation-removal== 76606 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #44363: origin
                    (not_at_a_p9)

                    ; #51221: origin
                    (at_a_p4)

                    ; #74891: <==negation-removal== 44363 (pos)
                    (not (at_a_p9))

                    ; #82599: <==negation-removal== 51221 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #44363: origin
                    (not_at_a_p9)

                    ; #55108: origin
                    (at_a_p5)

                    ; #57802: <==negation-removal== 55108 (pos)
                    (not (not_at_a_p5))

                    ; #74891: <==negation-removal== 44363 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #44363: origin
                    (not_at_a_p9)

                    ; #93091: origin
                    (at_a_p6)

                    ; #25743: <==negation-removal== 93091 (pos)
                    (not (not_at_a_p6))

                    ; #74891: <==negation-removal== 44363 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #44363: origin
                    (not_at_a_p9)

                    ; #84569: origin
                    (at_a_p7)

                    ; #32740: <==negation-removal== 84569 (pos)
                    (not (not_at_a_p7))

                    ; #74891: <==negation-removal== 44363 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #39174: origin
                    (at_a_p8)

                    ; #44363: origin
                    (not_at_a_p9)

                    ; #64570: <==negation-removal== 39174 (pos)
                    (not (not_at_a_p8))

                    ; #74891: <==negation-removal== 44363 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #44363: origin
                    (not_at_a_p9)

                    ; #74891: origin
                    (at_a_p9)

                    ; #44363: <==negation-removal== 74891 (pos)
                    (not (not_at_a_p9))

                    ; #74891: <==negation-removal== 44363 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #13749: origin
                    (at_b_p1)

                    ; #70569: origin
                    (not_at_b_p10)

                    ; #61508: <==negation-removal== 70569 (pos)
                    (not (at_b_p10))

                    ; #96191: <==negation-removal== 13749 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #61508: origin
                    (at_b_p10)

                    ; #70569: origin
                    (not_at_b_p10)

                    ; #61508: <==negation-removal== 70569 (pos)
                    (not (at_b_p10))

                    ; #70569: <==negation-removal== 61508 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #16516: origin
                    (at_b_p11)

                    ; #70569: origin
                    (not_at_b_p10)

                    ; #28582: <==negation-removal== 16516 (pos)
                    (not (not_at_b_p11))

                    ; #61508: <==negation-removal== 70569 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #13992: origin
                    (at_b_p12)

                    ; #70569: origin
                    (not_at_b_p10)

                    ; #34846: <==negation-removal== 13992 (pos)
                    (not (not_at_b_p12))

                    ; #61508: <==negation-removal== 70569 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #62045: origin
                    (at_b_p2)

                    ; #70569: origin
                    (not_at_b_p10)

                    ; #14823: <==negation-removal== 62045 (pos)
                    (not (not_at_b_p2))

                    ; #61508: <==negation-removal== 70569 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #14657: origin
                    (at_b_p3)

                    ; #70569: origin
                    (not_at_b_p10)

                    ; #43355: <==negation-removal== 14657 (pos)
                    (not (not_at_b_p3))

                    ; #61508: <==negation-removal== 70569 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #16239: origin
                    (at_b_p4)

                    ; #70569: origin
                    (not_at_b_p10)

                    ; #61508: <==negation-removal== 70569 (pos)
                    (not (at_b_p10))

                    ; #75907: <==negation-removal== 16239 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #42862: origin
                    (at_b_p5)

                    ; #70569: origin
                    (not_at_b_p10)

                    ; #54489: <==negation-removal== 42862 (pos)
                    (not (not_at_b_p5))

                    ; #61508: <==negation-removal== 70569 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #62523: origin
                    (at_b_p6)

                    ; #70569: origin
                    (not_at_b_p10)

                    ; #61508: <==negation-removal== 70569 (pos)
                    (not (at_b_p10))

                    ; #86022: <==negation-removal== 62523 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #49658: origin
                    (at_b_p7)

                    ; #70569: origin
                    (not_at_b_p10)

                    ; #46739: <==negation-removal== 49658 (pos)
                    (not (not_at_b_p7))

                    ; #61508: <==negation-removal== 70569 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #49180: origin
                    (at_b_p8)

                    ; #70569: origin
                    (not_at_b_p10)

                    ; #48384: <==negation-removal== 49180 (pos)
                    (not (not_at_b_p8))

                    ; #61508: <==negation-removal== 70569 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #12118: origin
                    (at_b_p9)

                    ; #70569: origin
                    (not_at_b_p10)

                    ; #61508: <==negation-removal== 70569 (pos)
                    (not (at_b_p10))

                    ; #87813: <==negation-removal== 12118 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (at_b_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #13749: origin
                    (at_b_p1)

                    ; #28582: origin
                    (not_at_b_p11)

                    ; #16516: <==negation-removal== 28582 (pos)
                    (not (at_b_p11))

                    ; #96191: <==negation-removal== 13749 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #28582: origin
                    (not_at_b_p11)

                    ; #61508: origin
                    (at_b_p10)

                    ; #16516: <==negation-removal== 28582 (pos)
                    (not (at_b_p11))

                    ; #70569: <==negation-removal== 61508 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #16516: origin
                    (at_b_p11)

                    ; #28582: origin
                    (not_at_b_p11)

                    ; #16516: <==negation-removal== 28582 (pos)
                    (not (at_b_p11))

                    ; #28582: <==negation-removal== 16516 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (at_b_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #13992: origin
                    (at_b_p12)

                    ; #28582: origin
                    (not_at_b_p11)

                    ; #16516: <==negation-removal== 28582 (pos)
                    (not (at_b_p11))

                    ; #34846: <==negation-removal== 13992 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #28582: origin
                    (not_at_b_p11)

                    ; #62045: origin
                    (at_b_p2)

                    ; #14823: <==negation-removal== 62045 (pos)
                    (not (not_at_b_p2))

                    ; #16516: <==negation-removal== 28582 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #14657: origin
                    (at_b_p3)

                    ; #28582: origin
                    (not_at_b_p11)

                    ; #16516: <==negation-removal== 28582 (pos)
                    (not (at_b_p11))

                    ; #43355: <==negation-removal== 14657 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (at_b_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #16239: origin
                    (at_b_p4)

                    ; #28582: origin
                    (not_at_b_p11)

                    ; #16516: <==negation-removal== 28582 (pos)
                    (not (at_b_p11))

                    ; #75907: <==negation-removal== 16239 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #28582: origin
                    (not_at_b_p11)

                    ; #42862: origin
                    (at_b_p5)

                    ; #16516: <==negation-removal== 28582 (pos)
                    (not (at_b_p11))

                    ; #54489: <==negation-removal== 42862 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (at_b_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #28582: origin
                    (not_at_b_p11)

                    ; #62523: origin
                    (at_b_p6)

                    ; #16516: <==negation-removal== 28582 (pos)
                    (not (at_b_p11))

                    ; #86022: <==negation-removal== 62523 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #28582: origin
                    (not_at_b_p11)

                    ; #49658: origin
                    (at_b_p7)

                    ; #16516: <==negation-removal== 28582 (pos)
                    (not (at_b_p11))

                    ; #46739: <==negation-removal== 49658 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (at_b_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #28582: origin
                    (not_at_b_p11)

                    ; #49180: origin
                    (at_b_p8)

                    ; #16516: <==negation-removal== 28582 (pos)
                    (not (at_b_p11))

                    ; #48384: <==negation-removal== 49180 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #12118: origin
                    (at_b_p9)

                    ; #28582: origin
                    (not_at_b_p11)

                    ; #16516: <==negation-removal== 28582 (pos)
                    (not (at_b_p11))

                    ; #87813: <==negation-removal== 12118 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12))
        :effect (and
                    ; #13749: origin
                    (at_b_p1)

                    ; #34846: origin
                    (not_at_b_p12)

                    ; #13992: <==negation-removal== 34846 (pos)
                    (not (at_b_p12))

                    ; #96191: <==negation-removal== 13749 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #34846: origin
                    (not_at_b_p12)

                    ; #61508: origin
                    (at_b_p10)

                    ; #13992: <==negation-removal== 34846 (pos)
                    (not (at_b_p12))

                    ; #70569: <==negation-removal== 61508 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_b_p12))
        :effect (and
                    ; #16516: origin
                    (at_b_p11)

                    ; #34846: origin
                    (not_at_b_p12)

                    ; #13992: <==negation-removal== 34846 (pos)
                    (not (at_b_p12))

                    ; #28582: <==negation-removal== 16516 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #13992: origin
                    (at_b_p12)

                    ; #34846: origin
                    (not_at_b_p12)

                    ; #13992: <==negation-removal== 34846 (pos)
                    (not (at_b_p12))

                    ; #34846: <==negation-removal== 13992 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12))
        :effect (and
                    ; #34846: origin
                    (not_at_b_p12)

                    ; #62045: origin
                    (at_b_p2)

                    ; #13992: <==negation-removal== 34846 (pos)
                    (not (at_b_p12))

                    ; #14823: <==negation-removal== 62045 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12))
        :effect (and
                    ; #14657: origin
                    (at_b_p3)

                    ; #34846: origin
                    (not_at_b_p12)

                    ; #13992: <==negation-removal== 34846 (pos)
                    (not (at_b_p12))

                    ; #43355: <==negation-removal== 14657 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #16239: origin
                    (at_b_p4)

                    ; #34846: origin
                    (not_at_b_p12)

                    ; #13992: <==negation-removal== 34846 (pos)
                    (not (at_b_p12))

                    ; #75907: <==negation-removal== 16239 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #34846: origin
                    (not_at_b_p12)

                    ; #42862: origin
                    (at_b_p5)

                    ; #13992: <==negation-removal== 34846 (pos)
                    (not (at_b_p12))

                    ; #54489: <==negation-removal== 42862 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #34846: origin
                    (not_at_b_p12)

                    ; #62523: origin
                    (at_b_p6)

                    ; #13992: <==negation-removal== 34846 (pos)
                    (not (at_b_p12))

                    ; #86022: <==negation-removal== 62523 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #34846: origin
                    (not_at_b_p12)

                    ; #49658: origin
                    (at_b_p7)

                    ; #13992: <==negation-removal== 34846 (pos)
                    (not (at_b_p12))

                    ; #46739: <==negation-removal== 49658 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_b_p12))
        :effect (and
                    ; #34846: origin
                    (not_at_b_p12)

                    ; #49180: origin
                    (at_b_p8)

                    ; #13992: <==negation-removal== 34846 (pos)
                    (not (at_b_p12))

                    ; #48384: <==negation-removal== 49180 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #12118: origin
                    (at_b_p9)

                    ; #34846: origin
                    (not_at_b_p12)

                    ; #13992: <==negation-removal== 34846 (pos)
                    (not (at_b_p12))

                    ; #87813: <==negation-removal== 12118 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #13749: origin
                    (at_b_p1)

                    ; #96191: origin
                    (not_at_b_p1)

                    ; #13749: <==negation-removal== 96191 (pos)
                    (not (at_b_p1))

                    ; #96191: <==negation-removal== 13749 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1))
        :effect (and
                    ; #61508: origin
                    (at_b_p10)

                    ; #96191: origin
                    (not_at_b_p1)

                    ; #13749: <==negation-removal== 96191 (pos)
                    (not (at_b_p1))

                    ; #70569: <==negation-removal== 61508 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1))
        :effect (and
                    ; #16516: origin
                    (at_b_p11)

                    ; #96191: origin
                    (not_at_b_p1)

                    ; #13749: <==negation-removal== 96191 (pos)
                    (not (at_b_p1))

                    ; #28582: <==negation-removal== 16516 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1))
        :effect (and
                    ; #13992: origin
                    (at_b_p12)

                    ; #96191: origin
                    (not_at_b_p1)

                    ; #13749: <==negation-removal== 96191 (pos)
                    (not (at_b_p1))

                    ; #34846: <==negation-removal== 13992 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #62045: origin
                    (at_b_p2)

                    ; #96191: origin
                    (not_at_b_p1)

                    ; #13749: <==negation-removal== 96191 (pos)
                    (not (at_b_p1))

                    ; #14823: <==negation-removal== 62045 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #14657: origin
                    (at_b_p3)

                    ; #96191: origin
                    (not_at_b_p1)

                    ; #13749: <==negation-removal== 96191 (pos)
                    (not (at_b_p1))

                    ; #43355: <==negation-removal== 14657 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #16239: origin
                    (at_b_p4)

                    ; #96191: origin
                    (not_at_b_p1)

                    ; #13749: <==negation-removal== 96191 (pos)
                    (not (at_b_p1))

                    ; #75907: <==negation-removal== 16239 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #42862: origin
                    (at_b_p5)

                    ; #96191: origin
                    (not_at_b_p1)

                    ; #13749: <==negation-removal== 96191 (pos)
                    (not (at_b_p1))

                    ; #54489: <==negation-removal== 42862 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #62523: origin
                    (at_b_p6)

                    ; #96191: origin
                    (not_at_b_p1)

                    ; #13749: <==negation-removal== 96191 (pos)
                    (not (at_b_p1))

                    ; #86022: <==negation-removal== 62523 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #49658: origin
                    (at_b_p7)

                    ; #96191: origin
                    (not_at_b_p1)

                    ; #13749: <==negation-removal== 96191 (pos)
                    (not (at_b_p1))

                    ; #46739: <==negation-removal== 49658 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #49180: origin
                    (at_b_p8)

                    ; #96191: origin
                    (not_at_b_p1)

                    ; #13749: <==negation-removal== 96191 (pos)
                    (not (at_b_p1))

                    ; #48384: <==negation-removal== 49180 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #12118: origin
                    (at_b_p9)

                    ; #96191: origin
                    (not_at_b_p1)

                    ; #13749: <==negation-removal== 96191 (pos)
                    (not (at_b_p1))

                    ; #87813: <==negation-removal== 12118 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #13749: origin
                    (at_b_p1)

                    ; #14823: origin
                    (not_at_b_p2)

                    ; #62045: <==negation-removal== 14823 (pos)
                    (not (at_b_p2))

                    ; #96191: <==negation-removal== 13749 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2))
        :effect (and
                    ; #14823: origin
                    (not_at_b_p2)

                    ; #61508: origin
                    (at_b_p10)

                    ; #62045: <==negation-removal== 14823 (pos)
                    (not (at_b_p2))

                    ; #70569: <==negation-removal== 61508 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2))
        :effect (and
                    ; #14823: origin
                    (not_at_b_p2)

                    ; #16516: origin
                    (at_b_p11)

                    ; #28582: <==negation-removal== 16516 (pos)
                    (not (not_at_b_p11))

                    ; #62045: <==negation-removal== 14823 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2))
        :effect (and
                    ; #13992: origin
                    (at_b_p12)

                    ; #14823: origin
                    (not_at_b_p2)

                    ; #34846: <==negation-removal== 13992 (pos)
                    (not (not_at_b_p12))

                    ; #62045: <==negation-removal== 14823 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #14823: origin
                    (not_at_b_p2)

                    ; #62045: origin
                    (at_b_p2)

                    ; #14823: <==negation-removal== 62045 (pos)
                    (not (not_at_b_p2))

                    ; #62045: <==negation-removal== 14823 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #14657: origin
                    (at_b_p3)

                    ; #14823: origin
                    (not_at_b_p2)

                    ; #43355: <==negation-removal== 14657 (pos)
                    (not (not_at_b_p3))

                    ; #62045: <==negation-removal== 14823 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #14823: origin
                    (not_at_b_p2)

                    ; #16239: origin
                    (at_b_p4)

                    ; #62045: <==negation-removal== 14823 (pos)
                    (not (at_b_p2))

                    ; #75907: <==negation-removal== 16239 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #14823: origin
                    (not_at_b_p2)

                    ; #42862: origin
                    (at_b_p5)

                    ; #54489: <==negation-removal== 42862 (pos)
                    (not (not_at_b_p5))

                    ; #62045: <==negation-removal== 14823 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #14823: origin
                    (not_at_b_p2)

                    ; #62523: origin
                    (at_b_p6)

                    ; #62045: <==negation-removal== 14823 (pos)
                    (not (at_b_p2))

                    ; #86022: <==negation-removal== 62523 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #14823: origin
                    (not_at_b_p2)

                    ; #49658: origin
                    (at_b_p7)

                    ; #46739: <==negation-removal== 49658 (pos)
                    (not (not_at_b_p7))

                    ; #62045: <==negation-removal== 14823 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #14823: origin
                    (not_at_b_p2)

                    ; #49180: origin
                    (at_b_p8)

                    ; #48384: <==negation-removal== 49180 (pos)
                    (not (not_at_b_p8))

                    ; #62045: <==negation-removal== 14823 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #12118: origin
                    (at_b_p9)

                    ; #14823: origin
                    (not_at_b_p2)

                    ; #62045: <==negation-removal== 14823 (pos)
                    (not (at_b_p2))

                    ; #87813: <==negation-removal== 12118 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #13749: origin
                    (at_b_p1)

                    ; #43355: origin
                    (not_at_b_p3)

                    ; #14657: <==negation-removal== 43355 (pos)
                    (not (at_b_p3))

                    ; #96191: <==negation-removal== 13749 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3))
        :effect (and
                    ; #43355: origin
                    (not_at_b_p3)

                    ; #61508: origin
                    (at_b_p10)

                    ; #14657: <==negation-removal== 43355 (pos)
                    (not (at_b_p3))

                    ; #70569: <==negation-removal== 61508 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #16516: origin
                    (at_b_p11)

                    ; #43355: origin
                    (not_at_b_p3)

                    ; #14657: <==negation-removal== 43355 (pos)
                    (not (at_b_p3))

                    ; #28582: <==negation-removal== 16516 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3))
        :effect (and
                    ; #13992: origin
                    (at_b_p12)

                    ; #43355: origin
                    (not_at_b_p3)

                    ; #14657: <==negation-removal== 43355 (pos)
                    (not (at_b_p3))

                    ; #34846: <==negation-removal== 13992 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #43355: origin
                    (not_at_b_p3)

                    ; #62045: origin
                    (at_b_p2)

                    ; #14657: <==negation-removal== 43355 (pos)
                    (not (at_b_p3))

                    ; #14823: <==negation-removal== 62045 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #14657: origin
                    (at_b_p3)

                    ; #43355: origin
                    (not_at_b_p3)

                    ; #14657: <==negation-removal== 43355 (pos)
                    (not (at_b_p3))

                    ; #43355: <==negation-removal== 14657 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #16239: origin
                    (at_b_p4)

                    ; #43355: origin
                    (not_at_b_p3)

                    ; #14657: <==negation-removal== 43355 (pos)
                    (not (at_b_p3))

                    ; #75907: <==negation-removal== 16239 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #42862: origin
                    (at_b_p5)

                    ; #43355: origin
                    (not_at_b_p3)

                    ; #14657: <==negation-removal== 43355 (pos)
                    (not (at_b_p3))

                    ; #54489: <==negation-removal== 42862 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #43355: origin
                    (not_at_b_p3)

                    ; #62523: origin
                    (at_b_p6)

                    ; #14657: <==negation-removal== 43355 (pos)
                    (not (at_b_p3))

                    ; #86022: <==negation-removal== 62523 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #43355: origin
                    (not_at_b_p3)

                    ; #49658: origin
                    (at_b_p7)

                    ; #14657: <==negation-removal== 43355 (pos)
                    (not (at_b_p3))

                    ; #46739: <==negation-removal== 49658 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #43355: origin
                    (not_at_b_p3)

                    ; #49180: origin
                    (at_b_p8)

                    ; #14657: <==negation-removal== 43355 (pos)
                    (not (at_b_p3))

                    ; #48384: <==negation-removal== 49180 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #12118: origin
                    (at_b_p9)

                    ; #43355: origin
                    (not_at_b_p3)

                    ; #14657: <==negation-removal== 43355 (pos)
                    (not (at_b_p3))

                    ; #87813: <==negation-removal== 12118 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #13749: origin
                    (at_b_p1)

                    ; #75907: origin
                    (not_at_b_p4)

                    ; #16239: <==negation-removal== 75907 (pos)
                    (not (at_b_p4))

                    ; #96191: <==negation-removal== 13749 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #61508: origin
                    (at_b_p10)

                    ; #75907: origin
                    (not_at_b_p4)

                    ; #16239: <==negation-removal== 75907 (pos)
                    (not (at_b_p4))

                    ; #70569: <==negation-removal== 61508 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4))
        :effect (and
                    ; #16516: origin
                    (at_b_p11)

                    ; #75907: origin
                    (not_at_b_p4)

                    ; #16239: <==negation-removal== 75907 (pos)
                    (not (at_b_p4))

                    ; #28582: <==negation-removal== 16516 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #13992: origin
                    (at_b_p12)

                    ; #75907: origin
                    (not_at_b_p4)

                    ; #16239: <==negation-removal== 75907 (pos)
                    (not (at_b_p4))

                    ; #34846: <==negation-removal== 13992 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #62045: origin
                    (at_b_p2)

                    ; #75907: origin
                    (not_at_b_p4)

                    ; #14823: <==negation-removal== 62045 (pos)
                    (not (not_at_b_p2))

                    ; #16239: <==negation-removal== 75907 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #14657: origin
                    (at_b_p3)

                    ; #75907: origin
                    (not_at_b_p4)

                    ; #16239: <==negation-removal== 75907 (pos)
                    (not (at_b_p4))

                    ; #43355: <==negation-removal== 14657 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #16239: origin
                    (at_b_p4)

                    ; #75907: origin
                    (not_at_b_p4)

                    ; #16239: <==negation-removal== 75907 (pos)
                    (not (at_b_p4))

                    ; #75907: <==negation-removal== 16239 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #42862: origin
                    (at_b_p5)

                    ; #75907: origin
                    (not_at_b_p4)

                    ; #16239: <==negation-removal== 75907 (pos)
                    (not (at_b_p4))

                    ; #54489: <==negation-removal== 42862 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #62523: origin
                    (at_b_p6)

                    ; #75907: origin
                    (not_at_b_p4)

                    ; #16239: <==negation-removal== 75907 (pos)
                    (not (at_b_p4))

                    ; #86022: <==negation-removal== 62523 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #49658: origin
                    (at_b_p7)

                    ; #75907: origin
                    (not_at_b_p4)

                    ; #16239: <==negation-removal== 75907 (pos)
                    (not (at_b_p4))

                    ; #46739: <==negation-removal== 49658 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #49180: origin
                    (at_b_p8)

                    ; #75907: origin
                    (not_at_b_p4)

                    ; #16239: <==negation-removal== 75907 (pos)
                    (not (at_b_p4))

                    ; #48384: <==negation-removal== 49180 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #12118: origin
                    (at_b_p9)

                    ; #75907: origin
                    (not_at_b_p4)

                    ; #16239: <==negation-removal== 75907 (pos)
                    (not (at_b_p4))

                    ; #87813: <==negation-removal== 12118 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #13749: origin
                    (at_b_p1)

                    ; #54489: origin
                    (not_at_b_p5)

                    ; #42862: <==negation-removal== 54489 (pos)
                    (not (at_b_p5))

                    ; #96191: <==negation-removal== 13749 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #54489: origin
                    (not_at_b_p5)

                    ; #61508: origin
                    (at_b_p10)

                    ; #42862: <==negation-removal== 54489 (pos)
                    (not (at_b_p5))

                    ; #70569: <==negation-removal== 61508 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #16516: origin
                    (at_b_p11)

                    ; #54489: origin
                    (not_at_b_p5)

                    ; #28582: <==negation-removal== 16516 (pos)
                    (not (not_at_b_p11))

                    ; #42862: <==negation-removal== 54489 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #13992: origin
                    (at_b_p12)

                    ; #54489: origin
                    (not_at_b_p5)

                    ; #34846: <==negation-removal== 13992 (pos)
                    (not (not_at_b_p12))

                    ; #42862: <==negation-removal== 54489 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #54489: origin
                    (not_at_b_p5)

                    ; #62045: origin
                    (at_b_p2)

                    ; #14823: <==negation-removal== 62045 (pos)
                    (not (not_at_b_p2))

                    ; #42862: <==negation-removal== 54489 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #14657: origin
                    (at_b_p3)

                    ; #54489: origin
                    (not_at_b_p5)

                    ; #42862: <==negation-removal== 54489 (pos)
                    (not (at_b_p5))

                    ; #43355: <==negation-removal== 14657 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #16239: origin
                    (at_b_p4)

                    ; #54489: origin
                    (not_at_b_p5)

                    ; #42862: <==negation-removal== 54489 (pos)
                    (not (at_b_p5))

                    ; #75907: <==negation-removal== 16239 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #42862: origin
                    (at_b_p5)

                    ; #54489: origin
                    (not_at_b_p5)

                    ; #42862: <==negation-removal== 54489 (pos)
                    (not (at_b_p5))

                    ; #54489: <==negation-removal== 42862 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #54489: origin
                    (not_at_b_p5)

                    ; #62523: origin
                    (at_b_p6)

                    ; #42862: <==negation-removal== 54489 (pos)
                    (not (at_b_p5))

                    ; #86022: <==negation-removal== 62523 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #49658: origin
                    (at_b_p7)

                    ; #54489: origin
                    (not_at_b_p5)

                    ; #42862: <==negation-removal== 54489 (pos)
                    (not (at_b_p5))

                    ; #46739: <==negation-removal== 49658 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #49180: origin
                    (at_b_p8)

                    ; #54489: origin
                    (not_at_b_p5)

                    ; #42862: <==negation-removal== 54489 (pos)
                    (not (at_b_p5))

                    ; #48384: <==negation-removal== 49180 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #12118: origin
                    (at_b_p9)

                    ; #54489: origin
                    (not_at_b_p5)

                    ; #42862: <==negation-removal== 54489 (pos)
                    (not (at_b_p5))

                    ; #87813: <==negation-removal== 12118 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #13749: origin
                    (at_b_p1)

                    ; #86022: origin
                    (not_at_b_p6)

                    ; #62523: <==negation-removal== 86022 (pos)
                    (not (at_b_p6))

                    ; #96191: <==negation-removal== 13749 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p10
        :precondition (and (at_b_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #61508: origin
                    (at_b_p10)

                    ; #86022: origin
                    (not_at_b_p6)

                    ; #62523: <==negation-removal== 86022 (pos)
                    (not (at_b_p6))

                    ; #70569: <==negation-removal== 61508 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p6_p11
        :precondition (and (at_b_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #16516: origin
                    (at_b_p11)

                    ; #86022: origin
                    (not_at_b_p6)

                    ; #28582: <==negation-removal== 16516 (pos)
                    (not (not_at_b_p11))

                    ; #62523: <==negation-removal== 86022 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (at_b_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #13992: origin
                    (at_b_p12)

                    ; #86022: origin
                    (not_at_b_p6)

                    ; #34846: <==negation-removal== 13992 (pos)
                    (not (not_at_b_p12))

                    ; #62523: <==negation-removal== 86022 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #62045: origin
                    (at_b_p2)

                    ; #86022: origin
                    (not_at_b_p6)

                    ; #14823: <==negation-removal== 62045 (pos)
                    (not (not_at_b_p2))

                    ; #62523: <==negation-removal== 86022 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #14657: origin
                    (at_b_p3)

                    ; #86022: origin
                    (not_at_b_p6)

                    ; #43355: <==negation-removal== 14657 (pos)
                    (not (not_at_b_p3))

                    ; #62523: <==negation-removal== 86022 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #16239: origin
                    (at_b_p4)

                    ; #86022: origin
                    (not_at_b_p6)

                    ; #62523: <==negation-removal== 86022 (pos)
                    (not (at_b_p6))

                    ; #75907: <==negation-removal== 16239 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #42862: origin
                    (at_b_p5)

                    ; #86022: origin
                    (not_at_b_p6)

                    ; #54489: <==negation-removal== 42862 (pos)
                    (not (not_at_b_p5))

                    ; #62523: <==negation-removal== 86022 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #62523: origin
                    (at_b_p6)

                    ; #86022: origin
                    (not_at_b_p6)

                    ; #62523: <==negation-removal== 86022 (pos)
                    (not (at_b_p6))

                    ; #86022: <==negation-removal== 62523 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #49658: origin
                    (at_b_p7)

                    ; #86022: origin
                    (not_at_b_p6)

                    ; #46739: <==negation-removal== 49658 (pos)
                    (not (not_at_b_p7))

                    ; #62523: <==negation-removal== 86022 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #49180: origin
                    (at_b_p8)

                    ; #86022: origin
                    (not_at_b_p6)

                    ; #48384: <==negation-removal== 49180 (pos)
                    (not (not_at_b_p8))

                    ; #62523: <==negation-removal== 86022 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #12118: origin
                    (at_b_p9)

                    ; #86022: origin
                    (not_at_b_p6)

                    ; #62523: <==negation-removal== 86022 (pos)
                    (not (at_b_p6))

                    ; #87813: <==negation-removal== 12118 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #13749: origin
                    (at_b_p1)

                    ; #46739: origin
                    (not_at_b_p7)

                    ; #49658: <==negation-removal== 46739 (pos)
                    (not (at_b_p7))

                    ; #96191: <==negation-removal== 13749 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #46739: origin
                    (not_at_b_p7)

                    ; #61508: origin
                    (at_b_p10)

                    ; #49658: <==negation-removal== 46739 (pos)
                    (not (at_b_p7))

                    ; #70569: <==negation-removal== 61508 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #16516: origin
                    (at_b_p11)

                    ; #46739: origin
                    (not_at_b_p7)

                    ; #28582: <==negation-removal== 16516 (pos)
                    (not (not_at_b_p11))

                    ; #49658: <==negation-removal== 46739 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (at_b_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #13992: origin
                    (at_b_p12)

                    ; #46739: origin
                    (not_at_b_p7)

                    ; #34846: <==negation-removal== 13992 (pos)
                    (not (not_at_b_p12))

                    ; #49658: <==negation-removal== 46739 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #46739: origin
                    (not_at_b_p7)

                    ; #62045: origin
                    (at_b_p2)

                    ; #14823: <==negation-removal== 62045 (pos)
                    (not (not_at_b_p2))

                    ; #49658: <==negation-removal== 46739 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #14657: origin
                    (at_b_p3)

                    ; #46739: origin
                    (not_at_b_p7)

                    ; #43355: <==negation-removal== 14657 (pos)
                    (not (not_at_b_p3))

                    ; #49658: <==negation-removal== 46739 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #16239: origin
                    (at_b_p4)

                    ; #46739: origin
                    (not_at_b_p7)

                    ; #49658: <==negation-removal== 46739 (pos)
                    (not (at_b_p7))

                    ; #75907: <==negation-removal== 16239 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #42862: origin
                    (at_b_p5)

                    ; #46739: origin
                    (not_at_b_p7)

                    ; #49658: <==negation-removal== 46739 (pos)
                    (not (at_b_p7))

                    ; #54489: <==negation-removal== 42862 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #46739: origin
                    (not_at_b_p7)

                    ; #62523: origin
                    (at_b_p6)

                    ; #49658: <==negation-removal== 46739 (pos)
                    (not (at_b_p7))

                    ; #86022: <==negation-removal== 62523 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #46739: origin
                    (not_at_b_p7)

                    ; #49658: origin
                    (at_b_p7)

                    ; #46739: <==negation-removal== 49658 (pos)
                    (not (not_at_b_p7))

                    ; #49658: <==negation-removal== 46739 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #46739: origin
                    (not_at_b_p7)

                    ; #49180: origin
                    (at_b_p8)

                    ; #48384: <==negation-removal== 49180 (pos)
                    (not (not_at_b_p8))

                    ; #49658: <==negation-removal== 46739 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #12118: origin
                    (at_b_p9)

                    ; #46739: origin
                    (not_at_b_p7)

                    ; #49658: <==negation-removal== 46739 (pos)
                    (not (at_b_p7))

                    ; #87813: <==negation-removal== 12118 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #13749: origin
                    (at_b_p1)

                    ; #48384: origin
                    (not_at_b_p8)

                    ; #49180: <==negation-removal== 48384 (pos)
                    (not (at_b_p8))

                    ; #96191: <==negation-removal== 13749 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #48384: origin
                    (not_at_b_p8)

                    ; #61508: origin
                    (at_b_p10)

                    ; #49180: <==negation-removal== 48384 (pos)
                    (not (at_b_p8))

                    ; #70569: <==negation-removal== 61508 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #16516: origin
                    (at_b_p11)

                    ; #48384: origin
                    (not_at_b_p8)

                    ; #28582: <==negation-removal== 16516 (pos)
                    (not (not_at_b_p11))

                    ; #49180: <==negation-removal== 48384 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #13992: origin
                    (at_b_p12)

                    ; #48384: origin
                    (not_at_b_p8)

                    ; #34846: <==negation-removal== 13992 (pos)
                    (not (not_at_b_p12))

                    ; #49180: <==negation-removal== 48384 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #48384: origin
                    (not_at_b_p8)

                    ; #62045: origin
                    (at_b_p2)

                    ; #14823: <==negation-removal== 62045 (pos)
                    (not (not_at_b_p2))

                    ; #49180: <==negation-removal== 48384 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #14657: origin
                    (at_b_p3)

                    ; #48384: origin
                    (not_at_b_p8)

                    ; #43355: <==negation-removal== 14657 (pos)
                    (not (not_at_b_p3))

                    ; #49180: <==negation-removal== 48384 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #16239: origin
                    (at_b_p4)

                    ; #48384: origin
                    (not_at_b_p8)

                    ; #49180: <==negation-removal== 48384 (pos)
                    (not (at_b_p8))

                    ; #75907: <==negation-removal== 16239 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #42862: origin
                    (at_b_p5)

                    ; #48384: origin
                    (not_at_b_p8)

                    ; #49180: <==negation-removal== 48384 (pos)
                    (not (at_b_p8))

                    ; #54489: <==negation-removal== 42862 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #48384: origin
                    (not_at_b_p8)

                    ; #62523: origin
                    (at_b_p6)

                    ; #49180: <==negation-removal== 48384 (pos)
                    (not (at_b_p8))

                    ; #86022: <==negation-removal== 62523 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #48384: origin
                    (not_at_b_p8)

                    ; #49658: origin
                    (at_b_p7)

                    ; #46739: <==negation-removal== 49658 (pos)
                    (not (not_at_b_p7))

                    ; #49180: <==negation-removal== 48384 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #48384: origin
                    (not_at_b_p8)

                    ; #49180: origin
                    (at_b_p8)

                    ; #48384: <==negation-removal== 49180 (pos)
                    (not (not_at_b_p8))

                    ; #49180: <==negation-removal== 48384 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #12118: origin
                    (at_b_p9)

                    ; #48384: origin
                    (not_at_b_p8)

                    ; #49180: <==negation-removal== 48384 (pos)
                    (not (at_b_p8))

                    ; #87813: <==negation-removal== 12118 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #13749: origin
                    (at_b_p1)

                    ; #87813: origin
                    (not_at_b_p9)

                    ; #12118: <==negation-removal== 87813 (pos)
                    (not (at_b_p9))

                    ; #96191: <==negation-removal== 13749 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9))
        :effect (and
                    ; #61508: origin
                    (at_b_p10)

                    ; #87813: origin
                    (not_at_b_p9)

                    ; #12118: <==negation-removal== 87813 (pos)
                    (not (at_b_p9))

                    ; #70569: <==negation-removal== 61508 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9))
        :effect (and
                    ; #16516: origin
                    (at_b_p11)

                    ; #87813: origin
                    (not_at_b_p9)

                    ; #12118: <==negation-removal== 87813 (pos)
                    (not (at_b_p9))

                    ; #28582: <==negation-removal== 16516 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9))
        :effect (and
                    ; #13992: origin
                    (at_b_p12)

                    ; #87813: origin
                    (not_at_b_p9)

                    ; #12118: <==negation-removal== 87813 (pos)
                    (not (at_b_p9))

                    ; #34846: <==negation-removal== 13992 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #62045: origin
                    (at_b_p2)

                    ; #87813: origin
                    (not_at_b_p9)

                    ; #12118: <==negation-removal== 87813 (pos)
                    (not (at_b_p9))

                    ; #14823: <==negation-removal== 62045 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #14657: origin
                    (at_b_p3)

                    ; #87813: origin
                    (not_at_b_p9)

                    ; #12118: <==negation-removal== 87813 (pos)
                    (not (at_b_p9))

                    ; #43355: <==negation-removal== 14657 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #16239: origin
                    (at_b_p4)

                    ; #87813: origin
                    (not_at_b_p9)

                    ; #12118: <==negation-removal== 87813 (pos)
                    (not (at_b_p9))

                    ; #75907: <==negation-removal== 16239 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #42862: origin
                    (at_b_p5)

                    ; #87813: origin
                    (not_at_b_p9)

                    ; #12118: <==negation-removal== 87813 (pos)
                    (not (at_b_p9))

                    ; #54489: <==negation-removal== 42862 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #62523: origin
                    (at_b_p6)

                    ; #87813: origin
                    (not_at_b_p9)

                    ; #12118: <==negation-removal== 87813 (pos)
                    (not (at_b_p9))

                    ; #86022: <==negation-removal== 62523 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #49658: origin
                    (at_b_p7)

                    ; #87813: origin
                    (not_at_b_p9)

                    ; #12118: <==negation-removal== 87813 (pos)
                    (not (at_b_p9))

                    ; #46739: <==negation-removal== 49658 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #49180: origin
                    (at_b_p8)

                    ; #87813: origin
                    (not_at_b_p9)

                    ; #12118: <==negation-removal== 87813 (pos)
                    (not (at_b_p9))

                    ; #48384: <==negation-removal== 49180 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #12118: origin
                    (at_b_p9)

                    ; #87813: origin
                    (not_at_b_p9)

                    ; #12118: <==negation-removal== 87813 (pos)
                    (not (at_b_p9))

                    ; #87813: <==negation-removal== 12118 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #41772: origin
                    (not_at_c_p10)

                    ; #82257: origin
                    (at_c_p1)

                    ; #10742: <==negation-removal== 82257 (pos)
                    (not (not_at_c_p1))

                    ; #29050: <==negation-removal== 41772 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #29050: origin
                    (at_c_p10)

                    ; #41772: origin
                    (not_at_c_p10)

                    ; #29050: <==negation-removal== 41772 (pos)
                    (not (at_c_p10))

                    ; #41772: <==negation-removal== 29050 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #22199: origin
                    (at_c_p11)

                    ; #41772: origin
                    (not_at_c_p10)

                    ; #29050: <==negation-removal== 41772 (pos)
                    (not (at_c_p10))

                    ; #57310: <==negation-removal== 22199 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #41772: origin
                    (not_at_c_p10)

                    ; #46464: origin
                    (at_c_p12)

                    ; #25421: <==negation-removal== 46464 (pos)
                    (not (not_at_c_p12))

                    ; #29050: <==negation-removal== 41772 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_c_p10))
        :effect (and
                    ; #41772: origin
                    (not_at_c_p10)

                    ; #91452: origin
                    (at_c_p2)

                    ; #29050: <==negation-removal== 41772 (pos)
                    (not (at_c_p10))

                    ; #59649: <==negation-removal== 91452 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10))
        :effect (and
                    ; #41772: origin
                    (not_at_c_p10)

                    ; #70016: origin
                    (at_c_p3)

                    ; #29050: <==negation-removal== 41772 (pos)
                    (not (at_c_p10))

                    ; #39246: <==negation-removal== 70016 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #41772: origin
                    (not_at_c_p10)

                    ; #59998: origin
                    (at_c_p4)

                    ; #29050: <==negation-removal== 41772 (pos)
                    (not (at_c_p10))

                    ; #89081: <==negation-removal== 59998 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #41772: origin
                    (not_at_c_p10)

                    ; #90948: origin
                    (at_c_p5)

                    ; #29050: <==negation-removal== 41772 (pos)
                    (not (at_c_p10))

                    ; #87623: <==negation-removal== 90948 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #41772: origin
                    (not_at_c_p10)

                    ; #88906: origin
                    (at_c_p6)

                    ; #29050: <==negation-removal== 41772 (pos)
                    (not (at_c_p10))

                    ; #80209: <==negation-removal== 88906 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #36979: origin
                    (at_c_p7)

                    ; #41772: origin
                    (not_at_c_p10)

                    ; #29050: <==negation-removal== 41772 (pos)
                    (not (at_c_p10))

                    ; #64764: <==negation-removal== 36979 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #41772: origin
                    (not_at_c_p10)

                    ; #51253: origin
                    (at_c_p8)

                    ; #26344: <==negation-removal== 51253 (pos)
                    (not (not_at_c_p8))

                    ; #29050: <==negation-removal== 41772 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #41772: origin
                    (not_at_c_p10)

                    ; #47670: origin
                    (at_c_p9)

                    ; #29050: <==negation-removal== 41772 (pos)
                    (not (at_c_p10))

                    ; #74126: <==negation-removal== 47670 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p11_p1
        :precondition (and (at_c_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #57310: origin
                    (not_at_c_p11)

                    ; #82257: origin
                    (at_c_p1)

                    ; #10742: <==negation-removal== 82257 (pos)
                    (not (not_at_c_p1))

                    ; #22199: <==negation-removal== 57310 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #29050: origin
                    (at_c_p10)

                    ; #57310: origin
                    (not_at_c_p11)

                    ; #22199: <==negation-removal== 57310 (pos)
                    (not (at_c_p11))

                    ; #41772: <==negation-removal== 29050 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #22199: origin
                    (at_c_p11)

                    ; #57310: origin
                    (not_at_c_p11)

                    ; #22199: <==negation-removal== 57310 (pos)
                    (not (at_c_p11))

                    ; #57310: <==negation-removal== 22199 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #46464: origin
                    (at_c_p12)

                    ; #57310: origin
                    (not_at_c_p11)

                    ; #22199: <==negation-removal== 57310 (pos)
                    (not (at_c_p11))

                    ; #25421: <==negation-removal== 46464 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (at_c_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #57310: origin
                    (not_at_c_p11)

                    ; #91452: origin
                    (at_c_p2)

                    ; #22199: <==negation-removal== 57310 (pos)
                    (not (at_c_p11))

                    ; #59649: <==negation-removal== 91452 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #57310: origin
                    (not_at_c_p11)

                    ; #70016: origin
                    (at_c_p3)

                    ; #22199: <==negation-removal== 57310 (pos)
                    (not (at_c_p11))

                    ; #39246: <==negation-removal== 70016 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #57310: origin
                    (not_at_c_p11)

                    ; #59998: origin
                    (at_c_p4)

                    ; #22199: <==negation-removal== 57310 (pos)
                    (not (at_c_p11))

                    ; #89081: <==negation-removal== 59998 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #57310: origin
                    (not_at_c_p11)

                    ; #90948: origin
                    (at_c_p5)

                    ; #22199: <==negation-removal== 57310 (pos)
                    (not (at_c_p11))

                    ; #87623: <==negation-removal== 90948 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #57310: origin
                    (not_at_c_p11)

                    ; #88906: origin
                    (at_c_p6)

                    ; #22199: <==negation-removal== 57310 (pos)
                    (not (at_c_p11))

                    ; #80209: <==negation-removal== 88906 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #36979: origin
                    (at_c_p7)

                    ; #57310: origin
                    (not_at_c_p11)

                    ; #22199: <==negation-removal== 57310 (pos)
                    (not (at_c_p11))

                    ; #64764: <==negation-removal== 36979 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #51253: origin
                    (at_c_p8)

                    ; #57310: origin
                    (not_at_c_p11)

                    ; #22199: <==negation-removal== 57310 (pos)
                    (not (at_c_p11))

                    ; #26344: <==negation-removal== 51253 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #47670: origin
                    (at_c_p9)

                    ; #57310: origin
                    (not_at_c_p11)

                    ; #22199: <==negation-removal== 57310 (pos)
                    (not (at_c_p11))

                    ; #74126: <==negation-removal== 47670 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12))
        :effect (and
                    ; #25421: origin
                    (not_at_c_p12)

                    ; #82257: origin
                    (at_c_p1)

                    ; #10742: <==negation-removal== 82257 (pos)
                    (not (not_at_c_p1))

                    ; #46464: <==negation-removal== 25421 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12))
        :effect (and
                    ; #25421: origin
                    (not_at_c_p12)

                    ; #29050: origin
                    (at_c_p10)

                    ; #41772: <==negation-removal== 29050 (pos)
                    (not (not_at_c_p10))

                    ; #46464: <==negation-removal== 25421 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_c_p12))
        :effect (and
                    ; #22199: origin
                    (at_c_p11)

                    ; #25421: origin
                    (not_at_c_p12)

                    ; #46464: <==negation-removal== 25421 (pos)
                    (not (at_c_p12))

                    ; #57310: <==negation-removal== 22199 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12))
        :effect (and
                    ; #25421: origin
                    (not_at_c_p12)

                    ; #46464: origin
                    (at_c_p12)

                    ; #25421: <==negation-removal== 46464 (pos)
                    (not (not_at_c_p12))

                    ; #46464: <==negation-removal== 25421 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12))
        :effect (and
                    ; #25421: origin
                    (not_at_c_p12)

                    ; #91452: origin
                    (at_c_p2)

                    ; #46464: <==negation-removal== 25421 (pos)
                    (not (at_c_p12))

                    ; #59649: <==negation-removal== 91452 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #25421: origin
                    (not_at_c_p12)

                    ; #70016: origin
                    (at_c_p3)

                    ; #39246: <==negation-removal== 70016 (pos)
                    (not (not_at_c_p3))

                    ; #46464: <==negation-removal== 25421 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #25421: origin
                    (not_at_c_p12)

                    ; #59998: origin
                    (at_c_p4)

                    ; #46464: <==negation-removal== 25421 (pos)
                    (not (at_c_p12))

                    ; #89081: <==negation-removal== 59998 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #25421: origin
                    (not_at_c_p12)

                    ; #90948: origin
                    (at_c_p5)

                    ; #46464: <==negation-removal== 25421 (pos)
                    (not (at_c_p12))

                    ; #87623: <==negation-removal== 90948 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (at_c_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #25421: origin
                    (not_at_c_p12)

                    ; #88906: origin
                    (at_c_p6)

                    ; #46464: <==negation-removal== 25421 (pos)
                    (not (at_c_p12))

                    ; #80209: <==negation-removal== 88906 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #25421: origin
                    (not_at_c_p12)

                    ; #36979: origin
                    (at_c_p7)

                    ; #46464: <==negation-removal== 25421 (pos)
                    (not (at_c_p12))

                    ; #64764: <==negation-removal== 36979 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12))
        :effect (and
                    ; #25421: origin
                    (not_at_c_p12)

                    ; #51253: origin
                    (at_c_p8)

                    ; #26344: <==negation-removal== 51253 (pos)
                    (not (not_at_c_p8))

                    ; #46464: <==negation-removal== 25421 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #25421: origin
                    (not_at_c_p12)

                    ; #47670: origin
                    (at_c_p9)

                    ; #46464: <==negation-removal== 25421 (pos)
                    (not (at_c_p12))

                    ; #74126: <==negation-removal== 47670 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #10742: origin
                    (not_at_c_p1)

                    ; #82257: origin
                    (at_c_p1)

                    ; #10742: <==negation-removal== 82257 (pos)
                    (not (not_at_c_p1))

                    ; #82257: <==negation-removal== 10742 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #10742: origin
                    (not_at_c_p1)

                    ; #29050: origin
                    (at_c_p10)

                    ; #41772: <==negation-removal== 29050 (pos)
                    (not (not_at_c_p10))

                    ; #82257: <==negation-removal== 10742 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #10742: origin
                    (not_at_c_p1)

                    ; #22199: origin
                    (at_c_p11)

                    ; #57310: <==negation-removal== 22199 (pos)
                    (not (not_at_c_p11))

                    ; #82257: <==negation-removal== 10742 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #10742: origin
                    (not_at_c_p1)

                    ; #46464: origin
                    (at_c_p12)

                    ; #25421: <==negation-removal== 46464 (pos)
                    (not (not_at_c_p12))

                    ; #82257: <==negation-removal== 10742 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #10742: origin
                    (not_at_c_p1)

                    ; #91452: origin
                    (at_c_p2)

                    ; #59649: <==negation-removal== 91452 (pos)
                    (not (not_at_c_p2))

                    ; #82257: <==negation-removal== 10742 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #10742: origin
                    (not_at_c_p1)

                    ; #70016: origin
                    (at_c_p3)

                    ; #39246: <==negation-removal== 70016 (pos)
                    (not (not_at_c_p3))

                    ; #82257: <==negation-removal== 10742 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #10742: origin
                    (not_at_c_p1)

                    ; #59998: origin
                    (at_c_p4)

                    ; #82257: <==negation-removal== 10742 (pos)
                    (not (at_c_p1))

                    ; #89081: <==negation-removal== 59998 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #10742: origin
                    (not_at_c_p1)

                    ; #90948: origin
                    (at_c_p5)

                    ; #82257: <==negation-removal== 10742 (pos)
                    (not (at_c_p1))

                    ; #87623: <==negation-removal== 90948 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #10742: origin
                    (not_at_c_p1)

                    ; #88906: origin
                    (at_c_p6)

                    ; #80209: <==negation-removal== 88906 (pos)
                    (not (not_at_c_p6))

                    ; #82257: <==negation-removal== 10742 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #10742: origin
                    (not_at_c_p1)

                    ; #36979: origin
                    (at_c_p7)

                    ; #64764: <==negation-removal== 36979 (pos)
                    (not (not_at_c_p7))

                    ; #82257: <==negation-removal== 10742 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #10742: origin
                    (not_at_c_p1)

                    ; #51253: origin
                    (at_c_p8)

                    ; #26344: <==negation-removal== 51253 (pos)
                    (not (not_at_c_p8))

                    ; #82257: <==negation-removal== 10742 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #10742: origin
                    (not_at_c_p1)

                    ; #47670: origin
                    (at_c_p9)

                    ; #74126: <==negation-removal== 47670 (pos)
                    (not (not_at_c_p9))

                    ; #82257: <==negation-removal== 10742 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #59649: origin
                    (not_at_c_p2)

                    ; #82257: origin
                    (at_c_p1)

                    ; #10742: <==negation-removal== 82257 (pos)
                    (not (not_at_c_p1))

                    ; #91452: <==negation-removal== 59649 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2))
        :effect (and
                    ; #29050: origin
                    (at_c_p10)

                    ; #59649: origin
                    (not_at_c_p2)

                    ; #41772: <==negation-removal== 29050 (pos)
                    (not (not_at_c_p10))

                    ; #91452: <==negation-removal== 59649 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2))
        :effect (and
                    ; #22199: origin
                    (at_c_p11)

                    ; #59649: origin
                    (not_at_c_p2)

                    ; #57310: <==negation-removal== 22199 (pos)
                    (not (not_at_c_p11))

                    ; #91452: <==negation-removal== 59649 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_c_p2))
        :effect (and
                    ; #46464: origin
                    (at_c_p12)

                    ; #59649: origin
                    (not_at_c_p2)

                    ; #25421: <==negation-removal== 46464 (pos)
                    (not (not_at_c_p12))

                    ; #91452: <==negation-removal== 59649 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #59649: origin
                    (not_at_c_p2)

                    ; #91452: origin
                    (at_c_p2)

                    ; #59649: <==negation-removal== 91452 (pos)
                    (not (not_at_c_p2))

                    ; #91452: <==negation-removal== 59649 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #59649: origin
                    (not_at_c_p2)

                    ; #70016: origin
                    (at_c_p3)

                    ; #39246: <==negation-removal== 70016 (pos)
                    (not (not_at_c_p3))

                    ; #91452: <==negation-removal== 59649 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #59649: origin
                    (not_at_c_p2)

                    ; #59998: origin
                    (at_c_p4)

                    ; #89081: <==negation-removal== 59998 (pos)
                    (not (not_at_c_p4))

                    ; #91452: <==negation-removal== 59649 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #59649: origin
                    (not_at_c_p2)

                    ; #90948: origin
                    (at_c_p5)

                    ; #87623: <==negation-removal== 90948 (pos)
                    (not (not_at_c_p5))

                    ; #91452: <==negation-removal== 59649 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #59649: origin
                    (not_at_c_p2)

                    ; #88906: origin
                    (at_c_p6)

                    ; #80209: <==negation-removal== 88906 (pos)
                    (not (not_at_c_p6))

                    ; #91452: <==negation-removal== 59649 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #36979: origin
                    (at_c_p7)

                    ; #59649: origin
                    (not_at_c_p2)

                    ; #64764: <==negation-removal== 36979 (pos)
                    (not (not_at_c_p7))

                    ; #91452: <==negation-removal== 59649 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #51253: origin
                    (at_c_p8)

                    ; #59649: origin
                    (not_at_c_p2)

                    ; #26344: <==negation-removal== 51253 (pos)
                    (not (not_at_c_p8))

                    ; #91452: <==negation-removal== 59649 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #47670: origin
                    (at_c_p9)

                    ; #59649: origin
                    (not_at_c_p2)

                    ; #74126: <==negation-removal== 47670 (pos)
                    (not (not_at_c_p9))

                    ; #91452: <==negation-removal== 59649 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #39246: origin
                    (not_at_c_p3)

                    ; #82257: origin
                    (at_c_p1)

                    ; #10742: <==negation-removal== 82257 (pos)
                    (not (not_at_c_p1))

                    ; #70016: <==negation-removal== 39246 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3))
        :effect (and
                    ; #29050: origin
                    (at_c_p10)

                    ; #39246: origin
                    (not_at_c_p3)

                    ; #41772: <==negation-removal== 29050 (pos)
                    (not (not_at_c_p10))

                    ; #70016: <==negation-removal== 39246 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #22199: origin
                    (at_c_p11)

                    ; #39246: origin
                    (not_at_c_p3)

                    ; #57310: <==negation-removal== 22199 (pos)
                    (not (not_at_c_p11))

                    ; #70016: <==negation-removal== 39246 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #39246: origin
                    (not_at_c_p3)

                    ; #46464: origin
                    (at_c_p12)

                    ; #25421: <==negation-removal== 46464 (pos)
                    (not (not_at_c_p12))

                    ; #70016: <==negation-removal== 39246 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #39246: origin
                    (not_at_c_p3)

                    ; #91452: origin
                    (at_c_p2)

                    ; #59649: <==negation-removal== 91452 (pos)
                    (not (not_at_c_p2))

                    ; #70016: <==negation-removal== 39246 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #39246: origin
                    (not_at_c_p3)

                    ; #70016: origin
                    (at_c_p3)

                    ; #39246: <==negation-removal== 70016 (pos)
                    (not (not_at_c_p3))

                    ; #70016: <==negation-removal== 39246 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #39246: origin
                    (not_at_c_p3)

                    ; #59998: origin
                    (at_c_p4)

                    ; #70016: <==negation-removal== 39246 (pos)
                    (not (at_c_p3))

                    ; #89081: <==negation-removal== 59998 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #39246: origin
                    (not_at_c_p3)

                    ; #90948: origin
                    (at_c_p5)

                    ; #70016: <==negation-removal== 39246 (pos)
                    (not (at_c_p3))

                    ; #87623: <==negation-removal== 90948 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #39246: origin
                    (not_at_c_p3)

                    ; #88906: origin
                    (at_c_p6)

                    ; #70016: <==negation-removal== 39246 (pos)
                    (not (at_c_p3))

                    ; #80209: <==negation-removal== 88906 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #36979: origin
                    (at_c_p7)

                    ; #39246: origin
                    (not_at_c_p3)

                    ; #64764: <==negation-removal== 36979 (pos)
                    (not (not_at_c_p7))

                    ; #70016: <==negation-removal== 39246 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #39246: origin
                    (not_at_c_p3)

                    ; #51253: origin
                    (at_c_p8)

                    ; #26344: <==negation-removal== 51253 (pos)
                    (not (not_at_c_p8))

                    ; #70016: <==negation-removal== 39246 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #39246: origin
                    (not_at_c_p3)

                    ; #47670: origin
                    (at_c_p9)

                    ; #70016: <==negation-removal== 39246 (pos)
                    (not (at_c_p3))

                    ; #74126: <==negation-removal== 47670 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #82257: origin
                    (at_c_p1)

                    ; #89081: origin
                    (not_at_c_p4)

                    ; #10742: <==negation-removal== 82257 (pos)
                    (not (not_at_c_p1))

                    ; #59998: <==negation-removal== 89081 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #29050: origin
                    (at_c_p10)

                    ; #89081: origin
                    (not_at_c_p4)

                    ; #41772: <==negation-removal== 29050 (pos)
                    (not (not_at_c_p10))

                    ; #59998: <==negation-removal== 89081 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4))
        :effect (and
                    ; #22199: origin
                    (at_c_p11)

                    ; #89081: origin
                    (not_at_c_p4)

                    ; #57310: <==negation-removal== 22199 (pos)
                    (not (not_at_c_p11))

                    ; #59998: <==negation-removal== 89081 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #46464: origin
                    (at_c_p12)

                    ; #89081: origin
                    (not_at_c_p4)

                    ; #25421: <==negation-removal== 46464 (pos)
                    (not (not_at_c_p12))

                    ; #59998: <==negation-removal== 89081 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #89081: origin
                    (not_at_c_p4)

                    ; #91452: origin
                    (at_c_p2)

                    ; #59649: <==negation-removal== 91452 (pos)
                    (not (not_at_c_p2))

                    ; #59998: <==negation-removal== 89081 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #70016: origin
                    (at_c_p3)

                    ; #89081: origin
                    (not_at_c_p4)

                    ; #39246: <==negation-removal== 70016 (pos)
                    (not (not_at_c_p3))

                    ; #59998: <==negation-removal== 89081 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #59998: origin
                    (at_c_p4)

                    ; #89081: origin
                    (not_at_c_p4)

                    ; #59998: <==negation-removal== 89081 (pos)
                    (not (at_c_p4))

                    ; #89081: <==negation-removal== 59998 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #89081: origin
                    (not_at_c_p4)

                    ; #90948: origin
                    (at_c_p5)

                    ; #59998: <==negation-removal== 89081 (pos)
                    (not (at_c_p4))

                    ; #87623: <==negation-removal== 90948 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #88906: origin
                    (at_c_p6)

                    ; #89081: origin
                    (not_at_c_p4)

                    ; #59998: <==negation-removal== 89081 (pos)
                    (not (at_c_p4))

                    ; #80209: <==negation-removal== 88906 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #36979: origin
                    (at_c_p7)

                    ; #89081: origin
                    (not_at_c_p4)

                    ; #59998: <==negation-removal== 89081 (pos)
                    (not (at_c_p4))

                    ; #64764: <==negation-removal== 36979 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #51253: origin
                    (at_c_p8)

                    ; #89081: origin
                    (not_at_c_p4)

                    ; #26344: <==negation-removal== 51253 (pos)
                    (not (not_at_c_p8))

                    ; #59998: <==negation-removal== 89081 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #47670: origin
                    (at_c_p9)

                    ; #89081: origin
                    (not_at_c_p4)

                    ; #59998: <==negation-removal== 89081 (pos)
                    (not (at_c_p4))

                    ; #74126: <==negation-removal== 47670 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #82257: origin
                    (at_c_p1)

                    ; #87623: origin
                    (not_at_c_p5)

                    ; #10742: <==negation-removal== 82257 (pos)
                    (not (not_at_c_p1))

                    ; #90948: <==negation-removal== 87623 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5))
        :effect (and
                    ; #29050: origin
                    (at_c_p10)

                    ; #87623: origin
                    (not_at_c_p5)

                    ; #41772: <==negation-removal== 29050 (pos)
                    (not (not_at_c_p10))

                    ; #90948: <==negation-removal== 87623 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_c_p5))
        :effect (and
                    ; #22199: origin
                    (at_c_p11)

                    ; #87623: origin
                    (not_at_c_p5)

                    ; #57310: <==negation-removal== 22199 (pos)
                    (not (not_at_c_p11))

                    ; #90948: <==negation-removal== 87623 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_c_p5))
        :effect (and
                    ; #46464: origin
                    (at_c_p12)

                    ; #87623: origin
                    (not_at_c_p5)

                    ; #25421: <==negation-removal== 46464 (pos)
                    (not (not_at_c_p12))

                    ; #90948: <==negation-removal== 87623 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #87623: origin
                    (not_at_c_p5)

                    ; #91452: origin
                    (at_c_p2)

                    ; #59649: <==negation-removal== 91452 (pos)
                    (not (not_at_c_p2))

                    ; #90948: <==negation-removal== 87623 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #70016: origin
                    (at_c_p3)

                    ; #87623: origin
                    (not_at_c_p5)

                    ; #39246: <==negation-removal== 70016 (pos)
                    (not (not_at_c_p3))

                    ; #90948: <==negation-removal== 87623 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #59998: origin
                    (at_c_p4)

                    ; #87623: origin
                    (not_at_c_p5)

                    ; #89081: <==negation-removal== 59998 (pos)
                    (not (not_at_c_p4))

                    ; #90948: <==negation-removal== 87623 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #87623: origin
                    (not_at_c_p5)

                    ; #90948: origin
                    (at_c_p5)

                    ; #87623: <==negation-removal== 90948 (pos)
                    (not (not_at_c_p5))

                    ; #90948: <==negation-removal== 87623 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #87623: origin
                    (not_at_c_p5)

                    ; #88906: origin
                    (at_c_p6)

                    ; #80209: <==negation-removal== 88906 (pos)
                    (not (not_at_c_p6))

                    ; #90948: <==negation-removal== 87623 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #36979: origin
                    (at_c_p7)

                    ; #87623: origin
                    (not_at_c_p5)

                    ; #64764: <==negation-removal== 36979 (pos)
                    (not (not_at_c_p7))

                    ; #90948: <==negation-removal== 87623 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #51253: origin
                    (at_c_p8)

                    ; #87623: origin
                    (not_at_c_p5)

                    ; #26344: <==negation-removal== 51253 (pos)
                    (not (not_at_c_p8))

                    ; #90948: <==negation-removal== 87623 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #47670: origin
                    (at_c_p9)

                    ; #87623: origin
                    (not_at_c_p5)

                    ; #74126: <==negation-removal== 47670 (pos)
                    (not (not_at_c_p9))

                    ; #90948: <==negation-removal== 87623 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #80209: origin
                    (not_at_c_p6)

                    ; #82257: origin
                    (at_c_p1)

                    ; #10742: <==negation-removal== 82257 (pos)
                    (not (not_at_c_p1))

                    ; #88906: <==negation-removal== 80209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6))
        :effect (and
                    ; #29050: origin
                    (at_c_p10)

                    ; #80209: origin
                    (not_at_c_p6)

                    ; #41772: <==negation-removal== 29050 (pos)
                    (not (not_at_c_p10))

                    ; #88906: <==negation-removal== 80209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6))
        :effect (and
                    ; #22199: origin
                    (at_c_p11)

                    ; #80209: origin
                    (not_at_c_p6)

                    ; #57310: <==negation-removal== 22199 (pos)
                    (not (not_at_c_p11))

                    ; #88906: <==negation-removal== 80209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #46464: origin
                    (at_c_p12)

                    ; #80209: origin
                    (not_at_c_p6)

                    ; #25421: <==negation-removal== 46464 (pos)
                    (not (not_at_c_p12))

                    ; #88906: <==negation-removal== 80209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #80209: origin
                    (not_at_c_p6)

                    ; #91452: origin
                    (at_c_p2)

                    ; #59649: <==negation-removal== 91452 (pos)
                    (not (not_at_c_p2))

                    ; #88906: <==negation-removal== 80209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #70016: origin
                    (at_c_p3)

                    ; #80209: origin
                    (not_at_c_p6)

                    ; #39246: <==negation-removal== 70016 (pos)
                    (not (not_at_c_p3))

                    ; #88906: <==negation-removal== 80209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #59998: origin
                    (at_c_p4)

                    ; #80209: origin
                    (not_at_c_p6)

                    ; #88906: <==negation-removal== 80209 (pos)
                    (not (at_c_p6))

                    ; #89081: <==negation-removal== 59998 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #80209: origin
                    (not_at_c_p6)

                    ; #90948: origin
                    (at_c_p5)

                    ; #87623: <==negation-removal== 90948 (pos)
                    (not (not_at_c_p5))

                    ; #88906: <==negation-removal== 80209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #80209: origin
                    (not_at_c_p6)

                    ; #88906: origin
                    (at_c_p6)

                    ; #80209: <==negation-removal== 88906 (pos)
                    (not (not_at_c_p6))

                    ; #88906: <==negation-removal== 80209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #36979: origin
                    (at_c_p7)

                    ; #80209: origin
                    (not_at_c_p6)

                    ; #64764: <==negation-removal== 36979 (pos)
                    (not (not_at_c_p7))

                    ; #88906: <==negation-removal== 80209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #51253: origin
                    (at_c_p8)

                    ; #80209: origin
                    (not_at_c_p6)

                    ; #26344: <==negation-removal== 51253 (pos)
                    (not (not_at_c_p8))

                    ; #88906: <==negation-removal== 80209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #47670: origin
                    (at_c_p9)

                    ; #80209: origin
                    (not_at_c_p6)

                    ; #74126: <==negation-removal== 47670 (pos)
                    (not (not_at_c_p9))

                    ; #88906: <==negation-removal== 80209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #64764: origin
                    (not_at_c_p7)

                    ; #82257: origin
                    (at_c_p1)

                    ; #10742: <==negation-removal== 82257 (pos)
                    (not (not_at_c_p1))

                    ; #36979: <==negation-removal== 64764 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7))
        :effect (and
                    ; #29050: origin
                    (at_c_p10)

                    ; #64764: origin
                    (not_at_c_p7)

                    ; #36979: <==negation-removal== 64764 (pos)
                    (not (at_c_p7))

                    ; #41772: <==negation-removal== 29050 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #22199: origin
                    (at_c_p11)

                    ; #64764: origin
                    (not_at_c_p7)

                    ; #36979: <==negation-removal== 64764 (pos)
                    (not (at_c_p7))

                    ; #57310: <==negation-removal== 22199 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7))
        :effect (and
                    ; #46464: origin
                    (at_c_p12)

                    ; #64764: origin
                    (not_at_c_p7)

                    ; #25421: <==negation-removal== 46464 (pos)
                    (not (not_at_c_p12))

                    ; #36979: <==negation-removal== 64764 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #64764: origin
                    (not_at_c_p7)

                    ; #91452: origin
                    (at_c_p2)

                    ; #36979: <==negation-removal== 64764 (pos)
                    (not (at_c_p7))

                    ; #59649: <==negation-removal== 91452 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #64764: origin
                    (not_at_c_p7)

                    ; #70016: origin
                    (at_c_p3)

                    ; #36979: <==negation-removal== 64764 (pos)
                    (not (at_c_p7))

                    ; #39246: <==negation-removal== 70016 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #59998: origin
                    (at_c_p4)

                    ; #64764: origin
                    (not_at_c_p7)

                    ; #36979: <==negation-removal== 64764 (pos)
                    (not (at_c_p7))

                    ; #89081: <==negation-removal== 59998 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #64764: origin
                    (not_at_c_p7)

                    ; #90948: origin
                    (at_c_p5)

                    ; #36979: <==negation-removal== 64764 (pos)
                    (not (at_c_p7))

                    ; #87623: <==negation-removal== 90948 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #64764: origin
                    (not_at_c_p7)

                    ; #88906: origin
                    (at_c_p6)

                    ; #36979: <==negation-removal== 64764 (pos)
                    (not (at_c_p7))

                    ; #80209: <==negation-removal== 88906 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #36979: origin
                    (at_c_p7)

                    ; #64764: origin
                    (not_at_c_p7)

                    ; #36979: <==negation-removal== 64764 (pos)
                    (not (at_c_p7))

                    ; #64764: <==negation-removal== 36979 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #51253: origin
                    (at_c_p8)

                    ; #64764: origin
                    (not_at_c_p7)

                    ; #26344: <==negation-removal== 51253 (pos)
                    (not (not_at_c_p8))

                    ; #36979: <==negation-removal== 64764 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #47670: origin
                    (at_c_p9)

                    ; #64764: origin
                    (not_at_c_p7)

                    ; #36979: <==negation-removal== 64764 (pos)
                    (not (at_c_p7))

                    ; #74126: <==negation-removal== 47670 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #26344: origin
                    (not_at_c_p8)

                    ; #82257: origin
                    (at_c_p1)

                    ; #10742: <==negation-removal== 82257 (pos)
                    (not (not_at_c_p1))

                    ; #51253: <==negation-removal== 26344 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #26344: origin
                    (not_at_c_p8)

                    ; #29050: origin
                    (at_c_p10)

                    ; #41772: <==negation-removal== 29050 (pos)
                    (not (not_at_c_p10))

                    ; #51253: <==negation-removal== 26344 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #22199: origin
                    (at_c_p11)

                    ; #26344: origin
                    (not_at_c_p8)

                    ; #51253: <==negation-removal== 26344 (pos)
                    (not (at_c_p8))

                    ; #57310: <==negation-removal== 22199 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #26344: origin
                    (not_at_c_p8)

                    ; #46464: origin
                    (at_c_p12)

                    ; #25421: <==negation-removal== 46464 (pos)
                    (not (not_at_c_p12))

                    ; #51253: <==negation-removal== 26344 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #26344: origin
                    (not_at_c_p8)

                    ; #91452: origin
                    (at_c_p2)

                    ; #51253: <==negation-removal== 26344 (pos)
                    (not (at_c_p8))

                    ; #59649: <==negation-removal== 91452 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #26344: origin
                    (not_at_c_p8)

                    ; #70016: origin
                    (at_c_p3)

                    ; #39246: <==negation-removal== 70016 (pos)
                    (not (not_at_c_p3))

                    ; #51253: <==negation-removal== 26344 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #26344: origin
                    (not_at_c_p8)

                    ; #59998: origin
                    (at_c_p4)

                    ; #51253: <==negation-removal== 26344 (pos)
                    (not (at_c_p8))

                    ; #89081: <==negation-removal== 59998 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #26344: origin
                    (not_at_c_p8)

                    ; #90948: origin
                    (at_c_p5)

                    ; #51253: <==negation-removal== 26344 (pos)
                    (not (at_c_p8))

                    ; #87623: <==negation-removal== 90948 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #26344: origin
                    (not_at_c_p8)

                    ; #88906: origin
                    (at_c_p6)

                    ; #51253: <==negation-removal== 26344 (pos)
                    (not (at_c_p8))

                    ; #80209: <==negation-removal== 88906 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #26344: origin
                    (not_at_c_p8)

                    ; #36979: origin
                    (at_c_p7)

                    ; #51253: <==negation-removal== 26344 (pos)
                    (not (at_c_p8))

                    ; #64764: <==negation-removal== 36979 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #26344: origin
                    (not_at_c_p8)

                    ; #51253: origin
                    (at_c_p8)

                    ; #26344: <==negation-removal== 51253 (pos)
                    (not (not_at_c_p8))

                    ; #51253: <==negation-removal== 26344 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #26344: origin
                    (not_at_c_p8)

                    ; #47670: origin
                    (at_c_p9)

                    ; #51253: <==negation-removal== 26344 (pos)
                    (not (at_c_p8))

                    ; #74126: <==negation-removal== 47670 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #74126: origin
                    (not_at_c_p9)

                    ; #82257: origin
                    (at_c_p1)

                    ; #10742: <==negation-removal== 82257 (pos)
                    (not (not_at_c_p1))

                    ; #47670: <==negation-removal== 74126 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #29050: origin
                    (at_c_p10)

                    ; #74126: origin
                    (not_at_c_p9)

                    ; #41772: <==negation-removal== 29050 (pos)
                    (not (not_at_c_p10))

                    ; #47670: <==negation-removal== 74126 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9))
        :effect (and
                    ; #22199: origin
                    (at_c_p11)

                    ; #74126: origin
                    (not_at_c_p9)

                    ; #47670: <==negation-removal== 74126 (pos)
                    (not (at_c_p9))

                    ; #57310: <==negation-removal== 22199 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #46464: origin
                    (at_c_p12)

                    ; #74126: origin
                    (not_at_c_p9)

                    ; #25421: <==negation-removal== 46464 (pos)
                    (not (not_at_c_p12))

                    ; #47670: <==negation-removal== 74126 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #74126: origin
                    (not_at_c_p9)

                    ; #91452: origin
                    (at_c_p2)

                    ; #47670: <==negation-removal== 74126 (pos)
                    (not (at_c_p9))

                    ; #59649: <==negation-removal== 91452 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #70016: origin
                    (at_c_p3)

                    ; #74126: origin
                    (not_at_c_p9)

                    ; #39246: <==negation-removal== 70016 (pos)
                    (not (not_at_c_p3))

                    ; #47670: <==negation-removal== 74126 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #59998: origin
                    (at_c_p4)

                    ; #74126: origin
                    (not_at_c_p9)

                    ; #47670: <==negation-removal== 74126 (pos)
                    (not (at_c_p9))

                    ; #89081: <==negation-removal== 59998 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #74126: origin
                    (not_at_c_p9)

                    ; #90948: origin
                    (at_c_p5)

                    ; #47670: <==negation-removal== 74126 (pos)
                    (not (at_c_p9))

                    ; #87623: <==negation-removal== 90948 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #74126: origin
                    (not_at_c_p9)

                    ; #88906: origin
                    (at_c_p6)

                    ; #47670: <==negation-removal== 74126 (pos)
                    (not (at_c_p9))

                    ; #80209: <==negation-removal== 88906 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #36979: origin
                    (at_c_p7)

                    ; #74126: origin
                    (not_at_c_p9)

                    ; #47670: <==negation-removal== 74126 (pos)
                    (not (at_c_p9))

                    ; #64764: <==negation-removal== 36979 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #51253: origin
                    (at_c_p8)

                    ; #74126: origin
                    (not_at_c_p9)

                    ; #26344: <==negation-removal== 51253 (pos)
                    (not (not_at_c_p8))

                    ; #47670: <==negation-removal== 74126 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #47670: origin
                    (at_c_p9)

                    ; #74126: origin
                    (not_at_c_p9)

                    ; #47670: <==negation-removal== 74126 (pos)
                    (not (at_c_p9))

                    ; #74126: <==negation-removal== 47670 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #10710: <==commonly_known== 84616 (pos)
                    (Bc_checked_p10)

                    ; #17974: <==commonly_known== 44163 (neg)
                    (Pb_checked_p10)

                    ; #18670: <==commonly_known== 44163 (neg)
                    (Pa_checked_p10)

                    ; #34646: <==closure== 86523 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #45631: <==commonly_known== 44163 (neg)
                    (Pc_checked_p10)

                    ; #54263: <==commonly_known== 84616 (pos)
                    (Ba_checked_p10)

                    ; #60775: <==commonly_known== 84616 (pos)
                    (Bb_checked_p10)

                    ; #67182: <==closure== 87059 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #84616: origin
                    (checked_p10)

                    ; #86523: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #87059: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #11081: <==uncertain_firing== 87059 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #14401: <==negation-removal== 54263 (pos)
                    (not (Pa_not_checked_p10))

                    ; #18578: <==negation-removal== 17974 (pos)
                    (not (Bb_not_checked_p10))

                    ; #24658: <==negation-removal== 87059 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #31086: <==negation-removal== 86523 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #33031: <==negation-removal== 67182 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #36011: <==negation-removal== 18670 (pos)
                    (not (Ba_not_checked_p10))

                    ; #37026: <==negation-removal== 34646 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #37070: <==negation-removal== 10710 (pos)
                    (not (Pc_not_checked_p10))

                    ; #39873: <==uncertain_firing== 67182 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #44163: <==negation-removal== 84616 (pos)
                    (not (not_checked_p10))

                    ; #49831: <==negation-removal== 45631 (pos)
                    (not (Bc_not_checked_p10))

                    ; #60925: <==negation-removal== 60775 (pos)
                    (not (Pb_not_checked_p10))

                    ; #77788: <==uncertain_firing== 86523 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #85789: <==uncertain_firing== 34646 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #23268: <==closure== 91233 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #31401: <==commonly_known== 63612 (neg)
                    (Pb_checked_p11)

                    ; #49934: <==commonly_known== 90408 (pos)
                    (Ba_checked_p11)

                    ; #52957: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #54056: <==closure== 52957 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #70931: <==commonly_known== 90408 (pos)
                    (Bb_checked_p11)

                    ; #86543: <==commonly_known== 63612 (neg)
                    (Pc_checked_p11)

                    ; #90408: origin
                    (checked_p11)

                    ; #91233: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #91576: <==commonly_known== 63612 (neg)
                    (Pa_checked_p11)

                    ; #91914: <==commonly_known== 90408 (pos)
                    (Bc_checked_p11)

                    ; #11220: <==negation-removal== 54056 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #19944: <==negation-removal== 91914 (pos)
                    (not (Pc_not_checked_p11))

                    ; #23059: <==negation-removal== 31401 (pos)
                    (not (Bb_not_checked_p11))

                    ; #25333: <==uncertain_firing== 52957 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #38808: <==uncertain_firing== 54056 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #48682: <==negation-removal== 49934 (pos)
                    (not (Pa_not_checked_p11))

                    ; #54808: <==uncertain_firing== 91233 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #58530: <==uncertain_firing== 23268 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #60392: <==negation-removal== 91576 (pos)
                    (not (Ba_not_checked_p11))

                    ; #63612: <==negation-removal== 90408 (pos)
                    (not (not_checked_p11))

                    ; #73645: <==negation-removal== 70931 (pos)
                    (not (Pb_not_checked_p11))

                    ; #77847: <==negation-removal== 52957 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #83296: <==negation-removal== 86543 (pos)
                    (not (Bc_not_checked_p11))

                    ; #84604: <==negation-removal== 23268 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #85553: <==negation-removal== 91233 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #25752: <==closure== 36325 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #26639: <==commonly_known== 60038 (pos)
                    (Bc_checked_p12)

                    ; #27029: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #31592: <==commonly_known== 38154 (neg)
                    (Pb_checked_p12)

                    ; #34999: <==commonly_known== 60038 (pos)
                    (Ba_checked_p12)

                    ; #36325: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #37098: <==commonly_known== 38154 (neg)
                    (Pc_checked_p12)

                    ; #38626: <==commonly_known== 38154 (neg)
                    (Pa_checked_p12)

                    ; #60038: origin
                    (checked_p12)

                    ; #61881: <==commonly_known== 60038 (pos)
                    (Bb_checked_p12)

                    ; #90709: <==closure== 27029 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #23200: <==negation-removal== 25752 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #25935: <==negation-removal== 90709 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #29800: <==negation-removal== 61881 (pos)
                    (not (Pb_not_checked_p12))

                    ; #30002: <==negation-removal== 31592 (pos)
                    (not (Bb_not_checked_p12))

                    ; #32244: <==uncertain_firing== 27029 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #38154: <==negation-removal== 60038 (pos)
                    (not (not_checked_p12))

                    ; #50449: <==uncertain_firing== 90709 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #52184: <==negation-removal== 37098 (pos)
                    (not (Bc_not_checked_p12))

                    ; #60897: <==negation-removal== 38626 (pos)
                    (not (Ba_not_checked_p12))

                    ; #63276: <==negation-removal== 36325 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #72376: <==uncertain_firing== 25752 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #75570: <==uncertain_firing== 36325 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #75945: <==negation-removal== 26639 (pos)
                    (not (Pc_not_checked_p12))

                    ; #88234: <==negation-removal== 27029 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #90882: <==negation-removal== 34999 (pos)
                    (not (Pa_not_checked_p12))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #14118: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #20873: <==commonly_known== 66814 (pos)
                    (Ba_checked_p1)

                    ; #21640: <==closure== 14118 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #28134: <==commonly_known== 19160 (neg)
                    (Pb_checked_p1)

                    ; #59311: <==commonly_known== 19160 (neg)
                    (Pa_checked_p1)

                    ; #66362: <==commonly_known== 66814 (pos)
                    (Bc_checked_p1)

                    ; #66814: origin
                    (checked_p1)

                    ; #71681: <==commonly_known== 66814 (pos)
                    (Bb_checked_p1)

                    ; #85029: <==commonly_known== 19160 (neg)
                    (Pc_checked_p1)

                    ; #87205: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #91520: <==closure== 87205 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #12651: <==negation-removal== 87205 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #19160: <==negation-removal== 66814 (pos)
                    (not (not_checked_p1))

                    ; #20355: <==uncertain_firing== 21640 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #22636: <==negation-removal== 91520 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #24912: <==uncertain_firing== 91520 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #30280: <==negation-removal== 28134 (pos)
                    (not (Bb_not_checked_p1))

                    ; #30544: <==uncertain_firing== 14118 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #35449: <==negation-removal== 20873 (pos)
                    (not (Pa_not_checked_p1))

                    ; #36571: <==negation-removal== 21640 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #39149: <==negation-removal== 71681 (pos)
                    (not (Pb_not_checked_p1))

                    ; #45669: <==uncertain_firing== 87205 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #65690: <==negation-removal== 85029 (pos)
                    (not (Bc_not_checked_p1))

                    ; #70316: <==negation-removal== 59311 (pos)
                    (not (Ba_not_checked_p1))

                    ; #79341: <==negation-removal== 14118 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #79969: <==negation-removal== 66362 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #23669: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #39635: <==commonly_known== 67089 (pos)
                    (Ba_checked_p2)

                    ; #40805: <==commonly_known== 67089 (pos)
                    (Bc_checked_p2)

                    ; #41084: <==commonly_known== 67089 (pos)
                    (Bb_checked_p2)

                    ; #44492: <==closure== 90945 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #44673: <==closure== 23669 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #57389: <==commonly_known== 66289 (neg)
                    (Pb_checked_p2)

                    ; #62681: <==commonly_known== 66289 (neg)
                    (Pa_checked_p2)

                    ; #62891: <==commonly_known== 66289 (neg)
                    (Pc_checked_p2)

                    ; #67089: origin
                    (checked_p2)

                    ; #90945: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #10676: <==negation-removal== 62681 (pos)
                    (not (Ba_not_checked_p2))

                    ; #12165: <==negation-removal== 44492 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #30750: <==negation-removal== 44673 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #32188: <==uncertain_firing== 23669 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #38480: <==negation-removal== 40805 (pos)
                    (not (Pc_not_checked_p2))

                    ; #44257: <==uncertain_firing== 44492 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #44892: <==negation-removal== 62891 (pos)
                    (not (Bc_not_checked_p2))

                    ; #44990: <==negation-removal== 57389 (pos)
                    (not (Bb_not_checked_p2))

                    ; #49612: <==negation-removal== 90945 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #60606: <==negation-removal== 39635 (pos)
                    (not (Pa_not_checked_p2))

                    ; #66289: <==negation-removal== 67089 (pos)
                    (not (not_checked_p2))

                    ; #80877: <==negation-removal== 23669 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #81967: <==negation-removal== 41084 (pos)
                    (not (Pb_not_checked_p2))

                    ; #82134: <==uncertain_firing== 90945 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #88280: <==uncertain_firing== 44673 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #17151: <==commonly_known== 20131 (pos)
                    (Bb_checked_p3)

                    ; #20131: origin
                    (checked_p3)

                    ; #24589: <==commonly_known== 20131 (pos)
                    (Ba_checked_p3)

                    ; #25959: <==closure== 64854 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #37258: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #42897: <==commonly_known== 23035 (neg)
                    (Pa_checked_p3)

                    ; #54118: <==closure== 37258 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #58597: <==commonly_known== 20131 (pos)
                    (Bc_checked_p3)

                    ; #64854: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #76221: <==commonly_known== 23035 (neg)
                    (Pb_checked_p3)

                    ; #87219: <==commonly_known== 23035 (neg)
                    (Pc_checked_p3)

                    ; #13023: <==negation-removal== 42897 (pos)
                    (not (Ba_not_checked_p3))

                    ; #13797: <==negation-removal== 76221 (pos)
                    (not (Bb_not_checked_p3))

                    ; #15802: <==negation-removal== 37258 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #17795: <==uncertain_firing== 25959 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #22847: <==negation-removal== 54118 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #23035: <==negation-removal== 20131 (pos)
                    (not (not_checked_p3))

                    ; #32245: <==negation-removal== 17151 (pos)
                    (not (Pb_not_checked_p3))

                    ; #45026: <==uncertain_firing== 64854 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #46619: <==uncertain_firing== 54118 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #49484: <==negation-removal== 25959 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #53161: <==negation-removal== 64854 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #58972: <==negation-removal== 24589 (pos)
                    (not (Pa_not_checked_p3))

                    ; #61923: <==negation-removal== 87219 (pos)
                    (not (Bc_not_checked_p3))

                    ; #67003: <==uncertain_firing== 37258 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #77897: <==negation-removal== 58597 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #17417: <==closure== 75278 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #26491: <==commonly_known== 57423 (neg)
                    (Pc_checked_p4)

                    ; #38844: <==commonly_known== 46467 (pos)
                    (Ba_checked_p4)

                    ; #38867: <==commonly_known== 46467 (pos)
                    (Bb_checked_p4)

                    ; #46467: origin
                    (checked_p4)

                    ; #54047: <==commonly_known== 46467 (pos)
                    (Bc_checked_p4)

                    ; #65009: <==commonly_known== 57423 (neg)
                    (Pa_checked_p4)

                    ; #75278: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #76828: <==closure== 81509 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #81509: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #91579: <==commonly_known== 57423 (neg)
                    (Pb_checked_p4)

                    ; #10625: <==negation-removal== 91579 (pos)
                    (not (Bb_not_checked_p4))

                    ; #14846: <==negation-removal== 17417 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #15148: <==negation-removal== 38844 (pos)
                    (not (Pa_not_checked_p4))

                    ; #25840: <==uncertain_firing== 76828 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #33603: <==negation-removal== 75278 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #34308: <==uncertain_firing== 17417 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #34759: <==negation-removal== 54047 (pos)
                    (not (Pc_not_checked_p4))

                    ; #38511: <==negation-removal== 65009 (pos)
                    (not (Ba_not_checked_p4))

                    ; #57423: <==negation-removal== 46467 (pos)
                    (not (not_checked_p4))

                    ; #57557: <==negation-removal== 76828 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #67894: <==negation-removal== 26491 (pos)
                    (not (Bc_not_checked_p4))

                    ; #71349: <==uncertain_firing== 81509 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #74860: <==negation-removal== 81509 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #75130: <==uncertain_firing== 75278 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #86180: <==negation-removal== 38867 (pos)
                    (not (Pb_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #18283: <==closure== 37090 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #30740: <==closure== 53709 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #35212: <==commonly_known== 64318 (pos)
                    (Ba_checked_p5)

                    ; #37090: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #41469: <==commonly_known== 64318 (pos)
                    (Bb_checked_p5)

                    ; #53709: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #58491: <==commonly_known== 59008 (neg)
                    (Pb_checked_p5)

                    ; #64318: origin
                    (checked_p5)

                    ; #67773: <==commonly_known== 64318 (pos)
                    (Bc_checked_p5)

                    ; #76079: <==commonly_known== 59008 (neg)
                    (Pa_checked_p5)

                    ; #78097: <==commonly_known== 59008 (neg)
                    (Pc_checked_p5)

                    ; #27862: <==negation-removal== 35212 (pos)
                    (not (Pa_not_checked_p5))

                    ; #29646: <==negation-removal== 41469 (pos)
                    (not (Pb_not_checked_p5))

                    ; #39590: <==negation-removal== 53709 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #45439: <==negation-removal== 30740 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #47622: <==negation-removal== 58491 (pos)
                    (not (Bb_not_checked_p5))

                    ; #49506: <==negation-removal== 76079 (pos)
                    (not (Ba_not_checked_p5))

                    ; #52742: <==negation-removal== 67773 (pos)
                    (not (Pc_not_checked_p5))

                    ; #54354: <==uncertain_firing== 30740 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #58378: <==uncertain_firing== 37090 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #59008: <==negation-removal== 64318 (pos)
                    (not (not_checked_p5))

                    ; #62440: <==negation-removal== 18283 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #64014: <==uncertain_firing== 18283 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #67711: <==negation-removal== 37090 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #76994: <==negation-removal== 78097 (pos)
                    (not (Bc_not_checked_p5))

                    ; #88397: <==uncertain_firing== 53709 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #14655: <==commonly_known== 49352 (neg)
                    (Pc_checked_p6)

                    ; #16416: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #20426: origin
                    (checked_p6)

                    ; #23240: <==commonly_known== 49352 (neg)
                    (Pa_checked_p6)

                    ; #28331: <==commonly_known== 20426 (pos)
                    (Bc_checked_p6)

                    ; #33236: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #43019: <==commonly_known== 49352 (neg)
                    (Pb_checked_p6)

                    ; #46369: <==commonly_known== 20426 (pos)
                    (Ba_checked_p6)

                    ; #61155: <==commonly_known== 20426 (pos)
                    (Bb_checked_p6)

                    ; #69119: <==closure== 16416 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #89116: <==closure== 33236 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #13321: <==negation-removal== 89116 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #14182: <==uncertain_firing== 16416 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #26185: <==negation-removal== 33236 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #30054: <==uncertain_firing== 89116 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #31102: <==uncertain_firing== 33236 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #32156: <==negation-removal== 69119 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #42840: <==negation-removal== 14655 (pos)
                    (not (Bc_not_checked_p6))

                    ; #43038: <==negation-removal== 46369 (pos)
                    (not (Pa_not_checked_p6))

                    ; #48318: <==negation-removal== 28331 (pos)
                    (not (Pc_not_checked_p6))

                    ; #49352: <==negation-removal== 20426 (pos)
                    (not (not_checked_p6))

                    ; #53391: <==uncertain_firing== 69119 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #57680: <==negation-removal== 23240 (pos)
                    (not (Ba_not_checked_p6))

                    ; #59719: <==negation-removal== 43019 (pos)
                    (not (Bb_not_checked_p6))

                    ; #68626: <==negation-removal== 61155 (pos)
                    (not (Pb_not_checked_p6))

                    ; #78915: <==negation-removal== 16416 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #18980: <==commonly_known== 36839 (neg)
                    (Pc_checked_p7)

                    ; #25774: <==commonly_known== 87530 (pos)
                    (Bc_checked_p7)

                    ; #46604: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #48669: <==closure== 46604 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #48695: <==closure== 82601 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #55122: <==commonly_known== 87530 (pos)
                    (Ba_checked_p7)

                    ; #62386: <==commonly_known== 87530 (pos)
                    (Bb_checked_p7)

                    ; #80044: <==commonly_known== 36839 (neg)
                    (Pb_checked_p7)

                    ; #82601: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #87530: origin
                    (checked_p7)

                    ; #87778: <==commonly_known== 36839 (neg)
                    (Pa_checked_p7)

                    ; #22340: <==negation-removal== 46604 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #33436: <==negation-removal== 62386 (pos)
                    (not (Pb_not_checked_p7))

                    ; #36839: <==negation-removal== 87530 (pos)
                    (not (not_checked_p7))

                    ; #43299: <==negation-removal== 55122 (pos)
                    (not (Pa_not_checked_p7))

                    ; #46218: <==negation-removal== 80044 (pos)
                    (not (Bb_not_checked_p7))

                    ; #51474: <==negation-removal== 25774 (pos)
                    (not (Pc_not_checked_p7))

                    ; #59937: <==uncertain_firing== 48695 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #64110: <==uncertain_firing== 46604 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #66245: <==negation-removal== 48695 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #72464: <==uncertain_firing== 82601 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #73172: <==negation-removal== 18980 (pos)
                    (not (Bc_not_checked_p7))

                    ; #79700: <==negation-removal== 82601 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #79881: <==negation-removal== 48669 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #83102: <==uncertain_firing== 48669 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #83383: <==negation-removal== 87778 (pos)
                    (not (Ba_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #16744: <==closure== 35672 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #24034: origin
                    (checked_p8)

                    ; #34230: <==commonly_known== 11740 (neg)
                    (Pc_checked_p8)

                    ; #35672: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #41723: <==commonly_known== 11740 (neg)
                    (Pb_checked_p8)

                    ; #54440: <==closure== 98978 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #74050: <==commonly_known== 24034 (pos)
                    (Bc_checked_p8)

                    ; #76364: <==commonly_known== 24034 (pos)
                    (Ba_checked_p8)

                    ; #77071: <==commonly_known== 24034 (pos)
                    (Bb_checked_p8)

                    ; #88466: <==commonly_known== 11740 (neg)
                    (Pa_checked_p8)

                    ; #98978: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #11500: <==negation-removal== 98978 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #11740: <==negation-removal== 24034 (pos)
                    (not (not_checked_p8))

                    ; #14860: <==negation-removal== 54440 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #19907: <==negation-removal== 76364 (pos)
                    (not (Pa_not_checked_p8))

                    ; #33802: <==negation-removal== 41723 (pos)
                    (not (Bb_not_checked_p8))

                    ; #36388: <==negation-removal== 74050 (pos)
                    (not (Pc_not_checked_p8))

                    ; #37373: <==negation-removal== 88466 (pos)
                    (not (Ba_not_checked_p8))

                    ; #38949: <==negation-removal== 34230 (pos)
                    (not (Bc_not_checked_p8))

                    ; #41810: <==uncertain_firing== 35672 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #55158: <==negation-removal== 16744 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #62750: <==uncertain_firing== 98978 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #70070: <==negation-removal== 77071 (pos)
                    (not (Pb_not_checked_p8))

                    ; #75821: <==uncertain_firing== 54440 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #80410: <==negation-removal== 35672 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #80948: <==uncertain_firing== 16744 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #16358: <==commonly_known== 34478 (pos)
                    (Bc_checked_p9)

                    ; #19154: <==commonly_known== 48236 (neg)
                    (Pb_checked_p9)

                    ; #21210: <==commonly_known== 48236 (neg)
                    (Pa_checked_p9)

                    ; #25762: <==commonly_known== 34478 (pos)
                    (Bb_checked_p9)

                    ; #26482: <==closure== 74407 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #34478: origin
                    (checked_p9)

                    ; #37737: <==commonly_known== 48236 (neg)
                    (Pc_checked_p9)

                    ; #58248: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #74407: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #79061: <==closure== 58248 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #85190: <==commonly_known== 34478 (pos)
                    (Ba_checked_p9)

                    ; #14496: <==negation-removal== 25762 (pos)
                    (not (Pb_not_checked_p9))

                    ; #18696: <==negation-removal== 58248 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #19194: <==negation-removal== 16358 (pos)
                    (not (Pc_not_checked_p9))

                    ; #22680: <==uncertain_firing== 58248 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #25522: <==negation-removal== 26482 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #42881: <==negation-removal== 19154 (pos)
                    (not (Bb_not_checked_p9))

                    ; #48236: <==negation-removal== 34478 (pos)
                    (not (not_checked_p9))

                    ; #49718: <==negation-removal== 37737 (pos)
                    (not (Bc_not_checked_p9))

                    ; #55320: <==negation-removal== 74407 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #57223: <==negation-removal== 79061 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #60521: <==uncertain_firing== 26482 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #64606: <==negation-removal== 21210 (pos)
                    (not (Ba_not_checked_p9))

                    ; #76695: <==negation-removal== 85190 (pos)
                    (not (Pa_not_checked_p9))

                    ; #79529: <==uncertain_firing== 79061 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #88164: <==uncertain_firing== 74407 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #10710: <==commonly_known== 84616 (pos)
                    (Bc_checked_p10)

                    ; #17974: <==commonly_known== 44163 (neg)
                    (Pb_checked_p10)

                    ; #18670: <==commonly_known== 44163 (neg)
                    (Pa_checked_p10)

                    ; #30328: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #45631: <==commonly_known== 44163 (neg)
                    (Pc_checked_p10)

                    ; #54263: <==commonly_known== 84616 (pos)
                    (Ba_checked_p10)

                    ; #58547: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #60775: <==commonly_known== 84616 (pos)
                    (Bb_checked_p10)

                    ; #66444: <==closure== 58547 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #72300: <==closure== 30328 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #84616: origin
                    (checked_p10)

                    ; #14401: <==negation-removal== 54263 (pos)
                    (not (Pa_not_checked_p10))

                    ; #18578: <==negation-removal== 17974 (pos)
                    (not (Bb_not_checked_p10))

                    ; #20095: <==negation-removal== 58547 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #36011: <==negation-removal== 18670 (pos)
                    (not (Ba_not_checked_p10))

                    ; #37070: <==negation-removal== 10710 (pos)
                    (not (Pc_not_checked_p10))

                    ; #40286: <==uncertain_firing== 58547 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #44163: <==negation-removal== 84616 (pos)
                    (not (not_checked_p10))

                    ; #45973: <==negation-removal== 30328 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #49831: <==negation-removal== 45631 (pos)
                    (not (Bc_not_checked_p10))

                    ; #60925: <==negation-removal== 60775 (pos)
                    (not (Pb_not_checked_p10))

                    ; #64337: <==negation-removal== 72300 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #72843: <==uncertain_firing== 66444 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #81386: <==negation-removal== 66444 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #82229: <==uncertain_firing== 30328 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #89506: <==uncertain_firing== 72300 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #17837: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #31401: <==commonly_known== 63612 (neg)
                    (Pb_checked_p11)

                    ; #46828: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #49934: <==commonly_known== 90408 (pos)
                    (Ba_checked_p11)

                    ; #57094: <==closure== 17837 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #70060: <==closure== 46828 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #70931: <==commonly_known== 90408 (pos)
                    (Bb_checked_p11)

                    ; #86543: <==commonly_known== 63612 (neg)
                    (Pc_checked_p11)

                    ; #90408: origin
                    (checked_p11)

                    ; #91576: <==commonly_known== 63612 (neg)
                    (Pa_checked_p11)

                    ; #91914: <==commonly_known== 90408 (pos)
                    (Bc_checked_p11)

                    ; #12999: <==uncertain_firing== 57094 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #19944: <==negation-removal== 91914 (pos)
                    (not (Pc_not_checked_p11))

                    ; #23059: <==negation-removal== 31401 (pos)
                    (not (Bb_not_checked_p11))

                    ; #28839: <==uncertain_firing== 70060 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #42373: <==negation-removal== 70060 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #48682: <==negation-removal== 49934 (pos)
                    (not (Pa_not_checked_p11))

                    ; #52882: <==uncertain_firing== 17837 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #57418: <==uncertain_firing== 46828 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #60392: <==negation-removal== 91576 (pos)
                    (not (Ba_not_checked_p11))

                    ; #63612: <==negation-removal== 90408 (pos)
                    (not (not_checked_p11))

                    ; #70378: <==negation-removal== 17837 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #73645: <==negation-removal== 70931 (pos)
                    (not (Pb_not_checked_p11))

                    ; #76567: <==negation-removal== 57094 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #79239: <==negation-removal== 46828 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #83296: <==negation-removal== 86543 (pos)
                    (not (Bc_not_checked_p11))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #26639: <==commonly_known== 60038 (pos)
                    (Bc_checked_p12)

                    ; #31592: <==commonly_known== 38154 (neg)
                    (Pb_checked_p12)

                    ; #32308: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #34999: <==commonly_known== 60038 (pos)
                    (Ba_checked_p12)

                    ; #37098: <==commonly_known== 38154 (neg)
                    (Pc_checked_p12)

                    ; #38626: <==commonly_known== 38154 (neg)
                    (Pa_checked_p12)

                    ; #39394: <==closure== 86243 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #52140: <==closure== 32308 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #60038: origin
                    (checked_p12)

                    ; #61881: <==commonly_known== 60038 (pos)
                    (Bb_checked_p12)

                    ; #86243: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #26158: <==uncertain_firing== 39394 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #29800: <==negation-removal== 61881 (pos)
                    (not (Pb_not_checked_p12))

                    ; #30002: <==negation-removal== 31592 (pos)
                    (not (Bb_not_checked_p12))

                    ; #33716: <==uncertain_firing== 52140 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #38154: <==negation-removal== 60038 (pos)
                    (not (not_checked_p12))

                    ; #46209: <==negation-removal== 39394 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #52184: <==negation-removal== 37098 (pos)
                    (not (Bc_not_checked_p12))

                    ; #58838: <==negation-removal== 52140 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #60897: <==negation-removal== 38626 (pos)
                    (not (Ba_not_checked_p12))

                    ; #63956: <==uncertain_firing== 32308 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #66591: <==negation-removal== 32308 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #74050: <==uncertain_firing== 86243 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #75945: <==negation-removal== 26639 (pos)
                    (not (Pc_not_checked_p12))

                    ; #76073: <==negation-removal== 86243 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #90882: <==negation-removal== 34999 (pos)
                    (not (Pa_not_checked_p12))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #20873: <==commonly_known== 66814 (pos)
                    (Ba_checked_p1)

                    ; #28134: <==commonly_known== 19160 (neg)
                    (Pb_checked_p1)

                    ; #36033: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #36915: <==closure== 47496 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #42853: <==closure== 36033 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #47496: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #59311: <==commonly_known== 19160 (neg)
                    (Pa_checked_p1)

                    ; #66362: <==commonly_known== 66814 (pos)
                    (Bc_checked_p1)

                    ; #66814: origin
                    (checked_p1)

                    ; #71681: <==commonly_known== 66814 (pos)
                    (Bb_checked_p1)

                    ; #85029: <==commonly_known== 19160 (neg)
                    (Pc_checked_p1)

                    ; #19160: <==negation-removal== 66814 (pos)
                    (not (not_checked_p1))

                    ; #30280: <==negation-removal== 28134 (pos)
                    (not (Bb_not_checked_p1))

                    ; #35449: <==negation-removal== 20873 (pos)
                    (not (Pa_not_checked_p1))

                    ; #39149: <==negation-removal== 71681 (pos)
                    (not (Pb_not_checked_p1))

                    ; #39500: <==uncertain_firing== 36033 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #40022: <==uncertain_firing== 47496 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #50574: <==negation-removal== 42853 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #50703: <==negation-removal== 47496 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #65690: <==negation-removal== 85029 (pos)
                    (not (Bc_not_checked_p1))

                    ; #70316: <==negation-removal== 59311 (pos)
                    (not (Ba_not_checked_p1))

                    ; #75482: <==negation-removal== 36915 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #79969: <==negation-removal== 66362 (pos)
                    (not (Pc_not_checked_p1))

                    ; #83677: <==uncertain_firing== 36915 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #83723: <==negation-removal== 36033 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #86667: <==uncertain_firing== 42853 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12647: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #39635: <==commonly_known== 67089 (pos)
                    (Ba_checked_p2)

                    ; #40805: <==commonly_known== 67089 (pos)
                    (Bc_checked_p2)

                    ; #41084: <==commonly_known== 67089 (pos)
                    (Bb_checked_p2)

                    ; #57389: <==commonly_known== 66289 (neg)
                    (Pb_checked_p2)

                    ; #62681: <==commonly_known== 66289 (neg)
                    (Pa_checked_p2)

                    ; #62891: <==commonly_known== 66289 (neg)
                    (Pc_checked_p2)

                    ; #65954: <==closure== 93538 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #67089: origin
                    (checked_p2)

                    ; #88304: <==closure== 12647 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #93538: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #10676: <==negation-removal== 62681 (pos)
                    (not (Ba_not_checked_p2))

                    ; #17284: <==uncertain_firing== 12647 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #21499: <==negation-removal== 65954 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #32652: <==negation-removal== 88304 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #38480: <==negation-removal== 40805 (pos)
                    (not (Pc_not_checked_p2))

                    ; #44892: <==negation-removal== 62891 (pos)
                    (not (Bc_not_checked_p2))

                    ; #44990: <==negation-removal== 57389 (pos)
                    (not (Bb_not_checked_p2))

                    ; #45393: <==uncertain_firing== 93538 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #60606: <==negation-removal== 39635 (pos)
                    (not (Pa_not_checked_p2))

                    ; #65056: <==negation-removal== 93538 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #66289: <==negation-removal== 67089 (pos)
                    (not (not_checked_p2))

                    ; #75266: <==uncertain_firing== 65954 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #76226: <==negation-removal== 12647 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #80983: <==uncertain_firing== 88304 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #81967: <==negation-removal== 41084 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #17151: <==commonly_known== 20131 (pos)
                    (Bb_checked_p3)

                    ; #20131: origin
                    (checked_p3)

                    ; #22279: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #24589: <==commonly_known== 20131 (pos)
                    (Ba_checked_p3)

                    ; #42897: <==commonly_known== 23035 (neg)
                    (Pa_checked_p3)

                    ; #54922: <==closure== 22279 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #58597: <==commonly_known== 20131 (pos)
                    (Bc_checked_p3)

                    ; #63585: <==closure== 89715 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #76221: <==commonly_known== 23035 (neg)
                    (Pb_checked_p3)

                    ; #87219: <==commonly_known== 23035 (neg)
                    (Pc_checked_p3)

                    ; #89715: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #11362: <==uncertain_firing== 22279 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #13023: <==negation-removal== 42897 (pos)
                    (not (Ba_not_checked_p3))

                    ; #13797: <==negation-removal== 76221 (pos)
                    (not (Bb_not_checked_p3))

                    ; #14473: <==negation-removal== 54922 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #15701: <==negation-removal== 89715 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #18407: <==uncertain_firing== 54922 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #23035: <==negation-removal== 20131 (pos)
                    (not (not_checked_p3))

                    ; #24207: <==uncertain_firing== 89715 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #26690: <==negation-removal== 63585 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #32245: <==negation-removal== 17151 (pos)
                    (not (Pb_not_checked_p3))

                    ; #52016: <==negation-removal== 22279 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #58972: <==negation-removal== 24589 (pos)
                    (not (Pa_not_checked_p3))

                    ; #61923: <==negation-removal== 87219 (pos)
                    (not (Bc_not_checked_p3))

                    ; #77897: <==negation-removal== 58597 (pos)
                    (not (Pc_not_checked_p3))

                    ; #78482: <==uncertain_firing== 63585 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #17352: <==closure== 66470 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #26491: <==commonly_known== 57423 (neg)
                    (Pc_checked_p4)

                    ; #38844: <==commonly_known== 46467 (pos)
                    (Ba_checked_p4)

                    ; #38867: <==commonly_known== 46467 (pos)
                    (Bb_checked_p4)

                    ; #46467: origin
                    (checked_p4)

                    ; #54047: <==commonly_known== 46467 (pos)
                    (Bc_checked_p4)

                    ; #65009: <==commonly_known== 57423 (neg)
                    (Pa_checked_p4)

                    ; #66470: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #70577: <==closure== 82593 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #82593: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #91579: <==commonly_known== 57423 (neg)
                    (Pb_checked_p4)

                    ; #10625: <==negation-removal== 91579 (pos)
                    (not (Bb_not_checked_p4))

                    ; #10920: <==uncertain_firing== 17352 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #15148: <==negation-removal== 38844 (pos)
                    (not (Pa_not_checked_p4))

                    ; #32694: <==uncertain_firing== 82593 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #34759: <==negation-removal== 54047 (pos)
                    (not (Pc_not_checked_p4))

                    ; #38511: <==negation-removal== 65009 (pos)
                    (not (Ba_not_checked_p4))

                    ; #49786: <==uncertain_firing== 70577 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #57423: <==negation-removal== 46467 (pos)
                    (not (not_checked_p4))

                    ; #60732: <==negation-removal== 70577 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #64903: <==negation-removal== 66470 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #67894: <==negation-removal== 26491 (pos)
                    (not (Bc_not_checked_p4))

                    ; #73056: <==uncertain_firing== 66470 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #75312: <==negation-removal== 17352 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #83987: <==negation-removal== 82593 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #86180: <==negation-removal== 38867 (pos)
                    (not (Pb_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #18944: <==closure== 43097 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #18971: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #35104: <==closure== 18971 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #35212: <==commonly_known== 64318 (pos)
                    (Ba_checked_p5)

                    ; #41469: <==commonly_known== 64318 (pos)
                    (Bb_checked_p5)

                    ; #43097: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #58491: <==commonly_known== 59008 (neg)
                    (Pb_checked_p5)

                    ; #64318: origin
                    (checked_p5)

                    ; #67773: <==commonly_known== 64318 (pos)
                    (Bc_checked_p5)

                    ; #76079: <==commonly_known== 59008 (neg)
                    (Pa_checked_p5)

                    ; #78097: <==commonly_known== 59008 (neg)
                    (Pc_checked_p5)

                    ; #16604: <==uncertain_firing== 18944 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #27862: <==negation-removal== 35212 (pos)
                    (not (Pa_not_checked_p5))

                    ; #29646: <==negation-removal== 41469 (pos)
                    (not (Pb_not_checked_p5))

                    ; #31457: <==uncertain_firing== 18971 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #39551: <==uncertain_firing== 35104 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #47622: <==negation-removal== 58491 (pos)
                    (not (Bb_not_checked_p5))

                    ; #49506: <==negation-removal== 76079 (pos)
                    (not (Ba_not_checked_p5))

                    ; #50368: <==negation-removal== 35104 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #51922: <==negation-removal== 43097 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #52742: <==negation-removal== 67773 (pos)
                    (not (Pc_not_checked_p5))

                    ; #59008: <==negation-removal== 64318 (pos)
                    (not (not_checked_p5))

                    ; #68379: <==negation-removal== 18944 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #72040: <==negation-removal== 18971 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #76994: <==negation-removal== 78097 (pos)
                    (not (Bc_not_checked_p5))

                    ; #84213: <==uncertain_firing== 43097 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #14655: <==commonly_known== 49352 (neg)
                    (Pc_checked_p6)

                    ; #20426: origin
                    (checked_p6)

                    ; #21404: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #23240: <==commonly_known== 49352 (neg)
                    (Pa_checked_p6)

                    ; #28331: <==commonly_known== 20426 (pos)
                    (Bc_checked_p6)

                    ; #43019: <==commonly_known== 49352 (neg)
                    (Pb_checked_p6)

                    ; #45339: <==closure== 83013 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #46369: <==commonly_known== 20426 (pos)
                    (Ba_checked_p6)

                    ; #58263: <==closure== 21404 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #61155: <==commonly_known== 20426 (pos)
                    (Bb_checked_p6)

                    ; #83013: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #15833: <==negation-removal== 83013 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #18147: <==uncertain_firing== 45339 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #38571: <==uncertain_firing== 58263 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #42840: <==negation-removal== 14655 (pos)
                    (not (Bc_not_checked_p6))

                    ; #43038: <==negation-removal== 46369 (pos)
                    (not (Pa_not_checked_p6))

                    ; #48318: <==negation-removal== 28331 (pos)
                    (not (Pc_not_checked_p6))

                    ; #49352: <==negation-removal== 20426 (pos)
                    (not (not_checked_p6))

                    ; #56324: <==negation-removal== 45339 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #57680: <==negation-removal== 23240 (pos)
                    (not (Ba_not_checked_p6))

                    ; #59719: <==negation-removal== 43019 (pos)
                    (not (Bb_not_checked_p6))

                    ; #63385: <==uncertain_firing== 83013 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #65325: <==negation-removal== 21404 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #68626: <==negation-removal== 61155 (pos)
                    (not (Pb_not_checked_p6))

                    ; #85916: <==negation-removal== 58263 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #90634: <==uncertain_firing== 21404 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #18980: <==commonly_known== 36839 (neg)
                    (Pc_checked_p7)

                    ; #25774: <==commonly_known== 87530 (pos)
                    (Bc_checked_p7)

                    ; #32844: <==closure== 83980 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #55122: <==commonly_known== 87530 (pos)
                    (Ba_checked_p7)

                    ; #62386: <==commonly_known== 87530 (pos)
                    (Bb_checked_p7)

                    ; #68770: <==closure== 88380 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #80044: <==commonly_known== 36839 (neg)
                    (Pb_checked_p7)

                    ; #83980: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #87530: origin
                    (checked_p7)

                    ; #87778: <==commonly_known== 36839 (neg)
                    (Pa_checked_p7)

                    ; #88380: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #10417: <==negation-removal== 68770 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #24051: <==uncertain_firing== 88380 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #33436: <==negation-removal== 62386 (pos)
                    (not (Pb_not_checked_p7))

                    ; #36839: <==negation-removal== 87530 (pos)
                    (not (not_checked_p7))

                    ; #43299: <==negation-removal== 55122 (pos)
                    (not (Pa_not_checked_p7))

                    ; #46218: <==negation-removal== 80044 (pos)
                    (not (Bb_not_checked_p7))

                    ; #46315: <==uncertain_firing== 83980 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #51474: <==negation-removal== 25774 (pos)
                    (not (Pc_not_checked_p7))

                    ; #51972: <==negation-removal== 88380 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #55352: <==uncertain_firing== 68770 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #56616: <==uncertain_firing== 32844 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #61726: <==negation-removal== 83980 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #73172: <==negation-removal== 18980 (pos)
                    (not (Bc_not_checked_p7))

                    ; #83383: <==negation-removal== 87778 (pos)
                    (not (Ba_not_checked_p7))

                    ; #85330: <==negation-removal== 32844 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #13668: <==closure== 90837 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #24034: origin
                    (checked_p8)

                    ; #34230: <==commonly_known== 11740 (neg)
                    (Pc_checked_p8)

                    ; #35301: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #41723: <==commonly_known== 11740 (neg)
                    (Pb_checked_p8)

                    ; #74050: <==commonly_known== 24034 (pos)
                    (Bc_checked_p8)

                    ; #76166: <==closure== 35301 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #76364: <==commonly_known== 24034 (pos)
                    (Ba_checked_p8)

                    ; #77071: <==commonly_known== 24034 (pos)
                    (Bb_checked_p8)

                    ; #88466: <==commonly_known== 11740 (neg)
                    (Pa_checked_p8)

                    ; #90837: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #10087: <==negation-removal== 35301 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #11740: <==negation-removal== 24034 (pos)
                    (not (not_checked_p8))

                    ; #12032: <==negation-removal== 90837 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #13049: <==negation-removal== 76166 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #19907: <==negation-removal== 76364 (pos)
                    (not (Pa_not_checked_p8))

                    ; #32006: <==uncertain_firing== 76166 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #33802: <==negation-removal== 41723 (pos)
                    (not (Bb_not_checked_p8))

                    ; #36388: <==negation-removal== 74050 (pos)
                    (not (Pc_not_checked_p8))

                    ; #37373: <==negation-removal== 88466 (pos)
                    (not (Ba_not_checked_p8))

                    ; #38949: <==negation-removal== 34230 (pos)
                    (not (Bc_not_checked_p8))

                    ; #45843: <==uncertain_firing== 90837 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #47288: <==uncertain_firing== 35301 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #59052: <==uncertain_firing== 13668 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #70070: <==negation-removal== 77071 (pos)
                    (not (Pb_not_checked_p8))

                    ; #82714: <==negation-removal== 13668 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #16358: <==commonly_known== 34478 (pos)
                    (Bc_checked_p9)

                    ; #19154: <==commonly_known== 48236 (neg)
                    (Pb_checked_p9)

                    ; #21210: <==commonly_known== 48236 (neg)
                    (Pa_checked_p9)

                    ; #25762: <==commonly_known== 34478 (pos)
                    (Bb_checked_p9)

                    ; #34478: origin
                    (checked_p9)

                    ; #37737: <==commonly_known== 48236 (neg)
                    (Pc_checked_p9)

                    ; #44135: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #59636: <==closure== 44135 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #66115: <==closure== 85000 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #85000: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #85190: <==commonly_known== 34478 (pos)
                    (Ba_checked_p9)

                    ; #14303: <==uncertain_firing== 59636 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #14496: <==negation-removal== 25762 (pos)
                    (not (Pb_not_checked_p9))

                    ; #19194: <==negation-removal== 16358 (pos)
                    (not (Pc_not_checked_p9))

                    ; #21484: <==uncertain_firing== 44135 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #42881: <==negation-removal== 19154 (pos)
                    (not (Bb_not_checked_p9))

                    ; #48236: <==negation-removal== 34478 (pos)
                    (not (not_checked_p9))

                    ; #49718: <==negation-removal== 37737 (pos)
                    (not (Bc_not_checked_p9))

                    ; #54723: <==uncertain_firing== 85000 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #64553: <==negation-removal== 59636 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #64606: <==negation-removal== 21210 (pos)
                    (not (Ba_not_checked_p9))

                    ; #73132: <==negation-removal== 44135 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #76695: <==negation-removal== 85190 (pos)
                    (not (Pa_not_checked_p9))

                    ; #82219: <==uncertain_firing== 66115 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #89150: <==negation-removal== 66115 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #95654: <==negation-removal== 85000 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #10710: <==commonly_known== 84616 (pos)
                    (Bc_checked_p10)

                    ; #12369: <==closure== 55911 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #17298: <==closure== 45063 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #17974: <==commonly_known== 44163 (neg)
                    (Pb_checked_p10)

                    ; #18670: <==commonly_known== 44163 (neg)
                    (Pa_checked_p10)

                    ; #45063: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #45631: <==commonly_known== 44163 (neg)
                    (Pc_checked_p10)

                    ; #54263: <==commonly_known== 84616 (pos)
                    (Ba_checked_p10)

                    ; #55911: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #60775: <==commonly_known== 84616 (pos)
                    (Bb_checked_p10)

                    ; #84616: origin
                    (checked_p10)

                    ; #10944: <==uncertain_firing== 17298 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #14401: <==negation-removal== 54263 (pos)
                    (not (Pa_not_checked_p10))

                    ; #18578: <==negation-removal== 17974 (pos)
                    (not (Bb_not_checked_p10))

                    ; #23692: <==negation-removal== 45063 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #32122: <==negation-removal== 12369 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #36011: <==negation-removal== 18670 (pos)
                    (not (Ba_not_checked_p10))

                    ; #37070: <==negation-removal== 10710 (pos)
                    (not (Pc_not_checked_p10))

                    ; #39073: <==uncertain_firing== 55911 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #44163: <==negation-removal== 84616 (pos)
                    (not (not_checked_p10))

                    ; #47543: <==uncertain_firing== 12369 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #49831: <==negation-removal== 45631 (pos)
                    (not (Bc_not_checked_p10))

                    ; #51123: <==negation-removal== 55911 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #57005: <==uncertain_firing== 45063 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #60925: <==negation-removal== 60775 (pos)
                    (not (Pb_not_checked_p10))

                    ; #91003: <==negation-removal== 17298 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #15332: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #19999: <==closure== 15332 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #31401: <==commonly_known== 63612 (neg)
                    (Pb_checked_p11)

                    ; #35828: <==closure== 76457 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #49934: <==commonly_known== 90408 (pos)
                    (Ba_checked_p11)

                    ; #70931: <==commonly_known== 90408 (pos)
                    (Bb_checked_p11)

                    ; #76457: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #86543: <==commonly_known== 63612 (neg)
                    (Pc_checked_p11)

                    ; #90408: origin
                    (checked_p11)

                    ; #91576: <==commonly_known== 63612 (neg)
                    (Pa_checked_p11)

                    ; #91914: <==commonly_known== 90408 (pos)
                    (Bc_checked_p11)

                    ; #11377: <==uncertain_firing== 15332 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #12941: <==negation-removal== 76457 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #19944: <==negation-removal== 91914 (pos)
                    (not (Pc_not_checked_p11))

                    ; #22313: <==uncertain_firing== 35828 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #23059: <==negation-removal== 31401 (pos)
                    (not (Bb_not_checked_p11))

                    ; #32780: <==uncertain_firing== 76457 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #47204: <==negation-removal== 19999 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #48682: <==negation-removal== 49934 (pos)
                    (not (Pa_not_checked_p11))

                    ; #60392: <==negation-removal== 91576 (pos)
                    (not (Ba_not_checked_p11))

                    ; #63612: <==negation-removal== 90408 (pos)
                    (not (not_checked_p11))

                    ; #73235: <==uncertain_firing== 19999 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #73645: <==negation-removal== 70931 (pos)
                    (not (Pb_not_checked_p11))

                    ; #79014: <==negation-removal== 35828 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #83296: <==negation-removal== 86543 (pos)
                    (not (Bc_not_checked_p11))

                    ; #86108: <==negation-removal== 15332 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #26639: <==commonly_known== 60038 (pos)
                    (Bc_checked_p12)

                    ; #30280: <==closure== 43821 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #31592: <==commonly_known== 38154 (neg)
                    (Pb_checked_p12)

                    ; #34999: <==commonly_known== 60038 (pos)
                    (Ba_checked_p12)

                    ; #36899: <==closure== 56020 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #37098: <==commonly_known== 38154 (neg)
                    (Pc_checked_p12)

                    ; #38626: <==commonly_known== 38154 (neg)
                    (Pa_checked_p12)

                    ; #43821: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #56020: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #60038: origin
                    (checked_p12)

                    ; #61881: <==commonly_known== 60038 (pos)
                    (Bb_checked_p12)

                    ; #16438: <==uncertain_firing== 56020 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #25293: <==negation-removal== 30280 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #29800: <==negation-removal== 61881 (pos)
                    (not (Pb_not_checked_p12))

                    ; #30002: <==negation-removal== 31592 (pos)
                    (not (Bb_not_checked_p12))

                    ; #30802: <==uncertain_firing== 30280 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #31142: <==uncertain_firing== 36899 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #32191: <==negation-removal== 36899 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #38154: <==negation-removal== 60038 (pos)
                    (not (not_checked_p12))

                    ; #39163: <==negation-removal== 56020 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #47525: <==negation-removal== 43821 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #52184: <==negation-removal== 37098 (pos)
                    (not (Bc_not_checked_p12))

                    ; #60897: <==negation-removal== 38626 (pos)
                    (not (Ba_not_checked_p12))

                    ; #70526: <==uncertain_firing== 43821 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #75945: <==negation-removal== 26639 (pos)
                    (not (Pc_not_checked_p12))

                    ; #90882: <==negation-removal== 34999 (pos)
                    (not (Pa_not_checked_p12))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #20873: <==commonly_known== 66814 (pos)
                    (Ba_checked_p1)

                    ; #22883: <==closure== 48764 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #28134: <==commonly_known== 19160 (neg)
                    (Pb_checked_p1)

                    ; #38593: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #48764: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #59311: <==commonly_known== 19160 (neg)
                    (Pa_checked_p1)

                    ; #60261: <==closure== 38593 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #66362: <==commonly_known== 66814 (pos)
                    (Bc_checked_p1)

                    ; #66814: origin
                    (checked_p1)

                    ; #71681: <==commonly_known== 66814 (pos)
                    (Bb_checked_p1)

                    ; #85029: <==commonly_known== 19160 (neg)
                    (Pc_checked_p1)

                    ; #17449: <==uncertain_firing== 22883 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #19160: <==negation-removal== 66814 (pos)
                    (not (not_checked_p1))

                    ; #30280: <==negation-removal== 28134 (pos)
                    (not (Bb_not_checked_p1))

                    ; #35449: <==negation-removal== 20873 (pos)
                    (not (Pa_not_checked_p1))

                    ; #38483: <==negation-removal== 22883 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #39149: <==negation-removal== 71681 (pos)
                    (not (Pb_not_checked_p1))

                    ; #46178: <==uncertain_firing== 48764 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #54107: <==negation-removal== 38593 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #62809: <==uncertain_firing== 38593 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #65690: <==negation-removal== 85029 (pos)
                    (not (Bc_not_checked_p1))

                    ; #70316: <==negation-removal== 59311 (pos)
                    (not (Ba_not_checked_p1))

                    ; #75984: <==negation-removal== 60261 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #79969: <==negation-removal== 66362 (pos)
                    (not (Pc_not_checked_p1))

                    ; #81372: <==negation-removal== 48764 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #91743: <==uncertain_firing== 60261 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #13308: <==closure== 37683 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #37683: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #39635: <==commonly_known== 67089 (pos)
                    (Ba_checked_p2)

                    ; #40805: <==commonly_known== 67089 (pos)
                    (Bc_checked_p2)

                    ; #41084: <==commonly_known== 67089 (pos)
                    (Bb_checked_p2)

                    ; #57389: <==commonly_known== 66289 (neg)
                    (Pb_checked_p2)

                    ; #62681: <==commonly_known== 66289 (neg)
                    (Pa_checked_p2)

                    ; #62891: <==commonly_known== 66289 (neg)
                    (Pc_checked_p2)

                    ; #67089: origin
                    (checked_p2)

                    ; #78388: <==closure== 85265 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #85265: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #10466: <==uncertain_firing== 78388 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #10676: <==negation-removal== 62681 (pos)
                    (not (Ba_not_checked_p2))

                    ; #13962: <==negation-removal== 85265 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #30951: <==uncertain_firing== 13308 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #33059: <==negation-removal== 37683 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #38480: <==negation-removal== 40805 (pos)
                    (not (Pc_not_checked_p2))

                    ; #39848: <==negation-removal== 78388 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #44892: <==negation-removal== 62891 (pos)
                    (not (Bc_not_checked_p2))

                    ; #44990: <==negation-removal== 57389 (pos)
                    (not (Bb_not_checked_p2))

                    ; #57768: <==negation-removal== 13308 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #60606: <==negation-removal== 39635 (pos)
                    (not (Pa_not_checked_p2))

                    ; #66289: <==negation-removal== 67089 (pos)
                    (not (not_checked_p2))

                    ; #66931: <==uncertain_firing== 85265 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #70180: <==uncertain_firing== 37683 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #81967: <==negation-removal== 41084 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #17151: <==commonly_known== 20131 (pos)
                    (Bb_checked_p3)

                    ; #20131: origin
                    (checked_p3)

                    ; #24589: <==commonly_known== 20131 (pos)
                    (Ba_checked_p3)

                    ; #26506: <==closure== 85349 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #37702: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #42897: <==commonly_known== 23035 (neg)
                    (Pa_checked_p3)

                    ; #58597: <==commonly_known== 20131 (pos)
                    (Bc_checked_p3)

                    ; #71759: <==closure== 37702 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #76221: <==commonly_known== 23035 (neg)
                    (Pb_checked_p3)

                    ; #85349: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #87219: <==commonly_known== 23035 (neg)
                    (Pc_checked_p3)

                    ; #13023: <==negation-removal== 42897 (pos)
                    (not (Ba_not_checked_p3))

                    ; #13797: <==negation-removal== 76221 (pos)
                    (not (Bb_not_checked_p3))

                    ; #23035: <==negation-removal== 20131 (pos)
                    (not (not_checked_p3))

                    ; #29408: <==uncertain_firing== 85349 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #30746: <==uncertain_firing== 26506 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #31236: <==uncertain_firing== 71759 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #32245: <==negation-removal== 17151 (pos)
                    (not (Pb_not_checked_p3))

                    ; #43944: <==negation-removal== 71759 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #58972: <==negation-removal== 24589 (pos)
                    (not (Pa_not_checked_p3))

                    ; #61923: <==negation-removal== 87219 (pos)
                    (not (Bc_not_checked_p3))

                    ; #62539: <==negation-removal== 26506 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #64131: <==negation-removal== 37702 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #66187: <==negation-removal== 85349 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #72332: <==uncertain_firing== 37702 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #77897: <==negation-removal== 58597 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #21095: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #26491: <==commonly_known== 57423 (neg)
                    (Pc_checked_p4)

                    ; #38844: <==commonly_known== 46467 (pos)
                    (Ba_checked_p4)

                    ; #38867: <==commonly_known== 46467 (pos)
                    (Bb_checked_p4)

                    ; #46467: origin
                    (checked_p4)

                    ; #48209: <==closure== 21095 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #54047: <==commonly_known== 46467 (pos)
                    (Bc_checked_p4)

                    ; #65009: <==commonly_known== 57423 (neg)
                    (Pa_checked_p4)

                    ; #65030: <==closure== 74586 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #74586: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #91579: <==commonly_known== 57423 (neg)
                    (Pb_checked_p4)

                    ; #10625: <==negation-removal== 91579 (pos)
                    (not (Bb_not_checked_p4))

                    ; #15148: <==negation-removal== 38844 (pos)
                    (not (Pa_not_checked_p4))

                    ; #27831: <==uncertain_firing== 48209 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #32282: <==uncertain_firing== 65030 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #34759: <==negation-removal== 54047 (pos)
                    (not (Pc_not_checked_p4))

                    ; #37344: <==negation-removal== 48209 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #38511: <==negation-removal== 65009 (pos)
                    (not (Ba_not_checked_p4))

                    ; #38954: <==uncertain_firing== 74586 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #45393: <==negation-removal== 65030 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #45492: <==negation-removal== 21095 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #57423: <==negation-removal== 46467 (pos)
                    (not (not_checked_p4))

                    ; #67894: <==negation-removal== 26491 (pos)
                    (not (Bc_not_checked_p4))

                    ; #86180: <==negation-removal== 38867 (pos)
                    (not (Pb_not_checked_p4))

                    ; #90888: <==uncertain_firing== 21095 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #96093: <==negation-removal== 74586 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #22926: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #23151: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #35212: <==commonly_known== 64318 (pos)
                    (Ba_checked_p5)

                    ; #40066: <==closure== 22926 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #41469: <==commonly_known== 64318 (pos)
                    (Bb_checked_p5)

                    ; #43352: <==closure== 23151 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #58491: <==commonly_known== 59008 (neg)
                    (Pb_checked_p5)

                    ; #64318: origin
                    (checked_p5)

                    ; #67773: <==commonly_known== 64318 (pos)
                    (Bc_checked_p5)

                    ; #76079: <==commonly_known== 59008 (neg)
                    (Pa_checked_p5)

                    ; #78097: <==commonly_known== 59008 (neg)
                    (Pc_checked_p5)

                    ; #10116: <==uncertain_firing== 23151 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #10913: <==uncertain_firing== 43352 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #27862: <==negation-removal== 35212 (pos)
                    (not (Pa_not_checked_p5))

                    ; #29646: <==negation-removal== 41469 (pos)
                    (not (Pb_not_checked_p5))

                    ; #37765: <==uncertain_firing== 22926 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #38570: <==negation-removal== 43352 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #44530: <==negation-removal== 22926 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #47622: <==negation-removal== 58491 (pos)
                    (not (Bb_not_checked_p5))

                    ; #49506: <==negation-removal== 76079 (pos)
                    (not (Ba_not_checked_p5))

                    ; #52498: <==negation-removal== 40066 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #52742: <==negation-removal== 67773 (pos)
                    (not (Pc_not_checked_p5))

                    ; #59008: <==negation-removal== 64318 (pos)
                    (not (not_checked_p5))

                    ; #65318: <==negation-removal== 23151 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #73179: <==uncertain_firing== 40066 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #76994: <==negation-removal== 78097 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #14655: <==commonly_known== 49352 (neg)
                    (Pc_checked_p6)

                    ; #20426: origin
                    (checked_p6)

                    ; #23240: <==commonly_known== 49352 (neg)
                    (Pa_checked_p6)

                    ; #24025: <==closure== 34727 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #28331: <==commonly_known== 20426 (pos)
                    (Bc_checked_p6)

                    ; #33863: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #34727: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #43019: <==commonly_known== 49352 (neg)
                    (Pb_checked_p6)

                    ; #44192: <==closure== 33863 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #46369: <==commonly_known== 20426 (pos)
                    (Ba_checked_p6)

                    ; #61155: <==commonly_known== 20426 (pos)
                    (Bb_checked_p6)

                    ; #18899: <==negation-removal== 44192 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #24742: <==negation-removal== 34727 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #28816: <==uncertain_firing== 24025 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #29179: <==uncertain_firing== 33863 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #42840: <==negation-removal== 14655 (pos)
                    (not (Bc_not_checked_p6))

                    ; #43038: <==negation-removal== 46369 (pos)
                    (not (Pa_not_checked_p6))

                    ; #48318: <==negation-removal== 28331 (pos)
                    (not (Pc_not_checked_p6))

                    ; #49352: <==negation-removal== 20426 (pos)
                    (not (not_checked_p6))

                    ; #52177: <==uncertain_firing== 44192 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #57680: <==negation-removal== 23240 (pos)
                    (not (Ba_not_checked_p6))

                    ; #59719: <==negation-removal== 43019 (pos)
                    (not (Bb_not_checked_p6))

                    ; #63660: <==uncertain_firing== 34727 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #65933: <==negation-removal== 33863 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #68626: <==negation-removal== 61155 (pos)
                    (not (Pb_not_checked_p6))

                    ; #89654: <==negation-removal== 24025 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #13887: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #18918: <==closure== 13887 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #18980: <==commonly_known== 36839 (neg)
                    (Pc_checked_p7)

                    ; #20859: <==closure== 35216 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #25774: <==commonly_known== 87530 (pos)
                    (Bc_checked_p7)

                    ; #35216: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #55122: <==commonly_known== 87530 (pos)
                    (Ba_checked_p7)

                    ; #62386: <==commonly_known== 87530 (pos)
                    (Bb_checked_p7)

                    ; #80044: <==commonly_known== 36839 (neg)
                    (Pb_checked_p7)

                    ; #87530: origin
                    (checked_p7)

                    ; #87778: <==commonly_known== 36839 (neg)
                    (Pa_checked_p7)

                    ; #21270: <==negation-removal== 35216 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #28881: <==uncertain_firing== 18918 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #33427: <==uncertain_firing== 20859 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #33436: <==negation-removal== 62386 (pos)
                    (not (Pb_not_checked_p7))

                    ; #36270: <==uncertain_firing== 13887 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #36839: <==negation-removal== 87530 (pos)
                    (not (not_checked_p7))

                    ; #43299: <==negation-removal== 55122 (pos)
                    (not (Pa_not_checked_p7))

                    ; #46218: <==negation-removal== 80044 (pos)
                    (not (Bb_not_checked_p7))

                    ; #51474: <==negation-removal== 25774 (pos)
                    (not (Pc_not_checked_p7))

                    ; #68739: <==negation-removal== 18918 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #69062: <==uncertain_firing== 35216 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #73172: <==negation-removal== 18980 (pos)
                    (not (Bc_not_checked_p7))

                    ; #73865: <==negation-removal== 20859 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #83383: <==negation-removal== 87778 (pos)
                    (not (Ba_not_checked_p7))

                    ; #91383: <==negation-removal== 13887 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #17811: <==closure== 80258 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #24034: origin
                    (checked_p8)

                    ; #34230: <==commonly_known== 11740 (neg)
                    (Pc_checked_p8)

                    ; #36507: <==closure== 68853 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #41723: <==commonly_known== 11740 (neg)
                    (Pb_checked_p8)

                    ; #68853: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #74050: <==commonly_known== 24034 (pos)
                    (Bc_checked_p8)

                    ; #76364: <==commonly_known== 24034 (pos)
                    (Ba_checked_p8)

                    ; #77071: <==commonly_known== 24034 (pos)
                    (Bb_checked_p8)

                    ; #80258: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #88466: <==commonly_known== 11740 (neg)
                    (Pa_checked_p8)

                    ; #11740: <==negation-removal== 24034 (pos)
                    (not (not_checked_p8))

                    ; #16718: <==negation-removal== 68853 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #19907: <==negation-removal== 76364 (pos)
                    (not (Pa_not_checked_p8))

                    ; #21086: <==negation-removal== 80258 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #24769: <==negation-removal== 36507 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #30211: <==uncertain_firing== 80258 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #33802: <==negation-removal== 41723 (pos)
                    (not (Bb_not_checked_p8))

                    ; #36388: <==negation-removal== 74050 (pos)
                    (not (Pc_not_checked_p8))

                    ; #37373: <==negation-removal== 88466 (pos)
                    (not (Ba_not_checked_p8))

                    ; #38949: <==negation-removal== 34230 (pos)
                    (not (Bc_not_checked_p8))

                    ; #70070: <==negation-removal== 77071 (pos)
                    (not (Pb_not_checked_p8))

                    ; #75681: <==uncertain_firing== 17811 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #81643: <==uncertain_firing== 68853 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #86466: <==negation-removal== 17811 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #91563: <==uncertain_firing== 36507 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #16358: <==commonly_known== 34478 (pos)
                    (Bc_checked_p9)

                    ; #19154: <==commonly_known== 48236 (neg)
                    (Pb_checked_p9)

                    ; #21210: <==commonly_known== 48236 (neg)
                    (Pa_checked_p9)

                    ; #25670: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #25762: <==commonly_known== 34478 (pos)
                    (Bb_checked_p9)

                    ; #34478: origin
                    (checked_p9)

                    ; #37737: <==commonly_known== 48236 (neg)
                    (Pc_checked_p9)

                    ; #52028: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #57309: <==closure== 52028 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #84413: <==closure== 25670 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #85190: <==commonly_known== 34478 (pos)
                    (Ba_checked_p9)

                    ; #14496: <==negation-removal== 25762 (pos)
                    (not (Pb_not_checked_p9))

                    ; #17164: <==uncertain_firing== 84413 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #19194: <==negation-removal== 16358 (pos)
                    (not (Pc_not_checked_p9))

                    ; #26062: <==uncertain_firing== 25670 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #27500: <==negation-removal== 25670 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #42509: <==uncertain_firing== 57309 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #42881: <==negation-removal== 19154 (pos)
                    (not (Bb_not_checked_p9))

                    ; #44897: <==negation-removal== 84413 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #46141: <==negation-removal== 57309 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #48236: <==negation-removal== 34478 (pos)
                    (not (not_checked_p9))

                    ; #49718: <==negation-removal== 37737 (pos)
                    (not (Bc_not_checked_p9))

                    ; #52253: <==negation-removal== 52028 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #64606: <==negation-removal== 21210 (pos)
                    (not (Ba_not_checked_p9))

                    ; #71588: <==uncertain_firing== 52028 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #76695: <==negation-removal== 85190 (pos)
                    (not (Pa_not_checked_p9))))

)