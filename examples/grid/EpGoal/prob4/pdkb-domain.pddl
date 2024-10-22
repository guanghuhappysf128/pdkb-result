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
                    ; #14391: origin
                    (Bc_survivorat_s_p10)

                    ; #43612: <==closure== 14391 (pos)
                    (Pc_survivorat_s_p10)

                    ; #47696: origin
                    (Ba_survivorat_s_p10)

                    ; #61046: <==closure== 88015 (pos)
                    (Pb_survivorat_s_p10)

                    ; #64431: <==closure== 47696 (pos)
                    (Pa_survivorat_s_p10)

                    ; #88015: origin
                    (Bb_survivorat_s_p10)

                    ; #35376: <==negation-removal== 43612 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #48067: <==negation-removal== 88015 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #68742: <==negation-removal== 61046 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #72623: <==negation-removal== 14391 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #72773: <==negation-removal== 47696 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #85015: <==negation-removal== 64431 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #14391: origin
                    (Bc_survivorat_s_p10)

                    ; #43612: <==closure== 14391 (pos)
                    (Pc_survivorat_s_p10)

                    ; #47696: origin
                    (Ba_survivorat_s_p10)

                    ; #61046: <==closure== 88015 (pos)
                    (Pb_survivorat_s_p10)

                    ; #64431: <==closure== 47696 (pos)
                    (Pa_survivorat_s_p10)

                    ; #88015: origin
                    (Bb_survivorat_s_p10)

                    ; #35376: <==negation-removal== 43612 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #48067: <==negation-removal== 88015 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #68742: <==negation-removal== 61046 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #72623: <==negation-removal== 14391 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #72773: <==negation-removal== 47696 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #85015: <==negation-removal== 64431 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #14391: origin
                    (Bc_survivorat_s_p10)

                    ; #43612: <==closure== 14391 (pos)
                    (Pc_survivorat_s_p10)

                    ; #47696: origin
                    (Ba_survivorat_s_p10)

                    ; #61046: <==closure== 88015 (pos)
                    (Pb_survivorat_s_p10)

                    ; #64431: <==closure== 47696 (pos)
                    (Pa_survivorat_s_p10)

                    ; #88015: origin
                    (Bb_survivorat_s_p10)

                    ; #35376: <==negation-removal== 43612 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #48067: <==negation-removal== 88015 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #68742: <==negation-removal== 61046 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #72623: <==negation-removal== 14391 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #72773: <==negation-removal== 47696 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #85015: <==negation-removal== 64431 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (at_a_p11)
                           (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11))
        :effect (and
                    ; #30087: origin
                    (Bb_survivorat_s_p11)

                    ; #36285: origin
                    (Bc_survivorat_s_p11)

                    ; #45060: origin
                    (Ba_survivorat_s_p11)

                    ; #49334: <==closure== 36285 (pos)
                    (Pc_survivorat_s_p11)

                    ; #63662: <==closure== 45060 (pos)
                    (Pa_survivorat_s_p11)

                    ; #90247: <==closure== 30087 (pos)
                    (Pb_survivorat_s_p11)

                    ; #11385: <==negation-removal== 49334 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #11785: <==negation-removal== 45060 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #26562: <==negation-removal== 90247 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #31099: <==negation-removal== 30087 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #84703: <==negation-removal== 36285 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #89613: <==negation-removal== 63662 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #30087: origin
                    (Bb_survivorat_s_p11)

                    ; #36285: origin
                    (Bc_survivorat_s_p11)

                    ; #45060: origin
                    (Ba_survivorat_s_p11)

                    ; #49334: <==closure== 36285 (pos)
                    (Pc_survivorat_s_p11)

                    ; #63662: <==closure== 45060 (pos)
                    (Pa_survivorat_s_p11)

                    ; #90247: <==closure== 30087 (pos)
                    (Pb_survivorat_s_p11)

                    ; #11385: <==negation-removal== 49334 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #11785: <==negation-removal== 45060 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #26562: <==negation-removal== 90247 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #31099: <==negation-removal== 30087 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #84703: <==negation-removal== 36285 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #89613: <==negation-removal== 63662 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #30087: origin
                    (Bb_survivorat_s_p11)

                    ; #36285: origin
                    (Bc_survivorat_s_p11)

                    ; #45060: origin
                    (Ba_survivorat_s_p11)

                    ; #49334: <==closure== 36285 (pos)
                    (Pc_survivorat_s_p11)

                    ; #63662: <==closure== 45060 (pos)
                    (Pa_survivorat_s_p11)

                    ; #90247: <==closure== 30087 (pos)
                    (Pb_survivorat_s_p11)

                    ; #11385: <==negation-removal== 49334 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #11785: <==negation-removal== 45060 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #26562: <==negation-removal== 90247 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #31099: <==negation-removal== 30087 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #84703: <==negation-removal== 36285 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #89613: <==negation-removal== 63662 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #10412: <==closure== 48801 (pos)
                    (Pb_survivorat_s_p12)

                    ; #36241: origin
                    (Bc_survivorat_s_p12)

                    ; #48801: origin
                    (Bb_survivorat_s_p12)

                    ; #53340: origin
                    (Ba_survivorat_s_p12)

                    ; #64202: <==closure== 36241 (pos)
                    (Pc_survivorat_s_p12)

                    ; #72745: <==closure== 53340 (pos)
                    (Pa_survivorat_s_p12)

                    ; #17560: <==negation-removal== 64202 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #29853: <==negation-removal== 10412 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #53101: <==negation-removal== 53340 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #57375: <==negation-removal== 36241 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #58900: <==negation-removal== 48801 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #69357: <==negation-removal== 72745 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #10412: <==closure== 48801 (pos)
                    (Pb_survivorat_s_p12)

                    ; #36241: origin
                    (Bc_survivorat_s_p12)

                    ; #48801: origin
                    (Bb_survivorat_s_p12)

                    ; #53340: origin
                    (Ba_survivorat_s_p12)

                    ; #64202: <==closure== 36241 (pos)
                    (Pc_survivorat_s_p12)

                    ; #72745: <==closure== 53340 (pos)
                    (Pa_survivorat_s_p12)

                    ; #17560: <==negation-removal== 64202 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #29853: <==negation-removal== 10412 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #53101: <==negation-removal== 53340 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #57375: <==negation-removal== 36241 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #58900: <==negation-removal== 48801 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #69357: <==negation-removal== 72745 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #10412: <==closure== 48801 (pos)
                    (Pb_survivorat_s_p12)

                    ; #36241: origin
                    (Bc_survivorat_s_p12)

                    ; #48801: origin
                    (Bb_survivorat_s_p12)

                    ; #53340: origin
                    (Ba_survivorat_s_p12)

                    ; #64202: <==closure== 36241 (pos)
                    (Pc_survivorat_s_p12)

                    ; #72745: <==closure== 53340 (pos)
                    (Pa_survivorat_s_p12)

                    ; #17560: <==negation-removal== 64202 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #29853: <==negation-removal== 10412 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #53101: <==negation-removal== 53340 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #57375: <==negation-removal== 36241 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #58900: <==negation-removal== 48801 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #69357: <==negation-removal== 72745 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #22330: origin
                    (Bc_survivorat_s_p1)

                    ; #31601: origin
                    (Ba_survivorat_s_p1)

                    ; #40593: <==closure== 22330 (pos)
                    (Pc_survivorat_s_p1)

                    ; #45482: <==closure== 31601 (pos)
                    (Pa_survivorat_s_p1)

                    ; #65115: <==closure== 77159 (pos)
                    (Pb_survivorat_s_p1)

                    ; #77159: origin
                    (Bb_survivorat_s_p1)

                    ; #21810: <==negation-removal== 45482 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #25697: <==negation-removal== 40593 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #35645: <==negation-removal== 65115 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #60923: <==negation-removal== 22330 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #66072: <==negation-removal== 31601 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #84220: <==negation-removal== 77159 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #22330: origin
                    (Bc_survivorat_s_p1)

                    ; #31601: origin
                    (Ba_survivorat_s_p1)

                    ; #40593: <==closure== 22330 (pos)
                    (Pc_survivorat_s_p1)

                    ; #45482: <==closure== 31601 (pos)
                    (Pa_survivorat_s_p1)

                    ; #65115: <==closure== 77159 (pos)
                    (Pb_survivorat_s_p1)

                    ; #77159: origin
                    (Bb_survivorat_s_p1)

                    ; #21810: <==negation-removal== 45482 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #25697: <==negation-removal== 40593 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #35645: <==negation-removal== 65115 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #60923: <==negation-removal== 22330 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #66072: <==negation-removal== 31601 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #84220: <==negation-removal== 77159 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #22330: origin
                    (Bc_survivorat_s_p1)

                    ; #31601: origin
                    (Ba_survivorat_s_p1)

                    ; #40593: <==closure== 22330 (pos)
                    (Pc_survivorat_s_p1)

                    ; #45482: <==closure== 31601 (pos)
                    (Pa_survivorat_s_p1)

                    ; #65115: <==closure== 77159 (pos)
                    (Pb_survivorat_s_p1)

                    ; #77159: origin
                    (Bb_survivorat_s_p1)

                    ; #21810: <==negation-removal== 45482 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #25697: <==negation-removal== 40593 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #35645: <==negation-removal== 65115 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #60923: <==negation-removal== 22330 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #66072: <==negation-removal== 31601 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #84220: <==negation-removal== 77159 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #12055: origin
                    (Bc_survivorat_s_p2)

                    ; #27586: origin
                    (Bb_survivorat_s_p2)

                    ; #30709: <==closure== 27586 (pos)
                    (Pb_survivorat_s_p2)

                    ; #45911: origin
                    (Ba_survivorat_s_p2)

                    ; #46610: <==closure== 45911 (pos)
                    (Pa_survivorat_s_p2)

                    ; #62291: <==closure== 12055 (pos)
                    (Pc_survivorat_s_p2)

                    ; #38158: <==negation-removal== 27586 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #43595: <==negation-removal== 45911 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #44683: <==negation-removal== 12055 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #74453: <==negation-removal== 62291 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #75502: <==negation-removal== 30709 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #91396: <==negation-removal== 46610 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #12055: origin
                    (Bc_survivorat_s_p2)

                    ; #27586: origin
                    (Bb_survivorat_s_p2)

                    ; #30709: <==closure== 27586 (pos)
                    (Pb_survivorat_s_p2)

                    ; #45911: origin
                    (Ba_survivorat_s_p2)

                    ; #46610: <==closure== 45911 (pos)
                    (Pa_survivorat_s_p2)

                    ; #62291: <==closure== 12055 (pos)
                    (Pc_survivorat_s_p2)

                    ; #38158: <==negation-removal== 27586 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #43595: <==negation-removal== 45911 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #44683: <==negation-removal== 12055 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #74453: <==negation-removal== 62291 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #75502: <==negation-removal== 30709 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #91396: <==negation-removal== 46610 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #12055: origin
                    (Bc_survivorat_s_p2)

                    ; #27586: origin
                    (Bb_survivorat_s_p2)

                    ; #30709: <==closure== 27586 (pos)
                    (Pb_survivorat_s_p2)

                    ; #45911: origin
                    (Ba_survivorat_s_p2)

                    ; #46610: <==closure== 45911 (pos)
                    (Pa_survivorat_s_p2)

                    ; #62291: <==closure== 12055 (pos)
                    (Pc_survivorat_s_p2)

                    ; #38158: <==negation-removal== 27586 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #43595: <==negation-removal== 45911 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #44683: <==negation-removal== 12055 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #74453: <==negation-removal== 62291 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #75502: <==negation-removal== 30709 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #91396: <==negation-removal== 46610 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #20740: <==closure== 65231 (pos)
                    (Pb_survivorat_s_p3)

                    ; #24843: origin
                    (Ba_survivorat_s_p3)

                    ; #42840: <==closure== 79259 (pos)
                    (Pc_survivorat_s_p3)

                    ; #46841: <==closure== 24843 (pos)
                    (Pa_survivorat_s_p3)

                    ; #65231: origin
                    (Bb_survivorat_s_p3)

                    ; #79259: origin
                    (Bc_survivorat_s_p3)

                    ; #47879: <==negation-removal== 24843 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #51238: <==negation-removal== 42840 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #72628: <==negation-removal== 20740 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #76003: <==negation-removal== 79259 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #79396: <==negation-removal== 46841 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #90636: <==negation-removal== 65231 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #20740: <==closure== 65231 (pos)
                    (Pb_survivorat_s_p3)

                    ; #24843: origin
                    (Ba_survivorat_s_p3)

                    ; #42840: <==closure== 79259 (pos)
                    (Pc_survivorat_s_p3)

                    ; #46841: <==closure== 24843 (pos)
                    (Pa_survivorat_s_p3)

                    ; #65231: origin
                    (Bb_survivorat_s_p3)

                    ; #79259: origin
                    (Bc_survivorat_s_p3)

                    ; #47879: <==negation-removal== 24843 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #51238: <==negation-removal== 42840 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #72628: <==negation-removal== 20740 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #76003: <==negation-removal== 79259 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #79396: <==negation-removal== 46841 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #90636: <==negation-removal== 65231 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #20740: <==closure== 65231 (pos)
                    (Pb_survivorat_s_p3)

                    ; #24843: origin
                    (Ba_survivorat_s_p3)

                    ; #42840: <==closure== 79259 (pos)
                    (Pc_survivorat_s_p3)

                    ; #46841: <==closure== 24843 (pos)
                    (Pa_survivorat_s_p3)

                    ; #65231: origin
                    (Bb_survivorat_s_p3)

                    ; #79259: origin
                    (Bc_survivorat_s_p3)

                    ; #47879: <==negation-removal== 24843 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #51238: <==negation-removal== 42840 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #72628: <==negation-removal== 20740 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #76003: <==negation-removal== 79259 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #79396: <==negation-removal== 46841 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #90636: <==negation-removal== 65231 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #30244: origin
                    (Bc_survivorat_s_p4)

                    ; #36156: <==closure== 39718 (pos)
                    (Pa_survivorat_s_p4)

                    ; #39096: origin
                    (Bb_survivorat_s_p4)

                    ; #39718: origin
                    (Ba_survivorat_s_p4)

                    ; #56180: <==closure== 30244 (pos)
                    (Pc_survivorat_s_p4)

                    ; #80472: <==closure== 39096 (pos)
                    (Pb_survivorat_s_p4)

                    ; #14986: <==negation-removal== 56180 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #37168: <==negation-removal== 39096 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #42852: <==negation-removal== 36156 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #52686: <==negation-removal== 39718 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #64712: <==negation-removal== 30244 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #84035: <==negation-removal== 80472 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #30244: origin
                    (Bc_survivorat_s_p4)

                    ; #36156: <==closure== 39718 (pos)
                    (Pa_survivorat_s_p4)

                    ; #39096: origin
                    (Bb_survivorat_s_p4)

                    ; #39718: origin
                    (Ba_survivorat_s_p4)

                    ; #56180: <==closure== 30244 (pos)
                    (Pc_survivorat_s_p4)

                    ; #80472: <==closure== 39096 (pos)
                    (Pb_survivorat_s_p4)

                    ; #14986: <==negation-removal== 56180 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #37168: <==negation-removal== 39096 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #42852: <==negation-removal== 36156 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #52686: <==negation-removal== 39718 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #64712: <==negation-removal== 30244 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #84035: <==negation-removal== 80472 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (at_c_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #30244: origin
                    (Bc_survivorat_s_p4)

                    ; #36156: <==closure== 39718 (pos)
                    (Pa_survivorat_s_p4)

                    ; #39096: origin
                    (Bb_survivorat_s_p4)

                    ; #39718: origin
                    (Ba_survivorat_s_p4)

                    ; #56180: <==closure== 30244 (pos)
                    (Pc_survivorat_s_p4)

                    ; #80472: <==closure== 39096 (pos)
                    (Pb_survivorat_s_p4)

                    ; #14986: <==negation-removal== 56180 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #37168: <==negation-removal== 39096 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #42852: <==negation-removal== 36156 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #52686: <==negation-removal== 39718 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #64712: <==negation-removal== 30244 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #84035: <==negation-removal== 80472 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #10777: <==closure== 33790 (pos)
                    (Pa_survivorat_s_p5)

                    ; #33790: origin
                    (Ba_survivorat_s_p5)

                    ; #43536: origin
                    (Bc_survivorat_s_p5)

                    ; #64671: <==closure== 75071 (pos)
                    (Pb_survivorat_s_p5)

                    ; #75071: origin
                    (Bb_survivorat_s_p5)

                    ; #80929: <==closure== 43536 (pos)
                    (Pc_survivorat_s_p5)

                    ; #15088: <==negation-removal== 80929 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #43238: <==negation-removal== 64671 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #44635: <==negation-removal== 43536 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #64940: <==negation-removal== 10777 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #77507: <==negation-removal== 75071 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #78021: <==negation-removal== 33790 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #10777: <==closure== 33790 (pos)
                    (Pa_survivorat_s_p5)

                    ; #33790: origin
                    (Ba_survivorat_s_p5)

                    ; #43536: origin
                    (Bc_survivorat_s_p5)

                    ; #64671: <==closure== 75071 (pos)
                    (Pb_survivorat_s_p5)

                    ; #75071: origin
                    (Bb_survivorat_s_p5)

                    ; #80929: <==closure== 43536 (pos)
                    (Pc_survivorat_s_p5)

                    ; #15088: <==negation-removal== 80929 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #43238: <==negation-removal== 64671 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #44635: <==negation-removal== 43536 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #64940: <==negation-removal== 10777 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #77507: <==negation-removal== 75071 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #78021: <==negation-removal== 33790 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #10777: <==closure== 33790 (pos)
                    (Pa_survivorat_s_p5)

                    ; #33790: origin
                    (Ba_survivorat_s_p5)

                    ; #43536: origin
                    (Bc_survivorat_s_p5)

                    ; #64671: <==closure== 75071 (pos)
                    (Pb_survivorat_s_p5)

                    ; #75071: origin
                    (Bb_survivorat_s_p5)

                    ; #80929: <==closure== 43536 (pos)
                    (Pc_survivorat_s_p5)

                    ; #15088: <==negation-removal== 80929 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #43238: <==negation-removal== 64671 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #44635: <==negation-removal== 43536 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #64940: <==negation-removal== 10777 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #77507: <==negation-removal== 75071 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #78021: <==negation-removal== 33790 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #43760: <==closure== 84197 (pos)
                    (Pa_survivorat_s_p6)

                    ; #58185: origin
                    (Bc_survivorat_s_p6)

                    ; #63356: origin
                    (Bb_survivorat_s_p6)

                    ; #66547: <==closure== 58185 (pos)
                    (Pc_survivorat_s_p6)

                    ; #84197: origin
                    (Ba_survivorat_s_p6)

                    ; #86576: <==closure== 63356 (pos)
                    (Pb_survivorat_s_p6)

                    ; #22810: <==negation-removal== 43760 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #31811: <==negation-removal== 63356 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #67839: <==negation-removal== 86576 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #78393: <==negation-removal== 84197 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #87077: <==negation-removal== 66547 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #88914: <==negation-removal== 58185 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #43760: <==closure== 84197 (pos)
                    (Pa_survivorat_s_p6)

                    ; #58185: origin
                    (Bc_survivorat_s_p6)

                    ; #63356: origin
                    (Bb_survivorat_s_p6)

                    ; #66547: <==closure== 58185 (pos)
                    (Pc_survivorat_s_p6)

                    ; #84197: origin
                    (Ba_survivorat_s_p6)

                    ; #86576: <==closure== 63356 (pos)
                    (Pb_survivorat_s_p6)

                    ; #22810: <==negation-removal== 43760 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #31811: <==negation-removal== 63356 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #67839: <==negation-removal== 86576 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #78393: <==negation-removal== 84197 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #87077: <==negation-removal== 66547 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #88914: <==negation-removal== 58185 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #43760: <==closure== 84197 (pos)
                    (Pa_survivorat_s_p6)

                    ; #58185: origin
                    (Bc_survivorat_s_p6)

                    ; #63356: origin
                    (Bb_survivorat_s_p6)

                    ; #66547: <==closure== 58185 (pos)
                    (Pc_survivorat_s_p6)

                    ; #84197: origin
                    (Ba_survivorat_s_p6)

                    ; #86576: <==closure== 63356 (pos)
                    (Pb_survivorat_s_p6)

                    ; #22810: <==negation-removal== 43760 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #31811: <==negation-removal== 63356 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #67839: <==negation-removal== 86576 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #78393: <==negation-removal== 84197 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #87077: <==negation-removal== 66547 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #88914: <==negation-removal== 58185 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #18190: origin
                    (Ba_survivorat_s_p7)

                    ; #49789: origin
                    (Bb_survivorat_s_p7)

                    ; #56458: <==closure== 18190 (pos)
                    (Pa_survivorat_s_p7)

                    ; #71224: <==closure== 49789 (pos)
                    (Pb_survivorat_s_p7)

                    ; #86762: origin
                    (Bc_survivorat_s_p7)

                    ; #96856: <==closure== 86762 (pos)
                    (Pc_survivorat_s_p7)

                    ; #17661: <==negation-removal== 49789 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #23110: <==negation-removal== 86762 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #26994: <==negation-removal== 18190 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #58330: <==negation-removal== 71224 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #71885: <==negation-removal== 56458 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #90935: <==negation-removal== 96856 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #18190: origin
                    (Ba_survivorat_s_p7)

                    ; #49789: origin
                    (Bb_survivorat_s_p7)

                    ; #56458: <==closure== 18190 (pos)
                    (Pa_survivorat_s_p7)

                    ; #71224: <==closure== 49789 (pos)
                    (Pb_survivorat_s_p7)

                    ; #86762: origin
                    (Bc_survivorat_s_p7)

                    ; #96856: <==closure== 86762 (pos)
                    (Pc_survivorat_s_p7)

                    ; #17661: <==negation-removal== 49789 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #23110: <==negation-removal== 86762 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #26994: <==negation-removal== 18190 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #58330: <==negation-removal== 71224 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #71885: <==negation-removal== 56458 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #90935: <==negation-removal== 96856 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #18190: origin
                    (Ba_survivorat_s_p7)

                    ; #49789: origin
                    (Bb_survivorat_s_p7)

                    ; #56458: <==closure== 18190 (pos)
                    (Pa_survivorat_s_p7)

                    ; #71224: <==closure== 49789 (pos)
                    (Pb_survivorat_s_p7)

                    ; #86762: origin
                    (Bc_survivorat_s_p7)

                    ; #96856: <==closure== 86762 (pos)
                    (Pc_survivorat_s_p7)

                    ; #17661: <==negation-removal== 49789 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #23110: <==negation-removal== 86762 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #26994: <==negation-removal== 18190 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #58330: <==negation-removal== 71224 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #71885: <==negation-removal== 56458 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #90935: <==negation-removal== 96856 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #12187: origin
                    (Ba_survivorat_s_p8)

                    ; #16309: <==closure== 49323 (pos)
                    (Pb_survivorat_s_p8)

                    ; #32498: origin
                    (Bc_survivorat_s_p8)

                    ; #49323: origin
                    (Bb_survivorat_s_p8)

                    ; #50047: <==closure== 12187 (pos)
                    (Pa_survivorat_s_p8)

                    ; #60224: <==closure== 32498 (pos)
                    (Pc_survivorat_s_p8)

                    ; #22933: <==negation-removal== 16309 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #31984: <==negation-removal== 49323 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #39147: <==negation-removal== 50047 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #59655: <==negation-removal== 60224 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #90303: <==negation-removal== 12187 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #96689: <==negation-removal== 32498 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #12187: origin
                    (Ba_survivorat_s_p8)

                    ; #16309: <==closure== 49323 (pos)
                    (Pb_survivorat_s_p8)

                    ; #32498: origin
                    (Bc_survivorat_s_p8)

                    ; #49323: origin
                    (Bb_survivorat_s_p8)

                    ; #50047: <==closure== 12187 (pos)
                    (Pa_survivorat_s_p8)

                    ; #60224: <==closure== 32498 (pos)
                    (Pc_survivorat_s_p8)

                    ; #22933: <==negation-removal== 16309 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #31984: <==negation-removal== 49323 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #39147: <==negation-removal== 50047 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #59655: <==negation-removal== 60224 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #90303: <==negation-removal== 12187 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #96689: <==negation-removal== 32498 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #12187: origin
                    (Ba_survivorat_s_p8)

                    ; #16309: <==closure== 49323 (pos)
                    (Pb_survivorat_s_p8)

                    ; #32498: origin
                    (Bc_survivorat_s_p8)

                    ; #49323: origin
                    (Bb_survivorat_s_p8)

                    ; #50047: <==closure== 12187 (pos)
                    (Pa_survivorat_s_p8)

                    ; #60224: <==closure== 32498 (pos)
                    (Pc_survivorat_s_p8)

                    ; #22933: <==negation-removal== 16309 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #31984: <==negation-removal== 49323 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #39147: <==negation-removal== 50047 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #59655: <==negation-removal== 60224 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #90303: <==negation-removal== 12187 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #96689: <==negation-removal== 32498 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #19967: <==closure== 28664 (pos)
                    (Pc_survivorat_s_p9)

                    ; #28664: origin
                    (Bc_survivorat_s_p9)

                    ; #51495: origin
                    (Bb_survivorat_s_p9)

                    ; #62351: <==closure== 51495 (pos)
                    (Pb_survivorat_s_p9)

                    ; #84858: origin
                    (Ba_survivorat_s_p9)

                    ; #91039: <==closure== 84858 (pos)
                    (Pa_survivorat_s_p9)

                    ; #11006: <==negation-removal== 62351 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #19522: <==negation-removal== 91039 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #27549: <==negation-removal== 51495 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #44765: <==negation-removal== 19967 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #53864: <==negation-removal== 28664 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #87320: <==negation-removal== 84858 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #19967: <==closure== 28664 (pos)
                    (Pc_survivorat_s_p9)

                    ; #28664: origin
                    (Bc_survivorat_s_p9)

                    ; #51495: origin
                    (Bb_survivorat_s_p9)

                    ; #62351: <==closure== 51495 (pos)
                    (Pb_survivorat_s_p9)

                    ; #84858: origin
                    (Ba_survivorat_s_p9)

                    ; #91039: <==closure== 84858 (pos)
                    (Pa_survivorat_s_p9)

                    ; #11006: <==negation-removal== 62351 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #19522: <==negation-removal== 91039 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #27549: <==negation-removal== 51495 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #44765: <==negation-removal== 19967 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #53864: <==negation-removal== 28664 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #87320: <==negation-removal== 84858 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #19967: <==closure== 28664 (pos)
                    (Pc_survivorat_s_p9)

                    ; #28664: origin
                    (Bc_survivorat_s_p9)

                    ; #51495: origin
                    (Bb_survivorat_s_p9)

                    ; #62351: <==closure== 51495 (pos)
                    (Pb_survivorat_s_p9)

                    ; #84858: origin
                    (Ba_survivorat_s_p9)

                    ; #91039: <==closure== 84858 (pos)
                    (Pa_survivorat_s_p9)

                    ; #11006: <==negation-removal== 62351 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #19522: <==negation-removal== 91039 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #27549: <==negation-removal== 51495 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #44765: <==negation-removal== 19967 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #53864: <==negation-removal== 28664 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #87320: <==negation-removal== 84858 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #45779: origin
                    (at_a_p1)

                    ; #63843: origin
                    (not_at_a_p10)

                    ; #16978: <==negation-removal== 63843 (pos)
                    (not (at_a_p10))

                    ; #58963: <==negation-removal== 45779 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #16978: origin
                    (at_a_p10)

                    ; #63843: origin
                    (not_at_a_p10)

                    ; #16978: <==negation-removal== 63843 (pos)
                    (not (at_a_p10))

                    ; #63843: <==negation-removal== 16978 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #63843: origin
                    (not_at_a_p10)

                    ; #88057: origin
                    (at_a_p11)

                    ; #16978: <==negation-removal== 63843 (pos)
                    (not (at_a_p10))

                    ; #58885: <==negation-removal== 88057 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10))
        :effect (and
                    ; #63843: origin
                    (not_at_a_p10)

                    ; #83859: origin
                    (at_a_p12)

                    ; #16978: <==negation-removal== 63843 (pos)
                    (not (at_a_p10))

                    ; #78201: <==negation-removal== 83859 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10))
        :effect (and
                    ; #25337: origin
                    (at_a_p2)

                    ; #63843: origin
                    (not_at_a_p10)

                    ; #16978: <==negation-removal== 63843 (pos)
                    (not (at_a_p10))

                    ; #30477: <==negation-removal== 25337 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10))
        :effect (and
                    ; #63843: origin
                    (not_at_a_p10)

                    ; #87981: origin
                    (at_a_p3)

                    ; #16978: <==negation-removal== 63843 (pos)
                    (not (at_a_p10))

                    ; #48552: <==negation-removal== 87981 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10))
        :effect (and
                    ; #14853: origin
                    (at_a_p4)

                    ; #63843: origin
                    (not_at_a_p10)

                    ; #16978: <==negation-removal== 63843 (pos)
                    (not (at_a_p10))

                    ; #51942: <==negation-removal== 14853 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (at_a_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #44991: origin
                    (at_a_p5)

                    ; #63843: origin
                    (not_at_a_p10)

                    ; #16978: <==negation-removal== 63843 (pos)
                    (not (at_a_p10))

                    ; #49290: <==negation-removal== 44991 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10))
        :effect (and
                    ; #53173: origin
                    (at_a_p6)

                    ; #63843: origin
                    (not_at_a_p10)

                    ; #16978: <==negation-removal== 63843 (pos)
                    (not (at_a_p10))

                    ; #77503: <==negation-removal== 53173 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10))
        :effect (and
                    ; #63843: origin
                    (not_at_a_p10)

                    ; #69138: origin
                    (at_a_p7)

                    ; #16978: <==negation-removal== 63843 (pos)
                    (not (at_a_p10))

                    ; #73047: <==negation-removal== 69138 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10))
        :effect (and
                    ; #63843: origin
                    (not_at_a_p10)

                    ; #75687: origin
                    (at_a_p8)

                    ; #16978: <==negation-removal== 63843 (pos)
                    (not (at_a_p10))

                    ; #76007: <==negation-removal== 75687 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10))
        :effect (and
                    ; #26387: origin
                    (at_a_p9)

                    ; #63843: origin
                    (not_at_a_p10)

                    ; #16978: <==negation-removal== 63843 (pos)
                    (not (at_a_p10))

                    ; #52395: <==negation-removal== 26387 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #45779: origin
                    (at_a_p1)

                    ; #58885: origin
                    (not_at_a_p11)

                    ; #58963: <==negation-removal== 45779 (pos)
                    (not (not_at_a_p1))

                    ; #88057: <==negation-removal== 58885 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #16978: origin
                    (at_a_p10)

                    ; #58885: origin
                    (not_at_a_p11)

                    ; #63843: <==negation-removal== 16978 (pos)
                    (not (not_at_a_p10))

                    ; #88057: <==negation-removal== 58885 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #58885: origin
                    (not_at_a_p11)

                    ; #88057: origin
                    (at_a_p11)

                    ; #58885: <==negation-removal== 88057 (pos)
                    (not (not_at_a_p11))

                    ; #88057: <==negation-removal== 58885 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (at_a_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #58885: origin
                    (not_at_a_p11)

                    ; #83859: origin
                    (at_a_p12)

                    ; #78201: <==negation-removal== 83859 (pos)
                    (not (not_at_a_p12))

                    ; #88057: <==negation-removal== 58885 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #25337: origin
                    (at_a_p2)

                    ; #58885: origin
                    (not_at_a_p11)

                    ; #30477: <==negation-removal== 25337 (pos)
                    (not (not_at_a_p2))

                    ; #88057: <==negation-removal== 58885 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #58885: origin
                    (not_at_a_p11)

                    ; #87981: origin
                    (at_a_p3)

                    ; #48552: <==negation-removal== 87981 (pos)
                    (not (not_at_a_p3))

                    ; #88057: <==negation-removal== 58885 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p4
        :precondition (and (at_a_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #14853: origin
                    (at_a_p4)

                    ; #58885: origin
                    (not_at_a_p11)

                    ; #51942: <==negation-removal== 14853 (pos)
                    (not (not_at_a_p4))

                    ; #88057: <==negation-removal== 58885 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #44991: origin
                    (at_a_p5)

                    ; #58885: origin
                    (not_at_a_p11)

                    ; #49290: <==negation-removal== 44991 (pos)
                    (not (not_at_a_p5))

                    ; #88057: <==negation-removal== 58885 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #53173: origin
                    (at_a_p6)

                    ; #58885: origin
                    (not_at_a_p11)

                    ; #77503: <==negation-removal== 53173 (pos)
                    (not (not_at_a_p6))

                    ; #88057: <==negation-removal== 58885 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #58885: origin
                    (not_at_a_p11)

                    ; #69138: origin
                    (at_a_p7)

                    ; #73047: <==negation-removal== 69138 (pos)
                    (not (not_at_a_p7))

                    ; #88057: <==negation-removal== 58885 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p8
        :precondition (and (at_a_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #58885: origin
                    (not_at_a_p11)

                    ; #75687: origin
                    (at_a_p8)

                    ; #76007: <==negation-removal== 75687 (pos)
                    (not (not_at_a_p8))

                    ; #88057: <==negation-removal== 58885 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #26387: origin
                    (at_a_p9)

                    ; #58885: origin
                    (not_at_a_p11)

                    ; #52395: <==negation-removal== 26387 (pos)
                    (not (not_at_a_p9))

                    ; #88057: <==negation-removal== 58885 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (at_a_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #45779: origin
                    (at_a_p1)

                    ; #78201: origin
                    (not_at_a_p12)

                    ; #58963: <==negation-removal== 45779 (pos)
                    (not (not_at_a_p1))

                    ; #83859: <==negation-removal== 78201 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12))
        :effect (and
                    ; #16978: origin
                    (at_a_p10)

                    ; #78201: origin
                    (not_at_a_p12)

                    ; #63843: <==negation-removal== 16978 (pos)
                    (not (not_at_a_p10))

                    ; #83859: <==negation-removal== 78201 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12))
        :effect (and
                    ; #78201: origin
                    (not_at_a_p12)

                    ; #88057: origin
                    (at_a_p11)

                    ; #58885: <==negation-removal== 88057 (pos)
                    (not (not_at_a_p11))

                    ; #83859: <==negation-removal== 78201 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (at_a_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #78201: origin
                    (not_at_a_p12)

                    ; #83859: origin
                    (at_a_p12)

                    ; #78201: <==negation-removal== 83859 (pos)
                    (not (not_at_a_p12))

                    ; #83859: <==negation-removal== 78201 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12))
        :effect (and
                    ; #25337: origin
                    (at_a_p2)

                    ; #78201: origin
                    (not_at_a_p12)

                    ; #30477: <==negation-removal== 25337 (pos)
                    (not (not_at_a_p2))

                    ; #83859: <==negation-removal== 78201 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #78201: origin
                    (not_at_a_p12)

                    ; #87981: origin
                    (at_a_p3)

                    ; #48552: <==negation-removal== 87981 (pos)
                    (not (not_at_a_p3))

                    ; #83859: <==negation-removal== 78201 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (at_a_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #14853: origin
                    (at_a_p4)

                    ; #78201: origin
                    (not_at_a_p12)

                    ; #51942: <==negation-removal== 14853 (pos)
                    (not (not_at_a_p4))

                    ; #83859: <==negation-removal== 78201 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (at_a_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #44991: origin
                    (at_a_p5)

                    ; #78201: origin
                    (not_at_a_p12)

                    ; #49290: <==negation-removal== 44991 (pos)
                    (not (not_at_a_p5))

                    ; #83859: <==negation-removal== 78201 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12))
        :effect (and
                    ; #53173: origin
                    (at_a_p6)

                    ; #78201: origin
                    (not_at_a_p12)

                    ; #77503: <==negation-removal== 53173 (pos)
                    (not (not_at_a_p6))

                    ; #83859: <==negation-removal== 78201 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12))
        :effect (and
                    ; #69138: origin
                    (at_a_p7)

                    ; #78201: origin
                    (not_at_a_p12)

                    ; #73047: <==negation-removal== 69138 (pos)
                    (not (not_at_a_p7))

                    ; #83859: <==negation-removal== 78201 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (at_a_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #75687: origin
                    (at_a_p8)

                    ; #78201: origin
                    (not_at_a_p12)

                    ; #76007: <==negation-removal== 75687 (pos)
                    (not (not_at_a_p8))

                    ; #83859: <==negation-removal== 78201 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12))
        :effect (and
                    ; #26387: origin
                    (at_a_p9)

                    ; #78201: origin
                    (not_at_a_p12)

                    ; #52395: <==negation-removal== 26387 (pos)
                    (not (not_at_a_p9))

                    ; #83859: <==negation-removal== 78201 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #45779: origin
                    (at_a_p1)

                    ; #58963: origin
                    (not_at_a_p1)

                    ; #45779: <==negation-removal== 58963 (pos)
                    (not (at_a_p1))

                    ; #58963: <==negation-removal== 45779 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #16978: origin
                    (at_a_p10)

                    ; #58963: origin
                    (not_at_a_p1)

                    ; #45779: <==negation-removal== 58963 (pos)
                    (not (at_a_p1))

                    ; #63843: <==negation-removal== 16978 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #58963: origin
                    (not_at_a_p1)

                    ; #88057: origin
                    (at_a_p11)

                    ; #45779: <==negation-removal== 58963 (pos)
                    (not (at_a_p1))

                    ; #58885: <==negation-removal== 88057 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #58963: origin
                    (not_at_a_p1)

                    ; #83859: origin
                    (at_a_p12)

                    ; #45779: <==negation-removal== 58963 (pos)
                    (not (at_a_p1))

                    ; #78201: <==negation-removal== 83859 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #25337: origin
                    (at_a_p2)

                    ; #58963: origin
                    (not_at_a_p1)

                    ; #30477: <==negation-removal== 25337 (pos)
                    (not (not_at_a_p2))

                    ; #45779: <==negation-removal== 58963 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #58963: origin
                    (not_at_a_p1)

                    ; #87981: origin
                    (at_a_p3)

                    ; #45779: <==negation-removal== 58963 (pos)
                    (not (at_a_p1))

                    ; #48552: <==negation-removal== 87981 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #14853: origin
                    (at_a_p4)

                    ; #58963: origin
                    (not_at_a_p1)

                    ; #45779: <==negation-removal== 58963 (pos)
                    (not (at_a_p1))

                    ; #51942: <==negation-removal== 14853 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #44991: origin
                    (at_a_p5)

                    ; #58963: origin
                    (not_at_a_p1)

                    ; #45779: <==negation-removal== 58963 (pos)
                    (not (at_a_p1))

                    ; #49290: <==negation-removal== 44991 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #53173: origin
                    (at_a_p6)

                    ; #58963: origin
                    (not_at_a_p1)

                    ; #45779: <==negation-removal== 58963 (pos)
                    (not (at_a_p1))

                    ; #77503: <==negation-removal== 53173 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #58963: origin
                    (not_at_a_p1)

                    ; #69138: origin
                    (at_a_p7)

                    ; #45779: <==negation-removal== 58963 (pos)
                    (not (at_a_p1))

                    ; #73047: <==negation-removal== 69138 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #58963: origin
                    (not_at_a_p1)

                    ; #75687: origin
                    (at_a_p8)

                    ; #45779: <==negation-removal== 58963 (pos)
                    (not (at_a_p1))

                    ; #76007: <==negation-removal== 75687 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #26387: origin
                    (at_a_p9)

                    ; #58963: origin
                    (not_at_a_p1)

                    ; #45779: <==negation-removal== 58963 (pos)
                    (not (at_a_p1))

                    ; #52395: <==negation-removal== 26387 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #30477: origin
                    (not_at_a_p2)

                    ; #45779: origin
                    (at_a_p1)

                    ; #25337: <==negation-removal== 30477 (pos)
                    (not (at_a_p2))

                    ; #58963: <==negation-removal== 45779 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2))
        :effect (and
                    ; #16978: origin
                    (at_a_p10)

                    ; #30477: origin
                    (not_at_a_p2)

                    ; #25337: <==negation-removal== 30477 (pos)
                    (not (at_a_p2))

                    ; #63843: <==negation-removal== 16978 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (at_a_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #30477: origin
                    (not_at_a_p2)

                    ; #88057: origin
                    (at_a_p11)

                    ; #25337: <==negation-removal== 30477 (pos)
                    (not (at_a_p2))

                    ; #58885: <==negation-removal== 88057 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2))
        :effect (and
                    ; #30477: origin
                    (not_at_a_p2)

                    ; #83859: origin
                    (at_a_p12)

                    ; #25337: <==negation-removal== 30477 (pos)
                    (not (at_a_p2))

                    ; #78201: <==negation-removal== 83859 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #25337: origin
                    (at_a_p2)

                    ; #30477: origin
                    (not_at_a_p2)

                    ; #25337: <==negation-removal== 30477 (pos)
                    (not (at_a_p2))

                    ; #30477: <==negation-removal== 25337 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #30477: origin
                    (not_at_a_p2)

                    ; #87981: origin
                    (at_a_p3)

                    ; #25337: <==negation-removal== 30477 (pos)
                    (not (at_a_p2))

                    ; #48552: <==negation-removal== 87981 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #14853: origin
                    (at_a_p4)

                    ; #30477: origin
                    (not_at_a_p2)

                    ; #25337: <==negation-removal== 30477 (pos)
                    (not (at_a_p2))

                    ; #51942: <==negation-removal== 14853 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #30477: origin
                    (not_at_a_p2)

                    ; #44991: origin
                    (at_a_p5)

                    ; #25337: <==negation-removal== 30477 (pos)
                    (not (at_a_p2))

                    ; #49290: <==negation-removal== 44991 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #30477: origin
                    (not_at_a_p2)

                    ; #53173: origin
                    (at_a_p6)

                    ; #25337: <==negation-removal== 30477 (pos)
                    (not (at_a_p2))

                    ; #77503: <==negation-removal== 53173 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #30477: origin
                    (not_at_a_p2)

                    ; #69138: origin
                    (at_a_p7)

                    ; #25337: <==negation-removal== 30477 (pos)
                    (not (at_a_p2))

                    ; #73047: <==negation-removal== 69138 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #30477: origin
                    (not_at_a_p2)

                    ; #75687: origin
                    (at_a_p8)

                    ; #25337: <==negation-removal== 30477 (pos)
                    (not (at_a_p2))

                    ; #76007: <==negation-removal== 75687 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #26387: origin
                    (at_a_p9)

                    ; #30477: origin
                    (not_at_a_p2)

                    ; #25337: <==negation-removal== 30477 (pos)
                    (not (at_a_p2))

                    ; #52395: <==negation-removal== 26387 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #45779: origin
                    (at_a_p1)

                    ; #48552: origin
                    (not_at_a_p3)

                    ; #58963: <==negation-removal== 45779 (pos)
                    (not (not_at_a_p1))

                    ; #87981: <==negation-removal== 48552 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3))
        :effect (and
                    ; #16978: origin
                    (at_a_p10)

                    ; #48552: origin
                    (not_at_a_p3)

                    ; #63843: <==negation-removal== 16978 (pos)
                    (not (not_at_a_p10))

                    ; #87981: <==negation-removal== 48552 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3))
        :effect (and
                    ; #48552: origin
                    (not_at_a_p3)

                    ; #88057: origin
                    (at_a_p11)

                    ; #58885: <==negation-removal== 88057 (pos)
                    (not (not_at_a_p11))

                    ; #87981: <==negation-removal== 48552 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3))
        :effect (and
                    ; #48552: origin
                    (not_at_a_p3)

                    ; #83859: origin
                    (at_a_p12)

                    ; #78201: <==negation-removal== 83859 (pos)
                    (not (not_at_a_p12))

                    ; #87981: <==negation-removal== 48552 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #25337: origin
                    (at_a_p2)

                    ; #48552: origin
                    (not_at_a_p3)

                    ; #30477: <==negation-removal== 25337 (pos)
                    (not (not_at_a_p2))

                    ; #87981: <==negation-removal== 48552 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #48552: origin
                    (not_at_a_p3)

                    ; #87981: origin
                    (at_a_p3)

                    ; #48552: <==negation-removal== 87981 (pos)
                    (not (not_at_a_p3))

                    ; #87981: <==negation-removal== 48552 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #14853: origin
                    (at_a_p4)

                    ; #48552: origin
                    (not_at_a_p3)

                    ; #51942: <==negation-removal== 14853 (pos)
                    (not (not_at_a_p4))

                    ; #87981: <==negation-removal== 48552 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #44991: origin
                    (at_a_p5)

                    ; #48552: origin
                    (not_at_a_p3)

                    ; #49290: <==negation-removal== 44991 (pos)
                    (not (not_at_a_p5))

                    ; #87981: <==negation-removal== 48552 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #48552: origin
                    (not_at_a_p3)

                    ; #53173: origin
                    (at_a_p6)

                    ; #77503: <==negation-removal== 53173 (pos)
                    (not (not_at_a_p6))

                    ; #87981: <==negation-removal== 48552 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #48552: origin
                    (not_at_a_p3)

                    ; #69138: origin
                    (at_a_p7)

                    ; #73047: <==negation-removal== 69138 (pos)
                    (not (not_at_a_p7))

                    ; #87981: <==negation-removal== 48552 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #48552: origin
                    (not_at_a_p3)

                    ; #75687: origin
                    (at_a_p8)

                    ; #76007: <==negation-removal== 75687 (pos)
                    (not (not_at_a_p8))

                    ; #87981: <==negation-removal== 48552 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #26387: origin
                    (at_a_p9)

                    ; #48552: origin
                    (not_at_a_p3)

                    ; #52395: <==negation-removal== 26387 (pos)
                    (not (not_at_a_p9))

                    ; #87981: <==negation-removal== 48552 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #45779: origin
                    (at_a_p1)

                    ; #51942: origin
                    (not_at_a_p4)

                    ; #14853: <==negation-removal== 51942 (pos)
                    (not (at_a_p4))

                    ; #58963: <==negation-removal== 45779 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_a_p4))
        :effect (and
                    ; #16978: origin
                    (at_a_p10)

                    ; #51942: origin
                    (not_at_a_p4)

                    ; #14853: <==negation-removal== 51942 (pos)
                    (not (at_a_p4))

                    ; #63843: <==negation-removal== 16978 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4))
        :effect (and
                    ; #51942: origin
                    (not_at_a_p4)

                    ; #88057: origin
                    (at_a_p11)

                    ; #14853: <==negation-removal== 51942 (pos)
                    (not (at_a_p4))

                    ; #58885: <==negation-removal== 88057 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_a_p4))
        :effect (and
                    ; #51942: origin
                    (not_at_a_p4)

                    ; #83859: origin
                    (at_a_p12)

                    ; #14853: <==negation-removal== 51942 (pos)
                    (not (at_a_p4))

                    ; #78201: <==negation-removal== 83859 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #25337: origin
                    (at_a_p2)

                    ; #51942: origin
                    (not_at_a_p4)

                    ; #14853: <==negation-removal== 51942 (pos)
                    (not (at_a_p4))

                    ; #30477: <==negation-removal== 25337 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #51942: origin
                    (not_at_a_p4)

                    ; #87981: origin
                    (at_a_p3)

                    ; #14853: <==negation-removal== 51942 (pos)
                    (not (at_a_p4))

                    ; #48552: <==negation-removal== 87981 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #14853: origin
                    (at_a_p4)

                    ; #51942: origin
                    (not_at_a_p4)

                    ; #14853: <==negation-removal== 51942 (pos)
                    (not (at_a_p4))

                    ; #51942: <==negation-removal== 14853 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #44991: origin
                    (at_a_p5)

                    ; #51942: origin
                    (not_at_a_p4)

                    ; #14853: <==negation-removal== 51942 (pos)
                    (not (at_a_p4))

                    ; #49290: <==negation-removal== 44991 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #51942: origin
                    (not_at_a_p4)

                    ; #53173: origin
                    (at_a_p6)

                    ; #14853: <==negation-removal== 51942 (pos)
                    (not (at_a_p4))

                    ; #77503: <==negation-removal== 53173 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #51942: origin
                    (not_at_a_p4)

                    ; #69138: origin
                    (at_a_p7)

                    ; #14853: <==negation-removal== 51942 (pos)
                    (not (at_a_p4))

                    ; #73047: <==negation-removal== 69138 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #51942: origin
                    (not_at_a_p4)

                    ; #75687: origin
                    (at_a_p8)

                    ; #14853: <==negation-removal== 51942 (pos)
                    (not (at_a_p4))

                    ; #76007: <==negation-removal== 75687 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #26387: origin
                    (at_a_p9)

                    ; #51942: origin
                    (not_at_a_p4)

                    ; #14853: <==negation-removal== 51942 (pos)
                    (not (at_a_p4))

                    ; #52395: <==negation-removal== 26387 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #45779: origin
                    (at_a_p1)

                    ; #49290: origin
                    (not_at_a_p5)

                    ; #44991: <==negation-removal== 49290 (pos)
                    (not (at_a_p5))

                    ; #58963: <==negation-removal== 45779 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #16978: origin
                    (at_a_p10)

                    ; #49290: origin
                    (not_at_a_p5)

                    ; #44991: <==negation-removal== 49290 (pos)
                    (not (at_a_p5))

                    ; #63843: <==negation-removal== 16978 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #49290: origin
                    (not_at_a_p5)

                    ; #88057: origin
                    (at_a_p11)

                    ; #44991: <==negation-removal== 49290 (pos)
                    (not (at_a_p5))

                    ; #58885: <==negation-removal== 88057 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_a_p5))
        :effect (and
                    ; #49290: origin
                    (not_at_a_p5)

                    ; #83859: origin
                    (at_a_p12)

                    ; #44991: <==negation-removal== 49290 (pos)
                    (not (at_a_p5))

                    ; #78201: <==negation-removal== 83859 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #25337: origin
                    (at_a_p2)

                    ; #49290: origin
                    (not_at_a_p5)

                    ; #30477: <==negation-removal== 25337 (pos)
                    (not (not_at_a_p2))

                    ; #44991: <==negation-removal== 49290 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #49290: origin
                    (not_at_a_p5)

                    ; #87981: origin
                    (at_a_p3)

                    ; #44991: <==negation-removal== 49290 (pos)
                    (not (at_a_p5))

                    ; #48552: <==negation-removal== 87981 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #14853: origin
                    (at_a_p4)

                    ; #49290: origin
                    (not_at_a_p5)

                    ; #44991: <==negation-removal== 49290 (pos)
                    (not (at_a_p5))

                    ; #51942: <==negation-removal== 14853 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #44991: origin
                    (at_a_p5)

                    ; #49290: origin
                    (not_at_a_p5)

                    ; #44991: <==negation-removal== 49290 (pos)
                    (not (at_a_p5))

                    ; #49290: <==negation-removal== 44991 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #49290: origin
                    (not_at_a_p5)

                    ; #53173: origin
                    (at_a_p6)

                    ; #44991: <==negation-removal== 49290 (pos)
                    (not (at_a_p5))

                    ; #77503: <==negation-removal== 53173 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #49290: origin
                    (not_at_a_p5)

                    ; #69138: origin
                    (at_a_p7)

                    ; #44991: <==negation-removal== 49290 (pos)
                    (not (at_a_p5))

                    ; #73047: <==negation-removal== 69138 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #49290: origin
                    (not_at_a_p5)

                    ; #75687: origin
                    (at_a_p8)

                    ; #44991: <==negation-removal== 49290 (pos)
                    (not (at_a_p5))

                    ; #76007: <==negation-removal== 75687 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #26387: origin
                    (at_a_p9)

                    ; #49290: origin
                    (not_at_a_p5)

                    ; #44991: <==negation-removal== 49290 (pos)
                    (not (at_a_p5))

                    ; #52395: <==negation-removal== 26387 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #45779: origin
                    (at_a_p1)

                    ; #77503: origin
                    (not_at_a_p6)

                    ; #53173: <==negation-removal== 77503 (pos)
                    (not (at_a_p6))

                    ; #58963: <==negation-removal== 45779 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #16978: origin
                    (at_a_p10)

                    ; #77503: origin
                    (not_at_a_p6)

                    ; #53173: <==negation-removal== 77503 (pos)
                    (not (at_a_p6))

                    ; #63843: <==negation-removal== 16978 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6))
        :effect (and
                    ; #77503: origin
                    (not_at_a_p6)

                    ; #88057: origin
                    (at_a_p11)

                    ; #53173: <==negation-removal== 77503 (pos)
                    (not (at_a_p6))

                    ; #58885: <==negation-removal== 88057 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6))
        :effect (and
                    ; #77503: origin
                    (not_at_a_p6)

                    ; #83859: origin
                    (at_a_p12)

                    ; #53173: <==negation-removal== 77503 (pos)
                    (not (at_a_p6))

                    ; #78201: <==negation-removal== 83859 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #25337: origin
                    (at_a_p2)

                    ; #77503: origin
                    (not_at_a_p6)

                    ; #30477: <==negation-removal== 25337 (pos)
                    (not (not_at_a_p2))

                    ; #53173: <==negation-removal== 77503 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #77503: origin
                    (not_at_a_p6)

                    ; #87981: origin
                    (at_a_p3)

                    ; #48552: <==negation-removal== 87981 (pos)
                    (not (not_at_a_p3))

                    ; #53173: <==negation-removal== 77503 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #14853: origin
                    (at_a_p4)

                    ; #77503: origin
                    (not_at_a_p6)

                    ; #51942: <==negation-removal== 14853 (pos)
                    (not (not_at_a_p4))

                    ; #53173: <==negation-removal== 77503 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #44991: origin
                    (at_a_p5)

                    ; #77503: origin
                    (not_at_a_p6)

                    ; #49290: <==negation-removal== 44991 (pos)
                    (not (not_at_a_p5))

                    ; #53173: <==negation-removal== 77503 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #53173: origin
                    (at_a_p6)

                    ; #77503: origin
                    (not_at_a_p6)

                    ; #53173: <==negation-removal== 77503 (pos)
                    (not (at_a_p6))

                    ; #77503: <==negation-removal== 53173 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #69138: origin
                    (at_a_p7)

                    ; #77503: origin
                    (not_at_a_p6)

                    ; #53173: <==negation-removal== 77503 (pos)
                    (not (at_a_p6))

                    ; #73047: <==negation-removal== 69138 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #75687: origin
                    (at_a_p8)

                    ; #77503: origin
                    (not_at_a_p6)

                    ; #53173: <==negation-removal== 77503 (pos)
                    (not (at_a_p6))

                    ; #76007: <==negation-removal== 75687 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #26387: origin
                    (at_a_p9)

                    ; #77503: origin
                    (not_at_a_p6)

                    ; #52395: <==negation-removal== 26387 (pos)
                    (not (not_at_a_p9))

                    ; #53173: <==negation-removal== 77503 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #45779: origin
                    (at_a_p1)

                    ; #73047: origin
                    (not_at_a_p7)

                    ; #58963: <==negation-removal== 45779 (pos)
                    (not (not_at_a_p1))

                    ; #69138: <==negation-removal== 73047 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7))
        :effect (and
                    ; #16978: origin
                    (at_a_p10)

                    ; #73047: origin
                    (not_at_a_p7)

                    ; #63843: <==negation-removal== 16978 (pos)
                    (not (not_at_a_p10))

                    ; #69138: <==negation-removal== 73047 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7))
        :effect (and
                    ; #73047: origin
                    (not_at_a_p7)

                    ; #88057: origin
                    (at_a_p11)

                    ; #58885: <==negation-removal== 88057 (pos)
                    (not (not_at_a_p11))

                    ; #69138: <==negation-removal== 73047 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7))
        :effect (and
                    ; #73047: origin
                    (not_at_a_p7)

                    ; #83859: origin
                    (at_a_p12)

                    ; #69138: <==negation-removal== 73047 (pos)
                    (not (at_a_p7))

                    ; #78201: <==negation-removal== 83859 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #25337: origin
                    (at_a_p2)

                    ; #73047: origin
                    (not_at_a_p7)

                    ; #30477: <==negation-removal== 25337 (pos)
                    (not (not_at_a_p2))

                    ; #69138: <==negation-removal== 73047 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #73047: origin
                    (not_at_a_p7)

                    ; #87981: origin
                    (at_a_p3)

                    ; #48552: <==negation-removal== 87981 (pos)
                    (not (not_at_a_p3))

                    ; #69138: <==negation-removal== 73047 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #14853: origin
                    (at_a_p4)

                    ; #73047: origin
                    (not_at_a_p7)

                    ; #51942: <==negation-removal== 14853 (pos)
                    (not (not_at_a_p4))

                    ; #69138: <==negation-removal== 73047 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #44991: origin
                    (at_a_p5)

                    ; #73047: origin
                    (not_at_a_p7)

                    ; #49290: <==negation-removal== 44991 (pos)
                    (not (not_at_a_p5))

                    ; #69138: <==negation-removal== 73047 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #53173: origin
                    (at_a_p6)

                    ; #73047: origin
                    (not_at_a_p7)

                    ; #69138: <==negation-removal== 73047 (pos)
                    (not (at_a_p7))

                    ; #77503: <==negation-removal== 53173 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #69138: origin
                    (at_a_p7)

                    ; #73047: origin
                    (not_at_a_p7)

                    ; #69138: <==negation-removal== 73047 (pos)
                    (not (at_a_p7))

                    ; #73047: <==negation-removal== 69138 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #73047: origin
                    (not_at_a_p7)

                    ; #75687: origin
                    (at_a_p8)

                    ; #69138: <==negation-removal== 73047 (pos)
                    (not (at_a_p7))

                    ; #76007: <==negation-removal== 75687 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #26387: origin
                    (at_a_p9)

                    ; #73047: origin
                    (not_at_a_p7)

                    ; #52395: <==negation-removal== 26387 (pos)
                    (not (not_at_a_p9))

                    ; #69138: <==negation-removal== 73047 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #45779: origin
                    (at_a_p1)

                    ; #76007: origin
                    (not_at_a_p8)

                    ; #58963: <==negation-removal== 45779 (pos)
                    (not (not_at_a_p1))

                    ; #75687: <==negation-removal== 76007 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8))
        :effect (and
                    ; #16978: origin
                    (at_a_p10)

                    ; #76007: origin
                    (not_at_a_p8)

                    ; #63843: <==negation-removal== 16978 (pos)
                    (not (not_at_a_p10))

                    ; #75687: <==negation-removal== 76007 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8))
        :effect (and
                    ; #76007: origin
                    (not_at_a_p8)

                    ; #88057: origin
                    (at_a_p11)

                    ; #58885: <==negation-removal== 88057 (pos)
                    (not (not_at_a_p11))

                    ; #75687: <==negation-removal== 76007 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_a_p8))
        :effect (and
                    ; #76007: origin
                    (not_at_a_p8)

                    ; #83859: origin
                    (at_a_p12)

                    ; #75687: <==negation-removal== 76007 (pos)
                    (not (at_a_p8))

                    ; #78201: <==negation-removal== 83859 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #25337: origin
                    (at_a_p2)

                    ; #76007: origin
                    (not_at_a_p8)

                    ; #30477: <==negation-removal== 25337 (pos)
                    (not (not_at_a_p2))

                    ; #75687: <==negation-removal== 76007 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #76007: origin
                    (not_at_a_p8)

                    ; #87981: origin
                    (at_a_p3)

                    ; #48552: <==negation-removal== 87981 (pos)
                    (not (not_at_a_p3))

                    ; #75687: <==negation-removal== 76007 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #14853: origin
                    (at_a_p4)

                    ; #76007: origin
                    (not_at_a_p8)

                    ; #51942: <==negation-removal== 14853 (pos)
                    (not (not_at_a_p4))

                    ; #75687: <==negation-removal== 76007 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #44991: origin
                    (at_a_p5)

                    ; #76007: origin
                    (not_at_a_p8)

                    ; #49290: <==negation-removal== 44991 (pos)
                    (not (not_at_a_p5))

                    ; #75687: <==negation-removal== 76007 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #53173: origin
                    (at_a_p6)

                    ; #76007: origin
                    (not_at_a_p8)

                    ; #75687: <==negation-removal== 76007 (pos)
                    (not (at_a_p8))

                    ; #77503: <==negation-removal== 53173 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #69138: origin
                    (at_a_p7)

                    ; #76007: origin
                    (not_at_a_p8)

                    ; #73047: <==negation-removal== 69138 (pos)
                    (not (not_at_a_p7))

                    ; #75687: <==negation-removal== 76007 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #75687: origin
                    (at_a_p8)

                    ; #76007: origin
                    (not_at_a_p8)

                    ; #75687: <==negation-removal== 76007 (pos)
                    (not (at_a_p8))

                    ; #76007: <==negation-removal== 75687 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #26387: origin
                    (at_a_p9)

                    ; #76007: origin
                    (not_at_a_p8)

                    ; #52395: <==negation-removal== 26387 (pos)
                    (not (not_at_a_p9))

                    ; #75687: <==negation-removal== 76007 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #45779: origin
                    (at_a_p1)

                    ; #52395: origin
                    (not_at_a_p9)

                    ; #26387: <==negation-removal== 52395 (pos)
                    (not (at_a_p9))

                    ; #58963: <==negation-removal== 45779 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (at_a_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #16978: origin
                    (at_a_p10)

                    ; #52395: origin
                    (not_at_a_p9)

                    ; #26387: <==negation-removal== 52395 (pos)
                    (not (at_a_p9))

                    ; #63843: <==negation-removal== 16978 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9))
        :effect (and
                    ; #52395: origin
                    (not_at_a_p9)

                    ; #88057: origin
                    (at_a_p11)

                    ; #26387: <==negation-removal== 52395 (pos)
                    (not (at_a_p9))

                    ; #58885: <==negation-removal== 88057 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9))
        :effect (and
                    ; #52395: origin
                    (not_at_a_p9)

                    ; #83859: origin
                    (at_a_p12)

                    ; #26387: <==negation-removal== 52395 (pos)
                    (not (at_a_p9))

                    ; #78201: <==negation-removal== 83859 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #25337: origin
                    (at_a_p2)

                    ; #52395: origin
                    (not_at_a_p9)

                    ; #26387: <==negation-removal== 52395 (pos)
                    (not (at_a_p9))

                    ; #30477: <==negation-removal== 25337 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #52395: origin
                    (not_at_a_p9)

                    ; #87981: origin
                    (at_a_p3)

                    ; #26387: <==negation-removal== 52395 (pos)
                    (not (at_a_p9))

                    ; #48552: <==negation-removal== 87981 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #14853: origin
                    (at_a_p4)

                    ; #52395: origin
                    (not_at_a_p9)

                    ; #26387: <==negation-removal== 52395 (pos)
                    (not (at_a_p9))

                    ; #51942: <==negation-removal== 14853 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #44991: origin
                    (at_a_p5)

                    ; #52395: origin
                    (not_at_a_p9)

                    ; #26387: <==negation-removal== 52395 (pos)
                    (not (at_a_p9))

                    ; #49290: <==negation-removal== 44991 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #52395: origin
                    (not_at_a_p9)

                    ; #53173: origin
                    (at_a_p6)

                    ; #26387: <==negation-removal== 52395 (pos)
                    (not (at_a_p9))

                    ; #77503: <==negation-removal== 53173 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #52395: origin
                    (not_at_a_p9)

                    ; #69138: origin
                    (at_a_p7)

                    ; #26387: <==negation-removal== 52395 (pos)
                    (not (at_a_p9))

                    ; #73047: <==negation-removal== 69138 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #52395: origin
                    (not_at_a_p9)

                    ; #75687: origin
                    (at_a_p8)

                    ; #26387: <==negation-removal== 52395 (pos)
                    (not (at_a_p9))

                    ; #76007: <==negation-removal== 75687 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #26387: origin
                    (at_a_p9)

                    ; #52395: origin
                    (not_at_a_p9)

                    ; #26387: <==negation-removal== 52395 (pos)
                    (not (at_a_p9))

                    ; #52395: <==negation-removal== 26387 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #38382: origin
                    (not_at_b_p10)

                    ; #57120: origin
                    (at_b_p1)

                    ; #13958: <==negation-removal== 57120 (pos)
                    (not (not_at_b_p1))

                    ; #28093: <==negation-removal== 38382 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #28093: origin
                    (at_b_p10)

                    ; #38382: origin
                    (not_at_b_p10)

                    ; #28093: <==negation-removal== 38382 (pos)
                    (not (at_b_p10))

                    ; #38382: <==negation-removal== 28093 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #22982: origin
                    (at_b_p11)

                    ; #38382: origin
                    (not_at_b_p10)

                    ; #28093: <==negation-removal== 38382 (pos)
                    (not (at_b_p10))

                    ; #54959: <==negation-removal== 22982 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #38382: origin
                    (not_at_b_p10)

                    ; #63056: origin
                    (at_b_p12)

                    ; #28093: <==negation-removal== 38382 (pos)
                    (not (at_b_p10))

                    ; #57892: <==negation-removal== 63056 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #38382: origin
                    (not_at_b_p10)

                    ; #41403: origin
                    (at_b_p2)

                    ; #28093: <==negation-removal== 38382 (pos)
                    (not (at_b_p10))

                    ; #79899: <==negation-removal== 41403 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #38382: origin
                    (not_at_b_p10)

                    ; #95437: origin
                    (at_b_p3)

                    ; #28093: <==negation-removal== 38382 (pos)
                    (not (at_b_p10))

                    ; #76877: <==negation-removal== 95437 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #38382: origin
                    (not_at_b_p10)

                    ; #89840: origin
                    (at_b_p4)

                    ; #28093: <==negation-removal== 38382 (pos)
                    (not (at_b_p10))

                    ; #83921: <==negation-removal== 89840 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #38382: origin
                    (not_at_b_p10)

                    ; #93145: origin
                    (at_b_p5)

                    ; #28093: <==negation-removal== 38382 (pos)
                    (not (at_b_p10))

                    ; #62948: <==negation-removal== 93145 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #38382: origin
                    (not_at_b_p10)

                    ; #89228: origin
                    (at_b_p6)

                    ; #28093: <==negation-removal== 38382 (pos)
                    (not (at_b_p10))

                    ; #73664: <==negation-removal== 89228 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #25107: origin
                    (at_b_p7)

                    ; #38382: origin
                    (not_at_b_p10)

                    ; #28093: <==negation-removal== 38382 (pos)
                    (not (at_b_p10))

                    ; #71261: <==negation-removal== 25107 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #38382: origin
                    (not_at_b_p10)

                    ; #72696: origin
                    (at_b_p8)

                    ; #28093: <==negation-removal== 38382 (pos)
                    (not (at_b_p10))

                    ; #47447: <==negation-removal== 72696 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #38382: origin
                    (not_at_b_p10)

                    ; #65263: origin
                    (at_b_p9)

                    ; #28093: <==negation-removal== 38382 (pos)
                    (not (at_b_p10))

                    ; #71030: <==negation-removal== 65263 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11))
        :effect (and
                    ; #54959: origin
                    (not_at_b_p11)

                    ; #57120: origin
                    (at_b_p1)

                    ; #13958: <==negation-removal== 57120 (pos)
                    (not (not_at_b_p1))

                    ; #22982: <==negation-removal== 54959 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11))
        :effect (and
                    ; #28093: origin
                    (at_b_p10)

                    ; #54959: origin
                    (not_at_b_p11)

                    ; #22982: <==negation-removal== 54959 (pos)
                    (not (at_b_p11))

                    ; #38382: <==negation-removal== 28093 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_b_p11))
        :effect (and
                    ; #22982: origin
                    (at_b_p11)

                    ; #54959: origin
                    (not_at_b_p11)

                    ; #22982: <==negation-removal== 54959 (pos)
                    (not (at_b_p11))

                    ; #54959: <==negation-removal== 22982 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11))
        :effect (and
                    ; #54959: origin
                    (not_at_b_p11)

                    ; #63056: origin
                    (at_b_p12)

                    ; #22982: <==negation-removal== 54959 (pos)
                    (not (at_b_p11))

                    ; #57892: <==negation-removal== 63056 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11))
        :effect (and
                    ; #41403: origin
                    (at_b_p2)

                    ; #54959: origin
                    (not_at_b_p11)

                    ; #22982: <==negation-removal== 54959 (pos)
                    (not (at_b_p11))

                    ; #79899: <==negation-removal== 41403 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11))
        :effect (and
                    ; #54959: origin
                    (not_at_b_p11)

                    ; #95437: origin
                    (at_b_p3)

                    ; #22982: <==negation-removal== 54959 (pos)
                    (not (at_b_p11))

                    ; #76877: <==negation-removal== 95437 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11))
        :effect (and
                    ; #54959: origin
                    (not_at_b_p11)

                    ; #89840: origin
                    (at_b_p4)

                    ; #22982: <==negation-removal== 54959 (pos)
                    (not (at_b_p11))

                    ; #83921: <==negation-removal== 89840 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11))
        :effect (and
                    ; #54959: origin
                    (not_at_b_p11)

                    ; #93145: origin
                    (at_b_p5)

                    ; #22982: <==negation-removal== 54959 (pos)
                    (not (at_b_p11))

                    ; #62948: <==negation-removal== 93145 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11))
        :effect (and
                    ; #54959: origin
                    (not_at_b_p11)

                    ; #89228: origin
                    (at_b_p6)

                    ; #22982: <==negation-removal== 54959 (pos)
                    (not (at_b_p11))

                    ; #73664: <==negation-removal== 89228 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11))
        :effect (and
                    ; #25107: origin
                    (at_b_p7)

                    ; #54959: origin
                    (not_at_b_p11)

                    ; #22982: <==negation-removal== 54959 (pos)
                    (not (at_b_p11))

                    ; #71261: <==negation-removal== 25107 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11))
        :effect (and
                    ; #54959: origin
                    (not_at_b_p11)

                    ; #72696: origin
                    (at_b_p8)

                    ; #22982: <==negation-removal== 54959 (pos)
                    (not (at_b_p11))

                    ; #47447: <==negation-removal== 72696 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11))
        :effect (and
                    ; #54959: origin
                    (not_at_b_p11)

                    ; #65263: origin
                    (at_b_p9)

                    ; #22982: <==negation-removal== 54959 (pos)
                    (not (at_b_p11))

                    ; #71030: <==negation-removal== 65263 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #57120: origin
                    (at_b_p1)

                    ; #57892: origin
                    (not_at_b_p12)

                    ; #13958: <==negation-removal== 57120 (pos)
                    (not (not_at_b_p1))

                    ; #63056: <==negation-removal== 57892 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #28093: origin
                    (at_b_p10)

                    ; #57892: origin
                    (not_at_b_p12)

                    ; #38382: <==negation-removal== 28093 (pos)
                    (not (not_at_b_p10))

                    ; #63056: <==negation-removal== 57892 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #22982: origin
                    (at_b_p11)

                    ; #57892: origin
                    (not_at_b_p12)

                    ; #54959: <==negation-removal== 22982 (pos)
                    (not (not_at_b_p11))

                    ; #63056: <==negation-removal== 57892 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #57892: origin
                    (not_at_b_p12)

                    ; #63056: origin
                    (at_b_p12)

                    ; #57892: <==negation-removal== 63056 (pos)
                    (not (not_at_b_p12))

                    ; #63056: <==negation-removal== 57892 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #41403: origin
                    (at_b_p2)

                    ; #57892: origin
                    (not_at_b_p12)

                    ; #63056: <==negation-removal== 57892 (pos)
                    (not (at_b_p12))

                    ; #79899: <==negation-removal== 41403 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12))
        :effect (and
                    ; #57892: origin
                    (not_at_b_p12)

                    ; #95437: origin
                    (at_b_p3)

                    ; #63056: <==negation-removal== 57892 (pos)
                    (not (at_b_p12))

                    ; #76877: <==negation-removal== 95437 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #57892: origin
                    (not_at_b_p12)

                    ; #89840: origin
                    (at_b_p4)

                    ; #63056: <==negation-removal== 57892 (pos)
                    (not (at_b_p12))

                    ; #83921: <==negation-removal== 89840 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #57892: origin
                    (not_at_b_p12)

                    ; #93145: origin
                    (at_b_p5)

                    ; #62948: <==negation-removal== 93145 (pos)
                    (not (not_at_b_p5))

                    ; #63056: <==negation-removal== 57892 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #57892: origin
                    (not_at_b_p12)

                    ; #89228: origin
                    (at_b_p6)

                    ; #63056: <==negation-removal== 57892 (pos)
                    (not (at_b_p12))

                    ; #73664: <==negation-removal== 89228 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #25107: origin
                    (at_b_p7)

                    ; #57892: origin
                    (not_at_b_p12)

                    ; #63056: <==negation-removal== 57892 (pos)
                    (not (at_b_p12))

                    ; #71261: <==negation-removal== 25107 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #57892: origin
                    (not_at_b_p12)

                    ; #72696: origin
                    (at_b_p8)

                    ; #47447: <==negation-removal== 72696 (pos)
                    (not (not_at_b_p8))

                    ; #63056: <==negation-removal== 57892 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #57892: origin
                    (not_at_b_p12)

                    ; #65263: origin
                    (at_b_p9)

                    ; #63056: <==negation-removal== 57892 (pos)
                    (not (at_b_p12))

                    ; #71030: <==negation-removal== 65263 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #13958: origin
                    (not_at_b_p1)

                    ; #57120: origin
                    (at_b_p1)

                    ; #13958: <==negation-removal== 57120 (pos)
                    (not (not_at_b_p1))

                    ; #57120: <==negation-removal== 13958 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (at_b_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #13958: origin
                    (not_at_b_p1)

                    ; #28093: origin
                    (at_b_p10)

                    ; #38382: <==negation-removal== 28093 (pos)
                    (not (not_at_b_p10))

                    ; #57120: <==negation-removal== 13958 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #13958: origin
                    (not_at_b_p1)

                    ; #22982: origin
                    (at_b_p11)

                    ; #54959: <==negation-removal== 22982 (pos)
                    (not (not_at_b_p11))

                    ; #57120: <==negation-removal== 13958 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #13958: origin
                    (not_at_b_p1)

                    ; #63056: origin
                    (at_b_p12)

                    ; #57120: <==negation-removal== 13958 (pos)
                    (not (at_b_p1))

                    ; #57892: <==negation-removal== 63056 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #13958: origin
                    (not_at_b_p1)

                    ; #41403: origin
                    (at_b_p2)

                    ; #57120: <==negation-removal== 13958 (pos)
                    (not (at_b_p1))

                    ; #79899: <==negation-removal== 41403 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #13958: origin
                    (not_at_b_p1)

                    ; #95437: origin
                    (at_b_p3)

                    ; #57120: <==negation-removal== 13958 (pos)
                    (not (at_b_p1))

                    ; #76877: <==negation-removal== 95437 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #13958: origin
                    (not_at_b_p1)

                    ; #89840: origin
                    (at_b_p4)

                    ; #57120: <==negation-removal== 13958 (pos)
                    (not (at_b_p1))

                    ; #83921: <==negation-removal== 89840 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #13958: origin
                    (not_at_b_p1)

                    ; #93145: origin
                    (at_b_p5)

                    ; #57120: <==negation-removal== 13958 (pos)
                    (not (at_b_p1))

                    ; #62948: <==negation-removal== 93145 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #13958: origin
                    (not_at_b_p1)

                    ; #89228: origin
                    (at_b_p6)

                    ; #57120: <==negation-removal== 13958 (pos)
                    (not (at_b_p1))

                    ; #73664: <==negation-removal== 89228 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #13958: origin
                    (not_at_b_p1)

                    ; #25107: origin
                    (at_b_p7)

                    ; #57120: <==negation-removal== 13958 (pos)
                    (not (at_b_p1))

                    ; #71261: <==negation-removal== 25107 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #13958: origin
                    (not_at_b_p1)

                    ; #72696: origin
                    (at_b_p8)

                    ; #47447: <==negation-removal== 72696 (pos)
                    (not (not_at_b_p8))

                    ; #57120: <==negation-removal== 13958 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #13958: origin
                    (not_at_b_p1)

                    ; #65263: origin
                    (at_b_p9)

                    ; #57120: <==negation-removal== 13958 (pos)
                    (not (at_b_p1))

                    ; #71030: <==negation-removal== 65263 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #57120: origin
                    (at_b_p1)

                    ; #79899: origin
                    (not_at_b_p2)

                    ; #13958: <==negation-removal== 57120 (pos)
                    (not (not_at_b_p1))

                    ; #41403: <==negation-removal== 79899 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2))
        :effect (and
                    ; #28093: origin
                    (at_b_p10)

                    ; #79899: origin
                    (not_at_b_p2)

                    ; #38382: <==negation-removal== 28093 (pos)
                    (not (not_at_b_p10))

                    ; #41403: <==negation-removal== 79899 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2))
        :effect (and
                    ; #22982: origin
                    (at_b_p11)

                    ; #79899: origin
                    (not_at_b_p2)

                    ; #41403: <==negation-removal== 79899 (pos)
                    (not (at_b_p2))

                    ; #54959: <==negation-removal== 22982 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2))
        :effect (and
                    ; #63056: origin
                    (at_b_p12)

                    ; #79899: origin
                    (not_at_b_p2)

                    ; #41403: <==negation-removal== 79899 (pos)
                    (not (at_b_p2))

                    ; #57892: <==negation-removal== 63056 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #41403: origin
                    (at_b_p2)

                    ; #79899: origin
                    (not_at_b_p2)

                    ; #41403: <==negation-removal== 79899 (pos)
                    (not (at_b_p2))

                    ; #79899: <==negation-removal== 41403 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #79899: origin
                    (not_at_b_p2)

                    ; #95437: origin
                    (at_b_p3)

                    ; #41403: <==negation-removal== 79899 (pos)
                    (not (at_b_p2))

                    ; #76877: <==negation-removal== 95437 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #79899: origin
                    (not_at_b_p2)

                    ; #89840: origin
                    (at_b_p4)

                    ; #41403: <==negation-removal== 79899 (pos)
                    (not (at_b_p2))

                    ; #83921: <==negation-removal== 89840 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #79899: origin
                    (not_at_b_p2)

                    ; #93145: origin
                    (at_b_p5)

                    ; #41403: <==negation-removal== 79899 (pos)
                    (not (at_b_p2))

                    ; #62948: <==negation-removal== 93145 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #79899: origin
                    (not_at_b_p2)

                    ; #89228: origin
                    (at_b_p6)

                    ; #41403: <==negation-removal== 79899 (pos)
                    (not (at_b_p2))

                    ; #73664: <==negation-removal== 89228 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #25107: origin
                    (at_b_p7)

                    ; #79899: origin
                    (not_at_b_p2)

                    ; #41403: <==negation-removal== 79899 (pos)
                    (not (at_b_p2))

                    ; #71261: <==negation-removal== 25107 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #72696: origin
                    (at_b_p8)

                    ; #79899: origin
                    (not_at_b_p2)

                    ; #41403: <==negation-removal== 79899 (pos)
                    (not (at_b_p2))

                    ; #47447: <==negation-removal== 72696 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #65263: origin
                    (at_b_p9)

                    ; #79899: origin
                    (not_at_b_p2)

                    ; #41403: <==negation-removal== 79899 (pos)
                    (not (at_b_p2))

                    ; #71030: <==negation-removal== 65263 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #57120: origin
                    (at_b_p1)

                    ; #76877: origin
                    (not_at_b_p3)

                    ; #13958: <==negation-removal== 57120 (pos)
                    (not (not_at_b_p1))

                    ; #95437: <==negation-removal== 76877 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3))
        :effect (and
                    ; #28093: origin
                    (at_b_p10)

                    ; #76877: origin
                    (not_at_b_p3)

                    ; #38382: <==negation-removal== 28093 (pos)
                    (not (not_at_b_p10))

                    ; #95437: <==negation-removal== 76877 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3))
        :effect (and
                    ; #22982: origin
                    (at_b_p11)

                    ; #76877: origin
                    (not_at_b_p3)

                    ; #54959: <==negation-removal== 22982 (pos)
                    (not (not_at_b_p11))

                    ; #95437: <==negation-removal== 76877 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3))
        :effect (and
                    ; #63056: origin
                    (at_b_p12)

                    ; #76877: origin
                    (not_at_b_p3)

                    ; #57892: <==negation-removal== 63056 (pos)
                    (not (not_at_b_p12))

                    ; #95437: <==negation-removal== 76877 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #41403: origin
                    (at_b_p2)

                    ; #76877: origin
                    (not_at_b_p3)

                    ; #79899: <==negation-removal== 41403 (pos)
                    (not (not_at_b_p2))

                    ; #95437: <==negation-removal== 76877 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #76877: origin
                    (not_at_b_p3)

                    ; #95437: origin
                    (at_b_p3)

                    ; #76877: <==negation-removal== 95437 (pos)
                    (not (not_at_b_p3))

                    ; #95437: <==negation-removal== 76877 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #76877: origin
                    (not_at_b_p3)

                    ; #89840: origin
                    (at_b_p4)

                    ; #83921: <==negation-removal== 89840 (pos)
                    (not (not_at_b_p4))

                    ; #95437: <==negation-removal== 76877 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #76877: origin
                    (not_at_b_p3)

                    ; #93145: origin
                    (at_b_p5)

                    ; #62948: <==negation-removal== 93145 (pos)
                    (not (not_at_b_p5))

                    ; #95437: <==negation-removal== 76877 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #76877: origin
                    (not_at_b_p3)

                    ; #89228: origin
                    (at_b_p6)

                    ; #73664: <==negation-removal== 89228 (pos)
                    (not (not_at_b_p6))

                    ; #95437: <==negation-removal== 76877 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #25107: origin
                    (at_b_p7)

                    ; #76877: origin
                    (not_at_b_p3)

                    ; #71261: <==negation-removal== 25107 (pos)
                    (not (not_at_b_p7))

                    ; #95437: <==negation-removal== 76877 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #72696: origin
                    (at_b_p8)

                    ; #76877: origin
                    (not_at_b_p3)

                    ; #47447: <==negation-removal== 72696 (pos)
                    (not (not_at_b_p8))

                    ; #95437: <==negation-removal== 76877 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #65263: origin
                    (at_b_p9)

                    ; #76877: origin
                    (not_at_b_p3)

                    ; #71030: <==negation-removal== 65263 (pos)
                    (not (not_at_b_p9))

                    ; #95437: <==negation-removal== 76877 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #57120: origin
                    (at_b_p1)

                    ; #83921: origin
                    (not_at_b_p4)

                    ; #13958: <==negation-removal== 57120 (pos)
                    (not (not_at_b_p1))

                    ; #89840: <==negation-removal== 83921 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4))
        :effect (and
                    ; #28093: origin
                    (at_b_p10)

                    ; #83921: origin
                    (not_at_b_p4)

                    ; #38382: <==negation-removal== 28093 (pos)
                    (not (not_at_b_p10))

                    ; #89840: <==negation-removal== 83921 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (at_b_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #22982: origin
                    (at_b_p11)

                    ; #83921: origin
                    (not_at_b_p4)

                    ; #54959: <==negation-removal== 22982 (pos)
                    (not (not_at_b_p11))

                    ; #89840: <==negation-removal== 83921 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4))
        :effect (and
                    ; #63056: origin
                    (at_b_p12)

                    ; #83921: origin
                    (not_at_b_p4)

                    ; #57892: <==negation-removal== 63056 (pos)
                    (not (not_at_b_p12))

                    ; #89840: <==negation-removal== 83921 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #41403: origin
                    (at_b_p2)

                    ; #83921: origin
                    (not_at_b_p4)

                    ; #79899: <==negation-removal== 41403 (pos)
                    (not (not_at_b_p2))

                    ; #89840: <==negation-removal== 83921 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #83921: origin
                    (not_at_b_p4)

                    ; #95437: origin
                    (at_b_p3)

                    ; #76877: <==negation-removal== 95437 (pos)
                    (not (not_at_b_p3))

                    ; #89840: <==negation-removal== 83921 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #83921: origin
                    (not_at_b_p4)

                    ; #89840: origin
                    (at_b_p4)

                    ; #83921: <==negation-removal== 89840 (pos)
                    (not (not_at_b_p4))

                    ; #89840: <==negation-removal== 83921 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #83921: origin
                    (not_at_b_p4)

                    ; #93145: origin
                    (at_b_p5)

                    ; #62948: <==negation-removal== 93145 (pos)
                    (not (not_at_b_p5))

                    ; #89840: <==negation-removal== 83921 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #83921: origin
                    (not_at_b_p4)

                    ; #89228: origin
                    (at_b_p6)

                    ; #73664: <==negation-removal== 89228 (pos)
                    (not (not_at_b_p6))

                    ; #89840: <==negation-removal== 83921 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #25107: origin
                    (at_b_p7)

                    ; #83921: origin
                    (not_at_b_p4)

                    ; #71261: <==negation-removal== 25107 (pos)
                    (not (not_at_b_p7))

                    ; #89840: <==negation-removal== 83921 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #72696: origin
                    (at_b_p8)

                    ; #83921: origin
                    (not_at_b_p4)

                    ; #47447: <==negation-removal== 72696 (pos)
                    (not (not_at_b_p8))

                    ; #89840: <==negation-removal== 83921 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #65263: origin
                    (at_b_p9)

                    ; #83921: origin
                    (not_at_b_p4)

                    ; #71030: <==negation-removal== 65263 (pos)
                    (not (not_at_b_p9))

                    ; #89840: <==negation-removal== 83921 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #57120: origin
                    (at_b_p1)

                    ; #62948: origin
                    (not_at_b_p5)

                    ; #13958: <==negation-removal== 57120 (pos)
                    (not (not_at_b_p1))

                    ; #93145: <==negation-removal== 62948 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #28093: origin
                    (at_b_p10)

                    ; #62948: origin
                    (not_at_b_p5)

                    ; #38382: <==negation-removal== 28093 (pos)
                    (not (not_at_b_p10))

                    ; #93145: <==negation-removal== 62948 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #22982: origin
                    (at_b_p11)

                    ; #62948: origin
                    (not_at_b_p5)

                    ; #54959: <==negation-removal== 22982 (pos)
                    (not (not_at_b_p11))

                    ; #93145: <==negation-removal== 62948 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5))
        :effect (and
                    ; #62948: origin
                    (not_at_b_p5)

                    ; #63056: origin
                    (at_b_p12)

                    ; #57892: <==negation-removal== 63056 (pos)
                    (not (not_at_b_p12))

                    ; #93145: <==negation-removal== 62948 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #41403: origin
                    (at_b_p2)

                    ; #62948: origin
                    (not_at_b_p5)

                    ; #79899: <==negation-removal== 41403 (pos)
                    (not (not_at_b_p2))

                    ; #93145: <==negation-removal== 62948 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #62948: origin
                    (not_at_b_p5)

                    ; #95437: origin
                    (at_b_p3)

                    ; #76877: <==negation-removal== 95437 (pos)
                    (not (not_at_b_p3))

                    ; #93145: <==negation-removal== 62948 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #62948: origin
                    (not_at_b_p5)

                    ; #89840: origin
                    (at_b_p4)

                    ; #83921: <==negation-removal== 89840 (pos)
                    (not (not_at_b_p4))

                    ; #93145: <==negation-removal== 62948 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #62948: origin
                    (not_at_b_p5)

                    ; #93145: origin
                    (at_b_p5)

                    ; #62948: <==negation-removal== 93145 (pos)
                    (not (not_at_b_p5))

                    ; #93145: <==negation-removal== 62948 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #62948: origin
                    (not_at_b_p5)

                    ; #89228: origin
                    (at_b_p6)

                    ; #73664: <==negation-removal== 89228 (pos)
                    (not (not_at_b_p6))

                    ; #93145: <==negation-removal== 62948 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #25107: origin
                    (at_b_p7)

                    ; #62948: origin
                    (not_at_b_p5)

                    ; #71261: <==negation-removal== 25107 (pos)
                    (not (not_at_b_p7))

                    ; #93145: <==negation-removal== 62948 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #62948: origin
                    (not_at_b_p5)

                    ; #72696: origin
                    (at_b_p8)

                    ; #47447: <==negation-removal== 72696 (pos)
                    (not (not_at_b_p8))

                    ; #93145: <==negation-removal== 62948 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #62948: origin
                    (not_at_b_p5)

                    ; #65263: origin
                    (at_b_p9)

                    ; #71030: <==negation-removal== 65263 (pos)
                    (not (not_at_b_p9))

                    ; #93145: <==negation-removal== 62948 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #57120: origin
                    (at_b_p1)

                    ; #73664: origin
                    (not_at_b_p6)

                    ; #13958: <==negation-removal== 57120 (pos)
                    (not (not_at_b_p1))

                    ; #89228: <==negation-removal== 73664 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6))
        :effect (and
                    ; #28093: origin
                    (at_b_p10)

                    ; #73664: origin
                    (not_at_b_p6)

                    ; #38382: <==negation-removal== 28093 (pos)
                    (not (not_at_b_p10))

                    ; #89228: <==negation-removal== 73664 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6))
        :effect (and
                    ; #22982: origin
                    (at_b_p11)

                    ; #73664: origin
                    (not_at_b_p6)

                    ; #54959: <==negation-removal== 22982 (pos)
                    (not (not_at_b_p11))

                    ; #89228: <==negation-removal== 73664 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6))
        :effect (and
                    ; #63056: origin
                    (at_b_p12)

                    ; #73664: origin
                    (not_at_b_p6)

                    ; #57892: <==negation-removal== 63056 (pos)
                    (not (not_at_b_p12))

                    ; #89228: <==negation-removal== 73664 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #41403: origin
                    (at_b_p2)

                    ; #73664: origin
                    (not_at_b_p6)

                    ; #79899: <==negation-removal== 41403 (pos)
                    (not (not_at_b_p2))

                    ; #89228: <==negation-removal== 73664 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #73664: origin
                    (not_at_b_p6)

                    ; #95437: origin
                    (at_b_p3)

                    ; #76877: <==negation-removal== 95437 (pos)
                    (not (not_at_b_p3))

                    ; #89228: <==negation-removal== 73664 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #73664: origin
                    (not_at_b_p6)

                    ; #89840: origin
                    (at_b_p4)

                    ; #83921: <==negation-removal== 89840 (pos)
                    (not (not_at_b_p4))

                    ; #89228: <==negation-removal== 73664 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #73664: origin
                    (not_at_b_p6)

                    ; #93145: origin
                    (at_b_p5)

                    ; #62948: <==negation-removal== 93145 (pos)
                    (not (not_at_b_p5))

                    ; #89228: <==negation-removal== 73664 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #73664: origin
                    (not_at_b_p6)

                    ; #89228: origin
                    (at_b_p6)

                    ; #73664: <==negation-removal== 89228 (pos)
                    (not (not_at_b_p6))

                    ; #89228: <==negation-removal== 73664 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #25107: origin
                    (at_b_p7)

                    ; #73664: origin
                    (not_at_b_p6)

                    ; #71261: <==negation-removal== 25107 (pos)
                    (not (not_at_b_p7))

                    ; #89228: <==negation-removal== 73664 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #72696: origin
                    (at_b_p8)

                    ; #73664: origin
                    (not_at_b_p6)

                    ; #47447: <==negation-removal== 72696 (pos)
                    (not (not_at_b_p8))

                    ; #89228: <==negation-removal== 73664 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #65263: origin
                    (at_b_p9)

                    ; #73664: origin
                    (not_at_b_p6)

                    ; #71030: <==negation-removal== 65263 (pos)
                    (not (not_at_b_p9))

                    ; #89228: <==negation-removal== 73664 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #57120: origin
                    (at_b_p1)

                    ; #71261: origin
                    (not_at_b_p7)

                    ; #13958: <==negation-removal== 57120 (pos)
                    (not (not_at_b_p1))

                    ; #25107: <==negation-removal== 71261 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #28093: origin
                    (at_b_p10)

                    ; #71261: origin
                    (not_at_b_p7)

                    ; #25107: <==negation-removal== 71261 (pos)
                    (not (at_b_p7))

                    ; #38382: <==negation-removal== 28093 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #22982: origin
                    (at_b_p11)

                    ; #71261: origin
                    (not_at_b_p7)

                    ; #25107: <==negation-removal== 71261 (pos)
                    (not (at_b_p7))

                    ; #54959: <==negation-removal== 22982 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (at_b_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #63056: origin
                    (at_b_p12)

                    ; #71261: origin
                    (not_at_b_p7)

                    ; #25107: <==negation-removal== 71261 (pos)
                    (not (at_b_p7))

                    ; #57892: <==negation-removal== 63056 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #41403: origin
                    (at_b_p2)

                    ; #71261: origin
                    (not_at_b_p7)

                    ; #25107: <==negation-removal== 71261 (pos)
                    (not (at_b_p7))

                    ; #79899: <==negation-removal== 41403 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #71261: origin
                    (not_at_b_p7)

                    ; #95437: origin
                    (at_b_p3)

                    ; #25107: <==negation-removal== 71261 (pos)
                    (not (at_b_p7))

                    ; #76877: <==negation-removal== 95437 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #71261: origin
                    (not_at_b_p7)

                    ; #89840: origin
                    (at_b_p4)

                    ; #25107: <==negation-removal== 71261 (pos)
                    (not (at_b_p7))

                    ; #83921: <==negation-removal== 89840 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #71261: origin
                    (not_at_b_p7)

                    ; #93145: origin
                    (at_b_p5)

                    ; #25107: <==negation-removal== 71261 (pos)
                    (not (at_b_p7))

                    ; #62948: <==negation-removal== 93145 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #71261: origin
                    (not_at_b_p7)

                    ; #89228: origin
                    (at_b_p6)

                    ; #25107: <==negation-removal== 71261 (pos)
                    (not (at_b_p7))

                    ; #73664: <==negation-removal== 89228 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #25107: origin
                    (at_b_p7)

                    ; #71261: origin
                    (not_at_b_p7)

                    ; #25107: <==negation-removal== 71261 (pos)
                    (not (at_b_p7))

                    ; #71261: <==negation-removal== 25107 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #71261: origin
                    (not_at_b_p7)

                    ; #72696: origin
                    (at_b_p8)

                    ; #25107: <==negation-removal== 71261 (pos)
                    (not (at_b_p7))

                    ; #47447: <==negation-removal== 72696 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #65263: origin
                    (at_b_p9)

                    ; #71261: origin
                    (not_at_b_p7)

                    ; #25107: <==negation-removal== 71261 (pos)
                    (not (at_b_p7))

                    ; #71030: <==negation-removal== 65263 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #47447: origin
                    (not_at_b_p8)

                    ; #57120: origin
                    (at_b_p1)

                    ; #13958: <==negation-removal== 57120 (pos)
                    (not (not_at_b_p1))

                    ; #72696: <==negation-removal== 47447 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #28093: origin
                    (at_b_p10)

                    ; #47447: origin
                    (not_at_b_p8)

                    ; #38382: <==negation-removal== 28093 (pos)
                    (not (not_at_b_p10))

                    ; #72696: <==negation-removal== 47447 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8))
        :effect (and
                    ; #22982: origin
                    (at_b_p11)

                    ; #47447: origin
                    (not_at_b_p8)

                    ; #54959: <==negation-removal== 22982 (pos)
                    (not (not_at_b_p11))

                    ; #72696: <==negation-removal== 47447 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8))
        :effect (and
                    ; #47447: origin
                    (not_at_b_p8)

                    ; #63056: origin
                    (at_b_p12)

                    ; #57892: <==negation-removal== 63056 (pos)
                    (not (not_at_b_p12))

                    ; #72696: <==negation-removal== 47447 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #41403: origin
                    (at_b_p2)

                    ; #47447: origin
                    (not_at_b_p8)

                    ; #72696: <==negation-removal== 47447 (pos)
                    (not (at_b_p8))

                    ; #79899: <==negation-removal== 41403 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #47447: origin
                    (not_at_b_p8)

                    ; #95437: origin
                    (at_b_p3)

                    ; #72696: <==negation-removal== 47447 (pos)
                    (not (at_b_p8))

                    ; #76877: <==negation-removal== 95437 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #47447: origin
                    (not_at_b_p8)

                    ; #89840: origin
                    (at_b_p4)

                    ; #72696: <==negation-removal== 47447 (pos)
                    (not (at_b_p8))

                    ; #83921: <==negation-removal== 89840 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #47447: origin
                    (not_at_b_p8)

                    ; #93145: origin
                    (at_b_p5)

                    ; #62948: <==negation-removal== 93145 (pos)
                    (not (not_at_b_p5))

                    ; #72696: <==negation-removal== 47447 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #47447: origin
                    (not_at_b_p8)

                    ; #89228: origin
                    (at_b_p6)

                    ; #72696: <==negation-removal== 47447 (pos)
                    (not (at_b_p8))

                    ; #73664: <==negation-removal== 89228 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #25107: origin
                    (at_b_p7)

                    ; #47447: origin
                    (not_at_b_p8)

                    ; #71261: <==negation-removal== 25107 (pos)
                    (not (not_at_b_p7))

                    ; #72696: <==negation-removal== 47447 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #47447: origin
                    (not_at_b_p8)

                    ; #72696: origin
                    (at_b_p8)

                    ; #47447: <==negation-removal== 72696 (pos)
                    (not (not_at_b_p8))

                    ; #72696: <==negation-removal== 47447 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #47447: origin
                    (not_at_b_p8)

                    ; #65263: origin
                    (at_b_p9)

                    ; #71030: <==negation-removal== 65263 (pos)
                    (not (not_at_b_p9))

                    ; #72696: <==negation-removal== 47447 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #57120: origin
                    (at_b_p1)

                    ; #71030: origin
                    (not_at_b_p9)

                    ; #13958: <==negation-removal== 57120 (pos)
                    (not (not_at_b_p1))

                    ; #65263: <==negation-removal== 71030 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p10
        :precondition (and (at_b_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #28093: origin
                    (at_b_p10)

                    ; #71030: origin
                    (not_at_b_p9)

                    ; #38382: <==negation-removal== 28093 (pos)
                    (not (not_at_b_p10))

                    ; #65263: <==negation-removal== 71030 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9))
        :effect (and
                    ; #22982: origin
                    (at_b_p11)

                    ; #71030: origin
                    (not_at_b_p9)

                    ; #54959: <==negation-removal== 22982 (pos)
                    (not (not_at_b_p11))

                    ; #65263: <==negation-removal== 71030 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9))
        :effect (and
                    ; #63056: origin
                    (at_b_p12)

                    ; #71030: origin
                    (not_at_b_p9)

                    ; #57892: <==negation-removal== 63056 (pos)
                    (not (not_at_b_p12))

                    ; #65263: <==negation-removal== 71030 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #41403: origin
                    (at_b_p2)

                    ; #71030: origin
                    (not_at_b_p9)

                    ; #65263: <==negation-removal== 71030 (pos)
                    (not (at_b_p9))

                    ; #79899: <==negation-removal== 41403 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #71030: origin
                    (not_at_b_p9)

                    ; #95437: origin
                    (at_b_p3)

                    ; #65263: <==negation-removal== 71030 (pos)
                    (not (at_b_p9))

                    ; #76877: <==negation-removal== 95437 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #71030: origin
                    (not_at_b_p9)

                    ; #89840: origin
                    (at_b_p4)

                    ; #65263: <==negation-removal== 71030 (pos)
                    (not (at_b_p9))

                    ; #83921: <==negation-removal== 89840 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #71030: origin
                    (not_at_b_p9)

                    ; #93145: origin
                    (at_b_p5)

                    ; #62948: <==negation-removal== 93145 (pos)
                    (not (not_at_b_p5))

                    ; #65263: <==negation-removal== 71030 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #71030: origin
                    (not_at_b_p9)

                    ; #89228: origin
                    (at_b_p6)

                    ; #65263: <==negation-removal== 71030 (pos)
                    (not (at_b_p9))

                    ; #73664: <==negation-removal== 89228 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #25107: origin
                    (at_b_p7)

                    ; #71030: origin
                    (not_at_b_p9)

                    ; #65263: <==negation-removal== 71030 (pos)
                    (not (at_b_p9))

                    ; #71261: <==negation-removal== 25107 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #71030: origin
                    (not_at_b_p9)

                    ; #72696: origin
                    (at_b_p8)

                    ; #47447: <==negation-removal== 72696 (pos)
                    (not (not_at_b_p8))

                    ; #65263: <==negation-removal== 71030 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #65263: origin
                    (at_b_p9)

                    ; #71030: origin
                    (not_at_b_p9)

                    ; #65263: <==negation-removal== 71030 (pos)
                    (not (at_b_p9))

                    ; #71030: <==negation-removal== 65263 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #45555: origin
                    (at_c_p1)

                    ; #55287: origin
                    (not_at_c_p10)

                    ; #39848: <==negation-removal== 55287 (pos)
                    (not (at_c_p10))

                    ; #73164: <==negation-removal== 45555 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_c_p10))
        :effect (and
                    ; #39848: origin
                    (at_c_p10)

                    ; #55287: origin
                    (not_at_c_p10)

                    ; #39848: <==negation-removal== 55287 (pos)
                    (not (at_c_p10))

                    ; #55287: <==negation-removal== 39848 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #41678: origin
                    (at_c_p11)

                    ; #55287: origin
                    (not_at_c_p10)

                    ; #39848: <==negation-removal== 55287 (pos)
                    (not (at_c_p10))

                    ; #87337: <==negation-removal== 41678 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #55287: origin
                    (not_at_c_p10)

                    ; #80073: origin
                    (at_c_p12)

                    ; #12622: <==negation-removal== 80073 (pos)
                    (not (not_at_c_p12))

                    ; #39848: <==negation-removal== 55287 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #55287: origin
                    (not_at_c_p10)

                    ; #68727: origin
                    (at_c_p2)

                    ; #39848: <==negation-removal== 55287 (pos)
                    (not (at_c_p10))

                    ; #44867: <==negation-removal== 68727 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10))
        :effect (and
                    ; #55287: origin
                    (not_at_c_p10)

                    ; #58912: origin
                    (at_c_p3)

                    ; #39848: <==negation-removal== 55287 (pos)
                    (not (at_c_p10))

                    ; #40809: <==negation-removal== 58912 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_c_p10))
        :effect (and
                    ; #41769: origin
                    (at_c_p4)

                    ; #55287: origin
                    (not_at_c_p10)

                    ; #39848: <==negation-removal== 55287 (pos)
                    (not (at_c_p10))

                    ; #42272: <==negation-removal== 41769 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #12154: origin
                    (at_c_p5)

                    ; #55287: origin
                    (not_at_c_p10)

                    ; #39848: <==negation-removal== 55287 (pos)
                    (not (at_c_p10))

                    ; #71112: <==negation-removal== 12154 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #55287: origin
                    (not_at_c_p10)

                    ; #74050: origin
                    (at_c_p6)

                    ; #39848: <==negation-removal== 55287 (pos)
                    (not (at_c_p10))

                    ; #90598: <==negation-removal== 74050 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #55287: origin
                    (not_at_c_p10)

                    ; #86120: origin
                    (at_c_p7)

                    ; #39848: <==negation-removal== 55287 (pos)
                    (not (at_c_p10))

                    ; #47378: <==negation-removal== 86120 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #51115: origin
                    (at_c_p8)

                    ; #55287: origin
                    (not_at_c_p10)

                    ; #13943: <==negation-removal== 51115 (pos)
                    (not (not_at_c_p8))

                    ; #39848: <==negation-removal== 55287 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_c_p10))
        :effect (and
                    ; #44466: origin
                    (at_c_p9)

                    ; #55287: origin
                    (not_at_c_p10)

                    ; #39848: <==negation-removal== 55287 (pos)
                    (not (at_c_p10))

                    ; #55149: <==negation-removal== 44466 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p11_p1
        :precondition (and (at_c_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #45555: origin
                    (at_c_p1)

                    ; #87337: origin
                    (not_at_c_p11)

                    ; #41678: <==negation-removal== 87337 (pos)
                    (not (at_c_p11))

                    ; #73164: <==negation-removal== 45555 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #39848: origin
                    (at_c_p10)

                    ; #87337: origin
                    (not_at_c_p11)

                    ; #41678: <==negation-removal== 87337 (pos)
                    (not (at_c_p11))

                    ; #55287: <==negation-removal== 39848 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_c_p11))
        :effect (and
                    ; #41678: origin
                    (at_c_p11)

                    ; #87337: origin
                    (not_at_c_p11)

                    ; #41678: <==negation-removal== 87337 (pos)
                    (not (at_c_p11))

                    ; #87337: <==negation-removal== 41678 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #80073: origin
                    (at_c_p12)

                    ; #87337: origin
                    (not_at_c_p11)

                    ; #12622: <==negation-removal== 80073 (pos)
                    (not (not_at_c_p12))

                    ; #41678: <==negation-removal== 87337 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11))
        :effect (and
                    ; #68727: origin
                    (at_c_p2)

                    ; #87337: origin
                    (not_at_c_p11)

                    ; #41678: <==negation-removal== 87337 (pos)
                    (not (at_c_p11))

                    ; #44867: <==negation-removal== 68727 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #58912: origin
                    (at_c_p3)

                    ; #87337: origin
                    (not_at_c_p11)

                    ; #40809: <==negation-removal== 58912 (pos)
                    (not (not_at_c_p3))

                    ; #41678: <==negation-removal== 87337 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11))
        :effect (and
                    ; #41769: origin
                    (at_c_p4)

                    ; #87337: origin
                    (not_at_c_p11)

                    ; #41678: <==negation-removal== 87337 (pos)
                    (not (at_c_p11))

                    ; #42272: <==negation-removal== 41769 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_c_p11))
        :effect (and
                    ; #12154: origin
                    (at_c_p5)

                    ; #87337: origin
                    (not_at_c_p11)

                    ; #41678: <==negation-removal== 87337 (pos)
                    (not (at_c_p11))

                    ; #71112: <==negation-removal== 12154 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11))
        :effect (and
                    ; #74050: origin
                    (at_c_p6)

                    ; #87337: origin
                    (not_at_c_p11)

                    ; #41678: <==negation-removal== 87337 (pos)
                    (not (at_c_p11))

                    ; #90598: <==negation-removal== 74050 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11))
        :effect (and
                    ; #86120: origin
                    (at_c_p7)

                    ; #87337: origin
                    (not_at_c_p11)

                    ; #41678: <==negation-removal== 87337 (pos)
                    (not (at_c_p11))

                    ; #47378: <==negation-removal== 86120 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #51115: origin
                    (at_c_p8)

                    ; #87337: origin
                    (not_at_c_p11)

                    ; #13943: <==negation-removal== 51115 (pos)
                    (not (not_at_c_p8))

                    ; #41678: <==negation-removal== 87337 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11))
        :effect (and
                    ; #44466: origin
                    (at_c_p9)

                    ; #87337: origin
                    (not_at_c_p11)

                    ; #41678: <==negation-removal== 87337 (pos)
                    (not (at_c_p11))

                    ; #55149: <==negation-removal== 44466 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #12622: origin
                    (not_at_c_p12)

                    ; #45555: origin
                    (at_c_p1)

                    ; #73164: <==negation-removal== 45555 (pos)
                    (not (not_at_c_p1))

                    ; #80073: <==negation-removal== 12622 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12))
        :effect (and
                    ; #12622: origin
                    (not_at_c_p12)

                    ; #39848: origin
                    (at_c_p10)

                    ; #55287: <==negation-removal== 39848 (pos)
                    (not (not_at_c_p10))

                    ; #80073: <==negation-removal== 12622 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_c_p12))
        :effect (and
                    ; #12622: origin
                    (not_at_c_p12)

                    ; #41678: origin
                    (at_c_p11)

                    ; #80073: <==negation-removal== 12622 (pos)
                    (not (at_c_p12))

                    ; #87337: <==negation-removal== 41678 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #12622: origin
                    (not_at_c_p12)

                    ; #80073: origin
                    (at_c_p12)

                    ; #12622: <==negation-removal== 80073 (pos)
                    (not (not_at_c_p12))

                    ; #80073: <==negation-removal== 12622 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12))
        :effect (and
                    ; #12622: origin
                    (not_at_c_p12)

                    ; #68727: origin
                    (at_c_p2)

                    ; #44867: <==negation-removal== 68727 (pos)
                    (not (not_at_c_p2))

                    ; #80073: <==negation-removal== 12622 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #12622: origin
                    (not_at_c_p12)

                    ; #58912: origin
                    (at_c_p3)

                    ; #40809: <==negation-removal== 58912 (pos)
                    (not (not_at_c_p3))

                    ; #80073: <==negation-removal== 12622 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #12622: origin
                    (not_at_c_p12)

                    ; #41769: origin
                    (at_c_p4)

                    ; #42272: <==negation-removal== 41769 (pos)
                    (not (not_at_c_p4))

                    ; #80073: <==negation-removal== 12622 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #12154: origin
                    (at_c_p5)

                    ; #12622: origin
                    (not_at_c_p12)

                    ; #71112: <==negation-removal== 12154 (pos)
                    (not (not_at_c_p5))

                    ; #80073: <==negation-removal== 12622 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12))
        :effect (and
                    ; #12622: origin
                    (not_at_c_p12)

                    ; #74050: origin
                    (at_c_p6)

                    ; #80073: <==negation-removal== 12622 (pos)
                    (not (at_c_p12))

                    ; #90598: <==negation-removal== 74050 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12))
        :effect (and
                    ; #12622: origin
                    (not_at_c_p12)

                    ; #86120: origin
                    (at_c_p7)

                    ; #47378: <==negation-removal== 86120 (pos)
                    (not (not_at_c_p7))

                    ; #80073: <==negation-removal== 12622 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #12622: origin
                    (not_at_c_p12)

                    ; #51115: origin
                    (at_c_p8)

                    ; #13943: <==negation-removal== 51115 (pos)
                    (not (not_at_c_p8))

                    ; #80073: <==negation-removal== 12622 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #12622: origin
                    (not_at_c_p12)

                    ; #44466: origin
                    (at_c_p9)

                    ; #55149: <==negation-removal== 44466 (pos)
                    (not (not_at_c_p9))

                    ; #80073: <==negation-removal== 12622 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #45555: origin
                    (at_c_p1)

                    ; #73164: origin
                    (not_at_c_p1)

                    ; #45555: <==negation-removal== 73164 (pos)
                    (not (at_c_p1))

                    ; #73164: <==negation-removal== 45555 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #39848: origin
                    (at_c_p10)

                    ; #73164: origin
                    (not_at_c_p1)

                    ; #45555: <==negation-removal== 73164 (pos)
                    (not (at_c_p1))

                    ; #55287: <==negation-removal== 39848 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #41678: origin
                    (at_c_p11)

                    ; #73164: origin
                    (not_at_c_p1)

                    ; #45555: <==negation-removal== 73164 (pos)
                    (not (at_c_p1))

                    ; #87337: <==negation-removal== 41678 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #73164: origin
                    (not_at_c_p1)

                    ; #80073: origin
                    (at_c_p12)

                    ; #12622: <==negation-removal== 80073 (pos)
                    (not (not_at_c_p12))

                    ; #45555: <==negation-removal== 73164 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #68727: origin
                    (at_c_p2)

                    ; #73164: origin
                    (not_at_c_p1)

                    ; #44867: <==negation-removal== 68727 (pos)
                    (not (not_at_c_p2))

                    ; #45555: <==negation-removal== 73164 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #58912: origin
                    (at_c_p3)

                    ; #73164: origin
                    (not_at_c_p1)

                    ; #40809: <==negation-removal== 58912 (pos)
                    (not (not_at_c_p3))

                    ; #45555: <==negation-removal== 73164 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #41769: origin
                    (at_c_p4)

                    ; #73164: origin
                    (not_at_c_p1)

                    ; #42272: <==negation-removal== 41769 (pos)
                    (not (not_at_c_p4))

                    ; #45555: <==negation-removal== 73164 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #12154: origin
                    (at_c_p5)

                    ; #73164: origin
                    (not_at_c_p1)

                    ; #45555: <==negation-removal== 73164 (pos)
                    (not (at_c_p1))

                    ; #71112: <==negation-removal== 12154 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #73164: origin
                    (not_at_c_p1)

                    ; #74050: origin
                    (at_c_p6)

                    ; #45555: <==negation-removal== 73164 (pos)
                    (not (at_c_p1))

                    ; #90598: <==negation-removal== 74050 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #73164: origin
                    (not_at_c_p1)

                    ; #86120: origin
                    (at_c_p7)

                    ; #45555: <==negation-removal== 73164 (pos)
                    (not (at_c_p1))

                    ; #47378: <==negation-removal== 86120 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #51115: origin
                    (at_c_p8)

                    ; #73164: origin
                    (not_at_c_p1)

                    ; #13943: <==negation-removal== 51115 (pos)
                    (not (not_at_c_p8))

                    ; #45555: <==negation-removal== 73164 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #44466: origin
                    (at_c_p9)

                    ; #73164: origin
                    (not_at_c_p1)

                    ; #45555: <==negation-removal== 73164 (pos)
                    (not (at_c_p1))

                    ; #55149: <==negation-removal== 44466 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #44867: origin
                    (not_at_c_p2)

                    ; #45555: origin
                    (at_c_p1)

                    ; #68727: <==negation-removal== 44867 (pos)
                    (not (at_c_p2))

                    ; #73164: <==negation-removal== 45555 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2))
        :effect (and
                    ; #39848: origin
                    (at_c_p10)

                    ; #44867: origin
                    (not_at_c_p2)

                    ; #55287: <==negation-removal== 39848 (pos)
                    (not (not_at_c_p10))

                    ; #68727: <==negation-removal== 44867 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2))
        :effect (and
                    ; #41678: origin
                    (at_c_p11)

                    ; #44867: origin
                    (not_at_c_p2)

                    ; #68727: <==negation-removal== 44867 (pos)
                    (not (at_c_p2))

                    ; #87337: <==negation-removal== 41678 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_c_p2))
        :effect (and
                    ; #44867: origin
                    (not_at_c_p2)

                    ; #80073: origin
                    (at_c_p12)

                    ; #12622: <==negation-removal== 80073 (pos)
                    (not (not_at_c_p12))

                    ; #68727: <==negation-removal== 44867 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #44867: origin
                    (not_at_c_p2)

                    ; #68727: origin
                    (at_c_p2)

                    ; #44867: <==negation-removal== 68727 (pos)
                    (not (not_at_c_p2))

                    ; #68727: <==negation-removal== 44867 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #44867: origin
                    (not_at_c_p2)

                    ; #58912: origin
                    (at_c_p3)

                    ; #40809: <==negation-removal== 58912 (pos)
                    (not (not_at_c_p3))

                    ; #68727: <==negation-removal== 44867 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #41769: origin
                    (at_c_p4)

                    ; #44867: origin
                    (not_at_c_p2)

                    ; #42272: <==negation-removal== 41769 (pos)
                    (not (not_at_c_p4))

                    ; #68727: <==negation-removal== 44867 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #12154: origin
                    (at_c_p5)

                    ; #44867: origin
                    (not_at_c_p2)

                    ; #68727: <==negation-removal== 44867 (pos)
                    (not (at_c_p2))

                    ; #71112: <==negation-removal== 12154 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #44867: origin
                    (not_at_c_p2)

                    ; #74050: origin
                    (at_c_p6)

                    ; #68727: <==negation-removal== 44867 (pos)
                    (not (at_c_p2))

                    ; #90598: <==negation-removal== 74050 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #44867: origin
                    (not_at_c_p2)

                    ; #86120: origin
                    (at_c_p7)

                    ; #47378: <==negation-removal== 86120 (pos)
                    (not (not_at_c_p7))

                    ; #68727: <==negation-removal== 44867 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #44867: origin
                    (not_at_c_p2)

                    ; #51115: origin
                    (at_c_p8)

                    ; #13943: <==negation-removal== 51115 (pos)
                    (not (not_at_c_p8))

                    ; #68727: <==negation-removal== 44867 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #44466: origin
                    (at_c_p9)

                    ; #44867: origin
                    (not_at_c_p2)

                    ; #55149: <==negation-removal== 44466 (pos)
                    (not (not_at_c_p9))

                    ; #68727: <==negation-removal== 44867 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #40809: origin
                    (not_at_c_p3)

                    ; #45555: origin
                    (at_c_p1)

                    ; #58912: <==negation-removal== 40809 (pos)
                    (not (at_c_p3))

                    ; #73164: <==negation-removal== 45555 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #39848: origin
                    (at_c_p10)

                    ; #40809: origin
                    (not_at_c_p3)

                    ; #55287: <==negation-removal== 39848 (pos)
                    (not (not_at_c_p10))

                    ; #58912: <==negation-removal== 40809 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #40809: origin
                    (not_at_c_p3)

                    ; #41678: origin
                    (at_c_p11)

                    ; #58912: <==negation-removal== 40809 (pos)
                    (not (at_c_p3))

                    ; #87337: <==negation-removal== 41678 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #40809: origin
                    (not_at_c_p3)

                    ; #80073: origin
                    (at_c_p12)

                    ; #12622: <==negation-removal== 80073 (pos)
                    (not (not_at_c_p12))

                    ; #58912: <==negation-removal== 40809 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #40809: origin
                    (not_at_c_p3)

                    ; #68727: origin
                    (at_c_p2)

                    ; #44867: <==negation-removal== 68727 (pos)
                    (not (not_at_c_p2))

                    ; #58912: <==negation-removal== 40809 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #40809: origin
                    (not_at_c_p3)

                    ; #58912: origin
                    (at_c_p3)

                    ; #40809: <==negation-removal== 58912 (pos)
                    (not (not_at_c_p3))

                    ; #58912: <==negation-removal== 40809 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #40809: origin
                    (not_at_c_p3)

                    ; #41769: origin
                    (at_c_p4)

                    ; #42272: <==negation-removal== 41769 (pos)
                    (not (not_at_c_p4))

                    ; #58912: <==negation-removal== 40809 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #12154: origin
                    (at_c_p5)

                    ; #40809: origin
                    (not_at_c_p3)

                    ; #58912: <==negation-removal== 40809 (pos)
                    (not (at_c_p3))

                    ; #71112: <==negation-removal== 12154 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #40809: origin
                    (not_at_c_p3)

                    ; #74050: origin
                    (at_c_p6)

                    ; #58912: <==negation-removal== 40809 (pos)
                    (not (at_c_p3))

                    ; #90598: <==negation-removal== 74050 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #40809: origin
                    (not_at_c_p3)

                    ; #86120: origin
                    (at_c_p7)

                    ; #47378: <==negation-removal== 86120 (pos)
                    (not (not_at_c_p7))

                    ; #58912: <==negation-removal== 40809 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #40809: origin
                    (not_at_c_p3)

                    ; #51115: origin
                    (at_c_p8)

                    ; #13943: <==negation-removal== 51115 (pos)
                    (not (not_at_c_p8))

                    ; #58912: <==negation-removal== 40809 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #40809: origin
                    (not_at_c_p3)

                    ; #44466: origin
                    (at_c_p9)

                    ; #55149: <==negation-removal== 44466 (pos)
                    (not (not_at_c_p9))

                    ; #58912: <==negation-removal== 40809 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #42272: origin
                    (not_at_c_p4)

                    ; #45555: origin
                    (at_c_p1)

                    ; #41769: <==negation-removal== 42272 (pos)
                    (not (at_c_p4))

                    ; #73164: <==negation-removal== 45555 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_c_p4))
        :effect (and
                    ; #39848: origin
                    (at_c_p10)

                    ; #42272: origin
                    (not_at_c_p4)

                    ; #41769: <==negation-removal== 42272 (pos)
                    (not (at_c_p4))

                    ; #55287: <==negation-removal== 39848 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #41678: origin
                    (at_c_p11)

                    ; #42272: origin
                    (not_at_c_p4)

                    ; #41769: <==negation-removal== 42272 (pos)
                    (not (at_c_p4))

                    ; #87337: <==negation-removal== 41678 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_c_p4))
        :effect (and
                    ; #42272: origin
                    (not_at_c_p4)

                    ; #80073: origin
                    (at_c_p12)

                    ; #12622: <==negation-removal== 80073 (pos)
                    (not (not_at_c_p12))

                    ; #41769: <==negation-removal== 42272 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #42272: origin
                    (not_at_c_p4)

                    ; #68727: origin
                    (at_c_p2)

                    ; #41769: <==negation-removal== 42272 (pos)
                    (not (at_c_p4))

                    ; #44867: <==negation-removal== 68727 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #42272: origin
                    (not_at_c_p4)

                    ; #58912: origin
                    (at_c_p3)

                    ; #40809: <==negation-removal== 58912 (pos)
                    (not (not_at_c_p3))

                    ; #41769: <==negation-removal== 42272 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #41769: origin
                    (at_c_p4)

                    ; #42272: origin
                    (not_at_c_p4)

                    ; #41769: <==negation-removal== 42272 (pos)
                    (not (at_c_p4))

                    ; #42272: <==negation-removal== 41769 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #12154: origin
                    (at_c_p5)

                    ; #42272: origin
                    (not_at_c_p4)

                    ; #41769: <==negation-removal== 42272 (pos)
                    (not (at_c_p4))

                    ; #71112: <==negation-removal== 12154 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #42272: origin
                    (not_at_c_p4)

                    ; #74050: origin
                    (at_c_p6)

                    ; #41769: <==negation-removal== 42272 (pos)
                    (not (at_c_p4))

                    ; #90598: <==negation-removal== 74050 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #42272: origin
                    (not_at_c_p4)

                    ; #86120: origin
                    (at_c_p7)

                    ; #41769: <==negation-removal== 42272 (pos)
                    (not (at_c_p4))

                    ; #47378: <==negation-removal== 86120 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #42272: origin
                    (not_at_c_p4)

                    ; #51115: origin
                    (at_c_p8)

                    ; #13943: <==negation-removal== 51115 (pos)
                    (not (not_at_c_p8))

                    ; #41769: <==negation-removal== 42272 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #42272: origin
                    (not_at_c_p4)

                    ; #44466: origin
                    (at_c_p9)

                    ; #41769: <==negation-removal== 42272 (pos)
                    (not (at_c_p4))

                    ; #55149: <==negation-removal== 44466 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #45555: origin
                    (at_c_p1)

                    ; #71112: origin
                    (not_at_c_p5)

                    ; #12154: <==negation-removal== 71112 (pos)
                    (not (at_c_p5))

                    ; #73164: <==negation-removal== 45555 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5))
        :effect (and
                    ; #39848: origin
                    (at_c_p10)

                    ; #71112: origin
                    (not_at_c_p5)

                    ; #12154: <==negation-removal== 71112 (pos)
                    (not (at_c_p5))

                    ; #55287: <==negation-removal== 39848 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #41678: origin
                    (at_c_p11)

                    ; #71112: origin
                    (not_at_c_p5)

                    ; #12154: <==negation-removal== 71112 (pos)
                    (not (at_c_p5))

                    ; #87337: <==negation-removal== 41678 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_c_p5))
        :effect (and
                    ; #71112: origin
                    (not_at_c_p5)

                    ; #80073: origin
                    (at_c_p12)

                    ; #12154: <==negation-removal== 71112 (pos)
                    (not (at_c_p5))

                    ; #12622: <==negation-removal== 80073 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #68727: origin
                    (at_c_p2)

                    ; #71112: origin
                    (not_at_c_p5)

                    ; #12154: <==negation-removal== 71112 (pos)
                    (not (at_c_p5))

                    ; #44867: <==negation-removal== 68727 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #58912: origin
                    (at_c_p3)

                    ; #71112: origin
                    (not_at_c_p5)

                    ; #12154: <==negation-removal== 71112 (pos)
                    (not (at_c_p5))

                    ; #40809: <==negation-removal== 58912 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #41769: origin
                    (at_c_p4)

                    ; #71112: origin
                    (not_at_c_p5)

                    ; #12154: <==negation-removal== 71112 (pos)
                    (not (at_c_p5))

                    ; #42272: <==negation-removal== 41769 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #12154: origin
                    (at_c_p5)

                    ; #71112: origin
                    (not_at_c_p5)

                    ; #12154: <==negation-removal== 71112 (pos)
                    (not (at_c_p5))

                    ; #71112: <==negation-removal== 12154 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #71112: origin
                    (not_at_c_p5)

                    ; #74050: origin
                    (at_c_p6)

                    ; #12154: <==negation-removal== 71112 (pos)
                    (not (at_c_p5))

                    ; #90598: <==negation-removal== 74050 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #71112: origin
                    (not_at_c_p5)

                    ; #86120: origin
                    (at_c_p7)

                    ; #12154: <==negation-removal== 71112 (pos)
                    (not (at_c_p5))

                    ; #47378: <==negation-removal== 86120 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #51115: origin
                    (at_c_p8)

                    ; #71112: origin
                    (not_at_c_p5)

                    ; #12154: <==negation-removal== 71112 (pos)
                    (not (at_c_p5))

                    ; #13943: <==negation-removal== 51115 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #44466: origin
                    (at_c_p9)

                    ; #71112: origin
                    (not_at_c_p5)

                    ; #12154: <==negation-removal== 71112 (pos)
                    (not (at_c_p5))

                    ; #55149: <==negation-removal== 44466 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #45555: origin
                    (at_c_p1)

                    ; #90598: origin
                    (not_at_c_p6)

                    ; #73164: <==negation-removal== 45555 (pos)
                    (not (not_at_c_p1))

                    ; #74050: <==negation-removal== 90598 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6))
        :effect (and
                    ; #39848: origin
                    (at_c_p10)

                    ; #90598: origin
                    (not_at_c_p6)

                    ; #55287: <==negation-removal== 39848 (pos)
                    (not (not_at_c_p10))

                    ; #74050: <==negation-removal== 90598 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6))
        :effect (and
                    ; #41678: origin
                    (at_c_p11)

                    ; #90598: origin
                    (not_at_c_p6)

                    ; #74050: <==negation-removal== 90598 (pos)
                    (not (at_c_p6))

                    ; #87337: <==negation-removal== 41678 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6))
        :effect (and
                    ; #80073: origin
                    (at_c_p12)

                    ; #90598: origin
                    (not_at_c_p6)

                    ; #12622: <==negation-removal== 80073 (pos)
                    (not (not_at_c_p12))

                    ; #74050: <==negation-removal== 90598 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #68727: origin
                    (at_c_p2)

                    ; #90598: origin
                    (not_at_c_p6)

                    ; #44867: <==negation-removal== 68727 (pos)
                    (not (not_at_c_p2))

                    ; #74050: <==negation-removal== 90598 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #58912: origin
                    (at_c_p3)

                    ; #90598: origin
                    (not_at_c_p6)

                    ; #40809: <==negation-removal== 58912 (pos)
                    (not (not_at_c_p3))

                    ; #74050: <==negation-removal== 90598 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #41769: origin
                    (at_c_p4)

                    ; #90598: origin
                    (not_at_c_p6)

                    ; #42272: <==negation-removal== 41769 (pos)
                    (not (not_at_c_p4))

                    ; #74050: <==negation-removal== 90598 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #12154: origin
                    (at_c_p5)

                    ; #90598: origin
                    (not_at_c_p6)

                    ; #71112: <==negation-removal== 12154 (pos)
                    (not (not_at_c_p5))

                    ; #74050: <==negation-removal== 90598 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #74050: origin
                    (at_c_p6)

                    ; #90598: origin
                    (not_at_c_p6)

                    ; #74050: <==negation-removal== 90598 (pos)
                    (not (at_c_p6))

                    ; #90598: <==negation-removal== 74050 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #86120: origin
                    (at_c_p7)

                    ; #90598: origin
                    (not_at_c_p6)

                    ; #47378: <==negation-removal== 86120 (pos)
                    (not (not_at_c_p7))

                    ; #74050: <==negation-removal== 90598 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #51115: origin
                    (at_c_p8)

                    ; #90598: origin
                    (not_at_c_p6)

                    ; #13943: <==negation-removal== 51115 (pos)
                    (not (not_at_c_p8))

                    ; #74050: <==negation-removal== 90598 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #44466: origin
                    (at_c_p9)

                    ; #90598: origin
                    (not_at_c_p6)

                    ; #55149: <==negation-removal== 44466 (pos)
                    (not (not_at_c_p9))

                    ; #74050: <==negation-removal== 90598 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #45555: origin
                    (at_c_p1)

                    ; #47378: origin
                    (not_at_c_p7)

                    ; #73164: <==negation-removal== 45555 (pos)
                    (not (not_at_c_p1))

                    ; #86120: <==negation-removal== 47378 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7))
        :effect (and
                    ; #39848: origin
                    (at_c_p10)

                    ; #47378: origin
                    (not_at_c_p7)

                    ; #55287: <==negation-removal== 39848 (pos)
                    (not (not_at_c_p10))

                    ; #86120: <==negation-removal== 47378 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #41678: origin
                    (at_c_p11)

                    ; #47378: origin
                    (not_at_c_p7)

                    ; #86120: <==negation-removal== 47378 (pos)
                    (not (at_c_p7))

                    ; #87337: <==negation-removal== 41678 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7))
        :effect (and
                    ; #47378: origin
                    (not_at_c_p7)

                    ; #80073: origin
                    (at_c_p12)

                    ; #12622: <==negation-removal== 80073 (pos)
                    (not (not_at_c_p12))

                    ; #86120: <==negation-removal== 47378 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #47378: origin
                    (not_at_c_p7)

                    ; #68727: origin
                    (at_c_p2)

                    ; #44867: <==negation-removal== 68727 (pos)
                    (not (not_at_c_p2))

                    ; #86120: <==negation-removal== 47378 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #47378: origin
                    (not_at_c_p7)

                    ; #58912: origin
                    (at_c_p3)

                    ; #40809: <==negation-removal== 58912 (pos)
                    (not (not_at_c_p3))

                    ; #86120: <==negation-removal== 47378 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #41769: origin
                    (at_c_p4)

                    ; #47378: origin
                    (not_at_c_p7)

                    ; #42272: <==negation-removal== 41769 (pos)
                    (not (not_at_c_p4))

                    ; #86120: <==negation-removal== 47378 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #12154: origin
                    (at_c_p5)

                    ; #47378: origin
                    (not_at_c_p7)

                    ; #71112: <==negation-removal== 12154 (pos)
                    (not (not_at_c_p5))

                    ; #86120: <==negation-removal== 47378 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #47378: origin
                    (not_at_c_p7)

                    ; #74050: origin
                    (at_c_p6)

                    ; #86120: <==negation-removal== 47378 (pos)
                    (not (at_c_p7))

                    ; #90598: <==negation-removal== 74050 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #47378: origin
                    (not_at_c_p7)

                    ; #86120: origin
                    (at_c_p7)

                    ; #47378: <==negation-removal== 86120 (pos)
                    (not (not_at_c_p7))

                    ; #86120: <==negation-removal== 47378 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #47378: origin
                    (not_at_c_p7)

                    ; #51115: origin
                    (at_c_p8)

                    ; #13943: <==negation-removal== 51115 (pos)
                    (not (not_at_c_p8))

                    ; #86120: <==negation-removal== 47378 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #44466: origin
                    (at_c_p9)

                    ; #47378: origin
                    (not_at_c_p7)

                    ; #55149: <==negation-removal== 44466 (pos)
                    (not (not_at_c_p9))

                    ; #86120: <==negation-removal== 47378 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #13943: origin
                    (not_at_c_p8)

                    ; #45555: origin
                    (at_c_p1)

                    ; #51115: <==negation-removal== 13943 (pos)
                    (not (at_c_p8))

                    ; #73164: <==negation-removal== 45555 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8))
        :effect (and
                    ; #13943: origin
                    (not_at_c_p8)

                    ; #39848: origin
                    (at_c_p10)

                    ; #51115: <==negation-removal== 13943 (pos)
                    (not (at_c_p8))

                    ; #55287: <==negation-removal== 39848 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8))
        :effect (and
                    ; #13943: origin
                    (not_at_c_p8)

                    ; #41678: origin
                    (at_c_p11)

                    ; #51115: <==negation-removal== 13943 (pos)
                    (not (at_c_p8))

                    ; #87337: <==negation-removal== 41678 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_c_p8))
        :effect (and
                    ; #13943: origin
                    (not_at_c_p8)

                    ; #80073: origin
                    (at_c_p12)

                    ; #12622: <==negation-removal== 80073 (pos)
                    (not (not_at_c_p12))

                    ; #51115: <==negation-removal== 13943 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #13943: origin
                    (not_at_c_p8)

                    ; #68727: origin
                    (at_c_p2)

                    ; #44867: <==negation-removal== 68727 (pos)
                    (not (not_at_c_p2))

                    ; #51115: <==negation-removal== 13943 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #13943: origin
                    (not_at_c_p8)

                    ; #58912: origin
                    (at_c_p3)

                    ; #40809: <==negation-removal== 58912 (pos)
                    (not (not_at_c_p3))

                    ; #51115: <==negation-removal== 13943 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #13943: origin
                    (not_at_c_p8)

                    ; #41769: origin
                    (at_c_p4)

                    ; #42272: <==negation-removal== 41769 (pos)
                    (not (not_at_c_p4))

                    ; #51115: <==negation-removal== 13943 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #12154: origin
                    (at_c_p5)

                    ; #13943: origin
                    (not_at_c_p8)

                    ; #51115: <==negation-removal== 13943 (pos)
                    (not (at_c_p8))

                    ; #71112: <==negation-removal== 12154 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #13943: origin
                    (not_at_c_p8)

                    ; #74050: origin
                    (at_c_p6)

                    ; #51115: <==negation-removal== 13943 (pos)
                    (not (at_c_p8))

                    ; #90598: <==negation-removal== 74050 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #13943: origin
                    (not_at_c_p8)

                    ; #86120: origin
                    (at_c_p7)

                    ; #47378: <==negation-removal== 86120 (pos)
                    (not (not_at_c_p7))

                    ; #51115: <==negation-removal== 13943 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #13943: origin
                    (not_at_c_p8)

                    ; #51115: origin
                    (at_c_p8)

                    ; #13943: <==negation-removal== 51115 (pos)
                    (not (not_at_c_p8))

                    ; #51115: <==negation-removal== 13943 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #13943: origin
                    (not_at_c_p8)

                    ; #44466: origin
                    (at_c_p9)

                    ; #51115: <==negation-removal== 13943 (pos)
                    (not (at_c_p8))

                    ; #55149: <==negation-removal== 44466 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #45555: origin
                    (at_c_p1)

                    ; #55149: origin
                    (not_at_c_p9)

                    ; #44466: <==negation-removal== 55149 (pos)
                    (not (at_c_p9))

                    ; #73164: <==negation-removal== 45555 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #39848: origin
                    (at_c_p10)

                    ; #55149: origin
                    (not_at_c_p9)

                    ; #44466: <==negation-removal== 55149 (pos)
                    (not (at_c_p9))

                    ; #55287: <==negation-removal== 39848 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p9_p11
        :precondition (and (at_c_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #41678: origin
                    (at_c_p11)

                    ; #55149: origin
                    (not_at_c_p9)

                    ; #44466: <==negation-removal== 55149 (pos)
                    (not (at_c_p9))

                    ; #87337: <==negation-removal== 41678 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #55149: origin
                    (not_at_c_p9)

                    ; #80073: origin
                    (at_c_p12)

                    ; #12622: <==negation-removal== 80073 (pos)
                    (not (not_at_c_p12))

                    ; #44466: <==negation-removal== 55149 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #55149: origin
                    (not_at_c_p9)

                    ; #68727: origin
                    (at_c_p2)

                    ; #44466: <==negation-removal== 55149 (pos)
                    (not (at_c_p9))

                    ; #44867: <==negation-removal== 68727 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #55149: origin
                    (not_at_c_p9)

                    ; #58912: origin
                    (at_c_p3)

                    ; #40809: <==negation-removal== 58912 (pos)
                    (not (not_at_c_p3))

                    ; #44466: <==negation-removal== 55149 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #41769: origin
                    (at_c_p4)

                    ; #55149: origin
                    (not_at_c_p9)

                    ; #42272: <==negation-removal== 41769 (pos)
                    (not (not_at_c_p4))

                    ; #44466: <==negation-removal== 55149 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #12154: origin
                    (at_c_p5)

                    ; #55149: origin
                    (not_at_c_p9)

                    ; #44466: <==negation-removal== 55149 (pos)
                    (not (at_c_p9))

                    ; #71112: <==negation-removal== 12154 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #55149: origin
                    (not_at_c_p9)

                    ; #74050: origin
                    (at_c_p6)

                    ; #44466: <==negation-removal== 55149 (pos)
                    (not (at_c_p9))

                    ; #90598: <==negation-removal== 74050 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #55149: origin
                    (not_at_c_p9)

                    ; #86120: origin
                    (at_c_p7)

                    ; #44466: <==negation-removal== 55149 (pos)
                    (not (at_c_p9))

                    ; #47378: <==negation-removal== 86120 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #51115: origin
                    (at_c_p8)

                    ; #55149: origin
                    (not_at_c_p9)

                    ; #13943: <==negation-removal== 51115 (pos)
                    (not (not_at_c_p8))

                    ; #44466: <==negation-removal== 55149 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #44466: origin
                    (at_c_p9)

                    ; #55149: origin
                    (not_at_c_p9)

                    ; #44466: <==negation-removal== 55149 (pos)
                    (not (at_c_p9))

                    ; #55149: <==negation-removal== 44466 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #12935: <==commonly_known== 49638 (pos)
                    (Bb_checked_p10)

                    ; #25987: <==commonly_known== 58129 (neg)
                    (Pc_checked_p10)

                    ; #29192: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #48945: <==commonly_known== 58129 (neg)
                    (Pb_checked_p10)

                    ; #49638: origin
                    (checked_p10)

                    ; #54488: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #66323: <==closure== 54488 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #72592: <==commonly_known== 58129 (neg)
                    (Pa_checked_p10)

                    ; #77853: <==closure== 29192 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #84776: <==commonly_known== 49638 (pos)
                    (Bc_checked_p10)

                    ; #98505: <==commonly_known== 49638 (pos)
                    (Ba_checked_p10)

                    ; #18016: <==uncertain_firing== 29192 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #31598: <==negation-removal== 25987 (pos)
                    (not (Bc_not_checked_p10))

                    ; #34595: <==uncertain_firing== 66323 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #43136: <==uncertain_firing== 54488 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #49470: <==negation-removal== 12935 (pos)
                    (not (Pb_not_checked_p10))

                    ; #52931: <==negation-removal== 48945 (pos)
                    (not (Bb_not_checked_p10))

                    ; #54750: <==negation-removal== 29192 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #55980: <==negation-removal== 84776 (pos)
                    (not (Pc_not_checked_p10))

                    ; #58129: <==negation-removal== 49638 (pos)
                    (not (not_checked_p10))

                    ; #59311: <==uncertain_firing== 77853 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #63845: <==negation-removal== 77853 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #73780: <==negation-removal== 66323 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #74168: <==negation-removal== 54488 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #77852: <==negation-removal== 98505 (pos)
                    (not (Pa_not_checked_p10))

                    ; #79568: <==negation-removal== 72592 (pos)
                    (not (Ba_not_checked_p10))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #15986: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #16214: <==closure== 18601 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #18601: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #26209: origin
                    (checked_p11)

                    ; #27819: <==commonly_known== 26209 (pos)
                    (Ba_checked_p11)

                    ; #35950: <==closure== 15986 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #40450: <==commonly_known== 80314 (neg)
                    (Pb_checked_p11)

                    ; #52435: <==commonly_known== 80314 (neg)
                    (Pa_checked_p11)

                    ; #57199: <==commonly_known== 80314 (neg)
                    (Pc_checked_p11)

                    ; #60434: <==commonly_known== 26209 (pos)
                    (Bb_checked_p11)

                    ; #79710: <==commonly_known== 26209 (pos)
                    (Bc_checked_p11)

                    ; #10463: <==negation-removal== 60434 (pos)
                    (not (Pb_not_checked_p11))

                    ; #10901: <==negation-removal== 18601 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #15799: <==uncertain_firing== 16214 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #17690: <==negation-removal== 27819 (pos)
                    (not (Pa_not_checked_p11))

                    ; #22623: <==negation-removal== 15986 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #23614: <==negation-removal== 57199 (pos)
                    (not (Bc_not_checked_p11))

                    ; #26435: <==negation-removal== 35950 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #37026: <==negation-removal== 40450 (pos)
                    (not (Bb_not_checked_p11))

                    ; #43295: <==uncertain_firing== 18601 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #44748: <==uncertain_firing== 35950 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #48299: <==negation-removal== 16214 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #52068: <==negation-removal== 52435 (pos)
                    (not (Ba_not_checked_p11))

                    ; #65486: <==negation-removal== 79710 (pos)
                    (not (Pc_not_checked_p11))

                    ; #80314: <==negation-removal== 26209 (pos)
                    (not (not_checked_p11))

                    ; #91378: <==uncertain_firing== 15986 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #16351: <==closure== 30954 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #19542: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #25768: <==commonly_known== 51434 (pos)
                    (Bc_checked_p12)

                    ; #30954: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #34647: <==commonly_known== 28671 (neg)
                    (Pa_checked_p12)

                    ; #39172: <==commonly_known== 51434 (pos)
                    (Ba_checked_p12)

                    ; #46146: <==commonly_known== 28671 (neg)
                    (Pc_checked_p12)

                    ; #48315: <==closure== 19542 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #51434: origin
                    (checked_p12)

                    ; #67578: <==commonly_known== 28671 (neg)
                    (Pb_checked_p12)

                    ; #71697: <==commonly_known== 51434 (pos)
                    (Bb_checked_p12)

                    ; #18663: <==negation-removal== 48315 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #18935: <==negation-removal== 19542 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #23069: <==uncertain_firing== 30954 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #28671: <==negation-removal== 51434 (pos)
                    (not (not_checked_p12))

                    ; #30211: <==negation-removal== 25768 (pos)
                    (not (Pc_not_checked_p12))

                    ; #48762: <==negation-removal== 16351 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #50438: <==uncertain_firing== 19542 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #51726: <==negation-removal== 71697 (pos)
                    (not (Pb_not_checked_p12))

                    ; #55207: <==negation-removal== 46146 (pos)
                    (not (Bc_not_checked_p12))

                    ; #63697: <==uncertain_firing== 48315 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #67544: <==negation-removal== 39172 (pos)
                    (not (Pa_not_checked_p12))

                    ; #73288: <==negation-removal== 30954 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #73940: <==uncertain_firing== 16351 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #76397: <==negation-removal== 34647 (pos)
                    (not (Ba_not_checked_p12))

                    ; #84954: <==negation-removal== 67578 (pos)
                    (not (Bb_not_checked_p12))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #14671: <==commonly_known== 29560 (pos)
                    (Ba_checked_p1)

                    ; #17481: <==closure== 18797 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #17840: <==closure== 71480 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #18797: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #28304: <==commonly_known== 41589 (neg)
                    (Pa_checked_p1)

                    ; #29560: origin
                    (checked_p1)

                    ; #38947: <==commonly_known== 41589 (neg)
                    (Pb_checked_p1)

                    ; #50803: <==commonly_known== 29560 (pos)
                    (Bc_checked_p1)

                    ; #52658: <==commonly_known== 29560 (pos)
                    (Bb_checked_p1)

                    ; #59122: <==commonly_known== 41589 (neg)
                    (Pc_checked_p1)

                    ; #71480: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #11677: <==negation-removal== 71480 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #15035: <==uncertain_firing== 17481 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #33174: <==uncertain_firing== 18797 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #36631: <==negation-removal== 18797 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #36735: <==negation-removal== 38947 (pos)
                    (not (Bb_not_checked_p1))

                    ; #38132: <==negation-removal== 50803 (pos)
                    (not (Pc_not_checked_p1))

                    ; #39626: <==uncertain_firing== 71480 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #41589: <==negation-removal== 29560 (pos)
                    (not (not_checked_p1))

                    ; #44310: <==negation-removal== 17481 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #45881: <==uncertain_firing== 17840 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #46174: <==negation-removal== 28304 (pos)
                    (not (Ba_not_checked_p1))

                    ; #56479: <==negation-removal== 52658 (pos)
                    (not (Pb_not_checked_p1))

                    ; #77826: <==negation-removal== 14671 (pos)
                    (not (Pa_not_checked_p1))

                    ; #78460: <==negation-removal== 17840 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #88552: <==negation-removal== 59122 (pos)
                    (not (Bc_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #21631: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #27299: <==commonly_known== 60482 (pos)
                    (Bc_checked_p2)

                    ; #34962: <==commonly_known== 70659 (neg)
                    (Pc_checked_p2)

                    ; #37190: <==commonly_known== 70659 (neg)
                    (Pa_checked_p2)

                    ; #39712: <==commonly_known== 60482 (pos)
                    (Ba_checked_p2)

                    ; #50613: <==closure== 72903 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #54122: <==commonly_known== 70659 (neg)
                    (Pb_checked_p2)

                    ; #54621: <==closure== 21631 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #60482: origin
                    (checked_p2)

                    ; #72245: <==commonly_known== 60482 (pos)
                    (Bb_checked_p2)

                    ; #72903: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #31684: <==uncertain_firing== 50613 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #33777: <==negation-removal== 72245 (pos)
                    (not (Pb_not_checked_p2))

                    ; #47804: <==negation-removal== 72903 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #48758: <==negation-removal== 34962 (pos)
                    (not (Bc_not_checked_p2))

                    ; #57674: <==negation-removal== 27299 (pos)
                    (not (Pc_not_checked_p2))

                    ; #58248: <==negation-removal== 21631 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #59961: <==uncertain_firing== 54621 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #60236: <==negation-removal== 50613 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #67064: <==negation-removal== 39712 (pos)
                    (not (Pa_not_checked_p2))

                    ; #68828: <==negation-removal== 37190 (pos)
                    (not (Ba_not_checked_p2))

                    ; #68910: <==negation-removal== 54122 (pos)
                    (not (Bb_not_checked_p2))

                    ; #70659: <==negation-removal== 60482 (pos)
                    (not (not_checked_p2))

                    ; #78509: <==negation-removal== 54621 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #83617: <==uncertain_firing== 72903 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #86974: <==uncertain_firing== 21631 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #16313: <==closure== 58798 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #18392: <==commonly_known== 35528 (pos)
                    (Bb_checked_p3)

                    ; #25945: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #27068: <==commonly_known== 35528 (pos)
                    (Bc_checked_p3)

                    ; #35528: origin
                    (checked_p3)

                    ; #54415: <==commonly_known== 45447 (neg)
                    (Pb_checked_p3)

                    ; #56848: <==closure== 25945 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #58798: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #69913: <==commonly_known== 45447 (neg)
                    (Pa_checked_p3)

                    ; #78692: <==commonly_known== 35528 (pos)
                    (Ba_checked_p3)

                    ; #83560: <==commonly_known== 45447 (neg)
                    (Pc_checked_p3)

                    ; #20518: <==negation-removal== 56848 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #22644: <==negation-removal== 18392 (pos)
                    (not (Pb_not_checked_p3))

                    ; #25567: <==negation-removal== 83560 (pos)
                    (not (Bc_not_checked_p3))

                    ; #42505: <==uncertain_firing== 25945 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #45447: <==negation-removal== 35528 (pos)
                    (not (not_checked_p3))

                    ; #50590: <==negation-removal== 27068 (pos)
                    (not (Pc_not_checked_p3))

                    ; #63989: <==negation-removal== 25945 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #67919: <==negation-removal== 16313 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #79671: <==uncertain_firing== 58798 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #80116: <==negation-removal== 58798 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #80773: <==uncertain_firing== 16313 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #85498: <==negation-removal== 69913 (pos)
                    (not (Ba_not_checked_p3))

                    ; #90192: <==negation-removal== 78692 (pos)
                    (not (Pa_not_checked_p3))

                    ; #91152: <==negation-removal== 54415 (pos)
                    (not (Bb_not_checked_p3))

                    ; #97154: <==uncertain_firing== 56848 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #29309: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #30359: <==commonly_known== 62591 (neg)
                    (Pc_checked_p4)

                    ; #31844: <==closure== 85691 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #34342: origin
                    (checked_p4)

                    ; #68186: <==commonly_known== 34342 (pos)
                    (Bc_checked_p4)

                    ; #69334: <==closure== 29309 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #72741: <==commonly_known== 62591 (neg)
                    (Pb_checked_p4)

                    ; #76970: <==commonly_known== 34342 (pos)
                    (Bb_checked_p4)

                    ; #78902: <==commonly_known== 34342 (pos)
                    (Ba_checked_p4)

                    ; #84982: <==commonly_known== 62591 (neg)
                    (Pa_checked_p4)

                    ; #85691: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #12573: <==negation-removal== 84982 (pos)
                    (not (Ba_not_checked_p4))

                    ; #23139: <==negation-removal== 68186 (pos)
                    (not (Pc_not_checked_p4))

                    ; #24561: <==uncertain_firing== 29309 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #26179: <==negation-removal== 85691 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #32169: <==negation-removal== 78902 (pos)
                    (not (Pa_not_checked_p4))

                    ; #37127: <==negation-removal== 29309 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #41953: <==uncertain_firing== 69334 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #43814: <==negation-removal== 69334 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #61758: <==negation-removal== 31844 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #62591: <==negation-removal== 34342 (pos)
                    (not (not_checked_p4))

                    ; #66211: <==negation-removal== 76970 (pos)
                    (not (Pb_not_checked_p4))

                    ; #74821: <==negation-removal== 72741 (pos)
                    (not (Bb_not_checked_p4))

                    ; #74855: <==uncertain_firing== 31844 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #81858: <==negation-removal== 30359 (pos)
                    (not (Bc_not_checked_p4))

                    ; #84632: <==uncertain_firing== 85691 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #10131: <==commonly_known== 57765 (pos)
                    (Bc_checked_p5)

                    ; #11374: <==commonly_known== 51709 (neg)
                    (Pc_checked_p5)

                    ; #22061: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #23250: <==commonly_known== 51709 (neg)
                    (Pa_checked_p5)

                    ; #33393: <==commonly_known== 57765 (pos)
                    (Bb_checked_p5)

                    ; #49544: <==closure== 66244 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #57765: origin
                    (checked_p5)

                    ; #60808: <==commonly_known== 51709 (neg)
                    (Pb_checked_p5)

                    ; #66244: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #87356: <==commonly_known== 57765 (pos)
                    (Ba_checked_p5)

                    ; #91430: <==closure== 22061 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #12437: <==uncertain_firing== 66244 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #12589: <==negation-removal== 33393 (pos)
                    (not (Pb_not_checked_p5))

                    ; #14944: <==negation-removal== 23250 (pos)
                    (not (Ba_not_checked_p5))

                    ; #18232: <==negation-removal== 91430 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #18705: <==uncertain_firing== 91430 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #23231: <==negation-removal== 60808 (pos)
                    (not (Bb_not_checked_p5))

                    ; #26969: <==negation-removal== 10131 (pos)
                    (not (Pc_not_checked_p5))

                    ; #28623: <==uncertain_firing== 22061 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #47975: <==negation-removal== 22061 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #51338: <==negation-removal== 49544 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #51709: <==negation-removal== 57765 (pos)
                    (not (not_checked_p5))

                    ; #65344: <==uncertain_firing== 49544 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #66220: <==negation-removal== 66244 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #78325: <==negation-removal== 87356 (pos)
                    (not (Pa_not_checked_p5))

                    ; #85382: <==negation-removal== 11374 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #20499: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #22658: <==closure== 20499 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #34220: <==commonly_known== 27152 (neg)
                    (Pa_checked_p6)

                    ; #36331: <==commonly_known== 66871 (pos)
                    (Bb_checked_p6)

                    ; #40261: <==commonly_known== 27152 (neg)
                    (Pb_checked_p6)

                    ; #51786: <==commonly_known== 27152 (neg)
                    (Pc_checked_p6)

                    ; #63826: <==commonly_known== 66871 (pos)
                    (Ba_checked_p6)

                    ; #66871: origin
                    (checked_p6)

                    ; #75652: <==closure== 84978 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #81907: <==commonly_known== 66871 (pos)
                    (Bc_checked_p6)

                    ; #84978: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #14797: <==negation-removal== 36331 (pos)
                    (not (Pb_not_checked_p6))

                    ; #23661: <==uncertain_firing== 84978 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #26274: <==negation-removal== 34220 (pos)
                    (not (Ba_not_checked_p6))

                    ; #27152: <==negation-removal== 66871 (pos)
                    (not (not_checked_p6))

                    ; #38522: <==negation-removal== 63826 (pos)
                    (not (Pa_not_checked_p6))

                    ; #39456: <==negation-removal== 40261 (pos)
                    (not (Bb_not_checked_p6))

                    ; #41264: <==negation-removal== 22658 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #42144: <==negation-removal== 84978 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #42561: <==uncertain_firing== 75652 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #59128: <==negation-removal== 51786 (pos)
                    (not (Bc_not_checked_p6))

                    ; #60256: <==negation-removal== 81907 (pos)
                    (not (Pc_not_checked_p6))

                    ; #61586: <==uncertain_firing== 22658 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #67682: <==uncertain_firing== 20499 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #89988: <==negation-removal== 75652 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #90598: <==negation-removal== 20499 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #15231: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #20014: <==commonly_known== 78060 (neg)
                    (Pa_checked_p7)

                    ; #29622: <==commonly_known== 33126 (pos)
                    (Bc_checked_p7)

                    ; #33126: origin
                    (checked_p7)

                    ; #39220: <==commonly_known== 33126 (pos)
                    (Ba_checked_p7)

                    ; #46179: <==commonly_known== 78060 (neg)
                    (Pb_checked_p7)

                    ; #48476: <==closure== 15231 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #56063: <==commonly_known== 33126 (pos)
                    (Bb_checked_p7)

                    ; #61956: <==closure== 72849 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #72849: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #81591: <==commonly_known== 78060 (neg)
                    (Pc_checked_p7)

                    ; #19930: <==uncertain_firing== 15231 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #24723: <==negation-removal== 46179 (pos)
                    (not (Bb_not_checked_p7))

                    ; #24758: <==negation-removal== 72849 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #28058: <==negation-removal== 39220 (pos)
                    (not (Pa_not_checked_p7))

                    ; #35264: <==negation-removal== 20014 (pos)
                    (not (Ba_not_checked_p7))

                    ; #39660: <==negation-removal== 61956 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #41495: <==uncertain_firing== 61956 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #45070: <==uncertain_firing== 72849 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #51771: <==uncertain_firing== 48476 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #55364: <==negation-removal== 48476 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #57309: <==negation-removal== 81591 (pos)
                    (not (Bc_not_checked_p7))

                    ; #74282: <==negation-removal== 29622 (pos)
                    (not (Pc_not_checked_p7))

                    ; #78060: <==negation-removal== 33126 (pos)
                    (not (not_checked_p7))

                    ; #88178: <==negation-removal== 15231 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #90696: <==negation-removal== 56063 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #13348: <==commonly_known== 13018 (neg)
                    (Pb_checked_p8)

                    ; #14302: <==closure== 24139 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #19632: <==closure== 25294 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #24139: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #25294: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #28107: origin
                    (checked_p8)

                    ; #30786: <==commonly_known== 28107 (pos)
                    (Bc_checked_p8)

                    ; #33633: <==commonly_known== 28107 (pos)
                    (Ba_checked_p8)

                    ; #42667: <==commonly_known== 13018 (neg)
                    (Pa_checked_p8)

                    ; #46158: <==commonly_known== 13018 (neg)
                    (Pc_checked_p8)

                    ; #87260: <==commonly_known== 28107 (pos)
                    (Bb_checked_p8)

                    ; #11138: <==negation-removal== 14302 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #13018: <==negation-removal== 28107 (pos)
                    (not (not_checked_p8))

                    ; #14534: <==uncertain_firing== 25294 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #31176: <==negation-removal== 46158 (pos)
                    (not (Bc_not_checked_p8))

                    ; #44317: <==uncertain_firing== 24139 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #44444: <==negation-removal== 33633 (pos)
                    (not (Pa_not_checked_p8))

                    ; #47497: <==negation-removal== 13348 (pos)
                    (not (Bb_not_checked_p8))

                    ; #47871: <==uncertain_firing== 14302 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #59238: <==negation-removal== 25294 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #60009: <==negation-removal== 24139 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #64507: <==negation-removal== 19632 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #76565: <==uncertain_firing== 19632 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #83092: <==negation-removal== 42667 (pos)
                    (not (Ba_not_checked_p8))

                    ; #83914: <==negation-removal== 30786 (pos)
                    (not (Pc_not_checked_p8))

                    ; #89133: <==negation-removal== 87260 (pos)
                    (not (Pb_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11051: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #23260: <==commonly_known== 24582 (pos)
                    (Ba_checked_p9)

                    ; #24582: origin
                    (checked_p9)

                    ; #40418: <==commonly_known== 91605 (neg)
                    (Pc_checked_p9)

                    ; #41704: <==commonly_known== 91605 (neg)
                    (Pb_checked_p9)

                    ; #51962: <==commonly_known== 24582 (pos)
                    (Bc_checked_p9)

                    ; #57698: <==closure== 11051 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #83386: <==closure== 87668 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #85981: <==commonly_known== 24582 (pos)
                    (Bb_checked_p9)

                    ; #87668: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #91815: <==commonly_known== 91605 (neg)
                    (Pa_checked_p9)

                    ; #11224: <==negation-removal== 11051 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #12215: <==negation-removal== 83386 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #18024: <==negation-removal== 91815 (pos)
                    (not (Ba_not_checked_p9))

                    ; #18513: <==uncertain_firing== 57698 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #24956: <==uncertain_firing== 11051 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #25223: <==negation-removal== 85981 (pos)
                    (not (Pb_not_checked_p9))

                    ; #39396: <==negation-removal== 51962 (pos)
                    (not (Pc_not_checked_p9))

                    ; #51770: <==negation-removal== 57698 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #54059: <==uncertain_firing== 83386 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #55862: <==negation-removal== 23260 (pos)
                    (not (Pa_not_checked_p9))

                    ; #76374: <==negation-removal== 41704 (pos)
                    (not (Bb_not_checked_p9))

                    ; #82250: <==negation-removal== 40418 (pos)
                    (not (Bc_not_checked_p9))

                    ; #89754: <==uncertain_firing== 87668 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #91605: <==negation-removal== 24582 (pos)
                    (not (not_checked_p9))

                    ; #95388: <==negation-removal== 87668 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #12935: <==commonly_known== 49638 (pos)
                    (Bb_checked_p10)

                    ; #13379: <==closure== 56033 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #25987: <==commonly_known== 58129 (neg)
                    (Pc_checked_p10)

                    ; #48945: <==commonly_known== 58129 (neg)
                    (Pb_checked_p10)

                    ; #49638: origin
                    (checked_p10)

                    ; #56033: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #60410: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #71494: <==closure== 60410 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #72592: <==commonly_known== 58129 (neg)
                    (Pa_checked_p10)

                    ; #84776: <==commonly_known== 49638 (pos)
                    (Bc_checked_p10)

                    ; #98505: <==commonly_known== 49638 (pos)
                    (Ba_checked_p10)

                    ; #19353: <==negation-removal== 13379 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #29811: <==uncertain_firing== 60410 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #31598: <==negation-removal== 25987 (pos)
                    (not (Bc_not_checked_p10))

                    ; #33149: <==negation-removal== 71494 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #49470: <==negation-removal== 12935 (pos)
                    (not (Pb_not_checked_p10))

                    ; #52931: <==negation-removal== 48945 (pos)
                    (not (Bb_not_checked_p10))

                    ; #54249: <==negation-removal== 60410 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #54650: <==uncertain_firing== 13379 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #55980: <==negation-removal== 84776 (pos)
                    (not (Pc_not_checked_p10))

                    ; #58129: <==negation-removal== 49638 (pos)
                    (not (not_checked_p10))

                    ; #66420: <==uncertain_firing== 56033 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #69716: <==uncertain_firing== 71494 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #75538: <==negation-removal== 56033 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #77852: <==negation-removal== 98505 (pos)
                    (not (Pa_not_checked_p10))

                    ; #79568: <==negation-removal== 72592 (pos)
                    (not (Ba_not_checked_p10))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #14631: <==closure== 89212 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #26209: origin
                    (checked_p11)

                    ; #27819: <==commonly_known== 26209 (pos)
                    (Ba_checked_p11)

                    ; #40450: <==commonly_known== 80314 (neg)
                    (Pb_checked_p11)

                    ; #45145: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #52435: <==commonly_known== 80314 (neg)
                    (Pa_checked_p11)

                    ; #57199: <==commonly_known== 80314 (neg)
                    (Pc_checked_p11)

                    ; #60434: <==commonly_known== 26209 (pos)
                    (Bb_checked_p11)

                    ; #79710: <==commonly_known== 26209 (pos)
                    (Bc_checked_p11)

                    ; #81566: <==closure== 45145 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #89212: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #10463: <==negation-removal== 60434 (pos)
                    (not (Pb_not_checked_p11))

                    ; #11411: <==uncertain_firing== 81566 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #17690: <==negation-removal== 27819 (pos)
                    (not (Pa_not_checked_p11))

                    ; #23614: <==negation-removal== 57199 (pos)
                    (not (Bc_not_checked_p11))

                    ; #25285: <==negation-removal== 45145 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #25737: <==negation-removal== 89212 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #33663: <==uncertain_firing== 45145 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #37026: <==negation-removal== 40450 (pos)
                    (not (Bb_not_checked_p11))

                    ; #52068: <==negation-removal== 52435 (pos)
                    (not (Ba_not_checked_p11))

                    ; #63846: <==negation-removal== 14631 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #65394: <==uncertain_firing== 14631 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #65486: <==negation-removal== 79710 (pos)
                    (not (Pc_not_checked_p11))

                    ; #80314: <==negation-removal== 26209 (pos)
                    (not (not_checked_p11))

                    ; #80781: <==uncertain_firing== 89212 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #91131: <==negation-removal== 81566 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #25768: <==commonly_known== 51434 (pos)
                    (Bc_checked_p12)

                    ; #34647: <==commonly_known== 28671 (neg)
                    (Pa_checked_p12)

                    ; #39172: <==commonly_known== 51434 (pos)
                    (Ba_checked_p12)

                    ; #46146: <==commonly_known== 28671 (neg)
                    (Pc_checked_p12)

                    ; #50976: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #51434: origin
                    (checked_p12)

                    ; #67578: <==commonly_known== 28671 (neg)
                    (Pb_checked_p12)

                    ; #67730: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #71697: <==commonly_known== 51434 (pos)
                    (Bb_checked_p12)

                    ; #80834: <==closure== 67730 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #82311: <==closure== 50976 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #19183: <==uncertain_firing== 50976 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #22120: <==uncertain_firing== 67730 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #26507: <==uncertain_firing== 80834 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #28671: <==negation-removal== 51434 (pos)
                    (not (not_checked_p12))

                    ; #30211: <==negation-removal== 25768 (pos)
                    (not (Pc_not_checked_p12))

                    ; #37251: <==uncertain_firing== 82311 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #51726: <==negation-removal== 71697 (pos)
                    (not (Pb_not_checked_p12))

                    ; #55207: <==negation-removal== 46146 (pos)
                    (not (Bc_not_checked_p12))

                    ; #60456: <==negation-removal== 50976 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #67544: <==negation-removal== 39172 (pos)
                    (not (Pa_not_checked_p12))

                    ; #73790: <==negation-removal== 67730 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #76397: <==negation-removal== 34647 (pos)
                    (not (Ba_not_checked_p12))

                    ; #79608: <==negation-removal== 80834 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #81029: <==negation-removal== 82311 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #84954: <==negation-removal== 67578 (pos)
                    (not (Bb_not_checked_p12))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #14671: <==commonly_known== 29560 (pos)
                    (Ba_checked_p1)

                    ; #28304: <==commonly_known== 41589 (neg)
                    (Pa_checked_p1)

                    ; #29560: origin
                    (checked_p1)

                    ; #38947: <==commonly_known== 41589 (neg)
                    (Pb_checked_p1)

                    ; #50803: <==commonly_known== 29560 (pos)
                    (Bc_checked_p1)

                    ; #51692: <==closure== 78481 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #52658: <==commonly_known== 29560 (pos)
                    (Bb_checked_p1)

                    ; #59122: <==commonly_known== 41589 (neg)
                    (Pc_checked_p1)

                    ; #61935: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #76097: <==closure== 61935 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #78481: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #27305: <==negation-removal== 76097 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #36735: <==negation-removal== 38947 (pos)
                    (not (Bb_not_checked_p1))

                    ; #38132: <==negation-removal== 50803 (pos)
                    (not (Pc_not_checked_p1))

                    ; #41589: <==negation-removal== 29560 (pos)
                    (not (not_checked_p1))

                    ; #42132: <==uncertain_firing== 51692 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #46174: <==negation-removal== 28304 (pos)
                    (not (Ba_not_checked_p1))

                    ; #46186: <==uncertain_firing== 76097 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #56479: <==negation-removal== 52658 (pos)
                    (not (Pb_not_checked_p1))

                    ; #64043: <==uncertain_firing== 61935 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #67108: <==negation-removal== 61935 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #72441: <==negation-removal== 78481 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #77826: <==negation-removal== 14671 (pos)
                    (not (Pa_not_checked_p1))

                    ; #78224: <==negation-removal== 51692 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #82299: <==uncertain_firing== 78481 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #88552: <==negation-removal== 59122 (pos)
                    (not (Bc_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12796: <==closure== 44111 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #27299: <==commonly_known== 60482 (pos)
                    (Bc_checked_p2)

                    ; #34962: <==commonly_known== 70659 (neg)
                    (Pc_checked_p2)

                    ; #37190: <==commonly_known== 70659 (neg)
                    (Pa_checked_p2)

                    ; #37800: <==closure== 42667 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #39712: <==commonly_known== 60482 (pos)
                    (Ba_checked_p2)

                    ; #42667: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #44111: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #54122: <==commonly_known== 70659 (neg)
                    (Pb_checked_p2)

                    ; #60482: origin
                    (checked_p2)

                    ; #72245: <==commonly_known== 60482 (pos)
                    (Bb_checked_p2)

                    ; #13248: <==negation-removal== 44111 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #33777: <==negation-removal== 72245 (pos)
                    (not (Pb_not_checked_p2))

                    ; #35320: <==uncertain_firing== 42667 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #47625: <==negation-removal== 12796 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #48758: <==negation-removal== 34962 (pos)
                    (not (Bc_not_checked_p2))

                    ; #56625: <==negation-removal== 42667 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #57674: <==negation-removal== 27299 (pos)
                    (not (Pc_not_checked_p2))

                    ; #65007: <==uncertain_firing== 44111 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #67064: <==negation-removal== 39712 (pos)
                    (not (Pa_not_checked_p2))

                    ; #68828: <==negation-removal== 37190 (pos)
                    (not (Ba_not_checked_p2))

                    ; #68910: <==negation-removal== 54122 (pos)
                    (not (Bb_not_checked_p2))

                    ; #70350: <==uncertain_firing== 37800 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #70659: <==negation-removal== 60482 (pos)
                    (not (not_checked_p2))

                    ; #71457: <==uncertain_firing== 12796 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #74672: <==negation-removal== 37800 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12411: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #17219: <==closure== 20345 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #18392: <==commonly_known== 35528 (pos)
                    (Bb_checked_p3)

                    ; #20345: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #27068: <==commonly_known== 35528 (pos)
                    (Bc_checked_p3)

                    ; #35528: origin
                    (checked_p3)

                    ; #45883: <==closure== 12411 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #54415: <==commonly_known== 45447 (neg)
                    (Pb_checked_p3)

                    ; #69913: <==commonly_known== 45447 (neg)
                    (Pa_checked_p3)

                    ; #78692: <==commonly_known== 35528 (pos)
                    (Ba_checked_p3)

                    ; #83560: <==commonly_known== 45447 (neg)
                    (Pc_checked_p3)

                    ; #10483: <==uncertain_firing== 12411 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #16969: <==negation-removal== 12411 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #22644: <==negation-removal== 18392 (pos)
                    (not (Pb_not_checked_p3))

                    ; #25567: <==negation-removal== 83560 (pos)
                    (not (Bc_not_checked_p3))

                    ; #35611: <==negation-removal== 20345 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #37151: <==uncertain_firing== 45883 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #45447: <==negation-removal== 35528 (pos)
                    (not (not_checked_p3))

                    ; #50590: <==negation-removal== 27068 (pos)
                    (not (Pc_not_checked_p3))

                    ; #61223: <==uncertain_firing== 20345 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #83640: <==negation-removal== 17219 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #83701: <==negation-removal== 45883 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #85498: <==negation-removal== 69913 (pos)
                    (not (Ba_not_checked_p3))

                    ; #85957: <==uncertain_firing== 17219 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #90192: <==negation-removal== 78692 (pos)
                    (not (Pa_not_checked_p3))

                    ; #91152: <==negation-removal== 54415 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #30359: <==commonly_known== 62591 (neg)
                    (Pc_checked_p4)

                    ; #34342: origin
                    (checked_p4)

                    ; #42910: <==closure== 74489 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #68186: <==commonly_known== 34342 (pos)
                    (Bc_checked_p4)

                    ; #72741: <==commonly_known== 62591 (neg)
                    (Pb_checked_p4)

                    ; #74489: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #76970: <==commonly_known== 34342 (pos)
                    (Bb_checked_p4)

                    ; #78902: <==commonly_known== 34342 (pos)
                    (Ba_checked_p4)

                    ; #84982: <==commonly_known== 62591 (neg)
                    (Pa_checked_p4)

                    ; #90605: <==closure== 97356 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #97356: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #12573: <==negation-removal== 84982 (pos)
                    (not (Ba_not_checked_p4))

                    ; #18763: <==uncertain_firing== 74489 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #22678: <==negation-removal== 74489 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #23139: <==negation-removal== 68186 (pos)
                    (not (Pc_not_checked_p4))

                    ; #32169: <==negation-removal== 78902 (pos)
                    (not (Pa_not_checked_p4))

                    ; #32254: <==uncertain_firing== 97356 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #50656: <==negation-removal== 90605 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #62591: <==negation-removal== 34342 (pos)
                    (not (not_checked_p4))

                    ; #64287: <==negation-removal== 97356 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #66211: <==negation-removal== 76970 (pos)
                    (not (Pb_not_checked_p4))

                    ; #72131: <==negation-removal== 42910 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #74821: <==negation-removal== 72741 (pos)
                    (not (Bb_not_checked_p4))

                    ; #81858: <==negation-removal== 30359 (pos)
                    (not (Bc_not_checked_p4))

                    ; #84259: <==uncertain_firing== 42910 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #84899: <==uncertain_firing== 90605 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #10131: <==commonly_known== 57765 (pos)
                    (Bc_checked_p5)

                    ; #11374: <==commonly_known== 51709 (neg)
                    (Pc_checked_p5)

                    ; #23250: <==commonly_known== 51709 (neg)
                    (Pa_checked_p5)

                    ; #30909: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #33393: <==commonly_known== 57765 (pos)
                    (Bb_checked_p5)

                    ; #35342: <==closure== 61778 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #57765: origin
                    (checked_p5)

                    ; #60808: <==commonly_known== 51709 (neg)
                    (Pb_checked_p5)

                    ; #61778: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #87356: <==commonly_known== 57765 (pos)
                    (Ba_checked_p5)

                    ; #87743: <==closure== 30909 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #12589: <==negation-removal== 33393 (pos)
                    (not (Pb_not_checked_p5))

                    ; #14252: <==negation-removal== 30909 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #14944: <==negation-removal== 23250 (pos)
                    (not (Ba_not_checked_p5))

                    ; #20962: <==negation-removal== 87743 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #23231: <==negation-removal== 60808 (pos)
                    (not (Bb_not_checked_p5))

                    ; #25124: <==uncertain_firing== 87743 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #26969: <==negation-removal== 10131 (pos)
                    (not (Pc_not_checked_p5))

                    ; #45871: <==uncertain_firing== 61778 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #48892: <==negation-removal== 35342 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #51709: <==negation-removal== 57765 (pos)
                    (not (not_checked_p5))

                    ; #60286: <==uncertain_firing== 35342 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #78325: <==negation-removal== 87356 (pos)
                    (not (Pa_not_checked_p5))

                    ; #83344: <==negation-removal== 61778 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #85382: <==negation-removal== 11374 (pos)
                    (not (Bc_not_checked_p5))

                    ; #87410: <==uncertain_firing== 30909 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11090: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #32899: <==closure== 11090 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #34220: <==commonly_known== 27152 (neg)
                    (Pa_checked_p6)

                    ; #36331: <==commonly_known== 66871 (pos)
                    (Bb_checked_p6)

                    ; #40261: <==commonly_known== 27152 (neg)
                    (Pb_checked_p6)

                    ; #41433: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #51786: <==commonly_known== 27152 (neg)
                    (Pc_checked_p6)

                    ; #63826: <==commonly_known== 66871 (pos)
                    (Ba_checked_p6)

                    ; #66871: origin
                    (checked_p6)

                    ; #70881: <==closure== 41433 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #81907: <==commonly_known== 66871 (pos)
                    (Bc_checked_p6)

                    ; #14797: <==negation-removal== 36331 (pos)
                    (not (Pb_not_checked_p6))

                    ; #16191: <==uncertain_firing== 70881 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #18147: <==negation-removal== 32899 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #18650: <==negation-removal== 70881 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #26274: <==negation-removal== 34220 (pos)
                    (not (Ba_not_checked_p6))

                    ; #27152: <==negation-removal== 66871 (pos)
                    (not (not_checked_p6))

                    ; #36190: <==negation-removal== 41433 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #38522: <==negation-removal== 63826 (pos)
                    (not (Pa_not_checked_p6))

                    ; #39456: <==negation-removal== 40261 (pos)
                    (not (Bb_not_checked_p6))

                    ; #43963: <==negation-removal== 11090 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #59128: <==negation-removal== 51786 (pos)
                    (not (Bc_not_checked_p6))

                    ; #60256: <==negation-removal== 81907 (pos)
                    (not (Pc_not_checked_p6))

                    ; #79879: <==uncertain_firing== 41433 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #85752: <==uncertain_firing== 11090 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #89669: <==uncertain_firing== 32899 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #20014: <==commonly_known== 78060 (neg)
                    (Pa_checked_p7)

                    ; #29622: <==commonly_known== 33126 (pos)
                    (Bc_checked_p7)

                    ; #33126: origin
                    (checked_p7)

                    ; #39220: <==commonly_known== 33126 (pos)
                    (Ba_checked_p7)

                    ; #41980: <==closure== 62353 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #46179: <==commonly_known== 78060 (neg)
                    (Pb_checked_p7)

                    ; #52669: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #52786: <==closure== 52669 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #56063: <==commonly_known== 33126 (pos)
                    (Bb_checked_p7)

                    ; #62353: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #81591: <==commonly_known== 78060 (neg)
                    (Pc_checked_p7)

                    ; #24723: <==negation-removal== 46179 (pos)
                    (not (Bb_not_checked_p7))

                    ; #28058: <==negation-removal== 39220 (pos)
                    (not (Pa_not_checked_p7))

                    ; #35264: <==negation-removal== 20014 (pos)
                    (not (Ba_not_checked_p7))

                    ; #35435: <==negation-removal== 52669 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #38184: <==uncertain_firing== 41980 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #42989: <==uncertain_firing== 52669 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #47876: <==negation-removal== 41980 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #49487: <==negation-removal== 52786 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #57309: <==negation-removal== 81591 (pos)
                    (not (Bc_not_checked_p7))

                    ; #69499: <==uncertain_firing== 62353 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #71985: <==negation-removal== 62353 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #74282: <==negation-removal== 29622 (pos)
                    (not (Pc_not_checked_p7))

                    ; #78060: <==negation-removal== 33126 (pos)
                    (not (not_checked_p7))

                    ; #83123: <==uncertain_firing== 52786 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #90696: <==negation-removal== 56063 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11924: <==closure== 88692 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #13348: <==commonly_known== 13018 (neg)
                    (Pb_checked_p8)

                    ; #20130: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #28107: origin
                    (checked_p8)

                    ; #30786: <==commonly_known== 28107 (pos)
                    (Bc_checked_p8)

                    ; #33633: <==commonly_known== 28107 (pos)
                    (Ba_checked_p8)

                    ; #42667: <==commonly_known== 13018 (neg)
                    (Pa_checked_p8)

                    ; #46158: <==commonly_known== 13018 (neg)
                    (Pc_checked_p8)

                    ; #69491: <==closure== 20130 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #87260: <==commonly_known== 28107 (pos)
                    (Bb_checked_p8)

                    ; #88692: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #13018: <==negation-removal== 28107 (pos)
                    (not (not_checked_p8))

                    ; #20480: <==negation-removal== 88692 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #28237: <==uncertain_firing== 88692 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #31176: <==negation-removal== 46158 (pos)
                    (not (Bc_not_checked_p8))

                    ; #41851: <==uncertain_firing== 11924 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #44444: <==negation-removal== 33633 (pos)
                    (not (Pa_not_checked_p8))

                    ; #45056: <==negation-removal== 11924 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #45622: <==negation-removal== 69491 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #47497: <==negation-removal== 13348 (pos)
                    (not (Bb_not_checked_p8))

                    ; #49393: <==uncertain_firing== 69491 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #57586: <==uncertain_firing== 20130 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #69659: <==negation-removal== 20130 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #83092: <==negation-removal== 42667 (pos)
                    (not (Ba_not_checked_p8))

                    ; #83914: <==negation-removal== 30786 (pos)
                    (not (Pc_not_checked_p8))

                    ; #89133: <==negation-removal== 87260 (pos)
                    (not (Pb_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #16237: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #23260: <==commonly_known== 24582 (pos)
                    (Ba_checked_p9)

                    ; #24582: origin
                    (checked_p9)

                    ; #32287: <==closure== 16237 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #35130: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #40418: <==commonly_known== 91605 (neg)
                    (Pc_checked_p9)

                    ; #41704: <==commonly_known== 91605 (neg)
                    (Pb_checked_p9)

                    ; #51962: <==commonly_known== 24582 (pos)
                    (Bc_checked_p9)

                    ; #73923: <==closure== 35130 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #85981: <==commonly_known== 24582 (pos)
                    (Bb_checked_p9)

                    ; #91815: <==commonly_known== 91605 (neg)
                    (Pa_checked_p9)

                    ; #18024: <==negation-removal== 91815 (pos)
                    (not (Ba_not_checked_p9))

                    ; #25223: <==negation-removal== 85981 (pos)
                    (not (Pb_not_checked_p9))

                    ; #30416: <==negation-removal== 35130 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #35645: <==negation-removal== 16237 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #37524: <==negation-removal== 32287 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #39396: <==negation-removal== 51962 (pos)
                    (not (Pc_not_checked_p9))

                    ; #55862: <==negation-removal== 23260 (pos)
                    (not (Pa_not_checked_p9))

                    ; #56555: <==uncertain_firing== 32287 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #64775: <==uncertain_firing== 16237 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #71974: <==negation-removal== 73923 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #76374: <==negation-removal== 41704 (pos)
                    (not (Bb_not_checked_p9))

                    ; #78020: <==uncertain_firing== 35130 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #82250: <==negation-removal== 40418 (pos)
                    (not (Bc_not_checked_p9))

                    ; #91605: <==negation-removal== 24582 (pos)
                    (not (not_checked_p9))

                    ; #98430: <==uncertain_firing== 73923 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #12935: <==commonly_known== 49638 (pos)
                    (Bb_checked_p10)

                    ; #17056: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #25987: <==commonly_known== 58129 (neg)
                    (Pc_checked_p10)

                    ; #30159: <==closure== 91409 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #48945: <==commonly_known== 58129 (neg)
                    (Pb_checked_p10)

                    ; #49638: origin
                    (checked_p10)

                    ; #72592: <==commonly_known== 58129 (neg)
                    (Pa_checked_p10)

                    ; #73738: <==closure== 17056 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #84776: <==commonly_known== 49638 (pos)
                    (Bc_checked_p10)

                    ; #91409: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #98505: <==commonly_known== 49638 (pos)
                    (Ba_checked_p10)

                    ; #11251: <==negation-removal== 91409 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #16590: <==uncertain_firing== 73738 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #31598: <==negation-removal== 25987 (pos)
                    (not (Bc_not_checked_p10))

                    ; #42695: <==uncertain_firing== 17056 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #49470: <==negation-removal== 12935 (pos)
                    (not (Pb_not_checked_p10))

                    ; #52931: <==negation-removal== 48945 (pos)
                    (not (Bb_not_checked_p10))

                    ; #55980: <==negation-removal== 84776 (pos)
                    (not (Pc_not_checked_p10))

                    ; #58129: <==negation-removal== 49638 (pos)
                    (not (not_checked_p10))

                    ; #68467: <==uncertain_firing== 91409 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #71893: <==negation-removal== 30159 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #77852: <==negation-removal== 98505 (pos)
                    (not (Pa_not_checked_p10))

                    ; #79568: <==negation-removal== 72592 (pos)
                    (not (Ba_not_checked_p10))

                    ; #86463: <==negation-removal== 17056 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #87450: <==negation-removal== 73738 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #88828: <==uncertain_firing== 30159 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #20650: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #26209: origin
                    (checked_p11)

                    ; #27574: <==closure== 77854 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #27819: <==commonly_known== 26209 (pos)
                    (Ba_checked_p11)

                    ; #40450: <==commonly_known== 80314 (neg)
                    (Pb_checked_p11)

                    ; #52435: <==commonly_known== 80314 (neg)
                    (Pa_checked_p11)

                    ; #57199: <==commonly_known== 80314 (neg)
                    (Pc_checked_p11)

                    ; #60434: <==commonly_known== 26209 (pos)
                    (Bb_checked_p11)

                    ; #77854: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #79710: <==commonly_known== 26209 (pos)
                    (Bc_checked_p11)

                    ; #87683: <==closure== 20650 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #10463: <==negation-removal== 60434 (pos)
                    (not (Pb_not_checked_p11))

                    ; #17690: <==negation-removal== 27819 (pos)
                    (not (Pa_not_checked_p11))

                    ; #23614: <==negation-removal== 57199 (pos)
                    (not (Bc_not_checked_p11))

                    ; #27265: <==negation-removal== 20650 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #30688: <==uncertain_firing== 27574 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #30995: <==negation-removal== 87683 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #37026: <==negation-removal== 40450 (pos)
                    (not (Bb_not_checked_p11))

                    ; #39410: <==uncertain_firing== 87683 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #40153: <==negation-removal== 27574 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #45084: <==uncertain_firing== 20650 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #52068: <==negation-removal== 52435 (pos)
                    (not (Ba_not_checked_p11))

                    ; #65486: <==negation-removal== 79710 (pos)
                    (not (Pc_not_checked_p11))

                    ; #76524: <==uncertain_firing== 77854 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #80314: <==negation-removal== 26209 (pos)
                    (not (not_checked_p11))

                    ; #90124: <==negation-removal== 77854 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #25768: <==commonly_known== 51434 (pos)
                    (Bc_checked_p12)

                    ; #34647: <==commonly_known== 28671 (neg)
                    (Pa_checked_p12)

                    ; #39172: <==commonly_known== 51434 (pos)
                    (Ba_checked_p12)

                    ; #46146: <==commonly_known== 28671 (neg)
                    (Pc_checked_p12)

                    ; #51434: origin
                    (checked_p12)

                    ; #63170: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #67578: <==commonly_known== 28671 (neg)
                    (Pb_checked_p12)

                    ; #70582: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #71697: <==commonly_known== 51434 (pos)
                    (Bb_checked_p12)

                    ; #82467: <==closure== 63170 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #84973: <==closure== 70582 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #15147: <==uncertain_firing== 82467 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #17977: <==uncertain_firing== 84973 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #28671: <==negation-removal== 51434 (pos)
                    (not (not_checked_p12))

                    ; #30211: <==negation-removal== 25768 (pos)
                    (not (Pc_not_checked_p12))

                    ; #38896: <==negation-removal== 82467 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #41929: <==negation-removal== 63170 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #43204: <==uncertain_firing== 70582 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #51726: <==negation-removal== 71697 (pos)
                    (not (Pb_not_checked_p12))

                    ; #55207: <==negation-removal== 46146 (pos)
                    (not (Bc_not_checked_p12))

                    ; #59434: <==negation-removal== 70582 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #67544: <==negation-removal== 39172 (pos)
                    (not (Pa_not_checked_p12))

                    ; #75435: <==uncertain_firing== 63170 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #76397: <==negation-removal== 34647 (pos)
                    (not (Ba_not_checked_p12))

                    ; #84954: <==negation-removal== 67578 (pos)
                    (not (Bb_not_checked_p12))

                    ; #85429: <==negation-removal== 84973 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #14671: <==commonly_known== 29560 (pos)
                    (Ba_checked_p1)

                    ; #26592: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #28304: <==commonly_known== 41589 (neg)
                    (Pa_checked_p1)

                    ; #29560: origin
                    (checked_p1)

                    ; #38947: <==commonly_known== 41589 (neg)
                    (Pb_checked_p1)

                    ; #47603: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #50803: <==commonly_known== 29560 (pos)
                    (Bc_checked_p1)

                    ; #52658: <==commonly_known== 29560 (pos)
                    (Bb_checked_p1)

                    ; #55137: <==closure== 47603 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #59122: <==commonly_known== 41589 (neg)
                    (Pc_checked_p1)

                    ; #87619: <==closure== 26592 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #11871: <==negation-removal== 87619 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #23087: <==uncertain_firing== 87619 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #36735: <==negation-removal== 38947 (pos)
                    (not (Bb_not_checked_p1))

                    ; #38132: <==negation-removal== 50803 (pos)
                    (not (Pc_not_checked_p1))

                    ; #41589: <==negation-removal== 29560 (pos)
                    (not (not_checked_p1))

                    ; #46174: <==negation-removal== 28304 (pos)
                    (not (Ba_not_checked_p1))

                    ; #51417: <==uncertain_firing== 26592 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #56479: <==negation-removal== 52658 (pos)
                    (not (Pb_not_checked_p1))

                    ; #57855: <==negation-removal== 26592 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #63001: <==uncertain_firing== 55137 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #77826: <==negation-removal== 14671 (pos)
                    (not (Pa_not_checked_p1))

                    ; #82500: <==uncertain_firing== 47603 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #82746: <==negation-removal== 55137 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #88552: <==negation-removal== 59122 (pos)
                    (not (Bc_not_checked_p1))

                    ; #90118: <==negation-removal== 47603 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #16794: <==closure== 70545 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #27299: <==commonly_known== 60482 (pos)
                    (Bc_checked_p2)

                    ; #34962: <==commonly_known== 70659 (neg)
                    (Pc_checked_p2)

                    ; #37190: <==commonly_known== 70659 (neg)
                    (Pa_checked_p2)

                    ; #39712: <==commonly_known== 60482 (pos)
                    (Ba_checked_p2)

                    ; #48190: <==closure== 75642 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #54122: <==commonly_known== 70659 (neg)
                    (Pb_checked_p2)

                    ; #60482: origin
                    (checked_p2)

                    ; #70545: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #72245: <==commonly_known== 60482 (pos)
                    (Bb_checked_p2)

                    ; #75642: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #20246: <==uncertain_firing== 75642 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #20821: <==negation-removal== 16794 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #25236: <==negation-removal== 75642 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #29388: <==uncertain_firing== 70545 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #33777: <==negation-removal== 72245 (pos)
                    (not (Pb_not_checked_p2))

                    ; #41143: <==negation-removal== 70545 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #48758: <==negation-removal== 34962 (pos)
                    (not (Bc_not_checked_p2))

                    ; #56227: <==uncertain_firing== 16794 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #57674: <==negation-removal== 27299 (pos)
                    (not (Pc_not_checked_p2))

                    ; #67064: <==negation-removal== 39712 (pos)
                    (not (Pa_not_checked_p2))

                    ; #67460: <==uncertain_firing== 48190 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #68828: <==negation-removal== 37190 (pos)
                    (not (Ba_not_checked_p2))

                    ; #68910: <==negation-removal== 54122 (pos)
                    (not (Bb_not_checked_p2))

                    ; #69268: <==negation-removal== 48190 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #70659: <==negation-removal== 60482 (pos)
                    (not (not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12047: <==closure== 40494 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #13210: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #18392: <==commonly_known== 35528 (pos)
                    (Bb_checked_p3)

                    ; #27068: <==commonly_known== 35528 (pos)
                    (Bc_checked_p3)

                    ; #35528: origin
                    (checked_p3)

                    ; #40494: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #54415: <==commonly_known== 45447 (neg)
                    (Pb_checked_p3)

                    ; #69913: <==commonly_known== 45447 (neg)
                    (Pa_checked_p3)

                    ; #70410: <==closure== 13210 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #78692: <==commonly_known== 35528 (pos)
                    (Ba_checked_p3)

                    ; #83560: <==commonly_known== 45447 (neg)
                    (Pc_checked_p3)

                    ; #22644: <==negation-removal== 18392 (pos)
                    (not (Pb_not_checked_p3))

                    ; #25567: <==negation-removal== 83560 (pos)
                    (not (Bc_not_checked_p3))

                    ; #32813: <==negation-removal== 70410 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #34547: <==uncertain_firing== 70410 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #45447: <==negation-removal== 35528 (pos)
                    (not (not_checked_p3))

                    ; #50590: <==negation-removal== 27068 (pos)
                    (not (Pc_not_checked_p3))

                    ; #50697: <==negation-removal== 12047 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #56287: <==uncertain_firing== 13210 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #57021: <==uncertain_firing== 40494 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #57967: <==negation-removal== 40494 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #62001: <==negation-removal== 13210 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #82333: <==uncertain_firing== 12047 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #85498: <==negation-removal== 69913 (pos)
                    (not (Ba_not_checked_p3))

                    ; #90192: <==negation-removal== 78692 (pos)
                    (not (Pa_not_checked_p3))

                    ; #91152: <==negation-removal== 54415 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11647: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #30359: <==commonly_known== 62591 (neg)
                    (Pc_checked_p4)

                    ; #34342: origin
                    (checked_p4)

                    ; #37457: <==closure== 11647 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #68186: <==commonly_known== 34342 (pos)
                    (Bc_checked_p4)

                    ; #72741: <==commonly_known== 62591 (neg)
                    (Pb_checked_p4)

                    ; #76970: <==commonly_known== 34342 (pos)
                    (Bb_checked_p4)

                    ; #77776: <==closure== 87628 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #78902: <==commonly_known== 34342 (pos)
                    (Ba_checked_p4)

                    ; #84982: <==commonly_known== 62591 (neg)
                    (Pa_checked_p4)

                    ; #87628: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #12573: <==negation-removal== 84982 (pos)
                    (not (Ba_not_checked_p4))

                    ; #23139: <==negation-removal== 68186 (pos)
                    (not (Pc_not_checked_p4))

                    ; #23843: <==uncertain_firing== 87628 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #25110: <==negation-removal== 11647 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #28211: <==uncertain_firing== 77776 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #32169: <==negation-removal== 78902 (pos)
                    (not (Pa_not_checked_p4))

                    ; #33074: <==uncertain_firing== 37457 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #37381: <==negation-removal== 87628 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #39239: <==uncertain_firing== 11647 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #60277: <==negation-removal== 77776 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #62591: <==negation-removal== 34342 (pos)
                    (not (not_checked_p4))

                    ; #66211: <==negation-removal== 76970 (pos)
                    (not (Pb_not_checked_p4))

                    ; #74821: <==negation-removal== 72741 (pos)
                    (not (Bb_not_checked_p4))

                    ; #75004: <==negation-removal== 37457 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #81858: <==negation-removal== 30359 (pos)
                    (not (Bc_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #10131: <==commonly_known== 57765 (pos)
                    (Bc_checked_p5)

                    ; #11374: <==commonly_known== 51709 (neg)
                    (Pc_checked_p5)

                    ; #23250: <==commonly_known== 51709 (neg)
                    (Pa_checked_p5)

                    ; #33393: <==commonly_known== 57765 (pos)
                    (Bb_checked_p5)

                    ; #57765: origin
                    (checked_p5)

                    ; #60808: <==commonly_known== 51709 (neg)
                    (Pb_checked_p5)

                    ; #60838: <==closure== 91676 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #72930: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #76817: <==closure== 72930 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #87356: <==commonly_known== 57765 (pos)
                    (Ba_checked_p5)

                    ; #91676: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #12306: <==negation-removal== 72930 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #12589: <==negation-removal== 33393 (pos)
                    (not (Pb_not_checked_p5))

                    ; #14174: <==uncertain_firing== 76817 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #14944: <==negation-removal== 23250 (pos)
                    (not (Ba_not_checked_p5))

                    ; #23231: <==negation-removal== 60808 (pos)
                    (not (Bb_not_checked_p5))

                    ; #26969: <==negation-removal== 10131 (pos)
                    (not (Pc_not_checked_p5))

                    ; #35007: <==negation-removal== 76817 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #35277: <==negation-removal== 91676 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #41330: <==uncertain_firing== 60838 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #51709: <==negation-removal== 57765 (pos)
                    (not (not_checked_p5))

                    ; #58286: <==uncertain_firing== 91676 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #65557: <==uncertain_firing== 72930 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #78325: <==negation-removal== 87356 (pos)
                    (not (Pa_not_checked_p5))

                    ; #82259: <==negation-removal== 60838 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #85382: <==negation-removal== 11374 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #34220: <==commonly_known== 27152 (neg)
                    (Pa_checked_p6)

                    ; #36331: <==commonly_known== 66871 (pos)
                    (Bb_checked_p6)

                    ; #40261: <==commonly_known== 27152 (neg)
                    (Pb_checked_p6)

                    ; #40730: <==closure== 86369 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #42818: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #51786: <==commonly_known== 27152 (neg)
                    (Pc_checked_p6)

                    ; #55576: <==closure== 42818 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #63826: <==commonly_known== 66871 (pos)
                    (Ba_checked_p6)

                    ; #66871: origin
                    (checked_p6)

                    ; #81907: <==commonly_known== 66871 (pos)
                    (Bc_checked_p6)

                    ; #86369: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #14797: <==negation-removal== 36331 (pos)
                    (not (Pb_not_checked_p6))

                    ; #15020: <==negation-removal== 55576 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #26274: <==negation-removal== 34220 (pos)
                    (not (Ba_not_checked_p6))

                    ; #27152: <==negation-removal== 66871 (pos)
                    (not (not_checked_p6))

                    ; #31154: <==negation-removal== 40730 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #38522: <==negation-removal== 63826 (pos)
                    (not (Pa_not_checked_p6))

                    ; #39456: <==negation-removal== 40261 (pos)
                    (not (Bb_not_checked_p6))

                    ; #43652: <==uncertain_firing== 42818 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #59128: <==negation-removal== 51786 (pos)
                    (not (Bc_not_checked_p6))

                    ; #60256: <==negation-removal== 81907 (pos)
                    (not (Pc_not_checked_p6))

                    ; #63313: <==uncertain_firing== 40730 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #75916: <==uncertain_firing== 86369 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #86348: <==negation-removal== 86369 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #88388: <==negation-removal== 42818 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #90946: <==uncertain_firing== 55576 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #20014: <==commonly_known== 78060 (neg)
                    (Pa_checked_p7)

                    ; #29622: <==commonly_known== 33126 (pos)
                    (Bc_checked_p7)

                    ; #33126: origin
                    (checked_p7)

                    ; #39220: <==commonly_known== 33126 (pos)
                    (Ba_checked_p7)

                    ; #46179: <==commonly_known== 78060 (neg)
                    (Pb_checked_p7)

                    ; #50156: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #56063: <==commonly_known== 33126 (pos)
                    (Bb_checked_p7)

                    ; #58017: <==closure== 77352 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #77352: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #81591: <==commonly_known== 78060 (neg)
                    (Pc_checked_p7)

                    ; #85795: <==closure== 50156 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #24723: <==negation-removal== 46179 (pos)
                    (not (Bb_not_checked_p7))

                    ; #28058: <==negation-removal== 39220 (pos)
                    (not (Pa_not_checked_p7))

                    ; #35069: <==uncertain_firing== 85795 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #35264: <==negation-removal== 20014 (pos)
                    (not (Ba_not_checked_p7))

                    ; #47543: <==negation-removal== 58017 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #52353: <==uncertain_firing== 58017 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #57309: <==negation-removal== 81591 (pos)
                    (not (Bc_not_checked_p7))

                    ; #59955: <==uncertain_firing== 77352 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #73104: <==uncertain_firing== 50156 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #74282: <==negation-removal== 29622 (pos)
                    (not (Pc_not_checked_p7))

                    ; #78060: <==negation-removal== 33126 (pos)
                    (not (not_checked_p7))

                    ; #88866: <==negation-removal== 85795 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #90696: <==negation-removal== 56063 (pos)
                    (not (Pb_not_checked_p7))

                    ; #92072: <==negation-removal== 50156 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #94753: <==negation-removal== 77352 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #13348: <==commonly_known== 13018 (neg)
                    (Pb_checked_p8)

                    ; #28107: origin
                    (checked_p8)

                    ; #30786: <==commonly_known== 28107 (pos)
                    (Bc_checked_p8)

                    ; #33633: <==commonly_known== 28107 (pos)
                    (Ba_checked_p8)

                    ; #42667: <==commonly_known== 13018 (neg)
                    (Pa_checked_p8)

                    ; #42808: <==closure== 55607 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #46158: <==commonly_known== 13018 (neg)
                    (Pc_checked_p8)

                    ; #55607: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #64362: <==closure== 80495 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #80495: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #87260: <==commonly_known== 28107 (pos)
                    (Bb_checked_p8)

                    ; #13018: <==negation-removal== 28107 (pos)
                    (not (not_checked_p8))

                    ; #24807: <==negation-removal== 80495 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #31176: <==negation-removal== 46158 (pos)
                    (not (Bc_not_checked_p8))

                    ; #36587: <==uncertain_firing== 42808 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #44444: <==negation-removal== 33633 (pos)
                    (not (Pa_not_checked_p8))

                    ; #44822: <==negation-removal== 42808 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #47497: <==negation-removal== 13348 (pos)
                    (not (Bb_not_checked_p8))

                    ; #53732: <==uncertain_firing== 55607 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #54559: <==uncertain_firing== 64362 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #54626: <==uncertain_firing== 80495 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #55335: <==negation-removal== 55607 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #60040: <==negation-removal== 64362 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #83092: <==negation-removal== 42667 (pos)
                    (not (Ba_not_checked_p8))

                    ; #83914: <==negation-removal== 30786 (pos)
                    (not (Pc_not_checked_p8))

                    ; #89133: <==negation-removal== 87260 (pos)
                    (not (Pb_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #23260: <==commonly_known== 24582 (pos)
                    (Ba_checked_p9)

                    ; #24582: origin
                    (checked_p9)

                    ; #40418: <==commonly_known== 91605 (neg)
                    (Pc_checked_p9)

                    ; #41704: <==commonly_known== 91605 (neg)
                    (Pb_checked_p9)

                    ; #43942: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #51962: <==commonly_known== 24582 (pos)
                    (Bc_checked_p9)

                    ; #70350: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #78213: <==closure== 70350 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #84874: <==closure== 43942 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #85981: <==commonly_known== 24582 (pos)
                    (Bb_checked_p9)

                    ; #91815: <==commonly_known== 91605 (neg)
                    (Pa_checked_p9)

                    ; #16713: <==negation-removal== 70350 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #18024: <==negation-removal== 91815 (pos)
                    (not (Ba_not_checked_p9))

                    ; #24453: <==negation-removal== 84874 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #25223: <==negation-removal== 85981 (pos)
                    (not (Pb_not_checked_p9))

                    ; #34426: <==uncertain_firing== 78213 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #39064: <==uncertain_firing== 43942 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #39396: <==negation-removal== 51962 (pos)
                    (not (Pc_not_checked_p9))

                    ; #53711: <==negation-removal== 43942 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #54392: <==uncertain_firing== 84874 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #55862: <==negation-removal== 23260 (pos)
                    (not (Pa_not_checked_p9))

                    ; #76374: <==negation-removal== 41704 (pos)
                    (not (Bb_not_checked_p9))

                    ; #82250: <==negation-removal== 40418 (pos)
                    (not (Bc_not_checked_p9))

                    ; #82557: <==negation-removal== 78213 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #84759: <==uncertain_firing== 70350 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #91605: <==negation-removal== 24582 (pos)
                    (not (not_checked_p9))))

)