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
                           (Ba_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #49710: <==closure== 88381 (pos)
                    (Pc_survivorat_s_p10)

                    ; #51913: origin
                    (Ba_survivorat_s_p10)

                    ; #56394: <==closure== 51913 (pos)
                    (Pa_survivorat_s_p10)

                    ; #71854: <==closure== 90788 (pos)
                    (Pb_survivorat_s_p10)

                    ; #88381: origin
                    (Bc_survivorat_s_p10)

                    ; #90788: origin
                    (Bb_survivorat_s_p10)

                    ; #20007: <==negation-removal== 88381 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #45374: <==negation-removal== 71854 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #53622: <==negation-removal== 90788 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #56956: <==negation-removal== 51913 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #70659: <==negation-removal== 56394 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #91468: <==negation-removal== 49710 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #49710: <==closure== 88381 (pos)
                    (Pc_survivorat_s_p10)

                    ; #51913: origin
                    (Ba_survivorat_s_p10)

                    ; #56394: <==closure== 51913 (pos)
                    (Pa_survivorat_s_p10)

                    ; #71854: <==closure== 90788 (pos)
                    (Pb_survivorat_s_p10)

                    ; #88381: origin
                    (Bc_survivorat_s_p10)

                    ; #90788: origin
                    (Bb_survivorat_s_p10)

                    ; #20007: <==negation-removal== 88381 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #45374: <==negation-removal== 71854 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #53622: <==negation-removal== 90788 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #56956: <==negation-removal== 51913 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #70659: <==negation-removal== 56394 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #91468: <==negation-removal== 49710 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #49710: <==closure== 88381 (pos)
                    (Pc_survivorat_s_p10)

                    ; #51913: origin
                    (Ba_survivorat_s_p10)

                    ; #56394: <==closure== 51913 (pos)
                    (Pa_survivorat_s_p10)

                    ; #71854: <==closure== 90788 (pos)
                    (Pb_survivorat_s_p10)

                    ; #88381: origin
                    (Bc_survivorat_s_p10)

                    ; #90788: origin
                    (Bb_survivorat_s_p10)

                    ; #20007: <==negation-removal== 88381 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #45374: <==negation-removal== 71854 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #53622: <==negation-removal== 90788 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #56956: <==negation-removal== 51913 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #70659: <==negation-removal== 56394 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #91468: <==negation-removal== 49710 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (at_a_p11)
                           (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11))
        :effect (and
                    ; #17333: origin
                    (Ba_survivorat_s_p11)

                    ; #38205: <==closure== 17333 (pos)
                    (Pa_survivorat_s_p11)

                    ; #59849: origin
                    (Bc_survivorat_s_p11)

                    ; #67531: origin
                    (Bb_survivorat_s_p11)

                    ; #74314: <==closure== 59849 (pos)
                    (Pc_survivorat_s_p11)

                    ; #74895: <==closure== 67531 (pos)
                    (Pb_survivorat_s_p11)

                    ; #10608: <==negation-removal== 67531 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #18965: <==negation-removal== 38205 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #30622: <==negation-removal== 74314 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #49091: <==negation-removal== 59849 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #52070: <==negation-removal== 17333 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #87812: <==negation-removal== 74895 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #17333: origin
                    (Ba_survivorat_s_p11)

                    ; #38205: <==closure== 17333 (pos)
                    (Pa_survivorat_s_p11)

                    ; #59849: origin
                    (Bc_survivorat_s_p11)

                    ; #67531: origin
                    (Bb_survivorat_s_p11)

                    ; #74314: <==closure== 59849 (pos)
                    (Pc_survivorat_s_p11)

                    ; #74895: <==closure== 67531 (pos)
                    (Pb_survivorat_s_p11)

                    ; #10608: <==negation-removal== 67531 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #18965: <==negation-removal== 38205 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #30622: <==negation-removal== 74314 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #49091: <==negation-removal== 59849 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #52070: <==negation-removal== 17333 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #87812: <==negation-removal== 74895 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Pc_survivorat_s_p11)
                           (at_c_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #17333: origin
                    (Ba_survivorat_s_p11)

                    ; #38205: <==closure== 17333 (pos)
                    (Pa_survivorat_s_p11)

                    ; #59849: origin
                    (Bc_survivorat_s_p11)

                    ; #67531: origin
                    (Bb_survivorat_s_p11)

                    ; #74314: <==closure== 59849 (pos)
                    (Pc_survivorat_s_p11)

                    ; #74895: <==closure== 67531 (pos)
                    (Pb_survivorat_s_p11)

                    ; #10608: <==negation-removal== 67531 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #18965: <==negation-removal== 38205 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #30622: <==negation-removal== 74314 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #49091: <==negation-removal== 59849 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #52070: <==negation-removal== 17333 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #87812: <==negation-removal== 74895 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12))
        :effect (and
                    ; #34533: origin
                    (Ba_survivorat_s_p12)

                    ; #38295: <==closure== 92134 (pos)
                    (Pb_survivorat_s_p12)

                    ; #70224: origin
                    (Bc_survivorat_s_p12)

                    ; #82338: <==closure== 70224 (pos)
                    (Pc_survivorat_s_p12)

                    ; #83573: <==closure== 34533 (pos)
                    (Pa_survivorat_s_p12)

                    ; #92134: origin
                    (Bb_survivorat_s_p12)

                    ; #21787: <==negation-removal== 82338 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #56441: <==negation-removal== 34533 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #59248: <==negation-removal== 83573 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #66111: <==negation-removal== 92134 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #69433: <==negation-removal== 38295 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #84366: <==negation-removal== 70224 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #34533: origin
                    (Ba_survivorat_s_p12)

                    ; #38295: <==closure== 92134 (pos)
                    (Pb_survivorat_s_p12)

                    ; #70224: origin
                    (Bc_survivorat_s_p12)

                    ; #82338: <==closure== 70224 (pos)
                    (Pc_survivorat_s_p12)

                    ; #83573: <==closure== 34533 (pos)
                    (Pa_survivorat_s_p12)

                    ; #92134: origin
                    (Bb_survivorat_s_p12)

                    ; #21787: <==negation-removal== 82338 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #56441: <==negation-removal== 34533 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #59248: <==negation-removal== 83573 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #66111: <==negation-removal== 92134 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #69433: <==negation-removal== 38295 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #84366: <==negation-removal== 70224 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #34533: origin
                    (Ba_survivorat_s_p12)

                    ; #38295: <==closure== 92134 (pos)
                    (Pb_survivorat_s_p12)

                    ; #70224: origin
                    (Bc_survivorat_s_p12)

                    ; #82338: <==closure== 70224 (pos)
                    (Pc_survivorat_s_p12)

                    ; #83573: <==closure== 34533 (pos)
                    (Pa_survivorat_s_p12)

                    ; #92134: origin
                    (Bb_survivorat_s_p12)

                    ; #21787: <==negation-removal== 82338 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #56441: <==negation-removal== 34533 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #59248: <==negation-removal== 83573 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #66111: <==negation-removal== 92134 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #69433: <==negation-removal== 38295 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #84366: <==negation-removal== 70224 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #12993: origin
                    (Bb_survivorat_s_p1)

                    ; #14906: origin
                    (Bc_survivorat_s_p1)

                    ; #37799: <==closure== 84969 (pos)
                    (Pa_survivorat_s_p1)

                    ; #39045: <==closure== 14906 (pos)
                    (Pc_survivorat_s_p1)

                    ; #84969: origin
                    (Ba_survivorat_s_p1)

                    ; #92058: <==closure== 12993 (pos)
                    (Pb_survivorat_s_p1)

                    ; #24243: <==negation-removal== 92058 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #31616: <==negation-removal== 37799 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #33458: <==negation-removal== 84969 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #46424: <==negation-removal== 14906 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #80545: <==negation-removal== 39045 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #82504: <==negation-removal== 12993 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #12993: origin
                    (Bb_survivorat_s_p1)

                    ; #14906: origin
                    (Bc_survivorat_s_p1)

                    ; #37799: <==closure== 84969 (pos)
                    (Pa_survivorat_s_p1)

                    ; #39045: <==closure== 14906 (pos)
                    (Pc_survivorat_s_p1)

                    ; #84969: origin
                    (Ba_survivorat_s_p1)

                    ; #92058: <==closure== 12993 (pos)
                    (Pb_survivorat_s_p1)

                    ; #24243: <==negation-removal== 92058 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #31616: <==negation-removal== 37799 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #33458: <==negation-removal== 84969 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #46424: <==negation-removal== 14906 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #80545: <==negation-removal== 39045 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #82504: <==negation-removal== 12993 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #12993: origin
                    (Bb_survivorat_s_p1)

                    ; #14906: origin
                    (Bc_survivorat_s_p1)

                    ; #37799: <==closure== 84969 (pos)
                    (Pa_survivorat_s_p1)

                    ; #39045: <==closure== 14906 (pos)
                    (Pc_survivorat_s_p1)

                    ; #84969: origin
                    (Ba_survivorat_s_p1)

                    ; #92058: <==closure== 12993 (pos)
                    (Pb_survivorat_s_p1)

                    ; #24243: <==negation-removal== 92058 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #31616: <==negation-removal== 37799 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #33458: <==negation-removal== 84969 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #46424: <==negation-removal== 14906 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #80545: <==negation-removal== 39045 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #82504: <==negation-removal== 12993 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #51394: origin
                    (Bc_survivorat_s_p2)

                    ; #65846: origin
                    (Bb_survivorat_s_p2)

                    ; #69351: origin
                    (Ba_survivorat_s_p2)

                    ; #69770: <==closure== 69351 (pos)
                    (Pa_survivorat_s_p2)

                    ; #71522: <==closure== 51394 (pos)
                    (Pc_survivorat_s_p2)

                    ; #74625: <==closure== 65846 (pos)
                    (Pb_survivorat_s_p2)

                    ; #13147: <==negation-removal== 69351 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #22017: <==negation-removal== 65846 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #29917: <==negation-removal== 51394 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #63564: <==negation-removal== 71522 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #84060: <==negation-removal== 74625 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #84294: <==negation-removal== 69770 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #51394: origin
                    (Bc_survivorat_s_p2)

                    ; #65846: origin
                    (Bb_survivorat_s_p2)

                    ; #69351: origin
                    (Ba_survivorat_s_p2)

                    ; #69770: <==closure== 69351 (pos)
                    (Pa_survivorat_s_p2)

                    ; #71522: <==closure== 51394 (pos)
                    (Pc_survivorat_s_p2)

                    ; #74625: <==closure== 65846 (pos)
                    (Pb_survivorat_s_p2)

                    ; #13147: <==negation-removal== 69351 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #22017: <==negation-removal== 65846 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #29917: <==negation-removal== 51394 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #63564: <==negation-removal== 71522 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #84060: <==negation-removal== 74625 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #84294: <==negation-removal== 69770 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #51394: origin
                    (Bc_survivorat_s_p2)

                    ; #65846: origin
                    (Bb_survivorat_s_p2)

                    ; #69351: origin
                    (Ba_survivorat_s_p2)

                    ; #69770: <==closure== 69351 (pos)
                    (Pa_survivorat_s_p2)

                    ; #71522: <==closure== 51394 (pos)
                    (Pc_survivorat_s_p2)

                    ; #74625: <==closure== 65846 (pos)
                    (Pb_survivorat_s_p2)

                    ; #13147: <==negation-removal== 69351 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #22017: <==negation-removal== 65846 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #29917: <==negation-removal== 51394 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #63564: <==negation-removal== 71522 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #84060: <==negation-removal== 74625 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #84294: <==negation-removal== 69770 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #16485: <==closure== 62312 (pos)
                    (Pb_survivorat_s_p3)

                    ; #44301: origin
                    (Ba_survivorat_s_p3)

                    ; #62312: origin
                    (Bb_survivorat_s_p3)

                    ; #73346: <==closure== 87569 (pos)
                    (Pc_survivorat_s_p3)

                    ; #87155: <==closure== 44301 (pos)
                    (Pa_survivorat_s_p3)

                    ; #87569: origin
                    (Bc_survivorat_s_p3)

                    ; #10789: <==negation-removal== 73346 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #23983: <==negation-removal== 62312 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #28321: <==negation-removal== 44301 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #71589: <==negation-removal== 16485 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #85331: <==negation-removal== 87155 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #90656: <==negation-removal== 87569 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #16485: <==closure== 62312 (pos)
                    (Pb_survivorat_s_p3)

                    ; #44301: origin
                    (Ba_survivorat_s_p3)

                    ; #62312: origin
                    (Bb_survivorat_s_p3)

                    ; #73346: <==closure== 87569 (pos)
                    (Pc_survivorat_s_p3)

                    ; #87155: <==closure== 44301 (pos)
                    (Pa_survivorat_s_p3)

                    ; #87569: origin
                    (Bc_survivorat_s_p3)

                    ; #10789: <==negation-removal== 73346 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #23983: <==negation-removal== 62312 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #28321: <==negation-removal== 44301 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #71589: <==negation-removal== 16485 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #85331: <==negation-removal== 87155 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #90656: <==negation-removal== 87569 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #16485: <==closure== 62312 (pos)
                    (Pb_survivorat_s_p3)

                    ; #44301: origin
                    (Ba_survivorat_s_p3)

                    ; #62312: origin
                    (Bb_survivorat_s_p3)

                    ; #73346: <==closure== 87569 (pos)
                    (Pc_survivorat_s_p3)

                    ; #87155: <==closure== 44301 (pos)
                    (Pa_survivorat_s_p3)

                    ; #87569: origin
                    (Bc_survivorat_s_p3)

                    ; #10789: <==negation-removal== 73346 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #23983: <==negation-removal== 62312 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #28321: <==negation-removal== 44301 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #71589: <==negation-removal== 16485 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #85331: <==negation-removal== 87155 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #90656: <==negation-removal== 87569 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #18508: origin
                    (Ba_survivorat_s_p4)

                    ; #25811: <==closure== 18508 (pos)
                    (Pa_survivorat_s_p4)

                    ; #55322: <==closure== 86682 (pos)
                    (Pb_survivorat_s_p4)

                    ; #70473: origin
                    (Bc_survivorat_s_p4)

                    ; #74997: <==closure== 70473 (pos)
                    (Pc_survivorat_s_p4)

                    ; #86682: origin
                    (Bb_survivorat_s_p4)

                    ; #12037: <==negation-removal== 25811 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #18616: <==negation-removal== 86682 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #24298: <==negation-removal== 18508 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #39067: <==negation-removal== 55322 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #60885: <==negation-removal== 70473 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #83037: <==negation-removal== 74997 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #18508: origin
                    (Ba_survivorat_s_p4)

                    ; #25811: <==closure== 18508 (pos)
                    (Pa_survivorat_s_p4)

                    ; #55322: <==closure== 86682 (pos)
                    (Pb_survivorat_s_p4)

                    ; #70473: origin
                    (Bc_survivorat_s_p4)

                    ; #74997: <==closure== 70473 (pos)
                    (Pc_survivorat_s_p4)

                    ; #86682: origin
                    (Bb_survivorat_s_p4)

                    ; #12037: <==negation-removal== 25811 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #18616: <==negation-removal== 86682 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #24298: <==negation-removal== 18508 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #39067: <==negation-removal== 55322 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #60885: <==negation-removal== 70473 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #83037: <==negation-removal== 74997 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #18508: origin
                    (Ba_survivorat_s_p4)

                    ; #25811: <==closure== 18508 (pos)
                    (Pa_survivorat_s_p4)

                    ; #55322: <==closure== 86682 (pos)
                    (Pb_survivorat_s_p4)

                    ; #70473: origin
                    (Bc_survivorat_s_p4)

                    ; #74997: <==closure== 70473 (pos)
                    (Pc_survivorat_s_p4)

                    ; #86682: origin
                    (Bb_survivorat_s_p4)

                    ; #12037: <==negation-removal== 25811 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #18616: <==negation-removal== 86682 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #24298: <==negation-removal== 18508 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #39067: <==negation-removal== 55322 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #60885: <==negation-removal== 70473 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #83037: <==negation-removal== 74997 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #11430: <==closure== 36275 (pos)
                    (Pc_survivorat_s_p5)

                    ; #17077: <==closure== 70149 (pos)
                    (Pa_survivorat_s_p5)

                    ; #31039: <==closure== 87976 (pos)
                    (Pb_survivorat_s_p5)

                    ; #36275: origin
                    (Bc_survivorat_s_p5)

                    ; #70149: origin
                    (Ba_survivorat_s_p5)

                    ; #87976: origin
                    (Bb_survivorat_s_p5)

                    ; #16160: <==negation-removal== 11430 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #41046: <==negation-removal== 87976 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #44201: <==negation-removal== 31039 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #52327: <==negation-removal== 70149 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #59022: <==negation-removal== 17077 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #60514: <==negation-removal== 36275 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #11430: <==closure== 36275 (pos)
                    (Pc_survivorat_s_p5)

                    ; #17077: <==closure== 70149 (pos)
                    (Pa_survivorat_s_p5)

                    ; #31039: <==closure== 87976 (pos)
                    (Pb_survivorat_s_p5)

                    ; #36275: origin
                    (Bc_survivorat_s_p5)

                    ; #70149: origin
                    (Ba_survivorat_s_p5)

                    ; #87976: origin
                    (Bb_survivorat_s_p5)

                    ; #16160: <==negation-removal== 11430 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #41046: <==negation-removal== 87976 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #44201: <==negation-removal== 31039 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #52327: <==negation-removal== 70149 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #59022: <==negation-removal== 17077 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #60514: <==negation-removal== 36275 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #11430: <==closure== 36275 (pos)
                    (Pc_survivorat_s_p5)

                    ; #17077: <==closure== 70149 (pos)
                    (Pa_survivorat_s_p5)

                    ; #31039: <==closure== 87976 (pos)
                    (Pb_survivorat_s_p5)

                    ; #36275: origin
                    (Bc_survivorat_s_p5)

                    ; #70149: origin
                    (Ba_survivorat_s_p5)

                    ; #87976: origin
                    (Bb_survivorat_s_p5)

                    ; #16160: <==negation-removal== 11430 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #41046: <==negation-removal== 87976 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #44201: <==negation-removal== 31039 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #52327: <==negation-removal== 70149 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #59022: <==negation-removal== 17077 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #60514: <==negation-removal== 36275 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #27755: <==closure== 87604 (pos)
                    (Pa_survivorat_s_p6)

                    ; #33391: origin
                    (Bc_survivorat_s_p6)

                    ; #42285: <==closure== 77475 (pos)
                    (Pb_survivorat_s_p6)

                    ; #55422: <==closure== 33391 (pos)
                    (Pc_survivorat_s_p6)

                    ; #77475: origin
                    (Bb_survivorat_s_p6)

                    ; #87604: origin
                    (Ba_survivorat_s_p6)

                    ; #16693: <==negation-removal== 27755 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #17817: <==negation-removal== 33391 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #19113: <==negation-removal== 42285 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #47487: <==negation-removal== 77475 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #51347: <==negation-removal== 87604 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #61542: <==negation-removal== 55422 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #27755: <==closure== 87604 (pos)
                    (Pa_survivorat_s_p6)

                    ; #33391: origin
                    (Bc_survivorat_s_p6)

                    ; #42285: <==closure== 77475 (pos)
                    (Pb_survivorat_s_p6)

                    ; #55422: <==closure== 33391 (pos)
                    (Pc_survivorat_s_p6)

                    ; #77475: origin
                    (Bb_survivorat_s_p6)

                    ; #87604: origin
                    (Ba_survivorat_s_p6)

                    ; #16693: <==negation-removal== 27755 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #17817: <==negation-removal== 33391 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #19113: <==negation-removal== 42285 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #47487: <==negation-removal== 77475 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #51347: <==negation-removal== 87604 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #61542: <==negation-removal== 55422 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #27755: <==closure== 87604 (pos)
                    (Pa_survivorat_s_p6)

                    ; #33391: origin
                    (Bc_survivorat_s_p6)

                    ; #42285: <==closure== 77475 (pos)
                    (Pb_survivorat_s_p6)

                    ; #55422: <==closure== 33391 (pos)
                    (Pc_survivorat_s_p6)

                    ; #77475: origin
                    (Bb_survivorat_s_p6)

                    ; #87604: origin
                    (Ba_survivorat_s_p6)

                    ; #16693: <==negation-removal== 27755 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #17817: <==negation-removal== 33391 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #19113: <==negation-removal== 42285 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #47487: <==negation-removal== 77475 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #51347: <==negation-removal== 87604 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #61542: <==negation-removal== 55422 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #14605: <==closure== 47178 (pos)
                    (Pb_survivorat_s_p7)

                    ; #17903: origin
                    (Ba_survivorat_s_p7)

                    ; #32553: <==closure== 72536 (pos)
                    (Pc_survivorat_s_p7)

                    ; #47178: origin
                    (Bb_survivorat_s_p7)

                    ; #65330: <==closure== 17903 (pos)
                    (Pa_survivorat_s_p7)

                    ; #72536: origin
                    (Bc_survivorat_s_p7)

                    ; #21564: <==negation-removal== 32553 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #45517: <==negation-removal== 14605 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #51613: <==negation-removal== 47178 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #51983: <==negation-removal== 72536 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #58672: <==negation-removal== 65330 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #63115: <==negation-removal== 17903 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #14605: <==closure== 47178 (pos)
                    (Pb_survivorat_s_p7)

                    ; #17903: origin
                    (Ba_survivorat_s_p7)

                    ; #32553: <==closure== 72536 (pos)
                    (Pc_survivorat_s_p7)

                    ; #47178: origin
                    (Bb_survivorat_s_p7)

                    ; #65330: <==closure== 17903 (pos)
                    (Pa_survivorat_s_p7)

                    ; #72536: origin
                    (Bc_survivorat_s_p7)

                    ; #21564: <==negation-removal== 32553 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #45517: <==negation-removal== 14605 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #51613: <==negation-removal== 47178 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #51983: <==negation-removal== 72536 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #58672: <==negation-removal== 65330 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #63115: <==negation-removal== 17903 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #14605: <==closure== 47178 (pos)
                    (Pb_survivorat_s_p7)

                    ; #17903: origin
                    (Ba_survivorat_s_p7)

                    ; #32553: <==closure== 72536 (pos)
                    (Pc_survivorat_s_p7)

                    ; #47178: origin
                    (Bb_survivorat_s_p7)

                    ; #65330: <==closure== 17903 (pos)
                    (Pa_survivorat_s_p7)

                    ; #72536: origin
                    (Bc_survivorat_s_p7)

                    ; #21564: <==negation-removal== 32553 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #45517: <==negation-removal== 14605 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #51613: <==negation-removal== 47178 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #51983: <==negation-removal== 72536 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #58672: <==negation-removal== 65330 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #63115: <==negation-removal== 17903 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #11326: <==closure== 26224 (pos)
                    (Pb_survivorat_s_p8)

                    ; #26224: origin
                    (Bb_survivorat_s_p8)

                    ; #29981: <==closure== 73745 (pos)
                    (Pa_survivorat_s_p8)

                    ; #35981: origin
                    (Bc_survivorat_s_p8)

                    ; #73745: origin
                    (Ba_survivorat_s_p8)

                    ; #75358: <==closure== 35981 (pos)
                    (Pc_survivorat_s_p8)

                    ; #18071: <==negation-removal== 35981 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #23487: <==negation-removal== 11326 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #39593: <==negation-removal== 26224 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #41171: <==negation-removal== 75358 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #41887: <==negation-removal== 73745 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #85320: <==negation-removal== 29981 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #11326: <==closure== 26224 (pos)
                    (Pb_survivorat_s_p8)

                    ; #26224: origin
                    (Bb_survivorat_s_p8)

                    ; #29981: <==closure== 73745 (pos)
                    (Pa_survivorat_s_p8)

                    ; #35981: origin
                    (Bc_survivorat_s_p8)

                    ; #73745: origin
                    (Ba_survivorat_s_p8)

                    ; #75358: <==closure== 35981 (pos)
                    (Pc_survivorat_s_p8)

                    ; #18071: <==negation-removal== 35981 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #23487: <==negation-removal== 11326 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #39593: <==negation-removal== 26224 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #41171: <==negation-removal== 75358 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #41887: <==negation-removal== 73745 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #85320: <==negation-removal== 29981 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #11326: <==closure== 26224 (pos)
                    (Pb_survivorat_s_p8)

                    ; #26224: origin
                    (Bb_survivorat_s_p8)

                    ; #29981: <==closure== 73745 (pos)
                    (Pa_survivorat_s_p8)

                    ; #35981: origin
                    (Bc_survivorat_s_p8)

                    ; #73745: origin
                    (Ba_survivorat_s_p8)

                    ; #75358: <==closure== 35981 (pos)
                    (Pc_survivorat_s_p8)

                    ; #18071: <==negation-removal== 35981 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #23487: <==negation-removal== 11326 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #39593: <==negation-removal== 26224 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #41171: <==negation-removal== 75358 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #41887: <==negation-removal== 73745 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #85320: <==negation-removal== 29981 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #27357: <==closure== 47193 (pos)
                    (Pc_survivorat_s_p9)

                    ; #35041: <==closure== 64511 (pos)
                    (Pa_survivorat_s_p9)

                    ; #46624: <==closure== 81574 (pos)
                    (Pb_survivorat_s_p9)

                    ; #47193: origin
                    (Bc_survivorat_s_p9)

                    ; #64511: origin
                    (Ba_survivorat_s_p9)

                    ; #81574: origin
                    (Bb_survivorat_s_p9)

                    ; #19484: <==negation-removal== 46624 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #19929: <==negation-removal== 35041 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #21318: <==negation-removal== 64511 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #34493: <==negation-removal== 27357 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #40461: <==negation-removal== 81574 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #75228: <==negation-removal== 47193 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #27357: <==closure== 47193 (pos)
                    (Pc_survivorat_s_p9)

                    ; #35041: <==closure== 64511 (pos)
                    (Pa_survivorat_s_p9)

                    ; #46624: <==closure== 81574 (pos)
                    (Pb_survivorat_s_p9)

                    ; #47193: origin
                    (Bc_survivorat_s_p9)

                    ; #64511: origin
                    (Ba_survivorat_s_p9)

                    ; #81574: origin
                    (Bb_survivorat_s_p9)

                    ; #19484: <==negation-removal== 46624 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #19929: <==negation-removal== 35041 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #21318: <==negation-removal== 64511 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #34493: <==negation-removal== 27357 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #40461: <==negation-removal== 81574 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #75228: <==negation-removal== 47193 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #27357: <==closure== 47193 (pos)
                    (Pc_survivorat_s_p9)

                    ; #35041: <==closure== 64511 (pos)
                    (Pa_survivorat_s_p9)

                    ; #46624: <==closure== 81574 (pos)
                    (Pb_survivorat_s_p9)

                    ; #47193: origin
                    (Bc_survivorat_s_p9)

                    ; #64511: origin
                    (Ba_survivorat_s_p9)

                    ; #81574: origin
                    (Bb_survivorat_s_p9)

                    ; #19484: <==negation-removal== 46624 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #19929: <==negation-removal== 35041 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #21318: <==negation-removal== 64511 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #34493: <==negation-removal== 27357 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #40461: <==negation-removal== 81574 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #75228: <==negation-removal== 47193 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #34077: origin
                    (at_a_p1)

                    ; #43507: origin
                    (not_at_a_p10)

                    ; #74647: <==negation-removal== 34077 (pos)
                    (not (not_at_a_p1))

                    ; #79536: <==negation-removal== 43507 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #43507: origin
                    (not_at_a_p10)

                    ; #79536: origin
                    (at_a_p10)

                    ; #43507: <==negation-removal== 79536 (pos)
                    (not (not_at_a_p10))

                    ; #79536: <==negation-removal== 43507 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #18672: origin
                    (at_a_p11)

                    ; #43507: origin
                    (not_at_a_p10)

                    ; #34890: <==negation-removal== 18672 (pos)
                    (not (not_at_a_p11))

                    ; #79536: <==negation-removal== 43507 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10))
        :effect (and
                    ; #43507: origin
                    (not_at_a_p10)

                    ; #57231: origin
                    (at_a_p12)

                    ; #79536: <==negation-removal== 43507 (pos)
                    (not (at_a_p10))

                    ; #84679: <==negation-removal== 57231 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10))
        :effect (and
                    ; #11112: origin
                    (at_a_p2)

                    ; #43507: origin
                    (not_at_a_p10)

                    ; #27154: <==negation-removal== 11112 (pos)
                    (not (not_at_a_p2))

                    ; #79536: <==negation-removal== 43507 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10))
        :effect (and
                    ; #43507: origin
                    (not_at_a_p10)

                    ; #96607: origin
                    (at_a_p3)

                    ; #52608: <==negation-removal== 96607 (pos)
                    (not (not_at_a_p3))

                    ; #79536: <==negation-removal== 43507 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10))
        :effect (and
                    ; #40762: origin
                    (at_a_p4)

                    ; #43507: origin
                    (not_at_a_p10)

                    ; #41790: <==negation-removal== 40762 (pos)
                    (not (not_at_a_p4))

                    ; #79536: <==negation-removal== 43507 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10))
        :effect (and
                    ; #43507: origin
                    (not_at_a_p10)

                    ; #90443: origin
                    (at_a_p5)

                    ; #10549: <==negation-removal== 90443 (pos)
                    (not (not_at_a_p5))

                    ; #79536: <==negation-removal== 43507 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #28273: origin
                    (at_a_p6)

                    ; #43507: origin
                    (not_at_a_p10)

                    ; #72065: <==negation-removal== 28273 (pos)
                    (not (not_at_a_p6))

                    ; #79536: <==negation-removal== 43507 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10))
        :effect (and
                    ; #14576: origin
                    (at_a_p7)

                    ; #43507: origin
                    (not_at_a_p10)

                    ; #38963: <==negation-removal== 14576 (pos)
                    (not (not_at_a_p7))

                    ; #79536: <==negation-removal== 43507 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10))
        :effect (and
                    ; #43507: origin
                    (not_at_a_p10)

                    ; #47856: origin
                    (at_a_p8)

                    ; #36356: <==negation-removal== 47856 (pos)
                    (not (not_at_a_p8))

                    ; #79536: <==negation-removal== 43507 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10))
        :effect (and
                    ; #43507: origin
                    (not_at_a_p10)

                    ; #60513: origin
                    (at_a_p9)

                    ; #13887: <==negation-removal== 60513 (pos)
                    (not (not_at_a_p9))

                    ; #79536: <==negation-removal== 43507 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #34077: origin
                    (at_a_p1)

                    ; #34890: origin
                    (not_at_a_p11)

                    ; #18672: <==negation-removal== 34890 (pos)
                    (not (at_a_p11))

                    ; #74647: <==negation-removal== 34077 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #34890: origin
                    (not_at_a_p11)

                    ; #79536: origin
                    (at_a_p10)

                    ; #18672: <==negation-removal== 34890 (pos)
                    (not (at_a_p11))

                    ; #43507: <==negation-removal== 79536 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #18672: origin
                    (at_a_p11)

                    ; #34890: origin
                    (not_at_a_p11)

                    ; #18672: <==negation-removal== 34890 (pos)
                    (not (at_a_p11))

                    ; #34890: <==negation-removal== 18672 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (at_a_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #34890: origin
                    (not_at_a_p11)

                    ; #57231: origin
                    (at_a_p12)

                    ; #18672: <==negation-removal== 34890 (pos)
                    (not (at_a_p11))

                    ; #84679: <==negation-removal== 57231 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #11112: origin
                    (at_a_p2)

                    ; #34890: origin
                    (not_at_a_p11)

                    ; #18672: <==negation-removal== 34890 (pos)
                    (not (at_a_p11))

                    ; #27154: <==negation-removal== 11112 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #34890: origin
                    (not_at_a_p11)

                    ; #96607: origin
                    (at_a_p3)

                    ; #18672: <==negation-removal== 34890 (pos)
                    (not (at_a_p11))

                    ; #52608: <==negation-removal== 96607 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (at_a_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #34890: origin
                    (not_at_a_p11)

                    ; #40762: origin
                    (at_a_p4)

                    ; #18672: <==negation-removal== 34890 (pos)
                    (not (at_a_p11))

                    ; #41790: <==negation-removal== 40762 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #34890: origin
                    (not_at_a_p11)

                    ; #90443: origin
                    (at_a_p5)

                    ; #10549: <==negation-removal== 90443 (pos)
                    (not (not_at_a_p5))

                    ; #18672: <==negation-removal== 34890 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #28273: origin
                    (at_a_p6)

                    ; #34890: origin
                    (not_at_a_p11)

                    ; #18672: <==negation-removal== 34890 (pos)
                    (not (at_a_p11))

                    ; #72065: <==negation-removal== 28273 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #14576: origin
                    (at_a_p7)

                    ; #34890: origin
                    (not_at_a_p11)

                    ; #18672: <==negation-removal== 34890 (pos)
                    (not (at_a_p11))

                    ; #38963: <==negation-removal== 14576 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (at_a_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #34890: origin
                    (not_at_a_p11)

                    ; #47856: origin
                    (at_a_p8)

                    ; #18672: <==negation-removal== 34890 (pos)
                    (not (at_a_p11))

                    ; #36356: <==negation-removal== 47856 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #34890: origin
                    (not_at_a_p11)

                    ; #60513: origin
                    (at_a_p9)

                    ; #13887: <==negation-removal== 60513 (pos)
                    (not (not_at_a_p9))

                    ; #18672: <==negation-removal== 34890 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (at_a_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #34077: origin
                    (at_a_p1)

                    ; #84679: origin
                    (not_at_a_p12)

                    ; #57231: <==negation-removal== 84679 (pos)
                    (not (at_a_p12))

                    ; #74647: <==negation-removal== 34077 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12))
        :effect (and
                    ; #79536: origin
                    (at_a_p10)

                    ; #84679: origin
                    (not_at_a_p12)

                    ; #43507: <==negation-removal== 79536 (pos)
                    (not (not_at_a_p10))

                    ; #57231: <==negation-removal== 84679 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (at_a_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #18672: origin
                    (at_a_p11)

                    ; #84679: origin
                    (not_at_a_p12)

                    ; #34890: <==negation-removal== 18672 (pos)
                    (not (not_at_a_p11))

                    ; #57231: <==negation-removal== 84679 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (at_a_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #57231: origin
                    (at_a_p12)

                    ; #84679: origin
                    (not_at_a_p12)

                    ; #57231: <==negation-removal== 84679 (pos)
                    (not (at_a_p12))

                    ; #84679: <==negation-removal== 57231 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (at_a_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #11112: origin
                    (at_a_p2)

                    ; #84679: origin
                    (not_at_a_p12)

                    ; #27154: <==negation-removal== 11112 (pos)
                    (not (not_at_a_p2))

                    ; #57231: <==negation-removal== 84679 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (at_a_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #84679: origin
                    (not_at_a_p12)

                    ; #96607: origin
                    (at_a_p3)

                    ; #52608: <==negation-removal== 96607 (pos)
                    (not (not_at_a_p3))

                    ; #57231: <==negation-removal== 84679 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (at_a_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #40762: origin
                    (at_a_p4)

                    ; #84679: origin
                    (not_at_a_p12)

                    ; #41790: <==negation-removal== 40762 (pos)
                    (not (not_at_a_p4))

                    ; #57231: <==negation-removal== 84679 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (at_a_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #84679: origin
                    (not_at_a_p12)

                    ; #90443: origin
                    (at_a_p5)

                    ; #10549: <==negation-removal== 90443 (pos)
                    (not (not_at_a_p5))

                    ; #57231: <==negation-removal== 84679 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #28273: origin
                    (at_a_p6)

                    ; #84679: origin
                    (not_at_a_p12)

                    ; #57231: <==negation-removal== 84679 (pos)
                    (not (at_a_p12))

                    ; #72065: <==negation-removal== 28273 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12))
        :effect (and
                    ; #14576: origin
                    (at_a_p7)

                    ; #84679: origin
                    (not_at_a_p12)

                    ; #38963: <==negation-removal== 14576 (pos)
                    (not (not_at_a_p7))

                    ; #57231: <==negation-removal== 84679 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12))
        :effect (and
                    ; #47856: origin
                    (at_a_p8)

                    ; #84679: origin
                    (not_at_a_p12)

                    ; #36356: <==negation-removal== 47856 (pos)
                    (not (not_at_a_p8))

                    ; #57231: <==negation-removal== 84679 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (at_a_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #60513: origin
                    (at_a_p9)

                    ; #84679: origin
                    (not_at_a_p12)

                    ; #13887: <==negation-removal== 60513 (pos)
                    (not (not_at_a_p9))

                    ; #57231: <==negation-removal== 84679 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #34077: origin
                    (at_a_p1)

                    ; #74647: origin
                    (not_at_a_p1)

                    ; #34077: <==negation-removal== 74647 (pos)
                    (not (at_a_p1))

                    ; #74647: <==negation-removal== 34077 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #74647: origin
                    (not_at_a_p1)

                    ; #79536: origin
                    (at_a_p10)

                    ; #34077: <==negation-removal== 74647 (pos)
                    (not (at_a_p1))

                    ; #43507: <==negation-removal== 79536 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1))
        :effect (and
                    ; #18672: origin
                    (at_a_p11)

                    ; #74647: origin
                    (not_at_a_p1)

                    ; #34077: <==negation-removal== 74647 (pos)
                    (not (at_a_p1))

                    ; #34890: <==negation-removal== 18672 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1))
        :effect (and
                    ; #57231: origin
                    (at_a_p12)

                    ; #74647: origin
                    (not_at_a_p1)

                    ; #34077: <==negation-removal== 74647 (pos)
                    (not (at_a_p1))

                    ; #84679: <==negation-removal== 57231 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #11112: origin
                    (at_a_p2)

                    ; #74647: origin
                    (not_at_a_p1)

                    ; #27154: <==negation-removal== 11112 (pos)
                    (not (not_at_a_p2))

                    ; #34077: <==negation-removal== 74647 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #74647: origin
                    (not_at_a_p1)

                    ; #96607: origin
                    (at_a_p3)

                    ; #34077: <==negation-removal== 74647 (pos)
                    (not (at_a_p1))

                    ; #52608: <==negation-removal== 96607 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #40762: origin
                    (at_a_p4)

                    ; #74647: origin
                    (not_at_a_p1)

                    ; #34077: <==negation-removal== 74647 (pos)
                    (not (at_a_p1))

                    ; #41790: <==negation-removal== 40762 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #74647: origin
                    (not_at_a_p1)

                    ; #90443: origin
                    (at_a_p5)

                    ; #10549: <==negation-removal== 90443 (pos)
                    (not (not_at_a_p5))

                    ; #34077: <==negation-removal== 74647 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #28273: origin
                    (at_a_p6)

                    ; #74647: origin
                    (not_at_a_p1)

                    ; #34077: <==negation-removal== 74647 (pos)
                    (not (at_a_p1))

                    ; #72065: <==negation-removal== 28273 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #14576: origin
                    (at_a_p7)

                    ; #74647: origin
                    (not_at_a_p1)

                    ; #34077: <==negation-removal== 74647 (pos)
                    (not (at_a_p1))

                    ; #38963: <==negation-removal== 14576 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #47856: origin
                    (at_a_p8)

                    ; #74647: origin
                    (not_at_a_p1)

                    ; #34077: <==negation-removal== 74647 (pos)
                    (not (at_a_p1))

                    ; #36356: <==negation-removal== 47856 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #60513: origin
                    (at_a_p9)

                    ; #74647: origin
                    (not_at_a_p1)

                    ; #13887: <==negation-removal== 60513 (pos)
                    (not (not_at_a_p9))

                    ; #34077: <==negation-removal== 74647 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #27154: origin
                    (not_at_a_p2)

                    ; #34077: origin
                    (at_a_p1)

                    ; #11112: <==negation-removal== 27154 (pos)
                    (not (at_a_p2))

                    ; #74647: <==negation-removal== 34077 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (at_a_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #27154: origin
                    (not_at_a_p2)

                    ; #79536: origin
                    (at_a_p10)

                    ; #11112: <==negation-removal== 27154 (pos)
                    (not (at_a_p2))

                    ; #43507: <==negation-removal== 79536 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (at_a_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #18672: origin
                    (at_a_p11)

                    ; #27154: origin
                    (not_at_a_p2)

                    ; #11112: <==negation-removal== 27154 (pos)
                    (not (at_a_p2))

                    ; #34890: <==negation-removal== 18672 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #27154: origin
                    (not_at_a_p2)

                    ; #57231: origin
                    (at_a_p12)

                    ; #11112: <==negation-removal== 27154 (pos)
                    (not (at_a_p2))

                    ; #84679: <==negation-removal== 57231 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #11112: origin
                    (at_a_p2)

                    ; #27154: origin
                    (not_at_a_p2)

                    ; #11112: <==negation-removal== 27154 (pos)
                    (not (at_a_p2))

                    ; #27154: <==negation-removal== 11112 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #27154: origin
                    (not_at_a_p2)

                    ; #96607: origin
                    (at_a_p3)

                    ; #11112: <==negation-removal== 27154 (pos)
                    (not (at_a_p2))

                    ; #52608: <==negation-removal== 96607 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #27154: origin
                    (not_at_a_p2)

                    ; #40762: origin
                    (at_a_p4)

                    ; #11112: <==negation-removal== 27154 (pos)
                    (not (at_a_p2))

                    ; #41790: <==negation-removal== 40762 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #27154: origin
                    (not_at_a_p2)

                    ; #90443: origin
                    (at_a_p5)

                    ; #10549: <==negation-removal== 90443 (pos)
                    (not (not_at_a_p5))

                    ; #11112: <==negation-removal== 27154 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #27154: origin
                    (not_at_a_p2)

                    ; #28273: origin
                    (at_a_p6)

                    ; #11112: <==negation-removal== 27154 (pos)
                    (not (at_a_p2))

                    ; #72065: <==negation-removal== 28273 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #14576: origin
                    (at_a_p7)

                    ; #27154: origin
                    (not_at_a_p2)

                    ; #11112: <==negation-removal== 27154 (pos)
                    (not (at_a_p2))

                    ; #38963: <==negation-removal== 14576 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #27154: origin
                    (not_at_a_p2)

                    ; #47856: origin
                    (at_a_p8)

                    ; #11112: <==negation-removal== 27154 (pos)
                    (not (at_a_p2))

                    ; #36356: <==negation-removal== 47856 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #27154: origin
                    (not_at_a_p2)

                    ; #60513: origin
                    (at_a_p9)

                    ; #11112: <==negation-removal== 27154 (pos)
                    (not (at_a_p2))

                    ; #13887: <==negation-removal== 60513 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #34077: origin
                    (at_a_p1)

                    ; #52608: origin
                    (not_at_a_p3)

                    ; #74647: <==negation-removal== 34077 (pos)
                    (not (not_at_a_p1))

                    ; #96607: <==negation-removal== 52608 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3))
        :effect (and
                    ; #52608: origin
                    (not_at_a_p3)

                    ; #79536: origin
                    (at_a_p10)

                    ; #43507: <==negation-removal== 79536 (pos)
                    (not (not_at_a_p10))

                    ; #96607: <==negation-removal== 52608 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3))
        :effect (and
                    ; #18672: origin
                    (at_a_p11)

                    ; #52608: origin
                    (not_at_a_p3)

                    ; #34890: <==negation-removal== 18672 (pos)
                    (not (not_at_a_p11))

                    ; #96607: <==negation-removal== 52608 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3))
        :effect (and
                    ; #52608: origin
                    (not_at_a_p3)

                    ; #57231: origin
                    (at_a_p12)

                    ; #84679: <==negation-removal== 57231 (pos)
                    (not (not_at_a_p12))

                    ; #96607: <==negation-removal== 52608 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #11112: origin
                    (at_a_p2)

                    ; #52608: origin
                    (not_at_a_p3)

                    ; #27154: <==negation-removal== 11112 (pos)
                    (not (not_at_a_p2))

                    ; #96607: <==negation-removal== 52608 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #52608: origin
                    (not_at_a_p3)

                    ; #96607: origin
                    (at_a_p3)

                    ; #52608: <==negation-removal== 96607 (pos)
                    (not (not_at_a_p3))

                    ; #96607: <==negation-removal== 52608 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #40762: origin
                    (at_a_p4)

                    ; #52608: origin
                    (not_at_a_p3)

                    ; #41790: <==negation-removal== 40762 (pos)
                    (not (not_at_a_p4))

                    ; #96607: <==negation-removal== 52608 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #52608: origin
                    (not_at_a_p3)

                    ; #90443: origin
                    (at_a_p5)

                    ; #10549: <==negation-removal== 90443 (pos)
                    (not (not_at_a_p5))

                    ; #96607: <==negation-removal== 52608 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #28273: origin
                    (at_a_p6)

                    ; #52608: origin
                    (not_at_a_p3)

                    ; #72065: <==negation-removal== 28273 (pos)
                    (not (not_at_a_p6))

                    ; #96607: <==negation-removal== 52608 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #14576: origin
                    (at_a_p7)

                    ; #52608: origin
                    (not_at_a_p3)

                    ; #38963: <==negation-removal== 14576 (pos)
                    (not (not_at_a_p7))

                    ; #96607: <==negation-removal== 52608 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #47856: origin
                    (at_a_p8)

                    ; #52608: origin
                    (not_at_a_p3)

                    ; #36356: <==negation-removal== 47856 (pos)
                    (not (not_at_a_p8))

                    ; #96607: <==negation-removal== 52608 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #52608: origin
                    (not_at_a_p3)

                    ; #60513: origin
                    (at_a_p9)

                    ; #13887: <==negation-removal== 60513 (pos)
                    (not (not_at_a_p9))

                    ; #96607: <==negation-removal== 52608 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #34077: origin
                    (at_a_p1)

                    ; #41790: origin
                    (not_at_a_p4)

                    ; #40762: <==negation-removal== 41790 (pos)
                    (not (at_a_p4))

                    ; #74647: <==negation-removal== 34077 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_a_p4))
        :effect (and
                    ; #41790: origin
                    (not_at_a_p4)

                    ; #79536: origin
                    (at_a_p10)

                    ; #40762: <==negation-removal== 41790 (pos)
                    (not (at_a_p4))

                    ; #43507: <==negation-removal== 79536 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4))
        :effect (and
                    ; #18672: origin
                    (at_a_p11)

                    ; #41790: origin
                    (not_at_a_p4)

                    ; #34890: <==negation-removal== 18672 (pos)
                    (not (not_at_a_p11))

                    ; #40762: <==negation-removal== 41790 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_a_p4))
        :effect (and
                    ; #41790: origin
                    (not_at_a_p4)

                    ; #57231: origin
                    (at_a_p12)

                    ; #40762: <==negation-removal== 41790 (pos)
                    (not (at_a_p4))

                    ; #84679: <==negation-removal== 57231 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #11112: origin
                    (at_a_p2)

                    ; #41790: origin
                    (not_at_a_p4)

                    ; #27154: <==negation-removal== 11112 (pos)
                    (not (not_at_a_p2))

                    ; #40762: <==negation-removal== 41790 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #41790: origin
                    (not_at_a_p4)

                    ; #96607: origin
                    (at_a_p3)

                    ; #40762: <==negation-removal== 41790 (pos)
                    (not (at_a_p4))

                    ; #52608: <==negation-removal== 96607 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #40762: origin
                    (at_a_p4)

                    ; #41790: origin
                    (not_at_a_p4)

                    ; #40762: <==negation-removal== 41790 (pos)
                    (not (at_a_p4))

                    ; #41790: <==negation-removal== 40762 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #41790: origin
                    (not_at_a_p4)

                    ; #90443: origin
                    (at_a_p5)

                    ; #10549: <==negation-removal== 90443 (pos)
                    (not (not_at_a_p5))

                    ; #40762: <==negation-removal== 41790 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #28273: origin
                    (at_a_p6)

                    ; #41790: origin
                    (not_at_a_p4)

                    ; #40762: <==negation-removal== 41790 (pos)
                    (not (at_a_p4))

                    ; #72065: <==negation-removal== 28273 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #14576: origin
                    (at_a_p7)

                    ; #41790: origin
                    (not_at_a_p4)

                    ; #38963: <==negation-removal== 14576 (pos)
                    (not (not_at_a_p7))

                    ; #40762: <==negation-removal== 41790 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #41790: origin
                    (not_at_a_p4)

                    ; #47856: origin
                    (at_a_p8)

                    ; #36356: <==negation-removal== 47856 (pos)
                    (not (not_at_a_p8))

                    ; #40762: <==negation-removal== 41790 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #41790: origin
                    (not_at_a_p4)

                    ; #60513: origin
                    (at_a_p9)

                    ; #13887: <==negation-removal== 60513 (pos)
                    (not (not_at_a_p9))

                    ; #40762: <==negation-removal== 41790 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #10549: origin
                    (not_at_a_p5)

                    ; #34077: origin
                    (at_a_p1)

                    ; #74647: <==negation-removal== 34077 (pos)
                    (not (not_at_a_p1))

                    ; #90443: <==negation-removal== 10549 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #10549: origin
                    (not_at_a_p5)

                    ; #79536: origin
                    (at_a_p10)

                    ; #43507: <==negation-removal== 79536 (pos)
                    (not (not_at_a_p10))

                    ; #90443: <==negation-removal== 10549 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #10549: origin
                    (not_at_a_p5)

                    ; #18672: origin
                    (at_a_p11)

                    ; #34890: <==negation-removal== 18672 (pos)
                    (not (not_at_a_p11))

                    ; #90443: <==negation-removal== 10549 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #10549: origin
                    (not_at_a_p5)

                    ; #57231: origin
                    (at_a_p12)

                    ; #84679: <==negation-removal== 57231 (pos)
                    (not (not_at_a_p12))

                    ; #90443: <==negation-removal== 10549 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #10549: origin
                    (not_at_a_p5)

                    ; #11112: origin
                    (at_a_p2)

                    ; #27154: <==negation-removal== 11112 (pos)
                    (not (not_at_a_p2))

                    ; #90443: <==negation-removal== 10549 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #10549: origin
                    (not_at_a_p5)

                    ; #96607: origin
                    (at_a_p3)

                    ; #52608: <==negation-removal== 96607 (pos)
                    (not (not_at_a_p3))

                    ; #90443: <==negation-removal== 10549 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #10549: origin
                    (not_at_a_p5)

                    ; #40762: origin
                    (at_a_p4)

                    ; #41790: <==negation-removal== 40762 (pos)
                    (not (not_at_a_p4))

                    ; #90443: <==negation-removal== 10549 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #10549: origin
                    (not_at_a_p5)

                    ; #90443: origin
                    (at_a_p5)

                    ; #10549: <==negation-removal== 90443 (pos)
                    (not (not_at_a_p5))

                    ; #90443: <==negation-removal== 10549 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #10549: origin
                    (not_at_a_p5)

                    ; #28273: origin
                    (at_a_p6)

                    ; #72065: <==negation-removal== 28273 (pos)
                    (not (not_at_a_p6))

                    ; #90443: <==negation-removal== 10549 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #10549: origin
                    (not_at_a_p5)

                    ; #14576: origin
                    (at_a_p7)

                    ; #38963: <==negation-removal== 14576 (pos)
                    (not (not_at_a_p7))

                    ; #90443: <==negation-removal== 10549 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #10549: origin
                    (not_at_a_p5)

                    ; #47856: origin
                    (at_a_p8)

                    ; #36356: <==negation-removal== 47856 (pos)
                    (not (not_at_a_p8))

                    ; #90443: <==negation-removal== 10549 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #10549: origin
                    (not_at_a_p5)

                    ; #60513: origin
                    (at_a_p9)

                    ; #13887: <==negation-removal== 60513 (pos)
                    (not (not_at_a_p9))

                    ; #90443: <==negation-removal== 10549 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #34077: origin
                    (at_a_p1)

                    ; #72065: origin
                    (not_at_a_p6)

                    ; #28273: <==negation-removal== 72065 (pos)
                    (not (at_a_p6))

                    ; #74647: <==negation-removal== 34077 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #72065: origin
                    (not_at_a_p6)

                    ; #79536: origin
                    (at_a_p10)

                    ; #28273: <==negation-removal== 72065 (pos)
                    (not (at_a_p6))

                    ; #43507: <==negation-removal== 79536 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6))
        :effect (and
                    ; #18672: origin
                    (at_a_p11)

                    ; #72065: origin
                    (not_at_a_p6)

                    ; #28273: <==negation-removal== 72065 (pos)
                    (not (at_a_p6))

                    ; #34890: <==negation-removal== 18672 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6))
        :effect (and
                    ; #57231: origin
                    (at_a_p12)

                    ; #72065: origin
                    (not_at_a_p6)

                    ; #28273: <==negation-removal== 72065 (pos)
                    (not (at_a_p6))

                    ; #84679: <==negation-removal== 57231 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #11112: origin
                    (at_a_p2)

                    ; #72065: origin
                    (not_at_a_p6)

                    ; #27154: <==negation-removal== 11112 (pos)
                    (not (not_at_a_p2))

                    ; #28273: <==negation-removal== 72065 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #72065: origin
                    (not_at_a_p6)

                    ; #96607: origin
                    (at_a_p3)

                    ; #28273: <==negation-removal== 72065 (pos)
                    (not (at_a_p6))

                    ; #52608: <==negation-removal== 96607 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #40762: origin
                    (at_a_p4)

                    ; #72065: origin
                    (not_at_a_p6)

                    ; #28273: <==negation-removal== 72065 (pos)
                    (not (at_a_p6))

                    ; #41790: <==negation-removal== 40762 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #72065: origin
                    (not_at_a_p6)

                    ; #90443: origin
                    (at_a_p5)

                    ; #10549: <==negation-removal== 90443 (pos)
                    (not (not_at_a_p5))

                    ; #28273: <==negation-removal== 72065 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #28273: origin
                    (at_a_p6)

                    ; #72065: origin
                    (not_at_a_p6)

                    ; #28273: <==negation-removal== 72065 (pos)
                    (not (at_a_p6))

                    ; #72065: <==negation-removal== 28273 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #14576: origin
                    (at_a_p7)

                    ; #72065: origin
                    (not_at_a_p6)

                    ; #28273: <==negation-removal== 72065 (pos)
                    (not (at_a_p6))

                    ; #38963: <==negation-removal== 14576 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #47856: origin
                    (at_a_p8)

                    ; #72065: origin
                    (not_at_a_p6)

                    ; #28273: <==negation-removal== 72065 (pos)
                    (not (at_a_p6))

                    ; #36356: <==negation-removal== 47856 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #60513: origin
                    (at_a_p9)

                    ; #72065: origin
                    (not_at_a_p6)

                    ; #13887: <==negation-removal== 60513 (pos)
                    (not (not_at_a_p9))

                    ; #28273: <==negation-removal== 72065 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #34077: origin
                    (at_a_p1)

                    ; #38963: origin
                    (not_at_a_p7)

                    ; #14576: <==negation-removal== 38963 (pos)
                    (not (at_a_p7))

                    ; #74647: <==negation-removal== 34077 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (at_a_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #38963: origin
                    (not_at_a_p7)

                    ; #79536: origin
                    (at_a_p10)

                    ; #14576: <==negation-removal== 38963 (pos)
                    (not (at_a_p7))

                    ; #43507: <==negation-removal== 79536 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7))
        :effect (and
                    ; #18672: origin
                    (at_a_p11)

                    ; #38963: origin
                    (not_at_a_p7)

                    ; #14576: <==negation-removal== 38963 (pos)
                    (not (at_a_p7))

                    ; #34890: <==negation-removal== 18672 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7))
        :effect (and
                    ; #38963: origin
                    (not_at_a_p7)

                    ; #57231: origin
                    (at_a_p12)

                    ; #14576: <==negation-removal== 38963 (pos)
                    (not (at_a_p7))

                    ; #84679: <==negation-removal== 57231 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #11112: origin
                    (at_a_p2)

                    ; #38963: origin
                    (not_at_a_p7)

                    ; #14576: <==negation-removal== 38963 (pos)
                    (not (at_a_p7))

                    ; #27154: <==negation-removal== 11112 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #38963: origin
                    (not_at_a_p7)

                    ; #96607: origin
                    (at_a_p3)

                    ; #14576: <==negation-removal== 38963 (pos)
                    (not (at_a_p7))

                    ; #52608: <==negation-removal== 96607 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #38963: origin
                    (not_at_a_p7)

                    ; #40762: origin
                    (at_a_p4)

                    ; #14576: <==negation-removal== 38963 (pos)
                    (not (at_a_p7))

                    ; #41790: <==negation-removal== 40762 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #38963: origin
                    (not_at_a_p7)

                    ; #90443: origin
                    (at_a_p5)

                    ; #10549: <==negation-removal== 90443 (pos)
                    (not (not_at_a_p5))

                    ; #14576: <==negation-removal== 38963 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #28273: origin
                    (at_a_p6)

                    ; #38963: origin
                    (not_at_a_p7)

                    ; #14576: <==negation-removal== 38963 (pos)
                    (not (at_a_p7))

                    ; #72065: <==negation-removal== 28273 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #14576: origin
                    (at_a_p7)

                    ; #38963: origin
                    (not_at_a_p7)

                    ; #14576: <==negation-removal== 38963 (pos)
                    (not (at_a_p7))

                    ; #38963: <==negation-removal== 14576 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #38963: origin
                    (not_at_a_p7)

                    ; #47856: origin
                    (at_a_p8)

                    ; #14576: <==negation-removal== 38963 (pos)
                    (not (at_a_p7))

                    ; #36356: <==negation-removal== 47856 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #38963: origin
                    (not_at_a_p7)

                    ; #60513: origin
                    (at_a_p9)

                    ; #13887: <==negation-removal== 60513 (pos)
                    (not (not_at_a_p9))

                    ; #14576: <==negation-removal== 38963 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #34077: origin
                    (at_a_p1)

                    ; #36356: origin
                    (not_at_a_p8)

                    ; #47856: <==negation-removal== 36356 (pos)
                    (not (at_a_p8))

                    ; #74647: <==negation-removal== 34077 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8))
        :effect (and
                    ; #36356: origin
                    (not_at_a_p8)

                    ; #79536: origin
                    (at_a_p10)

                    ; #43507: <==negation-removal== 79536 (pos)
                    (not (not_at_a_p10))

                    ; #47856: <==negation-removal== 36356 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #18672: origin
                    (at_a_p11)

                    ; #36356: origin
                    (not_at_a_p8)

                    ; #34890: <==negation-removal== 18672 (pos)
                    (not (not_at_a_p11))

                    ; #47856: <==negation-removal== 36356 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_a_p8))
        :effect (and
                    ; #36356: origin
                    (not_at_a_p8)

                    ; #57231: origin
                    (at_a_p12)

                    ; #47856: <==negation-removal== 36356 (pos)
                    (not (at_a_p8))

                    ; #84679: <==negation-removal== 57231 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #11112: origin
                    (at_a_p2)

                    ; #36356: origin
                    (not_at_a_p8)

                    ; #27154: <==negation-removal== 11112 (pos)
                    (not (not_at_a_p2))

                    ; #47856: <==negation-removal== 36356 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #36356: origin
                    (not_at_a_p8)

                    ; #96607: origin
                    (at_a_p3)

                    ; #47856: <==negation-removal== 36356 (pos)
                    (not (at_a_p8))

                    ; #52608: <==negation-removal== 96607 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #36356: origin
                    (not_at_a_p8)

                    ; #40762: origin
                    (at_a_p4)

                    ; #41790: <==negation-removal== 40762 (pos)
                    (not (not_at_a_p4))

                    ; #47856: <==negation-removal== 36356 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #36356: origin
                    (not_at_a_p8)

                    ; #90443: origin
                    (at_a_p5)

                    ; #10549: <==negation-removal== 90443 (pos)
                    (not (not_at_a_p5))

                    ; #47856: <==negation-removal== 36356 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #28273: origin
                    (at_a_p6)

                    ; #36356: origin
                    (not_at_a_p8)

                    ; #47856: <==negation-removal== 36356 (pos)
                    (not (at_a_p8))

                    ; #72065: <==negation-removal== 28273 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #14576: origin
                    (at_a_p7)

                    ; #36356: origin
                    (not_at_a_p8)

                    ; #38963: <==negation-removal== 14576 (pos)
                    (not (not_at_a_p7))

                    ; #47856: <==negation-removal== 36356 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #36356: origin
                    (not_at_a_p8)

                    ; #47856: origin
                    (at_a_p8)

                    ; #36356: <==negation-removal== 47856 (pos)
                    (not (not_at_a_p8))

                    ; #47856: <==negation-removal== 36356 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #36356: origin
                    (not_at_a_p8)

                    ; #60513: origin
                    (at_a_p9)

                    ; #13887: <==negation-removal== 60513 (pos)
                    (not (not_at_a_p9))

                    ; #47856: <==negation-removal== 36356 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #13887: origin
                    (not_at_a_p9)

                    ; #34077: origin
                    (at_a_p1)

                    ; #60513: <==negation-removal== 13887 (pos)
                    (not (at_a_p9))

                    ; #74647: <==negation-removal== 34077 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (at_a_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #13887: origin
                    (not_at_a_p9)

                    ; #79536: origin
                    (at_a_p10)

                    ; #43507: <==negation-removal== 79536 (pos)
                    (not (not_at_a_p10))

                    ; #60513: <==negation-removal== 13887 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (at_a_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #13887: origin
                    (not_at_a_p9)

                    ; #18672: origin
                    (at_a_p11)

                    ; #34890: <==negation-removal== 18672 (pos)
                    (not (not_at_a_p11))

                    ; #60513: <==negation-removal== 13887 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #13887: origin
                    (not_at_a_p9)

                    ; #57231: origin
                    (at_a_p12)

                    ; #60513: <==negation-removal== 13887 (pos)
                    (not (at_a_p9))

                    ; #84679: <==negation-removal== 57231 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #11112: origin
                    (at_a_p2)

                    ; #13887: origin
                    (not_at_a_p9)

                    ; #27154: <==negation-removal== 11112 (pos)
                    (not (not_at_a_p2))

                    ; #60513: <==negation-removal== 13887 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #13887: origin
                    (not_at_a_p9)

                    ; #96607: origin
                    (at_a_p3)

                    ; #52608: <==negation-removal== 96607 (pos)
                    (not (not_at_a_p3))

                    ; #60513: <==negation-removal== 13887 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #13887: origin
                    (not_at_a_p9)

                    ; #40762: origin
                    (at_a_p4)

                    ; #41790: <==negation-removal== 40762 (pos)
                    (not (not_at_a_p4))

                    ; #60513: <==negation-removal== 13887 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #13887: origin
                    (not_at_a_p9)

                    ; #90443: origin
                    (at_a_p5)

                    ; #10549: <==negation-removal== 90443 (pos)
                    (not (not_at_a_p5))

                    ; #60513: <==negation-removal== 13887 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #13887: origin
                    (not_at_a_p9)

                    ; #28273: origin
                    (at_a_p6)

                    ; #60513: <==negation-removal== 13887 (pos)
                    (not (at_a_p9))

                    ; #72065: <==negation-removal== 28273 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #13887: origin
                    (not_at_a_p9)

                    ; #14576: origin
                    (at_a_p7)

                    ; #38963: <==negation-removal== 14576 (pos)
                    (not (not_at_a_p7))

                    ; #60513: <==negation-removal== 13887 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #13887: origin
                    (not_at_a_p9)

                    ; #47856: origin
                    (at_a_p8)

                    ; #36356: <==negation-removal== 47856 (pos)
                    (not (not_at_a_p8))

                    ; #60513: <==negation-removal== 13887 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #13887: origin
                    (not_at_a_p9)

                    ; #60513: origin
                    (at_a_p9)

                    ; #13887: <==negation-removal== 60513 (pos)
                    (not (not_at_a_p9))

                    ; #60513: <==negation-removal== 13887 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10))
        :effect (and
                    ; #34273: origin
                    (not_at_b_p10)

                    ; #90001: origin
                    (at_b_p1)

                    ; #52513: <==negation-removal== 34273 (pos)
                    (not (at_b_p10))

                    ; #59056: <==negation-removal== 90001 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10))
        :effect (and
                    ; #34273: origin
                    (not_at_b_p10)

                    ; #52513: origin
                    (at_b_p10)

                    ; #34273: <==negation-removal== 52513 (pos)
                    (not (not_at_b_p10))

                    ; #52513: <==negation-removal== 34273 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10))
        :effect (and
                    ; #34273: origin
                    (not_at_b_p10)

                    ; #48148: origin
                    (at_b_p11)

                    ; #29669: <==negation-removal== 48148 (pos)
                    (not (not_at_b_p11))

                    ; #52513: <==negation-removal== 34273 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #21851: origin
                    (at_b_p12)

                    ; #34273: origin
                    (not_at_b_p10)

                    ; #29683: <==negation-removal== 21851 (pos)
                    (not (not_at_b_p12))

                    ; #52513: <==negation-removal== 34273 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_b_p10))
        :effect (and
                    ; #34273: origin
                    (not_at_b_p10)

                    ; #79083: origin
                    (at_b_p2)

                    ; #52513: <==negation-removal== 34273 (pos)
                    (not (at_b_p10))

                    ; #90493: <==negation-removal== 79083 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #18694: origin
                    (at_b_p3)

                    ; #34273: origin
                    (not_at_b_p10)

                    ; #52513: <==negation-removal== 34273 (pos)
                    (not (at_b_p10))

                    ; #54474: <==negation-removal== 18694 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #14444: origin
                    (at_b_p4)

                    ; #34273: origin
                    (not_at_b_p10)

                    ; #13102: <==negation-removal== 14444 (pos)
                    (not (not_at_b_p4))

                    ; #52513: <==negation-removal== 34273 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_b_p10))
        :effect (and
                    ; #34273: origin
                    (not_at_b_p10)

                    ; #75000: origin
                    (at_b_p5)

                    ; #52513: <==negation-removal== 34273 (pos)
                    (not (at_b_p10))

                    ; #88835: <==negation-removal== 75000 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #34273: origin
                    (not_at_b_p10)

                    ; #34475: origin
                    (at_b_p6)

                    ; #52513: <==negation-removal== 34273 (pos)
                    (not (at_b_p10))

                    ; #64885: <==negation-removal== 34475 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_b_p10))
        :effect (and
                    ; #34273: origin
                    (not_at_b_p10)

                    ; #59993: origin
                    (at_b_p7)

                    ; #38334: <==negation-removal== 59993 (pos)
                    (not (not_at_b_p7))

                    ; #52513: <==negation-removal== 34273 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_b_p10))
        :effect (and
                    ; #34273: origin
                    (not_at_b_p10)

                    ; #77483: origin
                    (at_b_p8)

                    ; #52513: <==negation-removal== 34273 (pos)
                    (not (at_b_p10))

                    ; #60193: <==negation-removal== 77483 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_b_p10))
        :effect (and
                    ; #25772: origin
                    (at_b_p9)

                    ; #34273: origin
                    (not_at_b_p10)

                    ; #28120: <==negation-removal== 25772 (pos)
                    (not (not_at_b_p9))

                    ; #52513: <==negation-removal== 34273 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (at_b_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #29669: origin
                    (not_at_b_p11)

                    ; #90001: origin
                    (at_b_p1)

                    ; #48148: <==negation-removal== 29669 (pos)
                    (not (at_b_p11))

                    ; #59056: <==negation-removal== 90001 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #29669: origin
                    (not_at_b_p11)

                    ; #52513: origin
                    (at_b_p10)

                    ; #34273: <==negation-removal== 52513 (pos)
                    (not (not_at_b_p10))

                    ; #48148: <==negation-removal== 29669 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #29669: origin
                    (not_at_b_p11)

                    ; #48148: origin
                    (at_b_p11)

                    ; #29669: <==negation-removal== 48148 (pos)
                    (not (not_at_b_p11))

                    ; #48148: <==negation-removal== 29669 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (at_b_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #21851: origin
                    (at_b_p12)

                    ; #29669: origin
                    (not_at_b_p11)

                    ; #29683: <==negation-removal== 21851 (pos)
                    (not (not_at_b_p12))

                    ; #48148: <==negation-removal== 29669 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #29669: origin
                    (not_at_b_p11)

                    ; #79083: origin
                    (at_b_p2)

                    ; #48148: <==negation-removal== 29669 (pos)
                    (not (at_b_p11))

                    ; #90493: <==negation-removal== 79083 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #18694: origin
                    (at_b_p3)

                    ; #29669: origin
                    (not_at_b_p11)

                    ; #48148: <==negation-removal== 29669 (pos)
                    (not (at_b_p11))

                    ; #54474: <==negation-removal== 18694 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (at_b_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #14444: origin
                    (at_b_p4)

                    ; #29669: origin
                    (not_at_b_p11)

                    ; #13102: <==negation-removal== 14444 (pos)
                    (not (not_at_b_p4))

                    ; #48148: <==negation-removal== 29669 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #29669: origin
                    (not_at_b_p11)

                    ; #75000: origin
                    (at_b_p5)

                    ; #48148: <==negation-removal== 29669 (pos)
                    (not (at_b_p11))

                    ; #88835: <==negation-removal== 75000 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (at_b_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #29669: origin
                    (not_at_b_p11)

                    ; #34475: origin
                    (at_b_p6)

                    ; #48148: <==negation-removal== 29669 (pos)
                    (not (at_b_p11))

                    ; #64885: <==negation-removal== 34475 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #29669: origin
                    (not_at_b_p11)

                    ; #59993: origin
                    (at_b_p7)

                    ; #38334: <==negation-removal== 59993 (pos)
                    (not (not_at_b_p7))

                    ; #48148: <==negation-removal== 29669 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p8
        :precondition (and (at_b_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #29669: origin
                    (not_at_b_p11)

                    ; #77483: origin
                    (at_b_p8)

                    ; #48148: <==negation-removal== 29669 (pos)
                    (not (at_b_p11))

                    ; #60193: <==negation-removal== 77483 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #25772: origin
                    (at_b_p9)

                    ; #29669: origin
                    (not_at_b_p11)

                    ; #28120: <==negation-removal== 25772 (pos)
                    (not (not_at_b_p9))

                    ; #48148: <==negation-removal== 29669 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #29683: origin
                    (not_at_b_p12)

                    ; #90001: origin
                    (at_b_p1)

                    ; #21851: <==negation-removal== 29683 (pos)
                    (not (at_b_p12))

                    ; #59056: <==negation-removal== 90001 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #29683: origin
                    (not_at_b_p12)

                    ; #52513: origin
                    (at_b_p10)

                    ; #21851: <==negation-removal== 29683 (pos)
                    (not (at_b_p12))

                    ; #34273: <==negation-removal== 52513 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #29683: origin
                    (not_at_b_p12)

                    ; #48148: origin
                    (at_b_p11)

                    ; #21851: <==negation-removal== 29683 (pos)
                    (not (at_b_p12))

                    ; #29669: <==negation-removal== 48148 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #21851: origin
                    (at_b_p12)

                    ; #29683: origin
                    (not_at_b_p12)

                    ; #21851: <==negation-removal== 29683 (pos)
                    (not (at_b_p12))

                    ; #29683: <==negation-removal== 21851 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #29683: origin
                    (not_at_b_p12)

                    ; #79083: origin
                    (at_b_p2)

                    ; #21851: <==negation-removal== 29683 (pos)
                    (not (at_b_p12))

                    ; #90493: <==negation-removal== 79083 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #18694: origin
                    (at_b_p3)

                    ; #29683: origin
                    (not_at_b_p12)

                    ; #21851: <==negation-removal== 29683 (pos)
                    (not (at_b_p12))

                    ; #54474: <==negation-removal== 18694 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #14444: origin
                    (at_b_p4)

                    ; #29683: origin
                    (not_at_b_p12)

                    ; #13102: <==negation-removal== 14444 (pos)
                    (not (not_at_b_p4))

                    ; #21851: <==negation-removal== 29683 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #29683: origin
                    (not_at_b_p12)

                    ; #75000: origin
                    (at_b_p5)

                    ; #21851: <==negation-removal== 29683 (pos)
                    (not (at_b_p12))

                    ; #88835: <==negation-removal== 75000 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #29683: origin
                    (not_at_b_p12)

                    ; #34475: origin
                    (at_b_p6)

                    ; #21851: <==negation-removal== 29683 (pos)
                    (not (at_b_p12))

                    ; #64885: <==negation-removal== 34475 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #29683: origin
                    (not_at_b_p12)

                    ; #59993: origin
                    (at_b_p7)

                    ; #21851: <==negation-removal== 29683 (pos)
                    (not (at_b_p12))

                    ; #38334: <==negation-removal== 59993 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #29683: origin
                    (not_at_b_p12)

                    ; #77483: origin
                    (at_b_p8)

                    ; #21851: <==negation-removal== 29683 (pos)
                    (not (at_b_p12))

                    ; #60193: <==negation-removal== 77483 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #25772: origin
                    (at_b_p9)

                    ; #29683: origin
                    (not_at_b_p12)

                    ; #21851: <==negation-removal== 29683 (pos)
                    (not (at_b_p12))

                    ; #28120: <==negation-removal== 25772 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #59056: origin
                    (not_at_b_p1)

                    ; #90001: origin
                    (at_b_p1)

                    ; #59056: <==negation-removal== 90001 (pos)
                    (not (not_at_b_p1))

                    ; #90001: <==negation-removal== 59056 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (at_b_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #52513: origin
                    (at_b_p10)

                    ; #59056: origin
                    (not_at_b_p1)

                    ; #34273: <==negation-removal== 52513 (pos)
                    (not (not_at_b_p10))

                    ; #90001: <==negation-removal== 59056 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1))
        :effect (and
                    ; #48148: origin
                    (at_b_p11)

                    ; #59056: origin
                    (not_at_b_p1)

                    ; #29669: <==negation-removal== 48148 (pos)
                    (not (not_at_b_p11))

                    ; #90001: <==negation-removal== 59056 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1))
        :effect (and
                    ; #21851: origin
                    (at_b_p12)

                    ; #59056: origin
                    (not_at_b_p1)

                    ; #29683: <==negation-removal== 21851 (pos)
                    (not (not_at_b_p12))

                    ; #90001: <==negation-removal== 59056 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #59056: origin
                    (not_at_b_p1)

                    ; #79083: origin
                    (at_b_p2)

                    ; #90001: <==negation-removal== 59056 (pos)
                    (not (at_b_p1))

                    ; #90493: <==negation-removal== 79083 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #18694: origin
                    (at_b_p3)

                    ; #59056: origin
                    (not_at_b_p1)

                    ; #54474: <==negation-removal== 18694 (pos)
                    (not (not_at_b_p3))

                    ; #90001: <==negation-removal== 59056 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #14444: origin
                    (at_b_p4)

                    ; #59056: origin
                    (not_at_b_p1)

                    ; #13102: <==negation-removal== 14444 (pos)
                    (not (not_at_b_p4))

                    ; #90001: <==negation-removal== 59056 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #59056: origin
                    (not_at_b_p1)

                    ; #75000: origin
                    (at_b_p5)

                    ; #88835: <==negation-removal== 75000 (pos)
                    (not (not_at_b_p5))

                    ; #90001: <==negation-removal== 59056 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #34475: origin
                    (at_b_p6)

                    ; #59056: origin
                    (not_at_b_p1)

                    ; #64885: <==negation-removal== 34475 (pos)
                    (not (not_at_b_p6))

                    ; #90001: <==negation-removal== 59056 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #59056: origin
                    (not_at_b_p1)

                    ; #59993: origin
                    (at_b_p7)

                    ; #38334: <==negation-removal== 59993 (pos)
                    (not (not_at_b_p7))

                    ; #90001: <==negation-removal== 59056 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #59056: origin
                    (not_at_b_p1)

                    ; #77483: origin
                    (at_b_p8)

                    ; #60193: <==negation-removal== 77483 (pos)
                    (not (not_at_b_p8))

                    ; #90001: <==negation-removal== 59056 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #25772: origin
                    (at_b_p9)

                    ; #59056: origin
                    (not_at_b_p1)

                    ; #28120: <==negation-removal== 25772 (pos)
                    (not (not_at_b_p9))

                    ; #90001: <==negation-removal== 59056 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #90001: origin
                    (at_b_p1)

                    ; #90493: origin
                    (not_at_b_p2)

                    ; #59056: <==negation-removal== 90001 (pos)
                    (not (not_at_b_p1))

                    ; #79083: <==negation-removal== 90493 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #52513: origin
                    (at_b_p10)

                    ; #90493: origin
                    (not_at_b_p2)

                    ; #34273: <==negation-removal== 52513 (pos)
                    (not (not_at_b_p10))

                    ; #79083: <==negation-removal== 90493 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (at_b_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #48148: origin
                    (at_b_p11)

                    ; #90493: origin
                    (not_at_b_p2)

                    ; #29669: <==negation-removal== 48148 (pos)
                    (not (not_at_b_p11))

                    ; #79083: <==negation-removal== 90493 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #21851: origin
                    (at_b_p12)

                    ; #90493: origin
                    (not_at_b_p2)

                    ; #29683: <==negation-removal== 21851 (pos)
                    (not (not_at_b_p12))

                    ; #79083: <==negation-removal== 90493 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #79083: origin
                    (at_b_p2)

                    ; #90493: origin
                    (not_at_b_p2)

                    ; #79083: <==negation-removal== 90493 (pos)
                    (not (at_b_p2))

                    ; #90493: <==negation-removal== 79083 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #18694: origin
                    (at_b_p3)

                    ; #90493: origin
                    (not_at_b_p2)

                    ; #54474: <==negation-removal== 18694 (pos)
                    (not (not_at_b_p3))

                    ; #79083: <==negation-removal== 90493 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #14444: origin
                    (at_b_p4)

                    ; #90493: origin
                    (not_at_b_p2)

                    ; #13102: <==negation-removal== 14444 (pos)
                    (not (not_at_b_p4))

                    ; #79083: <==negation-removal== 90493 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #75000: origin
                    (at_b_p5)

                    ; #90493: origin
                    (not_at_b_p2)

                    ; #79083: <==negation-removal== 90493 (pos)
                    (not (at_b_p2))

                    ; #88835: <==negation-removal== 75000 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #34475: origin
                    (at_b_p6)

                    ; #90493: origin
                    (not_at_b_p2)

                    ; #64885: <==negation-removal== 34475 (pos)
                    (not (not_at_b_p6))

                    ; #79083: <==negation-removal== 90493 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #59993: origin
                    (at_b_p7)

                    ; #90493: origin
                    (not_at_b_p2)

                    ; #38334: <==negation-removal== 59993 (pos)
                    (not (not_at_b_p7))

                    ; #79083: <==negation-removal== 90493 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #77483: origin
                    (at_b_p8)

                    ; #90493: origin
                    (not_at_b_p2)

                    ; #60193: <==negation-removal== 77483 (pos)
                    (not (not_at_b_p8))

                    ; #79083: <==negation-removal== 90493 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #25772: origin
                    (at_b_p9)

                    ; #90493: origin
                    (not_at_b_p2)

                    ; #28120: <==negation-removal== 25772 (pos)
                    (not (not_at_b_p9))

                    ; #79083: <==negation-removal== 90493 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #54474: origin
                    (not_at_b_p3)

                    ; #90001: origin
                    (at_b_p1)

                    ; #18694: <==negation-removal== 54474 (pos)
                    (not (at_b_p3))

                    ; #59056: <==negation-removal== 90001 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3))
        :effect (and
                    ; #52513: origin
                    (at_b_p10)

                    ; #54474: origin
                    (not_at_b_p3)

                    ; #18694: <==negation-removal== 54474 (pos)
                    (not (at_b_p3))

                    ; #34273: <==negation-removal== 52513 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3))
        :effect (and
                    ; #48148: origin
                    (at_b_p11)

                    ; #54474: origin
                    (not_at_b_p3)

                    ; #18694: <==negation-removal== 54474 (pos)
                    (not (at_b_p3))

                    ; #29669: <==negation-removal== 48148 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3))
        :effect (and
                    ; #21851: origin
                    (at_b_p12)

                    ; #54474: origin
                    (not_at_b_p3)

                    ; #18694: <==negation-removal== 54474 (pos)
                    (not (at_b_p3))

                    ; #29683: <==negation-removal== 21851 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #54474: origin
                    (not_at_b_p3)

                    ; #79083: origin
                    (at_b_p2)

                    ; #18694: <==negation-removal== 54474 (pos)
                    (not (at_b_p3))

                    ; #90493: <==negation-removal== 79083 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #18694: origin
                    (at_b_p3)

                    ; #54474: origin
                    (not_at_b_p3)

                    ; #18694: <==negation-removal== 54474 (pos)
                    (not (at_b_p3))

                    ; #54474: <==negation-removal== 18694 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #14444: origin
                    (at_b_p4)

                    ; #54474: origin
                    (not_at_b_p3)

                    ; #13102: <==negation-removal== 14444 (pos)
                    (not (not_at_b_p4))

                    ; #18694: <==negation-removal== 54474 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #54474: origin
                    (not_at_b_p3)

                    ; #75000: origin
                    (at_b_p5)

                    ; #18694: <==negation-removal== 54474 (pos)
                    (not (at_b_p3))

                    ; #88835: <==negation-removal== 75000 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #34475: origin
                    (at_b_p6)

                    ; #54474: origin
                    (not_at_b_p3)

                    ; #18694: <==negation-removal== 54474 (pos)
                    (not (at_b_p3))

                    ; #64885: <==negation-removal== 34475 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #54474: origin
                    (not_at_b_p3)

                    ; #59993: origin
                    (at_b_p7)

                    ; #18694: <==negation-removal== 54474 (pos)
                    (not (at_b_p3))

                    ; #38334: <==negation-removal== 59993 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #54474: origin
                    (not_at_b_p3)

                    ; #77483: origin
                    (at_b_p8)

                    ; #18694: <==negation-removal== 54474 (pos)
                    (not (at_b_p3))

                    ; #60193: <==negation-removal== 77483 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #25772: origin
                    (at_b_p9)

                    ; #54474: origin
                    (not_at_b_p3)

                    ; #18694: <==negation-removal== 54474 (pos)
                    (not (at_b_p3))

                    ; #28120: <==negation-removal== 25772 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #13102: origin
                    (not_at_b_p4)

                    ; #90001: origin
                    (at_b_p1)

                    ; #14444: <==negation-removal== 13102 (pos)
                    (not (at_b_p4))

                    ; #59056: <==negation-removal== 90001 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4))
        :effect (and
                    ; #13102: origin
                    (not_at_b_p4)

                    ; #52513: origin
                    (at_b_p10)

                    ; #14444: <==negation-removal== 13102 (pos)
                    (not (at_b_p4))

                    ; #34273: <==negation-removal== 52513 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4))
        :effect (and
                    ; #13102: origin
                    (not_at_b_p4)

                    ; #48148: origin
                    (at_b_p11)

                    ; #14444: <==negation-removal== 13102 (pos)
                    (not (at_b_p4))

                    ; #29669: <==negation-removal== 48148 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4))
        :effect (and
                    ; #13102: origin
                    (not_at_b_p4)

                    ; #21851: origin
                    (at_b_p12)

                    ; #14444: <==negation-removal== 13102 (pos)
                    (not (at_b_p4))

                    ; #29683: <==negation-removal== 21851 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #13102: origin
                    (not_at_b_p4)

                    ; #79083: origin
                    (at_b_p2)

                    ; #14444: <==negation-removal== 13102 (pos)
                    (not (at_b_p4))

                    ; #90493: <==negation-removal== 79083 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #13102: origin
                    (not_at_b_p4)

                    ; #18694: origin
                    (at_b_p3)

                    ; #14444: <==negation-removal== 13102 (pos)
                    (not (at_b_p4))

                    ; #54474: <==negation-removal== 18694 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #13102: origin
                    (not_at_b_p4)

                    ; #14444: origin
                    (at_b_p4)

                    ; #13102: <==negation-removal== 14444 (pos)
                    (not (not_at_b_p4))

                    ; #14444: <==negation-removal== 13102 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #13102: origin
                    (not_at_b_p4)

                    ; #75000: origin
                    (at_b_p5)

                    ; #14444: <==negation-removal== 13102 (pos)
                    (not (at_b_p4))

                    ; #88835: <==negation-removal== 75000 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #13102: origin
                    (not_at_b_p4)

                    ; #34475: origin
                    (at_b_p6)

                    ; #14444: <==negation-removal== 13102 (pos)
                    (not (at_b_p4))

                    ; #64885: <==negation-removal== 34475 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #13102: origin
                    (not_at_b_p4)

                    ; #59993: origin
                    (at_b_p7)

                    ; #14444: <==negation-removal== 13102 (pos)
                    (not (at_b_p4))

                    ; #38334: <==negation-removal== 59993 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #13102: origin
                    (not_at_b_p4)

                    ; #77483: origin
                    (at_b_p8)

                    ; #14444: <==negation-removal== 13102 (pos)
                    (not (at_b_p4))

                    ; #60193: <==negation-removal== 77483 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #13102: origin
                    (not_at_b_p4)

                    ; #25772: origin
                    (at_b_p9)

                    ; #14444: <==negation-removal== 13102 (pos)
                    (not (at_b_p4))

                    ; #28120: <==negation-removal== 25772 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #88835: origin
                    (not_at_b_p5)

                    ; #90001: origin
                    (at_b_p1)

                    ; #59056: <==negation-removal== 90001 (pos)
                    (not (not_at_b_p1))

                    ; #75000: <==negation-removal== 88835 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5))
        :effect (and
                    ; #52513: origin
                    (at_b_p10)

                    ; #88835: origin
                    (not_at_b_p5)

                    ; #34273: <==negation-removal== 52513 (pos)
                    (not (not_at_b_p10))

                    ; #75000: <==negation-removal== 88835 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #48148: origin
                    (at_b_p11)

                    ; #88835: origin
                    (not_at_b_p5)

                    ; #29669: <==negation-removal== 48148 (pos)
                    (not (not_at_b_p11))

                    ; #75000: <==negation-removal== 88835 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5))
        :effect (and
                    ; #21851: origin
                    (at_b_p12)

                    ; #88835: origin
                    (not_at_b_p5)

                    ; #29683: <==negation-removal== 21851 (pos)
                    (not (not_at_b_p12))

                    ; #75000: <==negation-removal== 88835 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #79083: origin
                    (at_b_p2)

                    ; #88835: origin
                    (not_at_b_p5)

                    ; #75000: <==negation-removal== 88835 (pos)
                    (not (at_b_p5))

                    ; #90493: <==negation-removal== 79083 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #18694: origin
                    (at_b_p3)

                    ; #88835: origin
                    (not_at_b_p5)

                    ; #54474: <==negation-removal== 18694 (pos)
                    (not (not_at_b_p3))

                    ; #75000: <==negation-removal== 88835 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #14444: origin
                    (at_b_p4)

                    ; #88835: origin
                    (not_at_b_p5)

                    ; #13102: <==negation-removal== 14444 (pos)
                    (not (not_at_b_p4))

                    ; #75000: <==negation-removal== 88835 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #75000: origin
                    (at_b_p5)

                    ; #88835: origin
                    (not_at_b_p5)

                    ; #75000: <==negation-removal== 88835 (pos)
                    (not (at_b_p5))

                    ; #88835: <==negation-removal== 75000 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #34475: origin
                    (at_b_p6)

                    ; #88835: origin
                    (not_at_b_p5)

                    ; #64885: <==negation-removal== 34475 (pos)
                    (not (not_at_b_p6))

                    ; #75000: <==negation-removal== 88835 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #59993: origin
                    (at_b_p7)

                    ; #88835: origin
                    (not_at_b_p5)

                    ; #38334: <==negation-removal== 59993 (pos)
                    (not (not_at_b_p7))

                    ; #75000: <==negation-removal== 88835 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #77483: origin
                    (at_b_p8)

                    ; #88835: origin
                    (not_at_b_p5)

                    ; #60193: <==negation-removal== 77483 (pos)
                    (not (not_at_b_p8))

                    ; #75000: <==negation-removal== 88835 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #25772: origin
                    (at_b_p9)

                    ; #88835: origin
                    (not_at_b_p5)

                    ; #28120: <==negation-removal== 25772 (pos)
                    (not (not_at_b_p9))

                    ; #75000: <==negation-removal== 88835 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #64885: origin
                    (not_at_b_p6)

                    ; #90001: origin
                    (at_b_p1)

                    ; #34475: <==negation-removal== 64885 (pos)
                    (not (at_b_p6))

                    ; #59056: <==negation-removal== 90001 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6))
        :effect (and
                    ; #52513: origin
                    (at_b_p10)

                    ; #64885: origin
                    (not_at_b_p6)

                    ; #34273: <==negation-removal== 52513 (pos)
                    (not (not_at_b_p10))

                    ; #34475: <==negation-removal== 64885 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6))
        :effect (and
                    ; #48148: origin
                    (at_b_p11)

                    ; #64885: origin
                    (not_at_b_p6)

                    ; #29669: <==negation-removal== 48148 (pos)
                    (not (not_at_b_p11))

                    ; #34475: <==negation-removal== 64885 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6))
        :effect (and
                    ; #21851: origin
                    (at_b_p12)

                    ; #64885: origin
                    (not_at_b_p6)

                    ; #29683: <==negation-removal== 21851 (pos)
                    (not (not_at_b_p12))

                    ; #34475: <==negation-removal== 64885 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #64885: origin
                    (not_at_b_p6)

                    ; #79083: origin
                    (at_b_p2)

                    ; #34475: <==negation-removal== 64885 (pos)
                    (not (at_b_p6))

                    ; #90493: <==negation-removal== 79083 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #18694: origin
                    (at_b_p3)

                    ; #64885: origin
                    (not_at_b_p6)

                    ; #34475: <==negation-removal== 64885 (pos)
                    (not (at_b_p6))

                    ; #54474: <==negation-removal== 18694 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #14444: origin
                    (at_b_p4)

                    ; #64885: origin
                    (not_at_b_p6)

                    ; #13102: <==negation-removal== 14444 (pos)
                    (not (not_at_b_p4))

                    ; #34475: <==negation-removal== 64885 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #64885: origin
                    (not_at_b_p6)

                    ; #75000: origin
                    (at_b_p5)

                    ; #34475: <==negation-removal== 64885 (pos)
                    (not (at_b_p6))

                    ; #88835: <==negation-removal== 75000 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #34475: origin
                    (at_b_p6)

                    ; #64885: origin
                    (not_at_b_p6)

                    ; #34475: <==negation-removal== 64885 (pos)
                    (not (at_b_p6))

                    ; #64885: <==negation-removal== 34475 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #59993: origin
                    (at_b_p7)

                    ; #64885: origin
                    (not_at_b_p6)

                    ; #34475: <==negation-removal== 64885 (pos)
                    (not (at_b_p6))

                    ; #38334: <==negation-removal== 59993 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #64885: origin
                    (not_at_b_p6)

                    ; #77483: origin
                    (at_b_p8)

                    ; #34475: <==negation-removal== 64885 (pos)
                    (not (at_b_p6))

                    ; #60193: <==negation-removal== 77483 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #25772: origin
                    (at_b_p9)

                    ; #64885: origin
                    (not_at_b_p6)

                    ; #28120: <==negation-removal== 25772 (pos)
                    (not (not_at_b_p9))

                    ; #34475: <==negation-removal== 64885 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #38334: origin
                    (not_at_b_p7)

                    ; #90001: origin
                    (at_b_p1)

                    ; #59056: <==negation-removal== 90001 (pos)
                    (not (not_at_b_p1))

                    ; #59993: <==negation-removal== 38334 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #38334: origin
                    (not_at_b_p7)

                    ; #52513: origin
                    (at_b_p10)

                    ; #34273: <==negation-removal== 52513 (pos)
                    (not (not_at_b_p10))

                    ; #59993: <==negation-removal== 38334 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_b_p7))
        :effect (and
                    ; #38334: origin
                    (not_at_b_p7)

                    ; #48148: origin
                    (at_b_p11)

                    ; #29669: <==negation-removal== 48148 (pos)
                    (not (not_at_b_p11))

                    ; #59993: <==negation-removal== 38334 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7))
        :effect (and
                    ; #21851: origin
                    (at_b_p12)

                    ; #38334: origin
                    (not_at_b_p7)

                    ; #29683: <==negation-removal== 21851 (pos)
                    (not (not_at_b_p12))

                    ; #59993: <==negation-removal== 38334 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #38334: origin
                    (not_at_b_p7)

                    ; #79083: origin
                    (at_b_p2)

                    ; #59993: <==negation-removal== 38334 (pos)
                    (not (at_b_p7))

                    ; #90493: <==negation-removal== 79083 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #18694: origin
                    (at_b_p3)

                    ; #38334: origin
                    (not_at_b_p7)

                    ; #54474: <==negation-removal== 18694 (pos)
                    (not (not_at_b_p3))

                    ; #59993: <==negation-removal== 38334 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #14444: origin
                    (at_b_p4)

                    ; #38334: origin
                    (not_at_b_p7)

                    ; #13102: <==negation-removal== 14444 (pos)
                    (not (not_at_b_p4))

                    ; #59993: <==negation-removal== 38334 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #38334: origin
                    (not_at_b_p7)

                    ; #75000: origin
                    (at_b_p5)

                    ; #59993: <==negation-removal== 38334 (pos)
                    (not (at_b_p7))

                    ; #88835: <==negation-removal== 75000 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #34475: origin
                    (at_b_p6)

                    ; #38334: origin
                    (not_at_b_p7)

                    ; #59993: <==negation-removal== 38334 (pos)
                    (not (at_b_p7))

                    ; #64885: <==negation-removal== 34475 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #38334: origin
                    (not_at_b_p7)

                    ; #59993: origin
                    (at_b_p7)

                    ; #38334: <==negation-removal== 59993 (pos)
                    (not (not_at_b_p7))

                    ; #59993: <==negation-removal== 38334 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #38334: origin
                    (not_at_b_p7)

                    ; #77483: origin
                    (at_b_p8)

                    ; #59993: <==negation-removal== 38334 (pos)
                    (not (at_b_p7))

                    ; #60193: <==negation-removal== 77483 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #25772: origin
                    (at_b_p9)

                    ; #38334: origin
                    (not_at_b_p7)

                    ; #28120: <==negation-removal== 25772 (pos)
                    (not (not_at_b_p9))

                    ; #59993: <==negation-removal== 38334 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #60193: origin
                    (not_at_b_p8)

                    ; #90001: origin
                    (at_b_p1)

                    ; #59056: <==negation-removal== 90001 (pos)
                    (not (not_at_b_p1))

                    ; #77483: <==negation-removal== 60193 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8))
        :effect (and
                    ; #52513: origin
                    (at_b_p10)

                    ; #60193: origin
                    (not_at_b_p8)

                    ; #34273: <==negation-removal== 52513 (pos)
                    (not (not_at_b_p10))

                    ; #77483: <==negation-removal== 60193 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8))
        :effect (and
                    ; #48148: origin
                    (at_b_p11)

                    ; #60193: origin
                    (not_at_b_p8)

                    ; #29669: <==negation-removal== 48148 (pos)
                    (not (not_at_b_p11))

                    ; #77483: <==negation-removal== 60193 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8))
        :effect (and
                    ; #21851: origin
                    (at_b_p12)

                    ; #60193: origin
                    (not_at_b_p8)

                    ; #29683: <==negation-removal== 21851 (pos)
                    (not (not_at_b_p12))

                    ; #77483: <==negation-removal== 60193 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #60193: origin
                    (not_at_b_p8)

                    ; #79083: origin
                    (at_b_p2)

                    ; #77483: <==negation-removal== 60193 (pos)
                    (not (at_b_p8))

                    ; #90493: <==negation-removal== 79083 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #18694: origin
                    (at_b_p3)

                    ; #60193: origin
                    (not_at_b_p8)

                    ; #54474: <==negation-removal== 18694 (pos)
                    (not (not_at_b_p3))

                    ; #77483: <==negation-removal== 60193 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #14444: origin
                    (at_b_p4)

                    ; #60193: origin
                    (not_at_b_p8)

                    ; #13102: <==negation-removal== 14444 (pos)
                    (not (not_at_b_p4))

                    ; #77483: <==negation-removal== 60193 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #60193: origin
                    (not_at_b_p8)

                    ; #75000: origin
                    (at_b_p5)

                    ; #77483: <==negation-removal== 60193 (pos)
                    (not (at_b_p8))

                    ; #88835: <==negation-removal== 75000 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #34475: origin
                    (at_b_p6)

                    ; #60193: origin
                    (not_at_b_p8)

                    ; #64885: <==negation-removal== 34475 (pos)
                    (not (not_at_b_p6))

                    ; #77483: <==negation-removal== 60193 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #59993: origin
                    (at_b_p7)

                    ; #60193: origin
                    (not_at_b_p8)

                    ; #38334: <==negation-removal== 59993 (pos)
                    (not (not_at_b_p7))

                    ; #77483: <==negation-removal== 60193 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #60193: origin
                    (not_at_b_p8)

                    ; #77483: origin
                    (at_b_p8)

                    ; #60193: <==negation-removal== 77483 (pos)
                    (not (not_at_b_p8))

                    ; #77483: <==negation-removal== 60193 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #25772: origin
                    (at_b_p9)

                    ; #60193: origin
                    (not_at_b_p8)

                    ; #28120: <==negation-removal== 25772 (pos)
                    (not (not_at_b_p9))

                    ; #77483: <==negation-removal== 60193 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #28120: origin
                    (not_at_b_p9)

                    ; #90001: origin
                    (at_b_p1)

                    ; #25772: <==negation-removal== 28120 (pos)
                    (not (at_b_p9))

                    ; #59056: <==negation-removal== 90001 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (at_b_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #28120: origin
                    (not_at_b_p9)

                    ; #52513: origin
                    (at_b_p10)

                    ; #25772: <==negation-removal== 28120 (pos)
                    (not (at_b_p9))

                    ; #34273: <==negation-removal== 52513 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9))
        :effect (and
                    ; #28120: origin
                    (not_at_b_p9)

                    ; #48148: origin
                    (at_b_p11)

                    ; #25772: <==negation-removal== 28120 (pos)
                    (not (at_b_p9))

                    ; #29669: <==negation-removal== 48148 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #21851: origin
                    (at_b_p12)

                    ; #28120: origin
                    (not_at_b_p9)

                    ; #25772: <==negation-removal== 28120 (pos)
                    (not (at_b_p9))

                    ; #29683: <==negation-removal== 21851 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #28120: origin
                    (not_at_b_p9)

                    ; #79083: origin
                    (at_b_p2)

                    ; #25772: <==negation-removal== 28120 (pos)
                    (not (at_b_p9))

                    ; #90493: <==negation-removal== 79083 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #18694: origin
                    (at_b_p3)

                    ; #28120: origin
                    (not_at_b_p9)

                    ; #25772: <==negation-removal== 28120 (pos)
                    (not (at_b_p9))

                    ; #54474: <==negation-removal== 18694 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #14444: origin
                    (at_b_p4)

                    ; #28120: origin
                    (not_at_b_p9)

                    ; #13102: <==negation-removal== 14444 (pos)
                    (not (not_at_b_p4))

                    ; #25772: <==negation-removal== 28120 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #28120: origin
                    (not_at_b_p9)

                    ; #75000: origin
                    (at_b_p5)

                    ; #25772: <==negation-removal== 28120 (pos)
                    (not (at_b_p9))

                    ; #88835: <==negation-removal== 75000 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #28120: origin
                    (not_at_b_p9)

                    ; #34475: origin
                    (at_b_p6)

                    ; #25772: <==negation-removal== 28120 (pos)
                    (not (at_b_p9))

                    ; #64885: <==negation-removal== 34475 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #28120: origin
                    (not_at_b_p9)

                    ; #59993: origin
                    (at_b_p7)

                    ; #25772: <==negation-removal== 28120 (pos)
                    (not (at_b_p9))

                    ; #38334: <==negation-removal== 59993 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #28120: origin
                    (not_at_b_p9)

                    ; #77483: origin
                    (at_b_p8)

                    ; #25772: <==negation-removal== 28120 (pos)
                    (not (at_b_p9))

                    ; #60193: <==negation-removal== 77483 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #25772: origin
                    (at_b_p9)

                    ; #28120: origin
                    (not_at_b_p9)

                    ; #25772: <==negation-removal== 28120 (pos)
                    (not (at_b_p9))

                    ; #28120: <==negation-removal== 25772 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10))
        :effect (and
                    ; #29325: origin
                    (not_at_c_p10)

                    ; #38126: origin
                    (at_c_p1)

                    ; #69067: <==negation-removal== 29325 (pos)
                    (not (at_c_p10))

                    ; #82196: <==negation-removal== 38126 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_c_p10))
        :effect (and
                    ; #29325: origin
                    (not_at_c_p10)

                    ; #69067: origin
                    (at_c_p10)

                    ; #29325: <==negation-removal== 69067 (pos)
                    (not (not_at_c_p10))

                    ; #69067: <==negation-removal== 29325 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10))
        :effect (and
                    ; #29325: origin
                    (not_at_c_p10)

                    ; #97134: origin
                    (at_c_p11)

                    ; #53608: <==negation-removal== 97134 (pos)
                    (not (not_at_c_p11))

                    ; #69067: <==negation-removal== 29325 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10))
        :effect (and
                    ; #29325: origin
                    (not_at_c_p10)

                    ; #55734: origin
                    (at_c_p12)

                    ; #51371: <==negation-removal== 55734 (pos)
                    (not (not_at_c_p12))

                    ; #69067: <==negation-removal== 29325 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_c_p10))
        :effect (and
                    ; #29325: origin
                    (not_at_c_p10)

                    ; #51444: origin
                    (at_c_p2)

                    ; #45108: <==negation-removal== 51444 (pos)
                    (not (not_at_c_p2))

                    ; #69067: <==negation-removal== 29325 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10))
        :effect (and
                    ; #29325: origin
                    (not_at_c_p10)

                    ; #87277: origin
                    (at_c_p3)

                    ; #41475: <==negation-removal== 87277 (pos)
                    (not (not_at_c_p3))

                    ; #69067: <==negation-removal== 29325 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_c_p10))
        :effect (and
                    ; #29325: origin
                    (not_at_c_p10)

                    ; #33062: origin
                    (at_c_p4)

                    ; #69067: <==negation-removal== 29325 (pos)
                    (not (at_c_p10))

                    ; #95565: <==negation-removal== 33062 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_c_p10))
        :effect (and
                    ; #29325: origin
                    (not_at_c_p10)

                    ; #67449: origin
                    (at_c_p5)

                    ; #69067: <==negation-removal== 29325 (pos)
                    (not (at_c_p10))

                    ; #85495: <==negation-removal== 67449 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_c_p10))
        :effect (and
                    ; #29325: origin
                    (not_at_c_p10)

                    ; #53814: origin
                    (at_c_p6)

                    ; #25115: <==negation-removal== 53814 (pos)
                    (not (not_at_c_p6))

                    ; #69067: <==negation-removal== 29325 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_c_p10))
        :effect (and
                    ; #29325: origin
                    (not_at_c_p10)

                    ; #79162: origin
                    (at_c_p7)

                    ; #59340: <==negation-removal== 79162 (pos)
                    (not (not_at_c_p7))

                    ; #69067: <==negation-removal== 29325 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_c_p10))
        :effect (and
                    ; #29325: origin
                    (not_at_c_p10)

                    ; #69302: origin
                    (at_c_p8)

                    ; #69067: <==negation-removal== 29325 (pos)
                    (not (at_c_p10))

                    ; #80948: <==negation-removal== 69302 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_c_p10))
        :effect (and
                    ; #13188: origin
                    (at_c_p9)

                    ; #29325: origin
                    (not_at_c_p10)

                    ; #49308: <==negation-removal== 13188 (pos)
                    (not (not_at_c_p9))

                    ; #69067: <==negation-removal== 29325 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11))
        :effect (and
                    ; #38126: origin
                    (at_c_p1)

                    ; #53608: origin
                    (not_at_c_p11)

                    ; #82196: <==negation-removal== 38126 (pos)
                    (not (not_at_c_p1))

                    ; #97134: <==negation-removal== 53608 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11))
        :effect (and
                    ; #53608: origin
                    (not_at_c_p11)

                    ; #69067: origin
                    (at_c_p10)

                    ; #29325: <==negation-removal== 69067 (pos)
                    (not (not_at_c_p10))

                    ; #97134: <==negation-removal== 53608 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_c_p11))
        :effect (and
                    ; #53608: origin
                    (not_at_c_p11)

                    ; #97134: origin
                    (at_c_p11)

                    ; #53608: <==negation-removal== 97134 (pos)
                    (not (not_at_c_p11))

                    ; #97134: <==negation-removal== 53608 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11))
        :effect (and
                    ; #53608: origin
                    (not_at_c_p11)

                    ; #55734: origin
                    (at_c_p12)

                    ; #51371: <==negation-removal== 55734 (pos)
                    (not (not_at_c_p12))

                    ; #97134: <==negation-removal== 53608 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (at_c_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #51444: origin
                    (at_c_p2)

                    ; #53608: origin
                    (not_at_c_p11)

                    ; #45108: <==negation-removal== 51444 (pos)
                    (not (not_at_c_p2))

                    ; #97134: <==negation-removal== 53608 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_c_p11))
        :effect (and
                    ; #53608: origin
                    (not_at_c_p11)

                    ; #87277: origin
                    (at_c_p3)

                    ; #41475: <==negation-removal== 87277 (pos)
                    (not (not_at_c_p3))

                    ; #97134: <==negation-removal== 53608 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #33062: origin
                    (at_c_p4)

                    ; #53608: origin
                    (not_at_c_p11)

                    ; #95565: <==negation-removal== 33062 (pos)
                    (not (not_at_c_p4))

                    ; #97134: <==negation-removal== 53608 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #53608: origin
                    (not_at_c_p11)

                    ; #67449: origin
                    (at_c_p5)

                    ; #85495: <==negation-removal== 67449 (pos)
                    (not (not_at_c_p5))

                    ; #97134: <==negation-removal== 53608 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #53608: origin
                    (not_at_c_p11)

                    ; #53814: origin
                    (at_c_p6)

                    ; #25115: <==negation-removal== 53814 (pos)
                    (not (not_at_c_p6))

                    ; #97134: <==negation-removal== 53608 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #53608: origin
                    (not_at_c_p11)

                    ; #79162: origin
                    (at_c_p7)

                    ; #59340: <==negation-removal== 79162 (pos)
                    (not (not_at_c_p7))

                    ; #97134: <==negation-removal== 53608 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #53608: origin
                    (not_at_c_p11)

                    ; #69302: origin
                    (at_c_p8)

                    ; #80948: <==negation-removal== 69302 (pos)
                    (not (not_at_c_p8))

                    ; #97134: <==negation-removal== 53608 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #13188: origin
                    (at_c_p9)

                    ; #53608: origin
                    (not_at_c_p11)

                    ; #49308: <==negation-removal== 13188 (pos)
                    (not (not_at_c_p9))

                    ; #97134: <==negation-removal== 53608 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #38126: origin
                    (at_c_p1)

                    ; #51371: origin
                    (not_at_c_p12)

                    ; #55734: <==negation-removal== 51371 (pos)
                    (not (at_c_p12))

                    ; #82196: <==negation-removal== 38126 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12))
        :effect (and
                    ; #51371: origin
                    (not_at_c_p12)

                    ; #69067: origin
                    (at_c_p10)

                    ; #29325: <==negation-removal== 69067 (pos)
                    (not (not_at_c_p10))

                    ; #55734: <==negation-removal== 51371 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #51371: origin
                    (not_at_c_p12)

                    ; #97134: origin
                    (at_c_p11)

                    ; #53608: <==negation-removal== 97134 (pos)
                    (not (not_at_c_p11))

                    ; #55734: <==negation-removal== 51371 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #51371: origin
                    (not_at_c_p12)

                    ; #55734: origin
                    (at_c_p12)

                    ; #51371: <==negation-removal== 55734 (pos)
                    (not (not_at_c_p12))

                    ; #55734: <==negation-removal== 51371 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (at_c_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #51371: origin
                    (not_at_c_p12)

                    ; #51444: origin
                    (at_c_p2)

                    ; #45108: <==negation-removal== 51444 (pos)
                    (not (not_at_c_p2))

                    ; #55734: <==negation-removal== 51371 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #51371: origin
                    (not_at_c_p12)

                    ; #87277: origin
                    (at_c_p3)

                    ; #41475: <==negation-removal== 87277 (pos)
                    (not (not_at_c_p3))

                    ; #55734: <==negation-removal== 51371 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #33062: origin
                    (at_c_p4)

                    ; #51371: origin
                    (not_at_c_p12)

                    ; #55734: <==negation-removal== 51371 (pos)
                    (not (at_c_p12))

                    ; #95565: <==negation-removal== 33062 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #51371: origin
                    (not_at_c_p12)

                    ; #67449: origin
                    (at_c_p5)

                    ; #55734: <==negation-removal== 51371 (pos)
                    (not (at_c_p12))

                    ; #85495: <==negation-removal== 67449 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12))
        :effect (and
                    ; #51371: origin
                    (not_at_c_p12)

                    ; #53814: origin
                    (at_c_p6)

                    ; #25115: <==negation-removal== 53814 (pos)
                    (not (not_at_c_p6))

                    ; #55734: <==negation-removal== 51371 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12))
        :effect (and
                    ; #51371: origin
                    (not_at_c_p12)

                    ; #79162: origin
                    (at_c_p7)

                    ; #55734: <==negation-removal== 51371 (pos)
                    (not (at_c_p12))

                    ; #59340: <==negation-removal== 79162 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12))
        :effect (and
                    ; #51371: origin
                    (not_at_c_p12)

                    ; #69302: origin
                    (at_c_p8)

                    ; #55734: <==negation-removal== 51371 (pos)
                    (not (at_c_p12))

                    ; #80948: <==negation-removal== 69302 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #13188: origin
                    (at_c_p9)

                    ; #51371: origin
                    (not_at_c_p12)

                    ; #49308: <==negation-removal== 13188 (pos)
                    (not (not_at_c_p9))

                    ; #55734: <==negation-removal== 51371 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #38126: origin
                    (at_c_p1)

                    ; #82196: origin
                    (not_at_c_p1)

                    ; #38126: <==negation-removal== 82196 (pos)
                    (not (at_c_p1))

                    ; #82196: <==negation-removal== 38126 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #69067: origin
                    (at_c_p10)

                    ; #82196: origin
                    (not_at_c_p1)

                    ; #29325: <==negation-removal== 69067 (pos)
                    (not (not_at_c_p10))

                    ; #38126: <==negation-removal== 82196 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_c_p1))
        :effect (and
                    ; #82196: origin
                    (not_at_c_p1)

                    ; #97134: origin
                    (at_c_p11)

                    ; #38126: <==negation-removal== 82196 (pos)
                    (not (at_c_p1))

                    ; #53608: <==negation-removal== 97134 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1))
        :effect (and
                    ; #55734: origin
                    (at_c_p12)

                    ; #82196: origin
                    (not_at_c_p1)

                    ; #38126: <==negation-removal== 82196 (pos)
                    (not (at_c_p1))

                    ; #51371: <==negation-removal== 55734 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #51444: origin
                    (at_c_p2)

                    ; #82196: origin
                    (not_at_c_p1)

                    ; #38126: <==negation-removal== 82196 (pos)
                    (not (at_c_p1))

                    ; #45108: <==negation-removal== 51444 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #82196: origin
                    (not_at_c_p1)

                    ; #87277: origin
                    (at_c_p3)

                    ; #38126: <==negation-removal== 82196 (pos)
                    (not (at_c_p1))

                    ; #41475: <==negation-removal== 87277 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #33062: origin
                    (at_c_p4)

                    ; #82196: origin
                    (not_at_c_p1)

                    ; #38126: <==negation-removal== 82196 (pos)
                    (not (at_c_p1))

                    ; #95565: <==negation-removal== 33062 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #67449: origin
                    (at_c_p5)

                    ; #82196: origin
                    (not_at_c_p1)

                    ; #38126: <==negation-removal== 82196 (pos)
                    (not (at_c_p1))

                    ; #85495: <==negation-removal== 67449 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #53814: origin
                    (at_c_p6)

                    ; #82196: origin
                    (not_at_c_p1)

                    ; #25115: <==negation-removal== 53814 (pos)
                    (not (not_at_c_p6))

                    ; #38126: <==negation-removal== 82196 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #79162: origin
                    (at_c_p7)

                    ; #82196: origin
                    (not_at_c_p1)

                    ; #38126: <==negation-removal== 82196 (pos)
                    (not (at_c_p1))

                    ; #59340: <==negation-removal== 79162 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #69302: origin
                    (at_c_p8)

                    ; #82196: origin
                    (not_at_c_p1)

                    ; #38126: <==negation-removal== 82196 (pos)
                    (not (at_c_p1))

                    ; #80948: <==negation-removal== 69302 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #13188: origin
                    (at_c_p9)

                    ; #82196: origin
                    (not_at_c_p1)

                    ; #38126: <==negation-removal== 82196 (pos)
                    (not (at_c_p1))

                    ; #49308: <==negation-removal== 13188 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #38126: origin
                    (at_c_p1)

                    ; #45108: origin
                    (not_at_c_p2)

                    ; #51444: <==negation-removal== 45108 (pos)
                    (not (at_c_p2))

                    ; #82196: <==negation-removal== 38126 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2))
        :effect (and
                    ; #45108: origin
                    (not_at_c_p2)

                    ; #69067: origin
                    (at_c_p10)

                    ; #29325: <==negation-removal== 69067 (pos)
                    (not (not_at_c_p10))

                    ; #51444: <==negation-removal== 45108 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2))
        :effect (and
                    ; #45108: origin
                    (not_at_c_p2)

                    ; #97134: origin
                    (at_c_p11)

                    ; #51444: <==negation-removal== 45108 (pos)
                    (not (at_c_p2))

                    ; #53608: <==negation-removal== 97134 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_c_p2))
        :effect (and
                    ; #45108: origin
                    (not_at_c_p2)

                    ; #55734: origin
                    (at_c_p12)

                    ; #51371: <==negation-removal== 55734 (pos)
                    (not (not_at_c_p12))

                    ; #51444: <==negation-removal== 45108 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #45108: origin
                    (not_at_c_p2)

                    ; #51444: origin
                    (at_c_p2)

                    ; #45108: <==negation-removal== 51444 (pos)
                    (not (not_at_c_p2))

                    ; #51444: <==negation-removal== 45108 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #45108: origin
                    (not_at_c_p2)

                    ; #87277: origin
                    (at_c_p3)

                    ; #41475: <==negation-removal== 87277 (pos)
                    (not (not_at_c_p3))

                    ; #51444: <==negation-removal== 45108 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #33062: origin
                    (at_c_p4)

                    ; #45108: origin
                    (not_at_c_p2)

                    ; #51444: <==negation-removal== 45108 (pos)
                    (not (at_c_p2))

                    ; #95565: <==negation-removal== 33062 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #45108: origin
                    (not_at_c_p2)

                    ; #67449: origin
                    (at_c_p5)

                    ; #51444: <==negation-removal== 45108 (pos)
                    (not (at_c_p2))

                    ; #85495: <==negation-removal== 67449 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #45108: origin
                    (not_at_c_p2)

                    ; #53814: origin
                    (at_c_p6)

                    ; #25115: <==negation-removal== 53814 (pos)
                    (not (not_at_c_p6))

                    ; #51444: <==negation-removal== 45108 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #45108: origin
                    (not_at_c_p2)

                    ; #79162: origin
                    (at_c_p7)

                    ; #51444: <==negation-removal== 45108 (pos)
                    (not (at_c_p2))

                    ; #59340: <==negation-removal== 79162 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #45108: origin
                    (not_at_c_p2)

                    ; #69302: origin
                    (at_c_p8)

                    ; #51444: <==negation-removal== 45108 (pos)
                    (not (at_c_p2))

                    ; #80948: <==negation-removal== 69302 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #13188: origin
                    (at_c_p9)

                    ; #45108: origin
                    (not_at_c_p2)

                    ; #49308: <==negation-removal== 13188 (pos)
                    (not (not_at_c_p9))

                    ; #51444: <==negation-removal== 45108 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #38126: origin
                    (at_c_p1)

                    ; #41475: origin
                    (not_at_c_p3)

                    ; #82196: <==negation-removal== 38126 (pos)
                    (not (not_at_c_p1))

                    ; #87277: <==negation-removal== 41475 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3))
        :effect (and
                    ; #41475: origin
                    (not_at_c_p3)

                    ; #69067: origin
                    (at_c_p10)

                    ; #29325: <==negation-removal== 69067 (pos)
                    (not (not_at_c_p10))

                    ; #87277: <==negation-removal== 41475 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3))
        :effect (and
                    ; #41475: origin
                    (not_at_c_p3)

                    ; #97134: origin
                    (at_c_p11)

                    ; #53608: <==negation-removal== 97134 (pos)
                    (not (not_at_c_p11))

                    ; #87277: <==negation-removal== 41475 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_c_p3))
        :effect (and
                    ; #41475: origin
                    (not_at_c_p3)

                    ; #55734: origin
                    (at_c_p12)

                    ; #51371: <==negation-removal== 55734 (pos)
                    (not (not_at_c_p12))

                    ; #87277: <==negation-removal== 41475 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #41475: origin
                    (not_at_c_p3)

                    ; #51444: origin
                    (at_c_p2)

                    ; #45108: <==negation-removal== 51444 (pos)
                    (not (not_at_c_p2))

                    ; #87277: <==negation-removal== 41475 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #41475: origin
                    (not_at_c_p3)

                    ; #87277: origin
                    (at_c_p3)

                    ; #41475: <==negation-removal== 87277 (pos)
                    (not (not_at_c_p3))

                    ; #87277: <==negation-removal== 41475 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #33062: origin
                    (at_c_p4)

                    ; #41475: origin
                    (not_at_c_p3)

                    ; #87277: <==negation-removal== 41475 (pos)
                    (not (at_c_p3))

                    ; #95565: <==negation-removal== 33062 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #41475: origin
                    (not_at_c_p3)

                    ; #67449: origin
                    (at_c_p5)

                    ; #85495: <==negation-removal== 67449 (pos)
                    (not (not_at_c_p5))

                    ; #87277: <==negation-removal== 41475 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #41475: origin
                    (not_at_c_p3)

                    ; #53814: origin
                    (at_c_p6)

                    ; #25115: <==negation-removal== 53814 (pos)
                    (not (not_at_c_p6))

                    ; #87277: <==negation-removal== 41475 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #41475: origin
                    (not_at_c_p3)

                    ; #79162: origin
                    (at_c_p7)

                    ; #59340: <==negation-removal== 79162 (pos)
                    (not (not_at_c_p7))

                    ; #87277: <==negation-removal== 41475 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #41475: origin
                    (not_at_c_p3)

                    ; #69302: origin
                    (at_c_p8)

                    ; #80948: <==negation-removal== 69302 (pos)
                    (not (not_at_c_p8))

                    ; #87277: <==negation-removal== 41475 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #13188: origin
                    (at_c_p9)

                    ; #41475: origin
                    (not_at_c_p3)

                    ; #49308: <==negation-removal== 13188 (pos)
                    (not (not_at_c_p9))

                    ; #87277: <==negation-removal== 41475 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #38126: origin
                    (at_c_p1)

                    ; #95565: origin
                    (not_at_c_p4)

                    ; #33062: <==negation-removal== 95565 (pos)
                    (not (at_c_p4))

                    ; #82196: <==negation-removal== 38126 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_c_p4))
        :effect (and
                    ; #69067: origin
                    (at_c_p10)

                    ; #95565: origin
                    (not_at_c_p4)

                    ; #29325: <==negation-removal== 69067 (pos)
                    (not (not_at_c_p10))

                    ; #33062: <==negation-removal== 95565 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4))
        :effect (and
                    ; #95565: origin
                    (not_at_c_p4)

                    ; #97134: origin
                    (at_c_p11)

                    ; #33062: <==negation-removal== 95565 (pos)
                    (not (at_c_p4))

                    ; #53608: <==negation-removal== 97134 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_c_p4))
        :effect (and
                    ; #55734: origin
                    (at_c_p12)

                    ; #95565: origin
                    (not_at_c_p4)

                    ; #33062: <==negation-removal== 95565 (pos)
                    (not (at_c_p4))

                    ; #51371: <==negation-removal== 55734 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #51444: origin
                    (at_c_p2)

                    ; #95565: origin
                    (not_at_c_p4)

                    ; #33062: <==negation-removal== 95565 (pos)
                    (not (at_c_p4))

                    ; #45108: <==negation-removal== 51444 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #87277: origin
                    (at_c_p3)

                    ; #95565: origin
                    (not_at_c_p4)

                    ; #33062: <==negation-removal== 95565 (pos)
                    (not (at_c_p4))

                    ; #41475: <==negation-removal== 87277 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #33062: origin
                    (at_c_p4)

                    ; #95565: origin
                    (not_at_c_p4)

                    ; #33062: <==negation-removal== 95565 (pos)
                    (not (at_c_p4))

                    ; #95565: <==negation-removal== 33062 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #67449: origin
                    (at_c_p5)

                    ; #95565: origin
                    (not_at_c_p4)

                    ; #33062: <==negation-removal== 95565 (pos)
                    (not (at_c_p4))

                    ; #85495: <==negation-removal== 67449 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #53814: origin
                    (at_c_p6)

                    ; #95565: origin
                    (not_at_c_p4)

                    ; #25115: <==negation-removal== 53814 (pos)
                    (not (not_at_c_p6))

                    ; #33062: <==negation-removal== 95565 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #79162: origin
                    (at_c_p7)

                    ; #95565: origin
                    (not_at_c_p4)

                    ; #33062: <==negation-removal== 95565 (pos)
                    (not (at_c_p4))

                    ; #59340: <==negation-removal== 79162 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #69302: origin
                    (at_c_p8)

                    ; #95565: origin
                    (not_at_c_p4)

                    ; #33062: <==negation-removal== 95565 (pos)
                    (not (at_c_p4))

                    ; #80948: <==negation-removal== 69302 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #13188: origin
                    (at_c_p9)

                    ; #95565: origin
                    (not_at_c_p4)

                    ; #33062: <==negation-removal== 95565 (pos)
                    (not (at_c_p4))

                    ; #49308: <==negation-removal== 13188 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #38126: origin
                    (at_c_p1)

                    ; #85495: origin
                    (not_at_c_p5)

                    ; #67449: <==negation-removal== 85495 (pos)
                    (not (at_c_p5))

                    ; #82196: <==negation-removal== 38126 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5))
        :effect (and
                    ; #69067: origin
                    (at_c_p10)

                    ; #85495: origin
                    (not_at_c_p5)

                    ; #29325: <==negation-removal== 69067 (pos)
                    (not (not_at_c_p10))

                    ; #67449: <==negation-removal== 85495 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #85495: origin
                    (not_at_c_p5)

                    ; #97134: origin
                    (at_c_p11)

                    ; #53608: <==negation-removal== 97134 (pos)
                    (not (not_at_c_p11))

                    ; #67449: <==negation-removal== 85495 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_c_p5))
        :effect (and
                    ; #55734: origin
                    (at_c_p12)

                    ; #85495: origin
                    (not_at_c_p5)

                    ; #51371: <==negation-removal== 55734 (pos)
                    (not (not_at_c_p12))

                    ; #67449: <==negation-removal== 85495 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #51444: origin
                    (at_c_p2)

                    ; #85495: origin
                    (not_at_c_p5)

                    ; #45108: <==negation-removal== 51444 (pos)
                    (not (not_at_c_p2))

                    ; #67449: <==negation-removal== 85495 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #85495: origin
                    (not_at_c_p5)

                    ; #87277: origin
                    (at_c_p3)

                    ; #41475: <==negation-removal== 87277 (pos)
                    (not (not_at_c_p3))

                    ; #67449: <==negation-removal== 85495 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #33062: origin
                    (at_c_p4)

                    ; #85495: origin
                    (not_at_c_p5)

                    ; #67449: <==negation-removal== 85495 (pos)
                    (not (at_c_p5))

                    ; #95565: <==negation-removal== 33062 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #67449: origin
                    (at_c_p5)

                    ; #85495: origin
                    (not_at_c_p5)

                    ; #67449: <==negation-removal== 85495 (pos)
                    (not (at_c_p5))

                    ; #85495: <==negation-removal== 67449 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #53814: origin
                    (at_c_p6)

                    ; #85495: origin
                    (not_at_c_p5)

                    ; #25115: <==negation-removal== 53814 (pos)
                    (not (not_at_c_p6))

                    ; #67449: <==negation-removal== 85495 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #79162: origin
                    (at_c_p7)

                    ; #85495: origin
                    (not_at_c_p5)

                    ; #59340: <==negation-removal== 79162 (pos)
                    (not (not_at_c_p7))

                    ; #67449: <==negation-removal== 85495 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #69302: origin
                    (at_c_p8)

                    ; #85495: origin
                    (not_at_c_p5)

                    ; #67449: <==negation-removal== 85495 (pos)
                    (not (at_c_p5))

                    ; #80948: <==negation-removal== 69302 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #13188: origin
                    (at_c_p9)

                    ; #85495: origin
                    (not_at_c_p5)

                    ; #49308: <==negation-removal== 13188 (pos)
                    (not (not_at_c_p9))

                    ; #67449: <==negation-removal== 85495 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #25115: origin
                    (not_at_c_p6)

                    ; #38126: origin
                    (at_c_p1)

                    ; #53814: <==negation-removal== 25115 (pos)
                    (not (at_c_p6))

                    ; #82196: <==negation-removal== 38126 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #25115: origin
                    (not_at_c_p6)

                    ; #69067: origin
                    (at_c_p10)

                    ; #29325: <==negation-removal== 69067 (pos)
                    (not (not_at_c_p10))

                    ; #53814: <==negation-removal== 25115 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #25115: origin
                    (not_at_c_p6)

                    ; #97134: origin
                    (at_c_p11)

                    ; #53608: <==negation-removal== 97134 (pos)
                    (not (not_at_c_p11))

                    ; #53814: <==negation-removal== 25115 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #25115: origin
                    (not_at_c_p6)

                    ; #55734: origin
                    (at_c_p12)

                    ; #51371: <==negation-removal== 55734 (pos)
                    (not (not_at_c_p12))

                    ; #53814: <==negation-removal== 25115 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #25115: origin
                    (not_at_c_p6)

                    ; #51444: origin
                    (at_c_p2)

                    ; #45108: <==negation-removal== 51444 (pos)
                    (not (not_at_c_p2))

                    ; #53814: <==negation-removal== 25115 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #25115: origin
                    (not_at_c_p6)

                    ; #87277: origin
                    (at_c_p3)

                    ; #41475: <==negation-removal== 87277 (pos)
                    (not (not_at_c_p3))

                    ; #53814: <==negation-removal== 25115 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #25115: origin
                    (not_at_c_p6)

                    ; #33062: origin
                    (at_c_p4)

                    ; #53814: <==negation-removal== 25115 (pos)
                    (not (at_c_p6))

                    ; #95565: <==negation-removal== 33062 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #25115: origin
                    (not_at_c_p6)

                    ; #67449: origin
                    (at_c_p5)

                    ; #53814: <==negation-removal== 25115 (pos)
                    (not (at_c_p6))

                    ; #85495: <==negation-removal== 67449 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #25115: origin
                    (not_at_c_p6)

                    ; #53814: origin
                    (at_c_p6)

                    ; #25115: <==negation-removal== 53814 (pos)
                    (not (not_at_c_p6))

                    ; #53814: <==negation-removal== 25115 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #25115: origin
                    (not_at_c_p6)

                    ; #79162: origin
                    (at_c_p7)

                    ; #53814: <==negation-removal== 25115 (pos)
                    (not (at_c_p6))

                    ; #59340: <==negation-removal== 79162 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #25115: origin
                    (not_at_c_p6)

                    ; #69302: origin
                    (at_c_p8)

                    ; #53814: <==negation-removal== 25115 (pos)
                    (not (at_c_p6))

                    ; #80948: <==negation-removal== 69302 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #13188: origin
                    (at_c_p9)

                    ; #25115: origin
                    (not_at_c_p6)

                    ; #49308: <==negation-removal== 13188 (pos)
                    (not (not_at_c_p9))

                    ; #53814: <==negation-removal== 25115 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #38126: origin
                    (at_c_p1)

                    ; #59340: origin
                    (not_at_c_p7)

                    ; #79162: <==negation-removal== 59340 (pos)
                    (not (at_c_p7))

                    ; #82196: <==negation-removal== 38126 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7))
        :effect (and
                    ; #59340: origin
                    (not_at_c_p7)

                    ; #69067: origin
                    (at_c_p10)

                    ; #29325: <==negation-removal== 69067 (pos)
                    (not (not_at_c_p10))

                    ; #79162: <==negation-removal== 59340 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7))
        :effect (and
                    ; #59340: origin
                    (not_at_c_p7)

                    ; #97134: origin
                    (at_c_p11)

                    ; #53608: <==negation-removal== 97134 (pos)
                    (not (not_at_c_p11))

                    ; #79162: <==negation-removal== 59340 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7))
        :effect (and
                    ; #55734: origin
                    (at_c_p12)

                    ; #59340: origin
                    (not_at_c_p7)

                    ; #51371: <==negation-removal== 55734 (pos)
                    (not (not_at_c_p12))

                    ; #79162: <==negation-removal== 59340 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #51444: origin
                    (at_c_p2)

                    ; #59340: origin
                    (not_at_c_p7)

                    ; #45108: <==negation-removal== 51444 (pos)
                    (not (not_at_c_p2))

                    ; #79162: <==negation-removal== 59340 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #59340: origin
                    (not_at_c_p7)

                    ; #87277: origin
                    (at_c_p3)

                    ; #41475: <==negation-removal== 87277 (pos)
                    (not (not_at_c_p3))

                    ; #79162: <==negation-removal== 59340 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #33062: origin
                    (at_c_p4)

                    ; #59340: origin
                    (not_at_c_p7)

                    ; #79162: <==negation-removal== 59340 (pos)
                    (not (at_c_p7))

                    ; #95565: <==negation-removal== 33062 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #59340: origin
                    (not_at_c_p7)

                    ; #67449: origin
                    (at_c_p5)

                    ; #79162: <==negation-removal== 59340 (pos)
                    (not (at_c_p7))

                    ; #85495: <==negation-removal== 67449 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #53814: origin
                    (at_c_p6)

                    ; #59340: origin
                    (not_at_c_p7)

                    ; #25115: <==negation-removal== 53814 (pos)
                    (not (not_at_c_p6))

                    ; #79162: <==negation-removal== 59340 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #59340: origin
                    (not_at_c_p7)

                    ; #79162: origin
                    (at_c_p7)

                    ; #59340: <==negation-removal== 79162 (pos)
                    (not (not_at_c_p7))

                    ; #79162: <==negation-removal== 59340 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #59340: origin
                    (not_at_c_p7)

                    ; #69302: origin
                    (at_c_p8)

                    ; #79162: <==negation-removal== 59340 (pos)
                    (not (at_c_p7))

                    ; #80948: <==negation-removal== 69302 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #13188: origin
                    (at_c_p9)

                    ; #59340: origin
                    (not_at_c_p7)

                    ; #49308: <==negation-removal== 13188 (pos)
                    (not (not_at_c_p9))

                    ; #79162: <==negation-removal== 59340 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #38126: origin
                    (at_c_p1)

                    ; #80948: origin
                    (not_at_c_p8)

                    ; #69302: <==negation-removal== 80948 (pos)
                    (not (at_c_p8))

                    ; #82196: <==negation-removal== 38126 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8))
        :effect (and
                    ; #69067: origin
                    (at_c_p10)

                    ; #80948: origin
                    (not_at_c_p8)

                    ; #29325: <==negation-removal== 69067 (pos)
                    (not (not_at_c_p10))

                    ; #69302: <==negation-removal== 80948 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #80948: origin
                    (not_at_c_p8)

                    ; #97134: origin
                    (at_c_p11)

                    ; #53608: <==negation-removal== 97134 (pos)
                    (not (not_at_c_p11))

                    ; #69302: <==negation-removal== 80948 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #55734: origin
                    (at_c_p12)

                    ; #80948: origin
                    (not_at_c_p8)

                    ; #51371: <==negation-removal== 55734 (pos)
                    (not (not_at_c_p12))

                    ; #69302: <==negation-removal== 80948 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #51444: origin
                    (at_c_p2)

                    ; #80948: origin
                    (not_at_c_p8)

                    ; #45108: <==negation-removal== 51444 (pos)
                    (not (not_at_c_p2))

                    ; #69302: <==negation-removal== 80948 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #80948: origin
                    (not_at_c_p8)

                    ; #87277: origin
                    (at_c_p3)

                    ; #41475: <==negation-removal== 87277 (pos)
                    (not (not_at_c_p3))

                    ; #69302: <==negation-removal== 80948 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #33062: origin
                    (at_c_p4)

                    ; #80948: origin
                    (not_at_c_p8)

                    ; #69302: <==negation-removal== 80948 (pos)
                    (not (at_c_p8))

                    ; #95565: <==negation-removal== 33062 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #67449: origin
                    (at_c_p5)

                    ; #80948: origin
                    (not_at_c_p8)

                    ; #69302: <==negation-removal== 80948 (pos)
                    (not (at_c_p8))

                    ; #85495: <==negation-removal== 67449 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #53814: origin
                    (at_c_p6)

                    ; #80948: origin
                    (not_at_c_p8)

                    ; #25115: <==negation-removal== 53814 (pos)
                    (not (not_at_c_p6))

                    ; #69302: <==negation-removal== 80948 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #79162: origin
                    (at_c_p7)

                    ; #80948: origin
                    (not_at_c_p8)

                    ; #59340: <==negation-removal== 79162 (pos)
                    (not (not_at_c_p7))

                    ; #69302: <==negation-removal== 80948 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #69302: origin
                    (at_c_p8)

                    ; #80948: origin
                    (not_at_c_p8)

                    ; #69302: <==negation-removal== 80948 (pos)
                    (not (at_c_p8))

                    ; #80948: <==negation-removal== 69302 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #13188: origin
                    (at_c_p9)

                    ; #80948: origin
                    (not_at_c_p8)

                    ; #49308: <==negation-removal== 13188 (pos)
                    (not (not_at_c_p9))

                    ; #69302: <==negation-removal== 80948 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #38126: origin
                    (at_c_p1)

                    ; #49308: origin
                    (not_at_c_p9)

                    ; #13188: <==negation-removal== 49308 (pos)
                    (not (at_c_p9))

                    ; #82196: <==negation-removal== 38126 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #49308: origin
                    (not_at_c_p9)

                    ; #69067: origin
                    (at_c_p10)

                    ; #13188: <==negation-removal== 49308 (pos)
                    (not (at_c_p9))

                    ; #29325: <==negation-removal== 69067 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9))
        :effect (and
                    ; #49308: origin
                    (not_at_c_p9)

                    ; #97134: origin
                    (at_c_p11)

                    ; #13188: <==negation-removal== 49308 (pos)
                    (not (at_c_p9))

                    ; #53608: <==negation-removal== 97134 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #49308: origin
                    (not_at_c_p9)

                    ; #55734: origin
                    (at_c_p12)

                    ; #13188: <==negation-removal== 49308 (pos)
                    (not (at_c_p9))

                    ; #51371: <==negation-removal== 55734 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #49308: origin
                    (not_at_c_p9)

                    ; #51444: origin
                    (at_c_p2)

                    ; #13188: <==negation-removal== 49308 (pos)
                    (not (at_c_p9))

                    ; #45108: <==negation-removal== 51444 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #49308: origin
                    (not_at_c_p9)

                    ; #87277: origin
                    (at_c_p3)

                    ; #13188: <==negation-removal== 49308 (pos)
                    (not (at_c_p9))

                    ; #41475: <==negation-removal== 87277 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #33062: origin
                    (at_c_p4)

                    ; #49308: origin
                    (not_at_c_p9)

                    ; #13188: <==negation-removal== 49308 (pos)
                    (not (at_c_p9))

                    ; #95565: <==negation-removal== 33062 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #49308: origin
                    (not_at_c_p9)

                    ; #67449: origin
                    (at_c_p5)

                    ; #13188: <==negation-removal== 49308 (pos)
                    (not (at_c_p9))

                    ; #85495: <==negation-removal== 67449 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #49308: origin
                    (not_at_c_p9)

                    ; #53814: origin
                    (at_c_p6)

                    ; #13188: <==negation-removal== 49308 (pos)
                    (not (at_c_p9))

                    ; #25115: <==negation-removal== 53814 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #49308: origin
                    (not_at_c_p9)

                    ; #79162: origin
                    (at_c_p7)

                    ; #13188: <==negation-removal== 49308 (pos)
                    (not (at_c_p9))

                    ; #59340: <==negation-removal== 79162 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #49308: origin
                    (not_at_c_p9)

                    ; #69302: origin
                    (at_c_p8)

                    ; #13188: <==negation-removal== 49308 (pos)
                    (not (at_c_p9))

                    ; #80948: <==negation-removal== 69302 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #13188: origin
                    (at_c_p9)

                    ; #49308: origin
                    (not_at_c_p9)

                    ; #13188: <==negation-removal== 49308 (pos)
                    (not (at_c_p9))

                    ; #49308: <==negation-removal== 13188 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #18995: <==commonly_known== 88138 (neg)
                    (Pa_checked_p10)

                    ; #19342: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #21823: <==closure== 19342 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #32880: <==commonly_known== 50202 (pos)
                    (Bb_checked_p10)

                    ; #46023: <==commonly_known== 50202 (pos)
                    (Ba_checked_p10)

                    ; #50202: origin
                    (checked_p10)

                    ; #62339: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #63161: <==commonly_known== 88138 (neg)
                    (Pc_checked_p10)

                    ; #68305: <==commonly_known== 50202 (pos)
                    (Bc_checked_p10)

                    ; #71174: <==commonly_known== 88138 (neg)
                    (Pb_checked_p10)

                    ; #84193: <==closure== 62339 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #14338: <==uncertain_firing== 21823 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #23823: <==negation-removal== 62339 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #25931: <==negation-removal== 18995 (pos)
                    (not (Ba_not_checked_p10))

                    ; #26427: <==negation-removal== 84193 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #30525: <==negation-removal== 19342 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #32915: <==negation-removal== 63161 (pos)
                    (not (Bc_not_checked_p10))

                    ; #40059: <==negation-removal== 46023 (pos)
                    (not (Pa_not_checked_p10))

                    ; #41341: <==negation-removal== 71174 (pos)
                    (not (Bb_not_checked_p10))

                    ; #44210: <==negation-removal== 32880 (pos)
                    (not (Pb_not_checked_p10))

                    ; #57774: <==negation-removal== 21823 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #59585: <==uncertain_firing== 84193 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #66928: <==negation-removal== 68305 (pos)
                    (not (Pc_not_checked_p10))

                    ; #69591: <==uncertain_firing== 62339 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #78394: <==uncertain_firing== 19342 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #88138: <==negation-removal== 50202 (pos)
                    (not (not_checked_p10))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #11086: <==commonly_known== 26538 (neg)
                    (Pc_checked_p11)

                    ; #18575: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #40035: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #46241: <==commonly_known== 26538 (neg)
                    (Pa_checked_p11)

                    ; #63788: <==closure== 40035 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #66975: <==commonly_known== 26538 (neg)
                    (Pb_checked_p11)

                    ; #70918: <==commonly_known== 94477 (pos)
                    (Bb_checked_p11)

                    ; #72532: <==commonly_known== 94477 (pos)
                    (Bc_checked_p11)

                    ; #86243: <==closure== 18575 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #88043: <==commonly_known== 94477 (pos)
                    (Ba_checked_p11)

                    ; #94477: origin
                    (checked_p11)

                    ; #10780: <==negation-removal== 88043 (pos)
                    (not (Pa_not_checked_p11))

                    ; #12251: <==negation-removal== 40035 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #17638: <==uncertain_firing== 18575 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #24244: <==negation-removal== 86243 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #24578: <==uncertain_firing== 63788 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #25256: <==uncertain_firing== 86243 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #26538: <==negation-removal== 94477 (pos)
                    (not (not_checked_p11))

                    ; #27390: <==negation-removal== 18575 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #33775: <==negation-removal== 66975 (pos)
                    (not (Bb_not_checked_p11))

                    ; #37415: <==negation-removal== 11086 (pos)
                    (not (Bc_not_checked_p11))

                    ; #37589: <==negation-removal== 72532 (pos)
                    (not (Pc_not_checked_p11))

                    ; #57133: <==negation-removal== 46241 (pos)
                    (not (Ba_not_checked_p11))

                    ; #68720: <==negation-removal== 63788 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #80259: <==uncertain_firing== 40035 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #87990: <==negation-removal== 70918 (pos)
                    (not (Pb_not_checked_p11))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #18990: <==commonly_known== 47121 (neg)
                    (Pb_checked_p12)

                    ; #24233: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #24489: <==commonly_known== 30351 (pos)
                    (Ba_checked_p12)

                    ; #30351: origin
                    (checked_p12)

                    ; #31915: <==commonly_known== 47121 (neg)
                    (Pc_checked_p12)

                    ; #36159: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #46320: <==commonly_known== 30351 (pos)
                    (Bc_checked_p12)

                    ; #48070: <==commonly_known== 47121 (neg)
                    (Pa_checked_p12)

                    ; #53818: <==closure== 24233 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #58340: <==commonly_known== 30351 (pos)
                    (Bb_checked_p12)

                    ; #77913: <==closure== 36159 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #18161: <==negation-removal== 48070 (pos)
                    (not (Ba_not_checked_p12))

                    ; #46350: <==negation-removal== 53818 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #46688: <==negation-removal== 18990 (pos)
                    (not (Bb_not_checked_p12))

                    ; #47121: <==negation-removal== 30351 (pos)
                    (not (not_checked_p12))

                    ; #48717: <==uncertain_firing== 36159 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #51942: <==negation-removal== 46320 (pos)
                    (not (Pc_not_checked_p12))

                    ; #55081: <==negation-removal== 24233 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #56003: <==negation-removal== 36159 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #65461: <==uncertain_firing== 53818 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #69041: <==negation-removal== 24489 (pos)
                    (not (Pa_not_checked_p12))

                    ; #82282: <==uncertain_firing== 24233 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #83980: <==negation-removal== 58340 (pos)
                    (not (Pb_not_checked_p12))

                    ; #85898: <==negation-removal== 31915 (pos)
                    (not (Bc_not_checked_p12))

                    ; #87969: <==negation-removal== 77913 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #89501: <==uncertain_firing== 77913 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12637: <==commonly_known== 30746 (neg)
                    (Pb_checked_p1)

                    ; #18020: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #30289: <==commonly_known== 83079 (pos)
                    (Bb_checked_p1)

                    ; #53286: <==closure== 60187 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #59644: <==commonly_known== 30746 (neg)
                    (Pc_checked_p1)

                    ; #60187: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #61011: <==commonly_known== 30746 (neg)
                    (Pa_checked_p1)

                    ; #66953: <==commonly_known== 83079 (pos)
                    (Bc_checked_p1)

                    ; #69975: <==commonly_known== 83079 (pos)
                    (Ba_checked_p1)

                    ; #81639: <==closure== 18020 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #83079: origin
                    (checked_p1)

                    ; #12723: <==uncertain_firing== 60187 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #17359: <==uncertain_firing== 18020 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #18477: <==negation-removal== 61011 (pos)
                    (not (Ba_not_checked_p1))

                    ; #19305: <==negation-removal== 60187 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #25783: <==negation-removal== 59644 (pos)
                    (not (Bc_not_checked_p1))

                    ; #30746: <==negation-removal== 83079 (pos)
                    (not (not_checked_p1))

                    ; #37396: <==negation-removal== 69975 (pos)
                    (not (Pa_not_checked_p1))

                    ; #37851: <==negation-removal== 66953 (pos)
                    (not (Pc_not_checked_p1))

                    ; #40063: <==negation-removal== 81639 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #47856: <==negation-removal== 18020 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #69581: <==negation-removal== 53286 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #83652: <==negation-removal== 30289 (pos)
                    (not (Pb_not_checked_p1))

                    ; #83921: <==uncertain_firing== 53286 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #91038: <==uncertain_firing== 81639 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #91783: <==negation-removal== 12637 (pos)
                    (not (Bb_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #23223: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #31750: <==commonly_known== 78757 (pos)
                    (Bb_checked_p2)

                    ; #33927: <==commonly_known== 78757 (pos)
                    (Bc_checked_p2)

                    ; #36648: <==commonly_known== 80257 (neg)
                    (Pc_checked_p2)

                    ; #42104: <==closure== 87779 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #47772: <==commonly_known== 80257 (neg)
                    (Pb_checked_p2)

                    ; #50787: <==commonly_known== 78757 (pos)
                    (Ba_checked_p2)

                    ; #59381: <==closure== 23223 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #75084: <==commonly_known== 80257 (neg)
                    (Pa_checked_p2)

                    ; #78757: origin
                    (checked_p2)

                    ; #87779: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #12411: <==negation-removal== 50787 (pos)
                    (not (Pa_not_checked_p2))

                    ; #27929: <==negation-removal== 36648 (pos)
                    (not (Bc_not_checked_p2))

                    ; #41507: <==negation-removal== 23223 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #46926: <==negation-removal== 31750 (pos)
                    (not (Pb_not_checked_p2))

                    ; #52692: <==negation-removal== 47772 (pos)
                    (not (Bb_not_checked_p2))

                    ; #52867: <==negation-removal== 87779 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #53184: <==negation-removal== 42104 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #53364: <==uncertain_firing== 42104 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #54027: <==negation-removal== 75084 (pos)
                    (not (Ba_not_checked_p2))

                    ; #54435: <==negation-removal== 59381 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #57625: <==uncertain_firing== 59381 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #76870: <==uncertain_firing== 87779 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #77382: <==uncertain_firing== 23223 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #80257: <==negation-removal== 78757 (pos)
                    (not (not_checked_p2))

                    ; #81928: <==negation-removal== 33927 (pos)
                    (not (Pc_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #14021: <==commonly_known== 62151 (pos)
                    (Bb_checked_p3)

                    ; #22824: <==closure== 48895 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #26835: <==commonly_known== 74809 (neg)
                    (Pb_checked_p3)

                    ; #41990: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #44982: <==commonly_known== 74809 (neg)
                    (Pc_checked_p3)

                    ; #48895: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #62151: origin
                    (checked_p3)

                    ; #72805: <==commonly_known== 62151 (pos)
                    (Ba_checked_p3)

                    ; #73631: <==closure== 41990 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #82149: <==commonly_known== 62151 (pos)
                    (Bc_checked_p3)

                    ; #87690: <==commonly_known== 74809 (neg)
                    (Pa_checked_p3)

                    ; #10110: <==uncertain_firing== 73631 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #11854: <==uncertain_firing== 41990 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #44205: <==negation-removal== 87690 (pos)
                    (not (Ba_not_checked_p3))

                    ; #47891: <==negation-removal== 44982 (pos)
                    (not (Bc_not_checked_p3))

                    ; #50873: <==negation-removal== 48895 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #53974: <==negation-removal== 26835 (pos)
                    (not (Bb_not_checked_p3))

                    ; #64909: <==negation-removal== 14021 (pos)
                    (not (Pb_not_checked_p3))

                    ; #69214: <==negation-removal== 41990 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #69547: <==uncertain_firing== 48895 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #74809: <==negation-removal== 62151 (pos)
                    (not (not_checked_p3))

                    ; #75893: <==uncertain_firing== 22824 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #81265: <==negation-removal== 73631 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #85754: <==negation-removal== 22824 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #90249: <==negation-removal== 72805 (pos)
                    (not (Pa_not_checked_p3))

                    ; #90765: <==negation-removal== 82149 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #16756: <==commonly_known== 74400 (pos)
                    (Ba_checked_p4)

                    ; #17837: <==commonly_known== 25453 (neg)
                    (Pa_checked_p4)

                    ; #22958: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #27515: <==closure== 22958 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #31184: <==commonly_known== 25453 (neg)
                    (Pb_checked_p4)

                    ; #39754: <==commonly_known== 74400 (pos)
                    (Bb_checked_p4)

                    ; #40494: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #60703: <==commonly_known== 74400 (pos)
                    (Bc_checked_p4)

                    ; #63305: <==closure== 40494 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #74400: origin
                    (checked_p4)

                    ; #89176: <==commonly_known== 25453 (neg)
                    (Pc_checked_p4)

                    ; #10812: <==negation-removal== 63305 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #21124: <==negation-removal== 39754 (pos)
                    (not (Pb_not_checked_p4))

                    ; #24313: <==negation-removal== 60703 (pos)
                    (not (Pc_not_checked_p4))

                    ; #25453: <==negation-removal== 74400 (pos)
                    (not (not_checked_p4))

                    ; #34481: <==uncertain_firing== 22958 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #38279: <==negation-removal== 27515 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #40723: <==negation-removal== 40494 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #46485: <==uncertain_firing== 27515 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #48090: <==uncertain_firing== 63305 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #52244: <==negation-removal== 17837 (pos)
                    (not (Ba_not_checked_p4))

                    ; #57331: <==negation-removal== 22958 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #63341: <==uncertain_firing== 40494 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #68635: <==negation-removal== 89176 (pos)
                    (not (Bc_not_checked_p4))

                    ; #71171: <==negation-removal== 16756 (pos)
                    (not (Pa_not_checked_p4))

                    ; #92219: <==negation-removal== 31184 (pos)
                    (not (Bb_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12365: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #24181: <==closure== 69716 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #30528: <==commonly_known== 62963 (neg)
                    (Pa_checked_p5)

                    ; #43183: <==commonly_known== 55951 (pos)
                    (Ba_checked_p5)

                    ; #46945: <==commonly_known== 62963 (neg)
                    (Pc_checked_p5)

                    ; #55951: origin
                    (checked_p5)

                    ; #57434: <==closure== 12365 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #69716: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #70596: <==commonly_known== 55951 (pos)
                    (Bb_checked_p5)

                    ; #79515: <==commonly_known== 55951 (pos)
                    (Bc_checked_p5)

                    ; #85291: <==commonly_known== 62963 (neg)
                    (Pb_checked_p5)

                    ; #14124: <==negation-removal== 85291 (pos)
                    (not (Bb_not_checked_p5))

                    ; #22087: <==uncertain_firing== 69716 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #23095: <==negation-removal== 69716 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #26914: <==negation-removal== 70596 (pos)
                    (not (Pb_not_checked_p5))

                    ; #28572: <==negation-removal== 43183 (pos)
                    (not (Pa_not_checked_p5))

                    ; #28850: <==negation-removal== 57434 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #30578: <==uncertain_firing== 24181 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #44128: <==negation-removal== 79515 (pos)
                    (not (Pc_not_checked_p5))

                    ; #45542: <==negation-removal== 24181 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #52308: <==negation-removal== 12365 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #60581: <==uncertain_firing== 12365 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #62963: <==negation-removal== 55951 (pos)
                    (not (not_checked_p5))

                    ; #63510: <==uncertain_firing== 57434 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #78772: <==negation-removal== 30528 (pos)
                    (not (Ba_not_checked_p5))

                    ; #93672: <==negation-removal== 46945 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #18989: <==closure== 39467 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #39467: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #40627: origin
                    (checked_p6)

                    ; #60937: <==commonly_known== 40627 (pos)
                    (Bb_checked_p6)

                    ; #67775: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #72710: <==commonly_known== 40627 (pos)
                    (Bc_checked_p6)

                    ; #73137: <==commonly_known== 72751 (neg)
                    (Pb_checked_p6)

                    ; #75776: <==closure== 67775 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #79338: <==commonly_known== 72751 (neg)
                    (Pc_checked_p6)

                    ; #80874: <==commonly_known== 72751 (neg)
                    (Pa_checked_p6)

                    ; #86601: <==commonly_known== 40627 (pos)
                    (Ba_checked_p6)

                    ; #10394: <==uncertain_firing== 39467 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #13461: <==negation-removal== 73137 (pos)
                    (not (Bb_not_checked_p6))

                    ; #22343: <==negation-removal== 75776 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #34665: <==uncertain_firing== 18989 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #39578: <==negation-removal== 72710 (pos)
                    (not (Pc_not_checked_p6))

                    ; #39690: <==negation-removal== 67775 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #41158: <==negation-removal== 86601 (pos)
                    (not (Pa_not_checked_p6))

                    ; #41482: <==uncertain_firing== 67775 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #41610: <==negation-removal== 39467 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #49872: <==negation-removal== 79338 (pos)
                    (not (Bc_not_checked_p6))

                    ; #51186: <==negation-removal== 80874 (pos)
                    (not (Ba_not_checked_p6))

                    ; #55451: <==negation-removal== 18989 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #62339: <==uncertain_firing== 75776 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #72751: <==negation-removal== 40627 (pos)
                    (not (not_checked_p6))

                    ; #73311: <==negation-removal== 60937 (pos)
                    (not (Pb_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10452: <==commonly_known== 52740 (neg)
                    (Pb_checked_p7)

                    ; #18429: <==commonly_known== 52740 (neg)
                    (Pa_checked_p7)

                    ; #22550: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #26449: <==commonly_known== 52740 (neg)
                    (Pc_checked_p7)

                    ; #26746: <==commonly_known== 36088 (pos)
                    (Bb_checked_p7)

                    ; #34647: <==closure== 40846 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #36088: origin
                    (checked_p7)

                    ; #40846: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #65765: <==closure== 22550 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #68640: <==commonly_known== 36088 (pos)
                    (Ba_checked_p7)

                    ; #70966: <==commonly_known== 36088 (pos)
                    (Bc_checked_p7)

                    ; #37016: <==negation-removal== 18429 (pos)
                    (not (Ba_not_checked_p7))

                    ; #39457: <==uncertain_firing== 40846 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #42172: <==negation-removal== 26746 (pos)
                    (not (Pb_not_checked_p7))

                    ; #48110: <==negation-removal== 68640 (pos)
                    (not (Pa_not_checked_p7))

                    ; #48898: <==negation-removal== 65765 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #50619: <==uncertain_firing== 22550 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #52740: <==negation-removal== 36088 (pos)
                    (not (not_checked_p7))

                    ; #57756: <==negation-removal== 22550 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #66505: <==negation-removal== 40846 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #76739: <==uncertain_firing== 34647 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #78288: <==uncertain_firing== 65765 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #83198: <==negation-removal== 10452 (pos)
                    (not (Bb_not_checked_p7))

                    ; #83630: <==negation-removal== 34647 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #87184: <==negation-removal== 26449 (pos)
                    (not (Bc_not_checked_p7))

                    ; #89914: <==negation-removal== 70966 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10426: <==commonly_known== 70725 (neg)
                    (Pb_checked_p8)

                    ; #15857: <==commonly_known== 27922 (pos)
                    (Bc_checked_p8)

                    ; #27922: origin
                    (checked_p8)

                    ; #30538: <==commonly_known== 27922 (pos)
                    (Bb_checked_p8)

                    ; #36145: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #50054: <==closure== 36145 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #56345: <==commonly_known== 70725 (neg)
                    (Pc_checked_p8)

                    ; #62603: <==commonly_known== 70725 (neg)
                    (Pa_checked_p8)

                    ; #80476: <==closure== 89856 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #89856: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #91856: <==commonly_known== 27922 (pos)
                    (Ba_checked_p8)

                    ; #16689: <==uncertain_firing== 50054 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #17727: <==negation-removal== 10426 (pos)
                    (not (Bb_not_checked_p8))

                    ; #22066: <==uncertain_firing== 89856 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #35140: <==negation-removal== 80476 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #36585: <==negation-removal== 62603 (pos)
                    (not (Ba_not_checked_p8))

                    ; #44428: <==negation-removal== 36145 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #47481: <==negation-removal== 50054 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #58021: <==negation-removal== 89856 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #69115: <==negation-removal== 30538 (pos)
                    (not (Pb_not_checked_p8))

                    ; #70725: <==negation-removal== 27922 (pos)
                    (not (not_checked_p8))

                    ; #72107: <==negation-removal== 56345 (pos)
                    (not (Bc_not_checked_p8))

                    ; #72493: <==uncertain_firing== 80476 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #82099: <==uncertain_firing== 36145 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #82147: <==negation-removal== 15857 (pos)
                    (not (Pc_not_checked_p8))

                    ; #96440: <==negation-removal== 91856 (pos)
                    (not (Pa_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #21652: <==commonly_known== 27475 (pos)
                    (Bc_checked_p9)

                    ; #27475: origin
                    (checked_p9)

                    ; #31023: <==commonly_known== 63377 (neg)
                    (Pa_checked_p9)

                    ; #42415: <==commonly_known== 63377 (neg)
                    (Pb_checked_p9)

                    ; #44083: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #48994: <==commonly_known== 27475 (pos)
                    (Bb_checked_p9)

                    ; #68663: <==closure== 69460 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #69460: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #79732: <==closure== 44083 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #79797: <==commonly_known== 63377 (neg)
                    (Pc_checked_p9)

                    ; #97744: <==commonly_known== 27475 (pos)
                    (Ba_checked_p9)

                    ; #23817: <==uncertain_firing== 79732 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #25892: <==negation-removal== 97744 (pos)
                    (not (Pa_not_checked_p9))

                    ; #29868: <==uncertain_firing== 69460 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #32802: <==uncertain_firing== 44083 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #35064: <==negation-removal== 68663 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #45131: <==negation-removal== 44083 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #45251: <==negation-removal== 48994 (pos)
                    (not (Pb_not_checked_p9))

                    ; #52236: <==negation-removal== 42415 (pos)
                    (not (Bb_not_checked_p9))

                    ; #54204: <==negation-removal== 79732 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #57977: <==uncertain_firing== 68663 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #60591: <==negation-removal== 79797 (pos)
                    (not (Bc_not_checked_p9))

                    ; #63377: <==negation-removal== 27475 (pos)
                    (not (not_checked_p9))

                    ; #65949: <==negation-removal== 21652 (pos)
                    (not (Pc_not_checked_p9))

                    ; #69701: <==negation-removal== 31023 (pos)
                    (not (Ba_not_checked_p9))

                    ; #77135: <==negation-removal== 69460 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #18995: <==commonly_known== 88138 (neg)
                    (Pa_checked_p10)

                    ; #25175: <==closure== 77994 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #32880: <==commonly_known== 50202 (pos)
                    (Bb_checked_p10)

                    ; #33387: <==closure== 39717 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #39717: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #46023: <==commonly_known== 50202 (pos)
                    (Ba_checked_p10)

                    ; #50202: origin
                    (checked_p10)

                    ; #63161: <==commonly_known== 88138 (neg)
                    (Pc_checked_p10)

                    ; #68305: <==commonly_known== 50202 (pos)
                    (Bc_checked_p10)

                    ; #71174: <==commonly_known== 88138 (neg)
                    (Pb_checked_p10)

                    ; #77994: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #25931: <==negation-removal== 18995 (pos)
                    (not (Ba_not_checked_p10))

                    ; #32915: <==negation-removal== 63161 (pos)
                    (not (Bc_not_checked_p10))

                    ; #40059: <==negation-removal== 46023 (pos)
                    (not (Pa_not_checked_p10))

                    ; #41341: <==negation-removal== 71174 (pos)
                    (not (Bb_not_checked_p10))

                    ; #43980: <==negation-removal== 33387 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #44210: <==negation-removal== 32880 (pos)
                    (not (Pb_not_checked_p10))

                    ; #46550: <==uncertain_firing== 25175 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #53413: <==uncertain_firing== 33387 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #53623: <==negation-removal== 25175 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #66928: <==negation-removal== 68305 (pos)
                    (not (Pc_not_checked_p10))

                    ; #79602: <==uncertain_firing== 77994 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #84054: <==negation-removal== 39717 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #88138: <==negation-removal== 50202 (pos)
                    (not (not_checked_p10))

                    ; #91967: <==negation-removal== 77994 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #93714: <==uncertain_firing== 39717 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #11086: <==commonly_known== 26538 (neg)
                    (Pc_checked_p11)

                    ; #11662: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #16040: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #46241: <==commonly_known== 26538 (neg)
                    (Pa_checked_p11)

                    ; #48915: <==closure== 16040 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #66975: <==commonly_known== 26538 (neg)
                    (Pb_checked_p11)

                    ; #70918: <==commonly_known== 94477 (pos)
                    (Bb_checked_p11)

                    ; #72532: <==commonly_known== 94477 (pos)
                    (Bc_checked_p11)

                    ; #86299: <==closure== 11662 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #88043: <==commonly_known== 94477 (pos)
                    (Ba_checked_p11)

                    ; #94477: origin
                    (checked_p11)

                    ; #10780: <==negation-removal== 88043 (pos)
                    (not (Pa_not_checked_p11))

                    ; #13076: <==negation-removal== 11662 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #21579: <==negation-removal== 86299 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #26538: <==negation-removal== 94477 (pos)
                    (not (not_checked_p11))

                    ; #33775: <==negation-removal== 66975 (pos)
                    (not (Bb_not_checked_p11))

                    ; #37415: <==negation-removal== 11086 (pos)
                    (not (Bc_not_checked_p11))

                    ; #37589: <==negation-removal== 72532 (pos)
                    (not (Pc_not_checked_p11))

                    ; #44684: <==negation-removal== 16040 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #49492: <==negation-removal== 48915 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #54838: <==uncertain_firing== 86299 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #57133: <==negation-removal== 46241 (pos)
                    (not (Ba_not_checked_p11))

                    ; #58905: <==uncertain_firing== 48915 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #65811: <==uncertain_firing== 11662 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #66318: <==uncertain_firing== 16040 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #87990: <==negation-removal== 70918 (pos)
                    (not (Pb_not_checked_p11))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #18990: <==commonly_known== 47121 (neg)
                    (Pb_checked_p12)

                    ; #24489: <==commonly_known== 30351 (pos)
                    (Ba_checked_p12)

                    ; #30351: origin
                    (checked_p12)

                    ; #31915: <==commonly_known== 47121 (neg)
                    (Pc_checked_p12)

                    ; #38990: <==closure== 57169 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #46320: <==commonly_known== 30351 (pos)
                    (Bc_checked_p12)

                    ; #48070: <==commonly_known== 47121 (neg)
                    (Pa_checked_p12)

                    ; #51854: <==closure== 75779 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #57169: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #58340: <==commonly_known== 30351 (pos)
                    (Bb_checked_p12)

                    ; #75779: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #16388: <==negation-removal== 51854 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #17833: <==negation-removal== 57169 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #18161: <==negation-removal== 48070 (pos)
                    (not (Ba_not_checked_p12))

                    ; #33843: <==negation-removal== 38990 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #33974: <==uncertain_firing== 51854 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #46688: <==negation-removal== 18990 (pos)
                    (not (Bb_not_checked_p12))

                    ; #47121: <==negation-removal== 30351 (pos)
                    (not (not_checked_p12))

                    ; #51942: <==negation-removal== 46320 (pos)
                    (not (Pc_not_checked_p12))

                    ; #52976: <==uncertain_firing== 57169 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #61673: <==uncertain_firing== 38990 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #65362: <==uncertain_firing== 75779 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #69041: <==negation-removal== 24489 (pos)
                    (not (Pa_not_checked_p12))

                    ; #83980: <==negation-removal== 58340 (pos)
                    (not (Pb_not_checked_p12))

                    ; #85898: <==negation-removal== 31915 (pos)
                    (not (Bc_not_checked_p12))

                    ; #87210: <==negation-removal== 75779 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12637: <==commonly_known== 30746 (neg)
                    (Pb_checked_p1)

                    ; #28447: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #30289: <==commonly_known== 83079 (pos)
                    (Bb_checked_p1)

                    ; #59644: <==commonly_known== 30746 (neg)
                    (Pc_checked_p1)

                    ; #61011: <==commonly_known== 30746 (neg)
                    (Pa_checked_p1)

                    ; #66953: <==commonly_known== 83079 (pos)
                    (Bc_checked_p1)

                    ; #69975: <==commonly_known== 83079 (pos)
                    (Ba_checked_p1)

                    ; #77485: <==closure== 28447 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #78755: <==closure== 83255 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #83079: origin
                    (checked_p1)

                    ; #83255: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #11135: <==uncertain_firing== 78755 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #18477: <==negation-removal== 61011 (pos)
                    (not (Ba_not_checked_p1))

                    ; #22192: <==negation-removal== 78755 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #23532: <==negation-removal== 28447 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #25783: <==negation-removal== 59644 (pos)
                    (not (Bc_not_checked_p1))

                    ; #30746: <==negation-removal== 83079 (pos)
                    (not (not_checked_p1))

                    ; #33605: <==negation-removal== 83255 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #37396: <==negation-removal== 69975 (pos)
                    (not (Pa_not_checked_p1))

                    ; #37851: <==negation-removal== 66953 (pos)
                    (not (Pc_not_checked_p1))

                    ; #52080: <==uncertain_firing== 77485 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #56416: <==uncertain_firing== 28447 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #81400: <==uncertain_firing== 83255 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #82757: <==negation-removal== 77485 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #83652: <==negation-removal== 30289 (pos)
                    (not (Pb_not_checked_p1))

                    ; #91783: <==negation-removal== 12637 (pos)
                    (not (Bb_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10635: <==closure== 38398 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #31750: <==commonly_known== 78757 (pos)
                    (Bb_checked_p2)

                    ; #33927: <==commonly_known== 78757 (pos)
                    (Bc_checked_p2)

                    ; #36648: <==commonly_known== 80257 (neg)
                    (Pc_checked_p2)

                    ; #38398: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #42805: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #45085: <==closure== 42805 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #47772: <==commonly_known== 80257 (neg)
                    (Pb_checked_p2)

                    ; #50787: <==commonly_known== 78757 (pos)
                    (Ba_checked_p2)

                    ; #75084: <==commonly_known== 80257 (neg)
                    (Pa_checked_p2)

                    ; #78757: origin
                    (checked_p2)

                    ; #12411: <==negation-removal== 50787 (pos)
                    (not (Pa_not_checked_p2))

                    ; #19340: <==negation-removal== 10635 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #27929: <==negation-removal== 36648 (pos)
                    (not (Bc_not_checked_p2))

                    ; #31030: <==uncertain_firing== 45085 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #46926: <==negation-removal== 31750 (pos)
                    (not (Pb_not_checked_p2))

                    ; #49139: <==uncertain_firing== 42805 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #49886: <==uncertain_firing== 10635 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #52692: <==negation-removal== 47772 (pos)
                    (not (Bb_not_checked_p2))

                    ; #54027: <==negation-removal== 75084 (pos)
                    (not (Ba_not_checked_p2))

                    ; #70721: <==negation-removal== 42805 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #80257: <==negation-removal== 78757 (pos)
                    (not (not_checked_p2))

                    ; #81928: <==negation-removal== 33927 (pos)
                    (not (Pc_not_checked_p2))

                    ; #82107: <==negation-removal== 45085 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #84820: <==uncertain_firing== 38398 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #87435: <==negation-removal== 38398 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #14021: <==commonly_known== 62151 (pos)
                    (Bb_checked_p3)

                    ; #22575: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #26835: <==commonly_known== 74809 (neg)
                    (Pb_checked_p3)

                    ; #32260: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #40631: <==closure== 22575 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #44982: <==commonly_known== 74809 (neg)
                    (Pc_checked_p3)

                    ; #46014: <==closure== 32260 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #62151: origin
                    (checked_p3)

                    ; #72805: <==commonly_known== 62151 (pos)
                    (Ba_checked_p3)

                    ; #82149: <==commonly_known== 62151 (pos)
                    (Bc_checked_p3)

                    ; #87690: <==commonly_known== 74809 (neg)
                    (Pa_checked_p3)

                    ; #23804: <==negation-removal== 46014 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #44205: <==negation-removal== 87690 (pos)
                    (not (Ba_not_checked_p3))

                    ; #47891: <==negation-removal== 44982 (pos)
                    (not (Bc_not_checked_p3))

                    ; #48676: <==negation-removal== 22575 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #53974: <==negation-removal== 26835 (pos)
                    (not (Bb_not_checked_p3))

                    ; #55283: <==uncertain_firing== 40631 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #55358: <==uncertain_firing== 32260 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #55840: <==uncertain_firing== 22575 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #64909: <==negation-removal== 14021 (pos)
                    (not (Pb_not_checked_p3))

                    ; #74809: <==negation-removal== 62151 (pos)
                    (not (not_checked_p3))

                    ; #78742: <==uncertain_firing== 46014 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #83843: <==negation-removal== 40631 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #90249: <==negation-removal== 72805 (pos)
                    (not (Pa_not_checked_p3))

                    ; #90765: <==negation-removal== 82149 (pos)
                    (not (Pc_not_checked_p3))

                    ; #93917: <==negation-removal== 32260 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13653: <==closure== 73565 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #16756: <==commonly_known== 74400 (pos)
                    (Ba_checked_p4)

                    ; #17837: <==commonly_known== 25453 (neg)
                    (Pa_checked_p4)

                    ; #31184: <==commonly_known== 25453 (neg)
                    (Pb_checked_p4)

                    ; #39754: <==commonly_known== 74400 (pos)
                    (Bb_checked_p4)

                    ; #60703: <==commonly_known== 74400 (pos)
                    (Bc_checked_p4)

                    ; #72530: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #73565: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #74400: origin
                    (checked_p4)

                    ; #86889: <==closure== 72530 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #89176: <==commonly_known== 25453 (neg)
                    (Pc_checked_p4)

                    ; #21124: <==negation-removal== 39754 (pos)
                    (not (Pb_not_checked_p4))

                    ; #22590: <==negation-removal== 13653 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #24313: <==negation-removal== 60703 (pos)
                    (not (Pc_not_checked_p4))

                    ; #25453: <==negation-removal== 74400 (pos)
                    (not (not_checked_p4))

                    ; #27438: <==uncertain_firing== 86889 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #33785: <==uncertain_firing== 73565 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #36745: <==negation-removal== 73565 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #40790: <==uncertain_firing== 13653 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #51284: <==uncertain_firing== 72530 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #52244: <==negation-removal== 17837 (pos)
                    (not (Ba_not_checked_p4))

                    ; #60138: <==negation-removal== 72530 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #68635: <==negation-removal== 89176 (pos)
                    (not (Bc_not_checked_p4))

                    ; #71171: <==negation-removal== 16756 (pos)
                    (not (Pa_not_checked_p4))

                    ; #85727: <==negation-removal== 86889 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #92219: <==negation-removal== 31184 (pos)
                    (not (Bb_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #27866: <==closure== 34655 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #30528: <==commonly_known== 62963 (neg)
                    (Pa_checked_p5)

                    ; #34655: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #43183: <==commonly_known== 55951 (pos)
                    (Ba_checked_p5)

                    ; #46945: <==commonly_known== 62963 (neg)
                    (Pc_checked_p5)

                    ; #55951: origin
                    (checked_p5)

                    ; #70596: <==commonly_known== 55951 (pos)
                    (Bb_checked_p5)

                    ; #73190: <==closure== 80715 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #79515: <==commonly_known== 55951 (pos)
                    (Bc_checked_p5)

                    ; #80715: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #85291: <==commonly_known== 62963 (neg)
                    (Pb_checked_p5)

                    ; #14124: <==negation-removal== 85291 (pos)
                    (not (Bb_not_checked_p5))

                    ; #15814: <==negation-removal== 34655 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #21846: <==negation-removal== 80715 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #25596: <==uncertain_firing== 73190 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #26914: <==negation-removal== 70596 (pos)
                    (not (Pb_not_checked_p5))

                    ; #28061: <==negation-removal== 73190 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #28572: <==negation-removal== 43183 (pos)
                    (not (Pa_not_checked_p5))

                    ; #40506: <==uncertain_firing== 80715 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #44128: <==negation-removal== 79515 (pos)
                    (not (Pc_not_checked_p5))

                    ; #52360: <==negation-removal== 27866 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #62963: <==negation-removal== 55951 (pos)
                    (not (not_checked_p5))

                    ; #75706: <==uncertain_firing== 34655 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #78772: <==negation-removal== 30528 (pos)
                    (not (Ba_not_checked_p5))

                    ; #79132: <==uncertain_firing== 27866 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #93672: <==negation-removal== 46945 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #21289: <==closure== 58737 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #26121: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #40627: origin
                    (checked_p6)

                    ; #58737: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #60937: <==commonly_known== 40627 (pos)
                    (Bb_checked_p6)

                    ; #61979: <==closure== 26121 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #72710: <==commonly_known== 40627 (pos)
                    (Bc_checked_p6)

                    ; #73137: <==commonly_known== 72751 (neg)
                    (Pb_checked_p6)

                    ; #79338: <==commonly_known== 72751 (neg)
                    (Pc_checked_p6)

                    ; #80874: <==commonly_known== 72751 (neg)
                    (Pa_checked_p6)

                    ; #86601: <==commonly_known== 40627 (pos)
                    (Ba_checked_p6)

                    ; #13461: <==negation-removal== 73137 (pos)
                    (not (Bb_not_checked_p6))

                    ; #24682: <==uncertain_firing== 61979 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #30257: <==uncertain_firing== 26121 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #39453: <==uncertain_firing== 58737 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #39578: <==negation-removal== 72710 (pos)
                    (not (Pc_not_checked_p6))

                    ; #39761: <==uncertain_firing== 21289 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #41158: <==negation-removal== 86601 (pos)
                    (not (Pa_not_checked_p6))

                    ; #45150: <==negation-removal== 58737 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #49399: <==negation-removal== 61979 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #49872: <==negation-removal== 79338 (pos)
                    (not (Bc_not_checked_p6))

                    ; #50528: <==negation-removal== 21289 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #51186: <==negation-removal== 80874 (pos)
                    (not (Ba_not_checked_p6))

                    ; #72751: <==negation-removal== 40627 (pos)
                    (not (not_checked_p6))

                    ; #73311: <==negation-removal== 60937 (pos)
                    (not (Pb_not_checked_p6))

                    ; #75940: <==negation-removal== 26121 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10452: <==commonly_known== 52740 (neg)
                    (Pb_checked_p7)

                    ; #18429: <==commonly_known== 52740 (neg)
                    (Pa_checked_p7)

                    ; #26449: <==commonly_known== 52740 (neg)
                    (Pc_checked_p7)

                    ; #26746: <==commonly_known== 36088 (pos)
                    (Bb_checked_p7)

                    ; #31799: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #33842: <==closure== 31799 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #36088: origin
                    (checked_p7)

                    ; #45166: <==closure== 46347 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #46347: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #68640: <==commonly_known== 36088 (pos)
                    (Ba_checked_p7)

                    ; #70966: <==commonly_known== 36088 (pos)
                    (Bc_checked_p7)

                    ; #21876: <==negation-removal== 31799 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #22671: <==uncertain_firing== 45166 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #32170: <==uncertain_firing== 31799 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #36598: <==uncertain_firing== 33842 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #37016: <==negation-removal== 18429 (pos)
                    (not (Ba_not_checked_p7))

                    ; #42172: <==negation-removal== 26746 (pos)
                    (not (Pb_not_checked_p7))

                    ; #48110: <==negation-removal== 68640 (pos)
                    (not (Pa_not_checked_p7))

                    ; #52740: <==negation-removal== 36088 (pos)
                    (not (not_checked_p7))

                    ; #77054: <==negation-removal== 33842 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #81272: <==uncertain_firing== 46347 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #83072: <==negation-removal== 45166 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #83198: <==negation-removal== 10452 (pos)
                    (not (Bb_not_checked_p7))

                    ; #87184: <==negation-removal== 26449 (pos)
                    (not (Bc_not_checked_p7))

                    ; #89914: <==negation-removal== 70966 (pos)
                    (not (Pc_not_checked_p7))

                    ; #91246: <==negation-removal== 46347 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10426: <==commonly_known== 70725 (neg)
                    (Pb_checked_p8)

                    ; #15857: <==commonly_known== 27922 (pos)
                    (Bc_checked_p8)

                    ; #27922: origin
                    (checked_p8)

                    ; #30538: <==commonly_known== 27922 (pos)
                    (Bb_checked_p8)

                    ; #35810: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #52550: <==closure== 35810 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #54223: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #56345: <==commonly_known== 70725 (neg)
                    (Pc_checked_p8)

                    ; #62603: <==commonly_known== 70725 (neg)
                    (Pa_checked_p8)

                    ; #78900: <==closure== 54223 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #91856: <==commonly_known== 27922 (pos)
                    (Ba_checked_p8)

                    ; #17727: <==negation-removal== 10426 (pos)
                    (not (Bb_not_checked_p8))

                    ; #19921: <==uncertain_firing== 52550 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #20932: <==negation-removal== 54223 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #25255: <==negation-removal== 78900 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #26759: <==uncertain_firing== 35810 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #36585: <==negation-removal== 62603 (pos)
                    (not (Ba_not_checked_p8))

                    ; #52256: <==uncertain_firing== 78900 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #62584: <==negation-removal== 35810 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #69115: <==negation-removal== 30538 (pos)
                    (not (Pb_not_checked_p8))

                    ; #70725: <==negation-removal== 27922 (pos)
                    (not (not_checked_p8))

                    ; #72107: <==negation-removal== 56345 (pos)
                    (not (Bc_not_checked_p8))

                    ; #80549: <==uncertain_firing== 54223 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #82147: <==negation-removal== 15857 (pos)
                    (not (Pc_not_checked_p8))

                    ; #88341: <==negation-removal== 52550 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #96440: <==negation-removal== 91856 (pos)
                    (not (Pa_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #21652: <==commonly_known== 27475 (pos)
                    (Bc_checked_p9)

                    ; #27475: origin
                    (checked_p9)

                    ; #31023: <==commonly_known== 63377 (neg)
                    (Pa_checked_p9)

                    ; #42415: <==commonly_known== 63377 (neg)
                    (Pb_checked_p9)

                    ; #48994: <==commonly_known== 27475 (pos)
                    (Bb_checked_p9)

                    ; #57980: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #60511: <==closure== 81362 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #79797: <==commonly_known== 63377 (neg)
                    (Pc_checked_p9)

                    ; #81362: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #86931: <==closure== 57980 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #97744: <==commonly_known== 27475 (pos)
                    (Ba_checked_p9)

                    ; #16319: <==negation-removal== 57980 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #25892: <==negation-removal== 97744 (pos)
                    (not (Pa_not_checked_p9))

                    ; #31655: <==uncertain_firing== 81362 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #45251: <==negation-removal== 48994 (pos)
                    (not (Pb_not_checked_p9))

                    ; #52236: <==negation-removal== 42415 (pos)
                    (not (Bb_not_checked_p9))

                    ; #57152: <==negation-removal== 81362 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #59708: <==uncertain_firing== 60511 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #60591: <==negation-removal== 79797 (pos)
                    (not (Bc_not_checked_p9))

                    ; #63377: <==negation-removal== 27475 (pos)
                    (not (not_checked_p9))

                    ; #65949: <==negation-removal== 21652 (pos)
                    (not (Pc_not_checked_p9))

                    ; #69701: <==negation-removal== 31023 (pos)
                    (not (Ba_not_checked_p9))

                    ; #76066: <==uncertain_firing== 86931 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #89451: <==uncertain_firing== 57980 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #90861: <==negation-removal== 60511 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #92036: <==negation-removal== 86931 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #15526: <==closure== 90041 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #18995: <==commonly_known== 88138 (neg)
                    (Pa_checked_p10)

                    ; #26020: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #32880: <==commonly_known== 50202 (pos)
                    (Bb_checked_p10)

                    ; #46023: <==commonly_known== 50202 (pos)
                    (Ba_checked_p10)

                    ; #46773: <==closure== 26020 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #50202: origin
                    (checked_p10)

                    ; #63161: <==commonly_known== 88138 (neg)
                    (Pc_checked_p10)

                    ; #68305: <==commonly_known== 50202 (pos)
                    (Bc_checked_p10)

                    ; #71174: <==commonly_known== 88138 (neg)
                    (Pb_checked_p10)

                    ; #90041: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #19772: <==uncertain_firing== 26020 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #21338: <==negation-removal== 15526 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #24612: <==uncertain_firing== 90041 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #25931: <==negation-removal== 18995 (pos)
                    (not (Ba_not_checked_p10))

                    ; #27544: <==negation-removal== 46773 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #27978: <==uncertain_firing== 46773 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #32915: <==negation-removal== 63161 (pos)
                    (not (Bc_not_checked_p10))

                    ; #40059: <==negation-removal== 46023 (pos)
                    (not (Pa_not_checked_p10))

                    ; #41341: <==negation-removal== 71174 (pos)
                    (not (Bb_not_checked_p10))

                    ; #44210: <==negation-removal== 32880 (pos)
                    (not (Pb_not_checked_p10))

                    ; #58400: <==negation-removal== 90041 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #64275: <==negation-removal== 26020 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #65516: <==uncertain_firing== 15526 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #66928: <==negation-removal== 68305 (pos)
                    (not (Pc_not_checked_p10))

                    ; #88138: <==negation-removal== 50202 (pos)
                    (not (not_checked_p10))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #11086: <==commonly_known== 26538 (neg)
                    (Pc_checked_p11)

                    ; #31657: <==closure== 80428 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #46241: <==commonly_known== 26538 (neg)
                    (Pa_checked_p11)

                    ; #66975: <==commonly_known== 26538 (neg)
                    (Pb_checked_p11)

                    ; #70918: <==commonly_known== 94477 (pos)
                    (Bb_checked_p11)

                    ; #72532: <==commonly_known== 94477 (pos)
                    (Bc_checked_p11)

                    ; #77002: <==closure== 96030 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #80428: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #88043: <==commonly_known== 94477 (pos)
                    (Ba_checked_p11)

                    ; #94477: origin
                    (checked_p11)

                    ; #96030: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #10780: <==negation-removal== 88043 (pos)
                    (not (Pa_not_checked_p11))

                    ; #11341: <==uncertain_firing== 80428 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #16376: <==negation-removal== 77002 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #24813: <==uncertain_firing== 96030 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #26538: <==negation-removal== 94477 (pos)
                    (not (not_checked_p11))

                    ; #33775: <==negation-removal== 66975 (pos)
                    (not (Bb_not_checked_p11))

                    ; #37415: <==negation-removal== 11086 (pos)
                    (not (Bc_not_checked_p11))

                    ; #37589: <==negation-removal== 72532 (pos)
                    (not (Pc_not_checked_p11))

                    ; #57133: <==negation-removal== 46241 (pos)
                    (not (Ba_not_checked_p11))

                    ; #62174: <==uncertain_firing== 31657 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #73941: <==negation-removal== 96030 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #74876: <==negation-removal== 80428 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #75192: <==uncertain_firing== 77002 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #84679: <==negation-removal== 31657 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #87990: <==negation-removal== 70918 (pos)
                    (not (Pb_not_checked_p11))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #18990: <==commonly_known== 47121 (neg)
                    (Pb_checked_p12)

                    ; #24489: <==commonly_known== 30351 (pos)
                    (Ba_checked_p12)

                    ; #26486: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #27464: <==closure== 76513 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #30351: origin
                    (checked_p12)

                    ; #31915: <==commonly_known== 47121 (neg)
                    (Pc_checked_p12)

                    ; #46320: <==commonly_known== 30351 (pos)
                    (Bc_checked_p12)

                    ; #48070: <==commonly_known== 47121 (neg)
                    (Pa_checked_p12)

                    ; #58340: <==commonly_known== 30351 (pos)
                    (Bb_checked_p12)

                    ; #63746: <==closure== 26486 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #76513: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #18161: <==negation-removal== 48070 (pos)
                    (not (Ba_not_checked_p12))

                    ; #18856: <==uncertain_firing== 27464 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #24486: <==uncertain_firing== 26486 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #40040: <==uncertain_firing== 63746 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #41760: <==negation-removal== 63746 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #43654: <==negation-removal== 27464 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #46688: <==negation-removal== 18990 (pos)
                    (not (Bb_not_checked_p12))

                    ; #47121: <==negation-removal== 30351 (pos)
                    (not (not_checked_p12))

                    ; #48966: <==negation-removal== 76513 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #51942: <==negation-removal== 46320 (pos)
                    (not (Pc_not_checked_p12))

                    ; #69041: <==negation-removal== 24489 (pos)
                    (not (Pa_not_checked_p12))

                    ; #77488: <==uncertain_firing== 76513 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #83980: <==negation-removal== 58340 (pos)
                    (not (Pb_not_checked_p12))

                    ; #85898: <==negation-removal== 31915 (pos)
                    (not (Bc_not_checked_p12))

                    ; #90986: <==negation-removal== 26486 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12637: <==commonly_known== 30746 (neg)
                    (Pb_checked_p1)

                    ; #30289: <==commonly_known== 83079 (pos)
                    (Bb_checked_p1)

                    ; #36443: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #53476: <==closure== 82527 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #59644: <==commonly_known== 30746 (neg)
                    (Pc_checked_p1)

                    ; #61011: <==commonly_known== 30746 (neg)
                    (Pa_checked_p1)

                    ; #66953: <==commonly_known== 83079 (pos)
                    (Bc_checked_p1)

                    ; #69975: <==commonly_known== 83079 (pos)
                    (Ba_checked_p1)

                    ; #82527: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #83079: origin
                    (checked_p1)

                    ; #84860: <==closure== 36443 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #15419: <==negation-removal== 36443 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #18477: <==negation-removal== 61011 (pos)
                    (not (Ba_not_checked_p1))

                    ; #25783: <==negation-removal== 59644 (pos)
                    (not (Bc_not_checked_p1))

                    ; #30746: <==negation-removal== 83079 (pos)
                    (not (not_checked_p1))

                    ; #37396: <==negation-removal== 69975 (pos)
                    (not (Pa_not_checked_p1))

                    ; #37851: <==negation-removal== 66953 (pos)
                    (not (Pc_not_checked_p1))

                    ; #38104: <==uncertain_firing== 82527 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #56981: <==uncertain_firing== 36443 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #63874: <==uncertain_firing== 53476 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #65838: <==negation-removal== 53476 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #77361: <==negation-removal== 82527 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #83652: <==negation-removal== 30289 (pos)
                    (not (Pb_not_checked_p1))

                    ; #85101: <==negation-removal== 84860 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #91783: <==negation-removal== 12637 (pos)
                    (not (Bb_not_checked_p1))

                    ; #92115: <==uncertain_firing== 84860 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #31750: <==commonly_known== 78757 (pos)
                    (Bb_checked_p2)

                    ; #33927: <==commonly_known== 78757 (pos)
                    (Bc_checked_p2)

                    ; #36178: <==closure== 58438 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #36648: <==commonly_known== 80257 (neg)
                    (Pc_checked_p2)

                    ; #47545: <==closure== 91806 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #47772: <==commonly_known== 80257 (neg)
                    (Pb_checked_p2)

                    ; #50787: <==commonly_known== 78757 (pos)
                    (Ba_checked_p2)

                    ; #58438: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #75084: <==commonly_known== 80257 (neg)
                    (Pa_checked_p2)

                    ; #78757: origin
                    (checked_p2)

                    ; #91806: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #12411: <==negation-removal== 50787 (pos)
                    (not (Pa_not_checked_p2))

                    ; #14001: <==negation-removal== 58438 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #27929: <==negation-removal== 36648 (pos)
                    (not (Bc_not_checked_p2))

                    ; #46926: <==negation-removal== 31750 (pos)
                    (not (Pb_not_checked_p2))

                    ; #52692: <==negation-removal== 47772 (pos)
                    (not (Bb_not_checked_p2))

                    ; #54027: <==negation-removal== 75084 (pos)
                    (not (Ba_not_checked_p2))

                    ; #62303: <==uncertain_firing== 47545 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #62601: <==negation-removal== 36178 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #64032: <==negation-removal== 47545 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #68637: <==negation-removal== 91806 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #70830: <==uncertain_firing== 36178 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #70978: <==uncertain_firing== 58438 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #80257: <==negation-removal== 78757 (pos)
                    (not (not_checked_p2))

                    ; #80962: <==uncertain_firing== 91806 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #81928: <==negation-removal== 33927 (pos)
                    (not (Pc_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #10948: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #14021: <==commonly_known== 62151 (pos)
                    (Bb_checked_p3)

                    ; #26835: <==commonly_known== 74809 (neg)
                    (Pb_checked_p3)

                    ; #36648: <==closure== 70732 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #44982: <==commonly_known== 74809 (neg)
                    (Pc_checked_p3)

                    ; #62151: origin
                    (checked_p3)

                    ; #70732: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #72805: <==commonly_known== 62151 (pos)
                    (Ba_checked_p3)

                    ; #82149: <==commonly_known== 62151 (pos)
                    (Bc_checked_p3)

                    ; #84554: <==closure== 10948 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #87690: <==commonly_known== 74809 (neg)
                    (Pa_checked_p3)

                    ; #10394: <==uncertain_firing== 10948 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #36067: <==uncertain_firing== 84554 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #44205: <==negation-removal== 87690 (pos)
                    (not (Ba_not_checked_p3))

                    ; #47891: <==negation-removal== 44982 (pos)
                    (not (Bc_not_checked_p3))

                    ; #53974: <==negation-removal== 26835 (pos)
                    (not (Bb_not_checked_p3))

                    ; #54144: <==uncertain_firing== 70732 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #57655: <==negation-removal== 10948 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #64909: <==negation-removal== 14021 (pos)
                    (not (Pb_not_checked_p3))

                    ; #68843: <==negation-removal== 36648 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #74505: <==negation-removal== 84554 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #74809: <==negation-removal== 62151 (pos)
                    (not (not_checked_p3))

                    ; #89415: <==uncertain_firing== 36648 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #90249: <==negation-removal== 72805 (pos)
                    (not (Pa_not_checked_p3))

                    ; #90395: <==negation-removal== 70732 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #90765: <==negation-removal== 82149 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #15303: <==closure== 61412 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #16756: <==commonly_known== 74400 (pos)
                    (Ba_checked_p4)

                    ; #17837: <==commonly_known== 25453 (neg)
                    (Pa_checked_p4)

                    ; #26851: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #31184: <==commonly_known== 25453 (neg)
                    (Pb_checked_p4)

                    ; #39754: <==commonly_known== 74400 (pos)
                    (Bb_checked_p4)

                    ; #51423: <==closure== 26851 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #60703: <==commonly_known== 74400 (pos)
                    (Bc_checked_p4)

                    ; #61412: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #74400: origin
                    (checked_p4)

                    ; #89176: <==commonly_known== 25453 (neg)
                    (Pc_checked_p4)

                    ; #17591: <==uncertain_firing== 15303 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #21124: <==negation-removal== 39754 (pos)
                    (not (Pb_not_checked_p4))

                    ; #24313: <==negation-removal== 60703 (pos)
                    (not (Pc_not_checked_p4))

                    ; #25453: <==negation-removal== 74400 (pos)
                    (not (not_checked_p4))

                    ; #28959: <==uncertain_firing== 61412 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #42372: <==uncertain_firing== 26851 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #51183: <==negation-removal== 51423 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #52244: <==negation-removal== 17837 (pos)
                    (not (Ba_not_checked_p4))

                    ; #68125: <==negation-removal== 61412 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #68635: <==negation-removal== 89176 (pos)
                    (not (Bc_not_checked_p4))

                    ; #71012: <==negation-removal== 26851 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #71171: <==negation-removal== 16756 (pos)
                    (not (Pa_not_checked_p4))

                    ; #80051: <==negation-removal== 15303 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #85129: <==uncertain_firing== 51423 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #92219: <==negation-removal== 31184 (pos)
                    (not (Bb_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #27836: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #30528: <==commonly_known== 62963 (neg)
                    (Pa_checked_p5)

                    ; #43183: <==commonly_known== 55951 (pos)
                    (Ba_checked_p5)

                    ; #46945: <==commonly_known== 62963 (neg)
                    (Pc_checked_p5)

                    ; #55951: origin
                    (checked_p5)

                    ; #59252: <==closure== 68262 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #64647: <==closure== 27836 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #68262: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #70596: <==commonly_known== 55951 (pos)
                    (Bb_checked_p5)

                    ; #79515: <==commonly_known== 55951 (pos)
                    (Bc_checked_p5)

                    ; #85291: <==commonly_known== 62963 (neg)
                    (Pb_checked_p5)

                    ; #10980: <==negation-removal== 59252 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #14124: <==negation-removal== 85291 (pos)
                    (not (Bb_not_checked_p5))

                    ; #26266: <==uncertain_firing== 68262 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #26914: <==negation-removal== 70596 (pos)
                    (not (Pb_not_checked_p5))

                    ; #27102: <==negation-removal== 68262 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #28572: <==negation-removal== 43183 (pos)
                    (not (Pa_not_checked_p5))

                    ; #29643: <==uncertain_firing== 27836 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #37924: <==negation-removal== 64647 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #44128: <==negation-removal== 79515 (pos)
                    (not (Pc_not_checked_p5))

                    ; #62963: <==negation-removal== 55951 (pos)
                    (not (not_checked_p5))

                    ; #65554: <==uncertain_firing== 64647 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #73615: <==negation-removal== 27836 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #75646: <==uncertain_firing== 59252 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #78772: <==negation-removal== 30528 (pos)
                    (not (Ba_not_checked_p5))

                    ; #93672: <==negation-removal== 46945 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #40627: origin
                    (checked_p6)

                    ; #40714: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #42120: <==closure== 49895 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #49895: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #60937: <==commonly_known== 40627 (pos)
                    (Bb_checked_p6)

                    ; #72710: <==commonly_known== 40627 (pos)
                    (Bc_checked_p6)

                    ; #73137: <==commonly_known== 72751 (neg)
                    (Pb_checked_p6)

                    ; #79338: <==commonly_known== 72751 (neg)
                    (Pc_checked_p6)

                    ; #80874: <==commonly_known== 72751 (neg)
                    (Pa_checked_p6)

                    ; #86601: <==commonly_known== 40627 (pos)
                    (Ba_checked_p6)

                    ; #86711: <==closure== 40714 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #10205: <==uncertain_firing== 86711 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #11782: <==negation-removal== 86711 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #13461: <==negation-removal== 73137 (pos)
                    (not (Bb_not_checked_p6))

                    ; #25696: <==uncertain_firing== 42120 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #39578: <==negation-removal== 72710 (pos)
                    (not (Pc_not_checked_p6))

                    ; #41158: <==negation-removal== 86601 (pos)
                    (not (Pa_not_checked_p6))

                    ; #49872: <==negation-removal== 79338 (pos)
                    (not (Bc_not_checked_p6))

                    ; #51186: <==negation-removal== 80874 (pos)
                    (not (Ba_not_checked_p6))

                    ; #59472: <==negation-removal== 49895 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #72751: <==negation-removal== 40627 (pos)
                    (not (not_checked_p6))

                    ; #73311: <==negation-removal== 60937 (pos)
                    (not (Pb_not_checked_p6))

                    ; #77901: <==uncertain_firing== 49895 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #79044: <==negation-removal== 42120 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #83683: <==negation-removal== 40714 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #91633: <==uncertain_firing== 40714 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10452: <==commonly_known== 52740 (neg)
                    (Pb_checked_p7)

                    ; #18429: <==commonly_known== 52740 (neg)
                    (Pa_checked_p7)

                    ; #26449: <==commonly_known== 52740 (neg)
                    (Pc_checked_p7)

                    ; #26746: <==commonly_known== 36088 (pos)
                    (Bb_checked_p7)

                    ; #35146: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #36088: origin
                    (checked_p7)

                    ; #46833: <==closure== 55498 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #55498: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #68640: <==commonly_known== 36088 (pos)
                    (Ba_checked_p7)

                    ; #68793: <==closure== 35146 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #70966: <==commonly_known== 36088 (pos)
                    (Bc_checked_p7)

                    ; #25688: <==negation-removal== 46833 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #37016: <==negation-removal== 18429 (pos)
                    (not (Ba_not_checked_p7))

                    ; #38472: <==uncertain_firing== 55498 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #42172: <==negation-removal== 26746 (pos)
                    (not (Pb_not_checked_p7))

                    ; #43966: <==negation-removal== 35146 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #47451: <==uncertain_firing== 35146 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #48110: <==negation-removal== 68640 (pos)
                    (not (Pa_not_checked_p7))

                    ; #52740: <==negation-removal== 36088 (pos)
                    (not (not_checked_p7))

                    ; #55289: <==uncertain_firing== 46833 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #61439: <==negation-removal== 55498 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #63447: <==uncertain_firing== 68793 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #82291: <==negation-removal== 68793 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #83198: <==negation-removal== 10452 (pos)
                    (not (Bb_not_checked_p7))

                    ; #87184: <==negation-removal== 26449 (pos)
                    (not (Bc_not_checked_p7))

                    ; #89914: <==negation-removal== 70966 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10426: <==commonly_known== 70725 (neg)
                    (Pb_checked_p8)

                    ; #15857: <==commonly_known== 27922 (pos)
                    (Bc_checked_p8)

                    ; #27922: origin
                    (checked_p8)

                    ; #30538: <==commonly_known== 27922 (pos)
                    (Bb_checked_p8)

                    ; #31083: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #35798: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #38076: <==closure== 31083 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #54871: <==closure== 35798 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #56345: <==commonly_known== 70725 (neg)
                    (Pc_checked_p8)

                    ; #62603: <==commonly_known== 70725 (neg)
                    (Pa_checked_p8)

                    ; #91856: <==commonly_known== 27922 (pos)
                    (Ba_checked_p8)

                    ; #17694: <==uncertain_firing== 31083 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #17727: <==negation-removal== 10426 (pos)
                    (not (Bb_not_checked_p8))

                    ; #30441: <==negation-removal== 54871 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #34558: <==uncertain_firing== 35798 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #36585: <==negation-removal== 62603 (pos)
                    (not (Ba_not_checked_p8))

                    ; #38177: <==uncertain_firing== 38076 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #46206: <==uncertain_firing== 54871 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #62810: <==negation-removal== 31083 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #69115: <==negation-removal== 30538 (pos)
                    (not (Pb_not_checked_p8))

                    ; #70725: <==negation-removal== 27922 (pos)
                    (not (not_checked_p8))

                    ; #72107: <==negation-removal== 56345 (pos)
                    (not (Bc_not_checked_p8))

                    ; #72536: <==negation-removal== 35798 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #82147: <==negation-removal== 15857 (pos)
                    (not (Pc_not_checked_p8))

                    ; #84536: <==negation-removal== 38076 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #96440: <==negation-removal== 91856 (pos)
                    (not (Pa_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #21652: <==commonly_known== 27475 (pos)
                    (Bc_checked_p9)

                    ; #27475: origin
                    (checked_p9)

                    ; #28234: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #31023: <==commonly_known== 63377 (neg)
                    (Pa_checked_p9)

                    ; #42415: <==commonly_known== 63377 (neg)
                    (Pb_checked_p9)

                    ; #48994: <==commonly_known== 27475 (pos)
                    (Bb_checked_p9)

                    ; #58226: <==closure== 89780 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #79797: <==commonly_known== 63377 (neg)
                    (Pc_checked_p9)

                    ; #81649: <==closure== 28234 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #89780: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #97744: <==commonly_known== 27475 (pos)
                    (Ba_checked_p9)

                    ; #25892: <==negation-removal== 97744 (pos)
                    (not (Pa_not_checked_p9))

                    ; #26548: <==uncertain_firing== 28234 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #30965: <==negation-removal== 58226 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #45251: <==negation-removal== 48994 (pos)
                    (not (Pb_not_checked_p9))

                    ; #48806: <==negation-removal== 89780 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #50387: <==negation-removal== 81649 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #52236: <==negation-removal== 42415 (pos)
                    (not (Bb_not_checked_p9))

                    ; #60591: <==negation-removal== 79797 (pos)
                    (not (Bc_not_checked_p9))

                    ; #61665: <==uncertain_firing== 81649 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #63377: <==negation-removal== 27475 (pos)
                    (not (not_checked_p9))

                    ; #65949: <==negation-removal== 21652 (pos)
                    (not (Pc_not_checked_p9))

                    ; #69701: <==negation-removal== 31023 (pos)
                    (not (Ba_not_checked_p9))

                    ; #78443: <==uncertain_firing== 58226 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #81644: <==uncertain_firing== 89780 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #86291: <==negation-removal== 28234 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))))

)