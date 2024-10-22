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
        :precondition (and (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #18798: <==closure== 42603 (pos)
                    (Pa_survivorat_s_p10)

                    ; #21763: origin
                    (Bc_survivorat_s_p10)

                    ; #42603: origin
                    (Ba_survivorat_s_p10)

                    ; #43022: <==closure== 21763 (pos)
                    (Pc_survivorat_s_p10)

                    ; #53033: <==closure== 89759 (pos)
                    (Pb_survivorat_s_p10)

                    ; #89759: origin
                    (Bb_survivorat_s_p10)

                    ; #21234: <==negation-removal== 89759 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #31205: <==negation-removal== 21763 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #36185: <==negation-removal== 43022 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #50631: <==negation-removal== 42603 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #76101: <==negation-removal== 18798 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #78095: <==negation-removal== 53033 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (at_b_p10)
                           (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #18798: <==closure== 42603 (pos)
                    (Pa_survivorat_s_p10)

                    ; #21763: origin
                    (Bc_survivorat_s_p10)

                    ; #42603: origin
                    (Ba_survivorat_s_p10)

                    ; #43022: <==closure== 21763 (pos)
                    (Pc_survivorat_s_p10)

                    ; #53033: <==closure== 89759 (pos)
                    (Pb_survivorat_s_p10)

                    ; #89759: origin
                    (Bb_survivorat_s_p10)

                    ; #21234: <==negation-removal== 89759 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #31205: <==negation-removal== 21763 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #36185: <==negation-removal== 43022 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #50631: <==negation-removal== 42603 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #76101: <==negation-removal== 18798 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #78095: <==negation-removal== 53033 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (at_c_p10)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #18798: <==closure== 42603 (pos)
                    (Pa_survivorat_s_p10)

                    ; #21763: origin
                    (Bc_survivorat_s_p10)

                    ; #42603: origin
                    (Ba_survivorat_s_p10)

                    ; #43022: <==closure== 21763 (pos)
                    (Pc_survivorat_s_p10)

                    ; #53033: <==closure== 89759 (pos)
                    (Pb_survivorat_s_p10)

                    ; #89759: origin
                    (Bb_survivorat_s_p10)

                    ; #21234: <==negation-removal== 89759 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #31205: <==negation-removal== 21763 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #36185: <==negation-removal== 43022 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #50631: <==negation-removal== 42603 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #76101: <==negation-removal== 18798 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #78095: <==negation-removal== 53033 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #18079: <==closure== 37610 (pos)
                    (Pa_survivorat_s_p11)

                    ; #30493: origin
                    (Bb_survivorat_s_p11)

                    ; #36022: <==closure== 50160 (pos)
                    (Pc_survivorat_s_p11)

                    ; #37610: origin
                    (Ba_survivorat_s_p11)

                    ; #45039: <==closure== 30493 (pos)
                    (Pb_survivorat_s_p11)

                    ; #50160: origin
                    (Bc_survivorat_s_p11)

                    ; #48732: <==negation-removal== 30493 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #50516: <==negation-removal== 36022 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #73618: <==negation-removal== 50160 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #87094: <==negation-removal== 18079 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #88790: <==negation-removal== 45039 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #90404: <==negation-removal== 37610 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #18079: <==closure== 37610 (pos)
                    (Pa_survivorat_s_p11)

                    ; #30493: origin
                    (Bb_survivorat_s_p11)

                    ; #36022: <==closure== 50160 (pos)
                    (Pc_survivorat_s_p11)

                    ; #37610: origin
                    (Ba_survivorat_s_p11)

                    ; #45039: <==closure== 30493 (pos)
                    (Pb_survivorat_s_p11)

                    ; #50160: origin
                    (Bc_survivorat_s_p11)

                    ; #48732: <==negation-removal== 30493 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #50516: <==negation-removal== 36022 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #73618: <==negation-removal== 50160 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #87094: <==negation-removal== 18079 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #88790: <==negation-removal== 45039 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #90404: <==negation-removal== 37610 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Pc_survivorat_s_p11)
                           (at_c_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #18079: <==closure== 37610 (pos)
                    (Pa_survivorat_s_p11)

                    ; #30493: origin
                    (Bb_survivorat_s_p11)

                    ; #36022: <==closure== 50160 (pos)
                    (Pc_survivorat_s_p11)

                    ; #37610: origin
                    (Ba_survivorat_s_p11)

                    ; #45039: <==closure== 30493 (pos)
                    (Pb_survivorat_s_p11)

                    ; #50160: origin
                    (Bc_survivorat_s_p11)

                    ; #48732: <==negation-removal== 30493 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #50516: <==negation-removal== 36022 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #73618: <==negation-removal== 50160 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #87094: <==negation-removal== 18079 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #88790: <==negation-removal== 45039 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #90404: <==negation-removal== 37610 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12))
        :effect (and
                    ; #16339: origin
                    (Ba_survivorat_s_p12)

                    ; #33011: origin
                    (Bb_survivorat_s_p12)

                    ; #47484: <==closure== 33011 (pos)
                    (Pb_survivorat_s_p12)

                    ; #52662: origin
                    (Bc_survivorat_s_p12)

                    ; #67165: <==closure== 52662 (pos)
                    (Pc_survivorat_s_p12)

                    ; #68914: <==closure== 16339 (pos)
                    (Pa_survivorat_s_p12)

                    ; #21143: <==negation-removal== 16339 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #36864: <==negation-removal== 33011 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #39875: <==negation-removal== 67165 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #44037: <==negation-removal== 47484 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #48810: <==negation-removal== 68914 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #70466: <==negation-removal== 52662 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #16339: origin
                    (Ba_survivorat_s_p12)

                    ; #33011: origin
                    (Bb_survivorat_s_p12)

                    ; #47484: <==closure== 33011 (pos)
                    (Pb_survivorat_s_p12)

                    ; #52662: origin
                    (Bc_survivorat_s_p12)

                    ; #67165: <==closure== 52662 (pos)
                    (Pc_survivorat_s_p12)

                    ; #68914: <==closure== 16339 (pos)
                    (Pa_survivorat_s_p12)

                    ; #21143: <==negation-removal== 16339 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #36864: <==negation-removal== 33011 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #39875: <==negation-removal== 67165 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #44037: <==negation-removal== 47484 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #48810: <==negation-removal== 68914 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #70466: <==negation-removal== 52662 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #16339: origin
                    (Ba_survivorat_s_p12)

                    ; #33011: origin
                    (Bb_survivorat_s_p12)

                    ; #47484: <==closure== 33011 (pos)
                    (Pb_survivorat_s_p12)

                    ; #52662: origin
                    (Bc_survivorat_s_p12)

                    ; #67165: <==closure== 52662 (pos)
                    (Pc_survivorat_s_p12)

                    ; #68914: <==closure== 16339 (pos)
                    (Pa_survivorat_s_p12)

                    ; #21143: <==negation-removal== 16339 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #36864: <==negation-removal== 33011 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #39875: <==negation-removal== 67165 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #44037: <==negation-removal== 47484 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #48810: <==negation-removal== 68914 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #70466: <==negation-removal== 52662 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #25552: <==closure== 46783 (pos)
                    (Pa_survivorat_s_p1)

                    ; #46783: origin
                    (Ba_survivorat_s_p1)

                    ; #50154: origin
                    (Bb_survivorat_s_p1)

                    ; #60854: origin
                    (Bc_survivorat_s_p1)

                    ; #63352: <==closure== 60854 (pos)
                    (Pc_survivorat_s_p1)

                    ; #75569: <==closure== 50154 (pos)
                    (Pb_survivorat_s_p1)

                    ; #59532: <==negation-removal== 25552 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #59676: <==negation-removal== 46783 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #68433: <==negation-removal== 60854 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #73803: <==negation-removal== 75569 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #79412: <==negation-removal== 50154 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #86754: <==negation-removal== 63352 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #25552: <==closure== 46783 (pos)
                    (Pa_survivorat_s_p1)

                    ; #46783: origin
                    (Ba_survivorat_s_p1)

                    ; #50154: origin
                    (Bb_survivorat_s_p1)

                    ; #60854: origin
                    (Bc_survivorat_s_p1)

                    ; #63352: <==closure== 60854 (pos)
                    (Pc_survivorat_s_p1)

                    ; #75569: <==closure== 50154 (pos)
                    (Pb_survivorat_s_p1)

                    ; #59532: <==negation-removal== 25552 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #59676: <==negation-removal== 46783 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #68433: <==negation-removal== 60854 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #73803: <==negation-removal== 75569 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #79412: <==negation-removal== 50154 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #86754: <==negation-removal== 63352 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #25552: <==closure== 46783 (pos)
                    (Pa_survivorat_s_p1)

                    ; #46783: origin
                    (Ba_survivorat_s_p1)

                    ; #50154: origin
                    (Bb_survivorat_s_p1)

                    ; #60854: origin
                    (Bc_survivorat_s_p1)

                    ; #63352: <==closure== 60854 (pos)
                    (Pc_survivorat_s_p1)

                    ; #75569: <==closure== 50154 (pos)
                    (Pb_survivorat_s_p1)

                    ; #59532: <==negation-removal== 25552 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #59676: <==negation-removal== 46783 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #68433: <==negation-removal== 60854 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #73803: <==negation-removal== 75569 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #79412: <==negation-removal== 50154 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #86754: <==negation-removal== 63352 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #10519: origin
                    (Ba_survivorat_s_p2)

                    ; #16465: <==closure== 86876 (pos)
                    (Pc_survivorat_s_p2)

                    ; #19732: origin
                    (Bb_survivorat_s_p2)

                    ; #84206: <==closure== 19732 (pos)
                    (Pb_survivorat_s_p2)

                    ; #86312: <==closure== 10519 (pos)
                    (Pa_survivorat_s_p2)

                    ; #86876: origin
                    (Bc_survivorat_s_p2)

                    ; #19113: <==negation-removal== 86876 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #32350: <==negation-removal== 19732 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #52012: <==negation-removal== 86312 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #63034: <==negation-removal== 84206 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #80250: <==negation-removal== 10519 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #87714: <==negation-removal== 16465 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #10519: origin
                    (Ba_survivorat_s_p2)

                    ; #16465: <==closure== 86876 (pos)
                    (Pc_survivorat_s_p2)

                    ; #19732: origin
                    (Bb_survivorat_s_p2)

                    ; #84206: <==closure== 19732 (pos)
                    (Pb_survivorat_s_p2)

                    ; #86312: <==closure== 10519 (pos)
                    (Pa_survivorat_s_p2)

                    ; #86876: origin
                    (Bc_survivorat_s_p2)

                    ; #19113: <==negation-removal== 86876 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #32350: <==negation-removal== 19732 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #52012: <==negation-removal== 86312 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #63034: <==negation-removal== 84206 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #80250: <==negation-removal== 10519 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #87714: <==negation-removal== 16465 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #10519: origin
                    (Ba_survivorat_s_p2)

                    ; #16465: <==closure== 86876 (pos)
                    (Pc_survivorat_s_p2)

                    ; #19732: origin
                    (Bb_survivorat_s_p2)

                    ; #84206: <==closure== 19732 (pos)
                    (Pb_survivorat_s_p2)

                    ; #86312: <==closure== 10519 (pos)
                    (Pa_survivorat_s_p2)

                    ; #86876: origin
                    (Bc_survivorat_s_p2)

                    ; #19113: <==negation-removal== 86876 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #32350: <==negation-removal== 19732 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #52012: <==negation-removal== 86312 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #63034: <==negation-removal== 84206 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #80250: <==negation-removal== 10519 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #87714: <==negation-removal== 16465 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #11386: origin
                    (Bb_survivorat_s_p3)

                    ; #30403: <==closure== 64912 (pos)
                    (Pa_survivorat_s_p3)

                    ; #53188: <==closure== 11386 (pos)
                    (Pb_survivorat_s_p3)

                    ; #64912: origin
                    (Ba_survivorat_s_p3)

                    ; #69094: origin
                    (Bc_survivorat_s_p3)

                    ; #86188: <==closure== 69094 (pos)
                    (Pc_survivorat_s_p3)

                    ; #12904: <==negation-removal== 69094 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #23370: <==negation-removal== 86188 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #32736: <==negation-removal== 30403 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #41971: <==negation-removal== 53188 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #50911: <==negation-removal== 11386 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #70033: <==negation-removal== 64912 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #11386: origin
                    (Bb_survivorat_s_p3)

                    ; #30403: <==closure== 64912 (pos)
                    (Pa_survivorat_s_p3)

                    ; #53188: <==closure== 11386 (pos)
                    (Pb_survivorat_s_p3)

                    ; #64912: origin
                    (Ba_survivorat_s_p3)

                    ; #69094: origin
                    (Bc_survivorat_s_p3)

                    ; #86188: <==closure== 69094 (pos)
                    (Pc_survivorat_s_p3)

                    ; #12904: <==negation-removal== 69094 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #23370: <==negation-removal== 86188 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #32736: <==negation-removal== 30403 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #41971: <==negation-removal== 53188 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #50911: <==negation-removal== 11386 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #70033: <==negation-removal== 64912 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #11386: origin
                    (Bb_survivorat_s_p3)

                    ; #30403: <==closure== 64912 (pos)
                    (Pa_survivorat_s_p3)

                    ; #53188: <==closure== 11386 (pos)
                    (Pb_survivorat_s_p3)

                    ; #64912: origin
                    (Ba_survivorat_s_p3)

                    ; #69094: origin
                    (Bc_survivorat_s_p3)

                    ; #86188: <==closure== 69094 (pos)
                    (Pc_survivorat_s_p3)

                    ; #12904: <==negation-removal== 69094 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #23370: <==negation-removal== 86188 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #32736: <==negation-removal== 30403 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #41971: <==negation-removal== 53188 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #50911: <==negation-removal== 11386 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #70033: <==negation-removal== 64912 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #16801: <==closure== 38239 (pos)
                    (Pa_survivorat_s_p4)

                    ; #18159: origin
                    (Bb_survivorat_s_p4)

                    ; #38239: origin
                    (Ba_survivorat_s_p4)

                    ; #55405: origin
                    (Bc_survivorat_s_p4)

                    ; #56846: <==closure== 18159 (pos)
                    (Pb_survivorat_s_p4)

                    ; #57624: <==closure== 55405 (pos)
                    (Pc_survivorat_s_p4)

                    ; #19888: <==negation-removal== 38239 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #20223: <==negation-removal== 57624 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #33681: <==negation-removal== 56846 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #50392: <==negation-removal== 55405 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #56164: <==negation-removal== 16801 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #76520: <==negation-removal== 18159 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #16801: <==closure== 38239 (pos)
                    (Pa_survivorat_s_p4)

                    ; #18159: origin
                    (Bb_survivorat_s_p4)

                    ; #38239: origin
                    (Ba_survivorat_s_p4)

                    ; #55405: origin
                    (Bc_survivorat_s_p4)

                    ; #56846: <==closure== 18159 (pos)
                    (Pb_survivorat_s_p4)

                    ; #57624: <==closure== 55405 (pos)
                    (Pc_survivorat_s_p4)

                    ; #19888: <==negation-removal== 38239 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #20223: <==negation-removal== 57624 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #33681: <==negation-removal== 56846 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #50392: <==negation-removal== 55405 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #56164: <==negation-removal== 16801 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #76520: <==negation-removal== 18159 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #16801: <==closure== 38239 (pos)
                    (Pa_survivorat_s_p4)

                    ; #18159: origin
                    (Bb_survivorat_s_p4)

                    ; #38239: origin
                    (Ba_survivorat_s_p4)

                    ; #55405: origin
                    (Bc_survivorat_s_p4)

                    ; #56846: <==closure== 18159 (pos)
                    (Pb_survivorat_s_p4)

                    ; #57624: <==closure== 55405 (pos)
                    (Pc_survivorat_s_p4)

                    ; #19888: <==negation-removal== 38239 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #20223: <==negation-removal== 57624 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #33681: <==negation-removal== 56846 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #50392: <==negation-removal== 55405 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #56164: <==negation-removal== 16801 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #76520: <==negation-removal== 18159 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #30375: <==closure== 56568 (pos)
                    (Pb_survivorat_s_p5)

                    ; #30634: <==closure== 92946 (pos)
                    (Pa_survivorat_s_p5)

                    ; #45304: <==closure== 54158 (pos)
                    (Pc_survivorat_s_p5)

                    ; #54158: origin
                    (Bc_survivorat_s_p5)

                    ; #56568: origin
                    (Bb_survivorat_s_p5)

                    ; #92946: origin
                    (Ba_survivorat_s_p5)

                    ; #22053: <==negation-removal== 30634 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #26172: <==negation-removal== 45304 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #34817: <==negation-removal== 56568 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #51141: <==negation-removal== 54158 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #65742: <==negation-removal== 30375 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #83074: <==negation-removal== 92946 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #30375: <==closure== 56568 (pos)
                    (Pb_survivorat_s_p5)

                    ; #30634: <==closure== 92946 (pos)
                    (Pa_survivorat_s_p5)

                    ; #45304: <==closure== 54158 (pos)
                    (Pc_survivorat_s_p5)

                    ; #54158: origin
                    (Bc_survivorat_s_p5)

                    ; #56568: origin
                    (Bb_survivorat_s_p5)

                    ; #92946: origin
                    (Ba_survivorat_s_p5)

                    ; #22053: <==negation-removal== 30634 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #26172: <==negation-removal== 45304 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #34817: <==negation-removal== 56568 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #51141: <==negation-removal== 54158 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #65742: <==negation-removal== 30375 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #83074: <==negation-removal== 92946 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #30375: <==closure== 56568 (pos)
                    (Pb_survivorat_s_p5)

                    ; #30634: <==closure== 92946 (pos)
                    (Pa_survivorat_s_p5)

                    ; #45304: <==closure== 54158 (pos)
                    (Pc_survivorat_s_p5)

                    ; #54158: origin
                    (Bc_survivorat_s_p5)

                    ; #56568: origin
                    (Bb_survivorat_s_p5)

                    ; #92946: origin
                    (Ba_survivorat_s_p5)

                    ; #22053: <==negation-removal== 30634 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #26172: <==negation-removal== 45304 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #34817: <==negation-removal== 56568 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #51141: <==negation-removal== 54158 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #65742: <==negation-removal== 30375 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #83074: <==negation-removal== 92946 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #20068: <==closure== 80420 (pos)
                    (Pa_survivorat_s_p6)

                    ; #37783: origin
                    (Bb_survivorat_s_p6)

                    ; #45033: <==closure== 56912 (pos)
                    (Pc_survivorat_s_p6)

                    ; #56912: origin
                    (Bc_survivorat_s_p6)

                    ; #57722: <==closure== 37783 (pos)
                    (Pb_survivorat_s_p6)

                    ; #80420: origin
                    (Ba_survivorat_s_p6)

                    ; #18860: <==negation-removal== 56912 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #25512: <==negation-removal== 80420 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #48820: <==negation-removal== 45033 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #57825: <==negation-removal== 57722 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #57991: <==negation-removal== 37783 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #86763: <==negation-removal== 20068 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #20068: <==closure== 80420 (pos)
                    (Pa_survivorat_s_p6)

                    ; #37783: origin
                    (Bb_survivorat_s_p6)

                    ; #45033: <==closure== 56912 (pos)
                    (Pc_survivorat_s_p6)

                    ; #56912: origin
                    (Bc_survivorat_s_p6)

                    ; #57722: <==closure== 37783 (pos)
                    (Pb_survivorat_s_p6)

                    ; #80420: origin
                    (Ba_survivorat_s_p6)

                    ; #18860: <==negation-removal== 56912 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #25512: <==negation-removal== 80420 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #48820: <==negation-removal== 45033 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #57825: <==negation-removal== 57722 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #57991: <==negation-removal== 37783 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #86763: <==negation-removal== 20068 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #20068: <==closure== 80420 (pos)
                    (Pa_survivorat_s_p6)

                    ; #37783: origin
                    (Bb_survivorat_s_p6)

                    ; #45033: <==closure== 56912 (pos)
                    (Pc_survivorat_s_p6)

                    ; #56912: origin
                    (Bc_survivorat_s_p6)

                    ; #57722: <==closure== 37783 (pos)
                    (Pb_survivorat_s_p6)

                    ; #80420: origin
                    (Ba_survivorat_s_p6)

                    ; #18860: <==negation-removal== 56912 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #25512: <==negation-removal== 80420 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #48820: <==negation-removal== 45033 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #57825: <==negation-removal== 57722 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #57991: <==negation-removal== 37783 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #86763: <==negation-removal== 20068 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #11913: origin
                    (Bc_survivorat_s_p7)

                    ; #29165: origin
                    (Ba_survivorat_s_p7)

                    ; #40006: <==closure== 11913 (pos)
                    (Pc_survivorat_s_p7)

                    ; #74256: origin
                    (Bb_survivorat_s_p7)

                    ; #82070: <==closure== 74256 (pos)
                    (Pb_survivorat_s_p7)

                    ; #84914: <==closure== 29165 (pos)
                    (Pa_survivorat_s_p7)

                    ; #10816: <==negation-removal== 29165 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #14136: <==negation-removal== 11913 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #35761: <==negation-removal== 74256 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #40066: <==negation-removal== 84914 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #47786: <==negation-removal== 82070 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #54115: <==negation-removal== 40006 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #11913: origin
                    (Bc_survivorat_s_p7)

                    ; #29165: origin
                    (Ba_survivorat_s_p7)

                    ; #40006: <==closure== 11913 (pos)
                    (Pc_survivorat_s_p7)

                    ; #74256: origin
                    (Bb_survivorat_s_p7)

                    ; #82070: <==closure== 74256 (pos)
                    (Pb_survivorat_s_p7)

                    ; #84914: <==closure== 29165 (pos)
                    (Pa_survivorat_s_p7)

                    ; #10816: <==negation-removal== 29165 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #14136: <==negation-removal== 11913 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #35761: <==negation-removal== 74256 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #40066: <==negation-removal== 84914 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #47786: <==negation-removal== 82070 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #54115: <==negation-removal== 40006 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #11913: origin
                    (Bc_survivorat_s_p7)

                    ; #29165: origin
                    (Ba_survivorat_s_p7)

                    ; #40006: <==closure== 11913 (pos)
                    (Pc_survivorat_s_p7)

                    ; #74256: origin
                    (Bb_survivorat_s_p7)

                    ; #82070: <==closure== 74256 (pos)
                    (Pb_survivorat_s_p7)

                    ; #84914: <==closure== 29165 (pos)
                    (Pa_survivorat_s_p7)

                    ; #10816: <==negation-removal== 29165 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #14136: <==negation-removal== 11913 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #35761: <==negation-removal== 74256 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #40066: <==negation-removal== 84914 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #47786: <==negation-removal== 82070 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #54115: <==negation-removal== 40006 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #28120: origin
                    (Ba_survivorat_s_p8)

                    ; #49841: origin
                    (Bb_survivorat_s_p8)

                    ; #51903: origin
                    (Bc_survivorat_s_p8)

                    ; #77201: <==closure== 51903 (pos)
                    (Pc_survivorat_s_p8)

                    ; #84058: <==closure== 49841 (pos)
                    (Pb_survivorat_s_p8)

                    ; #88749: <==closure== 28120 (pos)
                    (Pa_survivorat_s_p8)

                    ; #18978: <==negation-removal== 84058 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #49345: <==negation-removal== 28120 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #59163: <==negation-removal== 77201 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #60838: <==negation-removal== 49841 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #68976: <==negation-removal== 51903 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #80695: <==negation-removal== 88749 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #28120: origin
                    (Ba_survivorat_s_p8)

                    ; #49841: origin
                    (Bb_survivorat_s_p8)

                    ; #51903: origin
                    (Bc_survivorat_s_p8)

                    ; #77201: <==closure== 51903 (pos)
                    (Pc_survivorat_s_p8)

                    ; #84058: <==closure== 49841 (pos)
                    (Pb_survivorat_s_p8)

                    ; #88749: <==closure== 28120 (pos)
                    (Pa_survivorat_s_p8)

                    ; #18978: <==negation-removal== 84058 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #49345: <==negation-removal== 28120 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #59163: <==negation-removal== 77201 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #60838: <==negation-removal== 49841 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #68976: <==negation-removal== 51903 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #80695: <==negation-removal== 88749 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #28120: origin
                    (Ba_survivorat_s_p8)

                    ; #49841: origin
                    (Bb_survivorat_s_p8)

                    ; #51903: origin
                    (Bc_survivorat_s_p8)

                    ; #77201: <==closure== 51903 (pos)
                    (Pc_survivorat_s_p8)

                    ; #84058: <==closure== 49841 (pos)
                    (Pb_survivorat_s_p8)

                    ; #88749: <==closure== 28120 (pos)
                    (Pa_survivorat_s_p8)

                    ; #18978: <==negation-removal== 84058 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #49345: <==negation-removal== 28120 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #59163: <==negation-removal== 77201 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #60838: <==negation-removal== 49841 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #68976: <==negation-removal== 51903 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #80695: <==negation-removal== 88749 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #15176: origin
                    (Bb_survivorat_s_p9)

                    ; #15942: origin
                    (Ba_survivorat_s_p9)

                    ; #38190: <==closure== 15942 (pos)
                    (Pa_survivorat_s_p9)

                    ; #47564: <==closure== 15176 (pos)
                    (Pb_survivorat_s_p9)

                    ; #74688: <==closure== 88816 (pos)
                    (Pc_survivorat_s_p9)

                    ; #88816: origin
                    (Bc_survivorat_s_p9)

                    ; #24781: <==negation-removal== 88816 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #38877: <==negation-removal== 15176 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #42736: <==negation-removal== 15942 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #46139: <==negation-removal== 74688 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #85040: <==negation-removal== 38190 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #87471: <==negation-removal== 47564 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #15176: origin
                    (Bb_survivorat_s_p9)

                    ; #15942: origin
                    (Ba_survivorat_s_p9)

                    ; #38190: <==closure== 15942 (pos)
                    (Pa_survivorat_s_p9)

                    ; #47564: <==closure== 15176 (pos)
                    (Pb_survivorat_s_p9)

                    ; #74688: <==closure== 88816 (pos)
                    (Pc_survivorat_s_p9)

                    ; #88816: origin
                    (Bc_survivorat_s_p9)

                    ; #24781: <==negation-removal== 88816 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #38877: <==negation-removal== 15176 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #42736: <==negation-removal== 15942 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #46139: <==negation-removal== 74688 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #85040: <==negation-removal== 38190 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #87471: <==negation-removal== 47564 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #15176: origin
                    (Bb_survivorat_s_p9)

                    ; #15942: origin
                    (Ba_survivorat_s_p9)

                    ; #38190: <==closure== 15942 (pos)
                    (Pa_survivorat_s_p9)

                    ; #47564: <==closure== 15176 (pos)
                    (Pb_survivorat_s_p9)

                    ; #74688: <==closure== 88816 (pos)
                    (Pc_survivorat_s_p9)

                    ; #88816: origin
                    (Bc_survivorat_s_p9)

                    ; #24781: <==negation-removal== 88816 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #38877: <==negation-removal== 15176 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #42736: <==negation-removal== 15942 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #46139: <==negation-removal== 74688 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #85040: <==negation-removal== 38190 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #87471: <==negation-removal== 47564 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #17375: origin
                    (at_a_p1)

                    ; #79192: origin
                    (not_at_a_p10)

                    ; #27403: <==negation-removal== 79192 (pos)
                    (not (at_a_p10))

                    ; #35706: <==negation-removal== 17375 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #27403: origin
                    (at_a_p10)

                    ; #79192: origin
                    (not_at_a_p10)

                    ; #27403: <==negation-removal== 79192 (pos)
                    (not (at_a_p10))

                    ; #79192: <==negation-removal== 27403 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (at_a_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #22340: origin
                    (at_a_p11)

                    ; #79192: origin
                    (not_at_a_p10)

                    ; #27403: <==negation-removal== 79192 (pos)
                    (not (at_a_p10))

                    ; #86435: <==negation-removal== 22340 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #71205: origin
                    (at_a_p12)

                    ; #79192: origin
                    (not_at_a_p10)

                    ; #27403: <==negation-removal== 79192 (pos)
                    (not (at_a_p10))

                    ; #80324: <==negation-removal== 71205 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #77123: origin
                    (at_a_p2)

                    ; #79192: origin
                    (not_at_a_p10)

                    ; #27403: <==negation-removal== 79192 (pos)
                    (not (at_a_p10))

                    ; #95640: <==negation-removal== 77123 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (at_a_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #79192: origin
                    (not_at_a_p10)

                    ; #87170: origin
                    (at_a_p3)

                    ; #27403: <==negation-removal== 79192 (pos)
                    (not (at_a_p10))

                    ; #68445: <==negation-removal== 87170 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #52384: origin
                    (at_a_p4)

                    ; #79192: origin
                    (not_at_a_p10)

                    ; #27403: <==negation-removal== 79192 (pos)
                    (not (at_a_p10))

                    ; #32546: <==negation-removal== 52384 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (at_a_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #79192: origin
                    (not_at_a_p10)

                    ; #81271: origin
                    (at_a_p5)

                    ; #27403: <==negation-removal== 79192 (pos)
                    (not (at_a_p10))

                    ; #59501: <==negation-removal== 81271 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #15646: origin
                    (at_a_p6)

                    ; #79192: origin
                    (not_at_a_p10)

                    ; #27403: <==negation-removal== 79192 (pos)
                    (not (at_a_p10))

                    ; #77740: <==negation-removal== 15646 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #28092: origin
                    (at_a_p7)

                    ; #79192: origin
                    (not_at_a_p10)

                    ; #27403: <==negation-removal== 79192 (pos)
                    (not (at_a_p10))

                    ; #40844: <==negation-removal== 28092 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10))
        :effect (and
                    ; #73597: origin
                    (at_a_p8)

                    ; #79192: origin
                    (not_at_a_p10)

                    ; #27403: <==negation-removal== 79192 (pos)
                    (not (at_a_p10))

                    ; #58435: <==negation-removal== 73597 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #68294: origin
                    (at_a_p9)

                    ; #79192: origin
                    (not_at_a_p10)

                    ; #27403: <==negation-removal== 79192 (pos)
                    (not (at_a_p10))

                    ; #64903: <==negation-removal== 68294 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11))
        :effect (and
                    ; #17375: origin
                    (at_a_p1)

                    ; #86435: origin
                    (not_at_a_p11)

                    ; #22340: <==negation-removal== 86435 (pos)
                    (not (at_a_p11))

                    ; #35706: <==negation-removal== 17375 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_a_p11))
        :effect (and
                    ; #27403: origin
                    (at_a_p10)

                    ; #86435: origin
                    (not_at_a_p11)

                    ; #22340: <==negation-removal== 86435 (pos)
                    (not (at_a_p11))

                    ; #79192: <==negation-removal== 27403 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_a_p11))
        :effect (and
                    ; #22340: origin
                    (at_a_p11)

                    ; #86435: origin
                    (not_at_a_p11)

                    ; #22340: <==negation-removal== 86435 (pos)
                    (not (at_a_p11))

                    ; #86435: <==negation-removal== 22340 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11))
        :effect (and
                    ; #71205: origin
                    (at_a_p12)

                    ; #86435: origin
                    (not_at_a_p11)

                    ; #22340: <==negation-removal== 86435 (pos)
                    (not (at_a_p11))

                    ; #80324: <==negation-removal== 71205 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_a_p11))
        :effect (and
                    ; #77123: origin
                    (at_a_p2)

                    ; #86435: origin
                    (not_at_a_p11)

                    ; #22340: <==negation-removal== 86435 (pos)
                    (not (at_a_p11))

                    ; #95640: <==negation-removal== 77123 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_a_p11))
        :effect (and
                    ; #86435: origin
                    (not_at_a_p11)

                    ; #87170: origin
                    (at_a_p3)

                    ; #22340: <==negation-removal== 86435 (pos)
                    (not (at_a_p11))

                    ; #68445: <==negation-removal== 87170 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11))
        :effect (and
                    ; #52384: origin
                    (at_a_p4)

                    ; #86435: origin
                    (not_at_a_p11)

                    ; #22340: <==negation-removal== 86435 (pos)
                    (not (at_a_p11))

                    ; #32546: <==negation-removal== 52384 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_a_p11))
        :effect (and
                    ; #81271: origin
                    (at_a_p5)

                    ; #86435: origin
                    (not_at_a_p11)

                    ; #22340: <==negation-removal== 86435 (pos)
                    (not (at_a_p11))

                    ; #59501: <==negation-removal== 81271 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_a_p11))
        :effect (and
                    ; #15646: origin
                    (at_a_p6)

                    ; #86435: origin
                    (not_at_a_p11)

                    ; #22340: <==negation-removal== 86435 (pos)
                    (not (at_a_p11))

                    ; #77740: <==negation-removal== 15646 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_a_p11))
        :effect (and
                    ; #28092: origin
                    (at_a_p7)

                    ; #86435: origin
                    (not_at_a_p11)

                    ; #22340: <==negation-removal== 86435 (pos)
                    (not (at_a_p11))

                    ; #40844: <==negation-removal== 28092 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11))
        :effect (and
                    ; #73597: origin
                    (at_a_p8)

                    ; #86435: origin
                    (not_at_a_p11)

                    ; #22340: <==negation-removal== 86435 (pos)
                    (not (at_a_p11))

                    ; #58435: <==negation-removal== 73597 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11))
        :effect (and
                    ; #68294: origin
                    (at_a_p9)

                    ; #86435: origin
                    (not_at_a_p11)

                    ; #22340: <==negation-removal== 86435 (pos)
                    (not (at_a_p11))

                    ; #64903: <==negation-removal== 68294 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (at_a_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #17375: origin
                    (at_a_p1)

                    ; #80324: origin
                    (not_at_a_p12)

                    ; #35706: <==negation-removal== 17375 (pos)
                    (not (not_at_a_p1))

                    ; #71205: <==negation-removal== 80324 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12))
        :effect (and
                    ; #27403: origin
                    (at_a_p10)

                    ; #80324: origin
                    (not_at_a_p12)

                    ; #71205: <==negation-removal== 80324 (pos)
                    (not (at_a_p12))

                    ; #79192: <==negation-removal== 27403 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12))
        :effect (and
                    ; #22340: origin
                    (at_a_p11)

                    ; #80324: origin
                    (not_at_a_p12)

                    ; #71205: <==negation-removal== 80324 (pos)
                    (not (at_a_p12))

                    ; #86435: <==negation-removal== 22340 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (at_a_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #71205: origin
                    (at_a_p12)

                    ; #80324: origin
                    (not_at_a_p12)

                    ; #71205: <==negation-removal== 80324 (pos)
                    (not (at_a_p12))

                    ; #80324: <==negation-removal== 71205 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (at_a_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #77123: origin
                    (at_a_p2)

                    ; #80324: origin
                    (not_at_a_p12)

                    ; #71205: <==negation-removal== 80324 (pos)
                    (not (at_a_p12))

                    ; #95640: <==negation-removal== 77123 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #80324: origin
                    (not_at_a_p12)

                    ; #87170: origin
                    (at_a_p3)

                    ; #68445: <==negation-removal== 87170 (pos)
                    (not (not_at_a_p3))

                    ; #71205: <==negation-removal== 80324 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12))
        :effect (and
                    ; #52384: origin
                    (at_a_p4)

                    ; #80324: origin
                    (not_at_a_p12)

                    ; #32546: <==negation-removal== 52384 (pos)
                    (not (not_at_a_p4))

                    ; #71205: <==negation-removal== 80324 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (at_a_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #80324: origin
                    (not_at_a_p12)

                    ; #81271: origin
                    (at_a_p5)

                    ; #59501: <==negation-removal== 81271 (pos)
                    (not (not_at_a_p5))

                    ; #71205: <==negation-removal== 80324 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12))
        :effect (and
                    ; #15646: origin
                    (at_a_p6)

                    ; #80324: origin
                    (not_at_a_p12)

                    ; #71205: <==negation-removal== 80324 (pos)
                    (not (at_a_p12))

                    ; #77740: <==negation-removal== 15646 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12))
        :effect (and
                    ; #28092: origin
                    (at_a_p7)

                    ; #80324: origin
                    (not_at_a_p12)

                    ; #40844: <==negation-removal== 28092 (pos)
                    (not (not_at_a_p7))

                    ; #71205: <==negation-removal== 80324 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (at_a_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #73597: origin
                    (at_a_p8)

                    ; #80324: origin
                    (not_at_a_p12)

                    ; #58435: <==negation-removal== 73597 (pos)
                    (not (not_at_a_p8))

                    ; #71205: <==negation-removal== 80324 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12))
        :effect (and
                    ; #68294: origin
                    (at_a_p9)

                    ; #80324: origin
                    (not_at_a_p12)

                    ; #64903: <==negation-removal== 68294 (pos)
                    (not (not_at_a_p9))

                    ; #71205: <==negation-removal== 80324 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #17375: origin
                    (at_a_p1)

                    ; #35706: origin
                    (not_at_a_p1)

                    ; #17375: <==negation-removal== 35706 (pos)
                    (not (at_a_p1))

                    ; #35706: <==negation-removal== 17375 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1))
        :effect (and
                    ; #27403: origin
                    (at_a_p10)

                    ; #35706: origin
                    (not_at_a_p1)

                    ; #17375: <==negation-removal== 35706 (pos)
                    (not (at_a_p1))

                    ; #79192: <==negation-removal== 27403 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1))
        :effect (and
                    ; #22340: origin
                    (at_a_p11)

                    ; #35706: origin
                    (not_at_a_p1)

                    ; #17375: <==negation-removal== 35706 (pos)
                    (not (at_a_p1))

                    ; #86435: <==negation-removal== 22340 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #35706: origin
                    (not_at_a_p1)

                    ; #71205: origin
                    (at_a_p12)

                    ; #17375: <==negation-removal== 35706 (pos)
                    (not (at_a_p1))

                    ; #80324: <==negation-removal== 71205 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #35706: origin
                    (not_at_a_p1)

                    ; #77123: origin
                    (at_a_p2)

                    ; #17375: <==negation-removal== 35706 (pos)
                    (not (at_a_p1))

                    ; #95640: <==negation-removal== 77123 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #35706: origin
                    (not_at_a_p1)

                    ; #87170: origin
                    (at_a_p3)

                    ; #17375: <==negation-removal== 35706 (pos)
                    (not (at_a_p1))

                    ; #68445: <==negation-removal== 87170 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #35706: origin
                    (not_at_a_p1)

                    ; #52384: origin
                    (at_a_p4)

                    ; #17375: <==negation-removal== 35706 (pos)
                    (not (at_a_p1))

                    ; #32546: <==negation-removal== 52384 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #35706: origin
                    (not_at_a_p1)

                    ; #81271: origin
                    (at_a_p5)

                    ; #17375: <==negation-removal== 35706 (pos)
                    (not (at_a_p1))

                    ; #59501: <==negation-removal== 81271 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #15646: origin
                    (at_a_p6)

                    ; #35706: origin
                    (not_at_a_p1)

                    ; #17375: <==negation-removal== 35706 (pos)
                    (not (at_a_p1))

                    ; #77740: <==negation-removal== 15646 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #28092: origin
                    (at_a_p7)

                    ; #35706: origin
                    (not_at_a_p1)

                    ; #17375: <==negation-removal== 35706 (pos)
                    (not (at_a_p1))

                    ; #40844: <==negation-removal== 28092 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #35706: origin
                    (not_at_a_p1)

                    ; #73597: origin
                    (at_a_p8)

                    ; #17375: <==negation-removal== 35706 (pos)
                    (not (at_a_p1))

                    ; #58435: <==negation-removal== 73597 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #35706: origin
                    (not_at_a_p1)

                    ; #68294: origin
                    (at_a_p9)

                    ; #17375: <==negation-removal== 35706 (pos)
                    (not (at_a_p1))

                    ; #64903: <==negation-removal== 68294 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #17375: origin
                    (at_a_p1)

                    ; #95640: origin
                    (not_at_a_p2)

                    ; #35706: <==negation-removal== 17375 (pos)
                    (not (not_at_a_p1))

                    ; #77123: <==negation-removal== 95640 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2))
        :effect (and
                    ; #27403: origin
                    (at_a_p10)

                    ; #95640: origin
                    (not_at_a_p2)

                    ; #77123: <==negation-removal== 95640 (pos)
                    (not (at_a_p2))

                    ; #79192: <==negation-removal== 27403 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2))
        :effect (and
                    ; #22340: origin
                    (at_a_p11)

                    ; #95640: origin
                    (not_at_a_p2)

                    ; #77123: <==negation-removal== 95640 (pos)
                    (not (at_a_p2))

                    ; #86435: <==negation-removal== 22340 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2))
        :effect (and
                    ; #71205: origin
                    (at_a_p12)

                    ; #95640: origin
                    (not_at_a_p2)

                    ; #77123: <==negation-removal== 95640 (pos)
                    (not (at_a_p2))

                    ; #80324: <==negation-removal== 71205 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #77123: origin
                    (at_a_p2)

                    ; #95640: origin
                    (not_at_a_p2)

                    ; #77123: <==negation-removal== 95640 (pos)
                    (not (at_a_p2))

                    ; #95640: <==negation-removal== 77123 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #87170: origin
                    (at_a_p3)

                    ; #95640: origin
                    (not_at_a_p2)

                    ; #68445: <==negation-removal== 87170 (pos)
                    (not (not_at_a_p3))

                    ; #77123: <==negation-removal== 95640 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #52384: origin
                    (at_a_p4)

                    ; #95640: origin
                    (not_at_a_p2)

                    ; #32546: <==negation-removal== 52384 (pos)
                    (not (not_at_a_p4))

                    ; #77123: <==negation-removal== 95640 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #81271: origin
                    (at_a_p5)

                    ; #95640: origin
                    (not_at_a_p2)

                    ; #59501: <==negation-removal== 81271 (pos)
                    (not (not_at_a_p5))

                    ; #77123: <==negation-removal== 95640 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #15646: origin
                    (at_a_p6)

                    ; #95640: origin
                    (not_at_a_p2)

                    ; #77123: <==negation-removal== 95640 (pos)
                    (not (at_a_p2))

                    ; #77740: <==negation-removal== 15646 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #28092: origin
                    (at_a_p7)

                    ; #95640: origin
                    (not_at_a_p2)

                    ; #40844: <==negation-removal== 28092 (pos)
                    (not (not_at_a_p7))

                    ; #77123: <==negation-removal== 95640 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #73597: origin
                    (at_a_p8)

                    ; #95640: origin
                    (not_at_a_p2)

                    ; #58435: <==negation-removal== 73597 (pos)
                    (not (not_at_a_p8))

                    ; #77123: <==negation-removal== 95640 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #68294: origin
                    (at_a_p9)

                    ; #95640: origin
                    (not_at_a_p2)

                    ; #64903: <==negation-removal== 68294 (pos)
                    (not (not_at_a_p9))

                    ; #77123: <==negation-removal== 95640 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #17375: origin
                    (at_a_p1)

                    ; #68445: origin
                    (not_at_a_p3)

                    ; #35706: <==negation-removal== 17375 (pos)
                    (not (not_at_a_p1))

                    ; #87170: <==negation-removal== 68445 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3))
        :effect (and
                    ; #27403: origin
                    (at_a_p10)

                    ; #68445: origin
                    (not_at_a_p3)

                    ; #79192: <==negation-removal== 27403 (pos)
                    (not (not_at_a_p10))

                    ; #87170: <==negation-removal== 68445 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #22340: origin
                    (at_a_p11)

                    ; #68445: origin
                    (not_at_a_p3)

                    ; #86435: <==negation-removal== 22340 (pos)
                    (not (not_at_a_p11))

                    ; #87170: <==negation-removal== 68445 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #68445: origin
                    (not_at_a_p3)

                    ; #71205: origin
                    (at_a_p12)

                    ; #80324: <==negation-removal== 71205 (pos)
                    (not (not_at_a_p12))

                    ; #87170: <==negation-removal== 68445 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #68445: origin
                    (not_at_a_p3)

                    ; #77123: origin
                    (at_a_p2)

                    ; #87170: <==negation-removal== 68445 (pos)
                    (not (at_a_p3))

                    ; #95640: <==negation-removal== 77123 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #68445: origin
                    (not_at_a_p3)

                    ; #87170: origin
                    (at_a_p3)

                    ; #68445: <==negation-removal== 87170 (pos)
                    (not (not_at_a_p3))

                    ; #87170: <==negation-removal== 68445 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #52384: origin
                    (at_a_p4)

                    ; #68445: origin
                    (not_at_a_p3)

                    ; #32546: <==negation-removal== 52384 (pos)
                    (not (not_at_a_p4))

                    ; #87170: <==negation-removal== 68445 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #68445: origin
                    (not_at_a_p3)

                    ; #81271: origin
                    (at_a_p5)

                    ; #59501: <==negation-removal== 81271 (pos)
                    (not (not_at_a_p5))

                    ; #87170: <==negation-removal== 68445 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #15646: origin
                    (at_a_p6)

                    ; #68445: origin
                    (not_at_a_p3)

                    ; #77740: <==negation-removal== 15646 (pos)
                    (not (not_at_a_p6))

                    ; #87170: <==negation-removal== 68445 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #28092: origin
                    (at_a_p7)

                    ; #68445: origin
                    (not_at_a_p3)

                    ; #40844: <==negation-removal== 28092 (pos)
                    (not (not_at_a_p7))

                    ; #87170: <==negation-removal== 68445 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #68445: origin
                    (not_at_a_p3)

                    ; #73597: origin
                    (at_a_p8)

                    ; #58435: <==negation-removal== 73597 (pos)
                    (not (not_at_a_p8))

                    ; #87170: <==negation-removal== 68445 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #68294: origin
                    (at_a_p9)

                    ; #68445: origin
                    (not_at_a_p3)

                    ; #64903: <==negation-removal== 68294 (pos)
                    (not (not_at_a_p9))

                    ; #87170: <==negation-removal== 68445 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #17375: origin
                    (at_a_p1)

                    ; #32546: origin
                    (not_at_a_p4)

                    ; #35706: <==negation-removal== 17375 (pos)
                    (not (not_at_a_p1))

                    ; #52384: <==negation-removal== 32546 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_a_p4))
        :effect (and
                    ; #27403: origin
                    (at_a_p10)

                    ; #32546: origin
                    (not_at_a_p4)

                    ; #52384: <==negation-removal== 32546 (pos)
                    (not (at_a_p4))

                    ; #79192: <==negation-removal== 27403 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4))
        :effect (and
                    ; #22340: origin
                    (at_a_p11)

                    ; #32546: origin
                    (not_at_a_p4)

                    ; #52384: <==negation-removal== 32546 (pos)
                    (not (at_a_p4))

                    ; #86435: <==negation-removal== 22340 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_a_p4))
        :effect (and
                    ; #32546: origin
                    (not_at_a_p4)

                    ; #71205: origin
                    (at_a_p12)

                    ; #52384: <==negation-removal== 32546 (pos)
                    (not (at_a_p4))

                    ; #80324: <==negation-removal== 71205 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #32546: origin
                    (not_at_a_p4)

                    ; #77123: origin
                    (at_a_p2)

                    ; #52384: <==negation-removal== 32546 (pos)
                    (not (at_a_p4))

                    ; #95640: <==negation-removal== 77123 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #32546: origin
                    (not_at_a_p4)

                    ; #87170: origin
                    (at_a_p3)

                    ; #52384: <==negation-removal== 32546 (pos)
                    (not (at_a_p4))

                    ; #68445: <==negation-removal== 87170 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #32546: origin
                    (not_at_a_p4)

                    ; #52384: origin
                    (at_a_p4)

                    ; #32546: <==negation-removal== 52384 (pos)
                    (not (not_at_a_p4))

                    ; #52384: <==negation-removal== 32546 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #32546: origin
                    (not_at_a_p4)

                    ; #81271: origin
                    (at_a_p5)

                    ; #52384: <==negation-removal== 32546 (pos)
                    (not (at_a_p4))

                    ; #59501: <==negation-removal== 81271 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #15646: origin
                    (at_a_p6)

                    ; #32546: origin
                    (not_at_a_p4)

                    ; #52384: <==negation-removal== 32546 (pos)
                    (not (at_a_p4))

                    ; #77740: <==negation-removal== 15646 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #28092: origin
                    (at_a_p7)

                    ; #32546: origin
                    (not_at_a_p4)

                    ; #40844: <==negation-removal== 28092 (pos)
                    (not (not_at_a_p7))

                    ; #52384: <==negation-removal== 32546 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #32546: origin
                    (not_at_a_p4)

                    ; #73597: origin
                    (at_a_p8)

                    ; #52384: <==negation-removal== 32546 (pos)
                    (not (at_a_p4))

                    ; #58435: <==negation-removal== 73597 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #32546: origin
                    (not_at_a_p4)

                    ; #68294: origin
                    (at_a_p9)

                    ; #52384: <==negation-removal== 32546 (pos)
                    (not (at_a_p4))

                    ; #64903: <==negation-removal== 68294 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #17375: origin
                    (at_a_p1)

                    ; #59501: origin
                    (not_at_a_p5)

                    ; #35706: <==negation-removal== 17375 (pos)
                    (not (not_at_a_p1))

                    ; #81271: <==negation-removal== 59501 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #27403: origin
                    (at_a_p10)

                    ; #59501: origin
                    (not_at_a_p5)

                    ; #79192: <==negation-removal== 27403 (pos)
                    (not (not_at_a_p10))

                    ; #81271: <==negation-removal== 59501 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #22340: origin
                    (at_a_p11)

                    ; #59501: origin
                    (not_at_a_p5)

                    ; #81271: <==negation-removal== 59501 (pos)
                    (not (at_a_p5))

                    ; #86435: <==negation-removal== 22340 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #59501: origin
                    (not_at_a_p5)

                    ; #71205: origin
                    (at_a_p12)

                    ; #80324: <==negation-removal== 71205 (pos)
                    (not (not_at_a_p12))

                    ; #81271: <==negation-removal== 59501 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #59501: origin
                    (not_at_a_p5)

                    ; #77123: origin
                    (at_a_p2)

                    ; #81271: <==negation-removal== 59501 (pos)
                    (not (at_a_p5))

                    ; #95640: <==negation-removal== 77123 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #59501: origin
                    (not_at_a_p5)

                    ; #87170: origin
                    (at_a_p3)

                    ; #68445: <==negation-removal== 87170 (pos)
                    (not (not_at_a_p3))

                    ; #81271: <==negation-removal== 59501 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #52384: origin
                    (at_a_p4)

                    ; #59501: origin
                    (not_at_a_p5)

                    ; #32546: <==negation-removal== 52384 (pos)
                    (not (not_at_a_p4))

                    ; #81271: <==negation-removal== 59501 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #59501: origin
                    (not_at_a_p5)

                    ; #81271: origin
                    (at_a_p5)

                    ; #59501: <==negation-removal== 81271 (pos)
                    (not (not_at_a_p5))

                    ; #81271: <==negation-removal== 59501 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #15646: origin
                    (at_a_p6)

                    ; #59501: origin
                    (not_at_a_p5)

                    ; #77740: <==negation-removal== 15646 (pos)
                    (not (not_at_a_p6))

                    ; #81271: <==negation-removal== 59501 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #28092: origin
                    (at_a_p7)

                    ; #59501: origin
                    (not_at_a_p5)

                    ; #40844: <==negation-removal== 28092 (pos)
                    (not (not_at_a_p7))

                    ; #81271: <==negation-removal== 59501 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #59501: origin
                    (not_at_a_p5)

                    ; #73597: origin
                    (at_a_p8)

                    ; #58435: <==negation-removal== 73597 (pos)
                    (not (not_at_a_p8))

                    ; #81271: <==negation-removal== 59501 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #59501: origin
                    (not_at_a_p5)

                    ; #68294: origin
                    (at_a_p9)

                    ; #64903: <==negation-removal== 68294 (pos)
                    (not (not_at_a_p9))

                    ; #81271: <==negation-removal== 59501 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #17375: origin
                    (at_a_p1)

                    ; #77740: origin
                    (not_at_a_p6)

                    ; #15646: <==negation-removal== 77740 (pos)
                    (not (at_a_p6))

                    ; #35706: <==negation-removal== 17375 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #27403: origin
                    (at_a_p10)

                    ; #77740: origin
                    (not_at_a_p6)

                    ; #15646: <==negation-removal== 77740 (pos)
                    (not (at_a_p6))

                    ; #79192: <==negation-removal== 27403 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6))
        :effect (and
                    ; #22340: origin
                    (at_a_p11)

                    ; #77740: origin
                    (not_at_a_p6)

                    ; #15646: <==negation-removal== 77740 (pos)
                    (not (at_a_p6))

                    ; #86435: <==negation-removal== 22340 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6))
        :effect (and
                    ; #71205: origin
                    (at_a_p12)

                    ; #77740: origin
                    (not_at_a_p6)

                    ; #15646: <==negation-removal== 77740 (pos)
                    (not (at_a_p6))

                    ; #80324: <==negation-removal== 71205 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #77123: origin
                    (at_a_p2)

                    ; #77740: origin
                    (not_at_a_p6)

                    ; #15646: <==negation-removal== 77740 (pos)
                    (not (at_a_p6))

                    ; #95640: <==negation-removal== 77123 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #77740: origin
                    (not_at_a_p6)

                    ; #87170: origin
                    (at_a_p3)

                    ; #15646: <==negation-removal== 77740 (pos)
                    (not (at_a_p6))

                    ; #68445: <==negation-removal== 87170 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #52384: origin
                    (at_a_p4)

                    ; #77740: origin
                    (not_at_a_p6)

                    ; #15646: <==negation-removal== 77740 (pos)
                    (not (at_a_p6))

                    ; #32546: <==negation-removal== 52384 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #77740: origin
                    (not_at_a_p6)

                    ; #81271: origin
                    (at_a_p5)

                    ; #15646: <==negation-removal== 77740 (pos)
                    (not (at_a_p6))

                    ; #59501: <==negation-removal== 81271 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #15646: origin
                    (at_a_p6)

                    ; #77740: origin
                    (not_at_a_p6)

                    ; #15646: <==negation-removal== 77740 (pos)
                    (not (at_a_p6))

                    ; #77740: <==negation-removal== 15646 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #28092: origin
                    (at_a_p7)

                    ; #77740: origin
                    (not_at_a_p6)

                    ; #15646: <==negation-removal== 77740 (pos)
                    (not (at_a_p6))

                    ; #40844: <==negation-removal== 28092 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #73597: origin
                    (at_a_p8)

                    ; #77740: origin
                    (not_at_a_p6)

                    ; #15646: <==negation-removal== 77740 (pos)
                    (not (at_a_p6))

                    ; #58435: <==negation-removal== 73597 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #68294: origin
                    (at_a_p9)

                    ; #77740: origin
                    (not_at_a_p6)

                    ; #15646: <==negation-removal== 77740 (pos)
                    (not (at_a_p6))

                    ; #64903: <==negation-removal== 68294 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #17375: origin
                    (at_a_p1)

                    ; #40844: origin
                    (not_at_a_p7)

                    ; #28092: <==negation-removal== 40844 (pos)
                    (not (at_a_p7))

                    ; #35706: <==negation-removal== 17375 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (at_a_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #27403: origin
                    (at_a_p10)

                    ; #40844: origin
                    (not_at_a_p7)

                    ; #28092: <==negation-removal== 40844 (pos)
                    (not (at_a_p7))

                    ; #79192: <==negation-removal== 27403 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #22340: origin
                    (at_a_p11)

                    ; #40844: origin
                    (not_at_a_p7)

                    ; #28092: <==negation-removal== 40844 (pos)
                    (not (at_a_p7))

                    ; #86435: <==negation-removal== 22340 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (at_a_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #40844: origin
                    (not_at_a_p7)

                    ; #71205: origin
                    (at_a_p12)

                    ; #28092: <==negation-removal== 40844 (pos)
                    (not (at_a_p7))

                    ; #80324: <==negation-removal== 71205 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #40844: origin
                    (not_at_a_p7)

                    ; #77123: origin
                    (at_a_p2)

                    ; #28092: <==negation-removal== 40844 (pos)
                    (not (at_a_p7))

                    ; #95640: <==negation-removal== 77123 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #40844: origin
                    (not_at_a_p7)

                    ; #87170: origin
                    (at_a_p3)

                    ; #28092: <==negation-removal== 40844 (pos)
                    (not (at_a_p7))

                    ; #68445: <==negation-removal== 87170 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #40844: origin
                    (not_at_a_p7)

                    ; #52384: origin
                    (at_a_p4)

                    ; #28092: <==negation-removal== 40844 (pos)
                    (not (at_a_p7))

                    ; #32546: <==negation-removal== 52384 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #40844: origin
                    (not_at_a_p7)

                    ; #81271: origin
                    (at_a_p5)

                    ; #28092: <==negation-removal== 40844 (pos)
                    (not (at_a_p7))

                    ; #59501: <==negation-removal== 81271 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #15646: origin
                    (at_a_p6)

                    ; #40844: origin
                    (not_at_a_p7)

                    ; #28092: <==negation-removal== 40844 (pos)
                    (not (at_a_p7))

                    ; #77740: <==negation-removal== 15646 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #28092: origin
                    (at_a_p7)

                    ; #40844: origin
                    (not_at_a_p7)

                    ; #28092: <==negation-removal== 40844 (pos)
                    (not (at_a_p7))

                    ; #40844: <==negation-removal== 28092 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #40844: origin
                    (not_at_a_p7)

                    ; #73597: origin
                    (at_a_p8)

                    ; #28092: <==negation-removal== 40844 (pos)
                    (not (at_a_p7))

                    ; #58435: <==negation-removal== 73597 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #40844: origin
                    (not_at_a_p7)

                    ; #68294: origin
                    (at_a_p9)

                    ; #28092: <==negation-removal== 40844 (pos)
                    (not (at_a_p7))

                    ; #64903: <==negation-removal== 68294 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #17375: origin
                    (at_a_p1)

                    ; #58435: origin
                    (not_at_a_p8)

                    ; #35706: <==negation-removal== 17375 (pos)
                    (not (not_at_a_p1))

                    ; #73597: <==negation-removal== 58435 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8))
        :effect (and
                    ; #27403: origin
                    (at_a_p10)

                    ; #58435: origin
                    (not_at_a_p8)

                    ; #73597: <==negation-removal== 58435 (pos)
                    (not (at_a_p8))

                    ; #79192: <==negation-removal== 27403 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8))
        :effect (and
                    ; #22340: origin
                    (at_a_p11)

                    ; #58435: origin
                    (not_at_a_p8)

                    ; #73597: <==negation-removal== 58435 (pos)
                    (not (at_a_p8))

                    ; #86435: <==negation-removal== 22340 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #58435: origin
                    (not_at_a_p8)

                    ; #71205: origin
                    (at_a_p12)

                    ; #73597: <==negation-removal== 58435 (pos)
                    (not (at_a_p8))

                    ; #80324: <==negation-removal== 71205 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #58435: origin
                    (not_at_a_p8)

                    ; #77123: origin
                    (at_a_p2)

                    ; #73597: <==negation-removal== 58435 (pos)
                    (not (at_a_p8))

                    ; #95640: <==negation-removal== 77123 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #58435: origin
                    (not_at_a_p8)

                    ; #87170: origin
                    (at_a_p3)

                    ; #68445: <==negation-removal== 87170 (pos)
                    (not (not_at_a_p3))

                    ; #73597: <==negation-removal== 58435 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #52384: origin
                    (at_a_p4)

                    ; #58435: origin
                    (not_at_a_p8)

                    ; #32546: <==negation-removal== 52384 (pos)
                    (not (not_at_a_p4))

                    ; #73597: <==negation-removal== 58435 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #58435: origin
                    (not_at_a_p8)

                    ; #81271: origin
                    (at_a_p5)

                    ; #59501: <==negation-removal== 81271 (pos)
                    (not (not_at_a_p5))

                    ; #73597: <==negation-removal== 58435 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #15646: origin
                    (at_a_p6)

                    ; #58435: origin
                    (not_at_a_p8)

                    ; #73597: <==negation-removal== 58435 (pos)
                    (not (at_a_p8))

                    ; #77740: <==negation-removal== 15646 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #28092: origin
                    (at_a_p7)

                    ; #58435: origin
                    (not_at_a_p8)

                    ; #40844: <==negation-removal== 28092 (pos)
                    (not (not_at_a_p7))

                    ; #73597: <==negation-removal== 58435 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #58435: origin
                    (not_at_a_p8)

                    ; #73597: origin
                    (at_a_p8)

                    ; #58435: <==negation-removal== 73597 (pos)
                    (not (not_at_a_p8))

                    ; #73597: <==negation-removal== 58435 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #58435: origin
                    (not_at_a_p8)

                    ; #68294: origin
                    (at_a_p9)

                    ; #64903: <==negation-removal== 68294 (pos)
                    (not (not_at_a_p9))

                    ; #73597: <==negation-removal== 58435 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #17375: origin
                    (at_a_p1)

                    ; #64903: origin
                    (not_at_a_p9)

                    ; #35706: <==negation-removal== 17375 (pos)
                    (not (not_at_a_p1))

                    ; #68294: <==negation-removal== 64903 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9))
        :effect (and
                    ; #27403: origin
                    (at_a_p10)

                    ; #64903: origin
                    (not_at_a_p9)

                    ; #68294: <==negation-removal== 64903 (pos)
                    (not (at_a_p9))

                    ; #79192: <==negation-removal== 27403 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9))
        :effect (and
                    ; #22340: origin
                    (at_a_p11)

                    ; #64903: origin
                    (not_at_a_p9)

                    ; #68294: <==negation-removal== 64903 (pos)
                    (not (at_a_p9))

                    ; #86435: <==negation-removal== 22340 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9))
        :effect (and
                    ; #64903: origin
                    (not_at_a_p9)

                    ; #71205: origin
                    (at_a_p12)

                    ; #68294: <==negation-removal== 64903 (pos)
                    (not (at_a_p9))

                    ; #80324: <==negation-removal== 71205 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #64903: origin
                    (not_at_a_p9)

                    ; #77123: origin
                    (at_a_p2)

                    ; #68294: <==negation-removal== 64903 (pos)
                    (not (at_a_p9))

                    ; #95640: <==negation-removal== 77123 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #64903: origin
                    (not_at_a_p9)

                    ; #87170: origin
                    (at_a_p3)

                    ; #68294: <==negation-removal== 64903 (pos)
                    (not (at_a_p9))

                    ; #68445: <==negation-removal== 87170 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #52384: origin
                    (at_a_p4)

                    ; #64903: origin
                    (not_at_a_p9)

                    ; #32546: <==negation-removal== 52384 (pos)
                    (not (not_at_a_p4))

                    ; #68294: <==negation-removal== 64903 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #64903: origin
                    (not_at_a_p9)

                    ; #81271: origin
                    (at_a_p5)

                    ; #59501: <==negation-removal== 81271 (pos)
                    (not (not_at_a_p5))

                    ; #68294: <==negation-removal== 64903 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #15646: origin
                    (at_a_p6)

                    ; #64903: origin
                    (not_at_a_p9)

                    ; #68294: <==negation-removal== 64903 (pos)
                    (not (at_a_p9))

                    ; #77740: <==negation-removal== 15646 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #28092: origin
                    (at_a_p7)

                    ; #64903: origin
                    (not_at_a_p9)

                    ; #40844: <==negation-removal== 28092 (pos)
                    (not (not_at_a_p7))

                    ; #68294: <==negation-removal== 64903 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #64903: origin
                    (not_at_a_p9)

                    ; #73597: origin
                    (at_a_p8)

                    ; #58435: <==negation-removal== 73597 (pos)
                    (not (not_at_a_p8))

                    ; #68294: <==negation-removal== 64903 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #64903: origin
                    (not_at_a_p9)

                    ; #68294: origin
                    (at_a_p9)

                    ; #64903: <==negation-removal== 68294 (pos)
                    (not (not_at_a_p9))

                    ; #68294: <==negation-removal== 64903 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #28835: origin
                    (at_b_p1)

                    ; #45296: origin
                    (not_at_b_p10)

                    ; #29204: <==negation-removal== 45296 (pos)
                    (not (at_b_p10))

                    ; #74407: <==negation-removal== 28835 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #29204: origin
                    (at_b_p10)

                    ; #45296: origin
                    (not_at_b_p10)

                    ; #29204: <==negation-removal== 45296 (pos)
                    (not (at_b_p10))

                    ; #45296: <==negation-removal== 29204 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #23417: origin
                    (at_b_p11)

                    ; #45296: origin
                    (not_at_b_p10)

                    ; #16668: <==negation-removal== 23417 (pos)
                    (not (not_at_b_p11))

                    ; #29204: <==negation-removal== 45296 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #45296: origin
                    (not_at_b_p10)

                    ; #66807: origin
                    (at_b_p12)

                    ; #13446: <==negation-removal== 66807 (pos)
                    (not (not_at_b_p12))

                    ; #29204: <==negation-removal== 45296 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #28386: origin
                    (at_b_p2)

                    ; #45296: origin
                    (not_at_b_p10)

                    ; #29204: <==negation-removal== 45296 (pos)
                    (not (at_b_p10))

                    ; #52354: <==negation-removal== 28386 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #45296: origin
                    (not_at_b_p10)

                    ; #83780: origin
                    (at_b_p3)

                    ; #29204: <==negation-removal== 45296 (pos)
                    (not (at_b_p10))

                    ; #54251: <==negation-removal== 83780 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #45296: origin
                    (not_at_b_p10)

                    ; #79180: origin
                    (at_b_p4)

                    ; #29204: <==negation-removal== 45296 (pos)
                    (not (at_b_p10))

                    ; #38936: <==negation-removal== 79180 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #14285: origin
                    (at_b_p5)

                    ; #45296: origin
                    (not_at_b_p10)

                    ; #29204: <==negation-removal== 45296 (pos)
                    (not (at_b_p10))

                    ; #85694: <==negation-removal== 14285 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #28049: origin
                    (at_b_p6)

                    ; #45296: origin
                    (not_at_b_p10)

                    ; #29204: <==negation-removal== 45296 (pos)
                    (not (at_b_p10))

                    ; #67605: <==negation-removal== 28049 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #45296: origin
                    (not_at_b_p10)

                    ; #62709: origin
                    (at_b_p7)

                    ; #29204: <==negation-removal== 45296 (pos)
                    (not (at_b_p10))

                    ; #33483: <==negation-removal== 62709 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #45296: origin
                    (not_at_b_p10)

                    ; #71643: origin
                    (at_b_p8)

                    ; #17659: <==negation-removal== 71643 (pos)
                    (not (not_at_b_p8))

                    ; #29204: <==negation-removal== 45296 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #27867: origin
                    (at_b_p9)

                    ; #45296: origin
                    (not_at_b_p10)

                    ; #23383: <==negation-removal== 27867 (pos)
                    (not (not_at_b_p9))

                    ; #29204: <==negation-removal== 45296 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11))
        :effect (and
                    ; #16668: origin
                    (not_at_b_p11)

                    ; #28835: origin
                    (at_b_p1)

                    ; #23417: <==negation-removal== 16668 (pos)
                    (not (at_b_p11))

                    ; #74407: <==negation-removal== 28835 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #16668: origin
                    (not_at_b_p11)

                    ; #29204: origin
                    (at_b_p10)

                    ; #23417: <==negation-removal== 16668 (pos)
                    (not (at_b_p11))

                    ; #45296: <==negation-removal== 29204 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #16668: origin
                    (not_at_b_p11)

                    ; #23417: origin
                    (at_b_p11)

                    ; #16668: <==negation-removal== 23417 (pos)
                    (not (not_at_b_p11))

                    ; #23417: <==negation-removal== 16668 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (at_b_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #16668: origin
                    (not_at_b_p11)

                    ; #66807: origin
                    (at_b_p12)

                    ; #13446: <==negation-removal== 66807 (pos)
                    (not (not_at_b_p12))

                    ; #23417: <==negation-removal== 16668 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11))
        :effect (and
                    ; #16668: origin
                    (not_at_b_p11)

                    ; #28386: origin
                    (at_b_p2)

                    ; #23417: <==negation-removal== 16668 (pos)
                    (not (at_b_p11))

                    ; #52354: <==negation-removal== 28386 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #16668: origin
                    (not_at_b_p11)

                    ; #83780: origin
                    (at_b_p3)

                    ; #23417: <==negation-removal== 16668 (pos)
                    (not (at_b_p11))

                    ; #54251: <==negation-removal== 83780 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11))
        :effect (and
                    ; #16668: origin
                    (not_at_b_p11)

                    ; #79180: origin
                    (at_b_p4)

                    ; #23417: <==negation-removal== 16668 (pos)
                    (not (at_b_p11))

                    ; #38936: <==negation-removal== 79180 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11))
        :effect (and
                    ; #14285: origin
                    (at_b_p5)

                    ; #16668: origin
                    (not_at_b_p11)

                    ; #23417: <==negation-removal== 16668 (pos)
                    (not (at_b_p11))

                    ; #85694: <==negation-removal== 14285 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11))
        :effect (and
                    ; #16668: origin
                    (not_at_b_p11)

                    ; #28049: origin
                    (at_b_p6)

                    ; #23417: <==negation-removal== 16668 (pos)
                    (not (at_b_p11))

                    ; #67605: <==negation-removal== 28049 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #16668: origin
                    (not_at_b_p11)

                    ; #62709: origin
                    (at_b_p7)

                    ; #23417: <==negation-removal== 16668 (pos)
                    (not (at_b_p11))

                    ; #33483: <==negation-removal== 62709 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (at_b_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #16668: origin
                    (not_at_b_p11)

                    ; #71643: origin
                    (at_b_p8)

                    ; #17659: <==negation-removal== 71643 (pos)
                    (not (not_at_b_p8))

                    ; #23417: <==negation-removal== 16668 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #16668: origin
                    (not_at_b_p11)

                    ; #27867: origin
                    (at_b_p9)

                    ; #23383: <==negation-removal== 27867 (pos)
                    (not (not_at_b_p9))

                    ; #23417: <==negation-removal== 16668 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #13446: origin
                    (not_at_b_p12)

                    ; #28835: origin
                    (at_b_p1)

                    ; #66807: <==negation-removal== 13446 (pos)
                    (not (at_b_p12))

                    ; #74407: <==negation-removal== 28835 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_b_p12))
        :effect (and
                    ; #13446: origin
                    (not_at_b_p12)

                    ; #29204: origin
                    (at_b_p10)

                    ; #45296: <==negation-removal== 29204 (pos)
                    (not (not_at_b_p10))

                    ; #66807: <==negation-removal== 13446 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_b_p12))
        :effect (and
                    ; #13446: origin
                    (not_at_b_p12)

                    ; #23417: origin
                    (at_b_p11)

                    ; #16668: <==negation-removal== 23417 (pos)
                    (not (not_at_b_p11))

                    ; #66807: <==negation-removal== 13446 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #13446: origin
                    (not_at_b_p12)

                    ; #66807: origin
                    (at_b_p12)

                    ; #13446: <==negation-removal== 66807 (pos)
                    (not (not_at_b_p12))

                    ; #66807: <==negation-removal== 13446 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #13446: origin
                    (not_at_b_p12)

                    ; #28386: origin
                    (at_b_p2)

                    ; #52354: <==negation-removal== 28386 (pos)
                    (not (not_at_b_p2))

                    ; #66807: <==negation-removal== 13446 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12))
        :effect (and
                    ; #13446: origin
                    (not_at_b_p12)

                    ; #83780: origin
                    (at_b_p3)

                    ; #54251: <==negation-removal== 83780 (pos)
                    (not (not_at_b_p3))

                    ; #66807: <==negation-removal== 13446 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #13446: origin
                    (not_at_b_p12)

                    ; #79180: origin
                    (at_b_p4)

                    ; #38936: <==negation-removal== 79180 (pos)
                    (not (not_at_b_p4))

                    ; #66807: <==negation-removal== 13446 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #13446: origin
                    (not_at_b_p12)

                    ; #14285: origin
                    (at_b_p5)

                    ; #66807: <==negation-removal== 13446 (pos)
                    (not (at_b_p12))

                    ; #85694: <==negation-removal== 14285 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_b_p12))
        :effect (and
                    ; #13446: origin
                    (not_at_b_p12)

                    ; #28049: origin
                    (at_b_p6)

                    ; #66807: <==negation-removal== 13446 (pos)
                    (not (at_b_p12))

                    ; #67605: <==negation-removal== 28049 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_b_p12))
        :effect (and
                    ; #13446: origin
                    (not_at_b_p12)

                    ; #62709: origin
                    (at_b_p7)

                    ; #33483: <==negation-removal== 62709 (pos)
                    (not (not_at_b_p7))

                    ; #66807: <==negation-removal== 13446 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #13446: origin
                    (not_at_b_p12)

                    ; #71643: origin
                    (at_b_p8)

                    ; #17659: <==negation-removal== 71643 (pos)
                    (not (not_at_b_p8))

                    ; #66807: <==negation-removal== 13446 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12))
        :effect (and
                    ; #13446: origin
                    (not_at_b_p12)

                    ; #27867: origin
                    (at_b_p9)

                    ; #23383: <==negation-removal== 27867 (pos)
                    (not (not_at_b_p9))

                    ; #66807: <==negation-removal== 13446 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #28835: origin
                    (at_b_p1)

                    ; #74407: origin
                    (not_at_b_p1)

                    ; #28835: <==negation-removal== 74407 (pos)
                    (not (at_b_p1))

                    ; #74407: <==negation-removal== 28835 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (at_b_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #29204: origin
                    (at_b_p10)

                    ; #74407: origin
                    (not_at_b_p1)

                    ; #28835: <==negation-removal== 74407 (pos)
                    (not (at_b_p1))

                    ; #45296: <==negation-removal== 29204 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1))
        :effect (and
                    ; #23417: origin
                    (at_b_p11)

                    ; #74407: origin
                    (not_at_b_p1)

                    ; #16668: <==negation-removal== 23417 (pos)
                    (not (not_at_b_p11))

                    ; #28835: <==negation-removal== 74407 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #66807: origin
                    (at_b_p12)

                    ; #74407: origin
                    (not_at_b_p1)

                    ; #13446: <==negation-removal== 66807 (pos)
                    (not (not_at_b_p12))

                    ; #28835: <==negation-removal== 74407 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #28386: origin
                    (at_b_p2)

                    ; #74407: origin
                    (not_at_b_p1)

                    ; #28835: <==negation-removal== 74407 (pos)
                    (not (at_b_p1))

                    ; #52354: <==negation-removal== 28386 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #74407: origin
                    (not_at_b_p1)

                    ; #83780: origin
                    (at_b_p3)

                    ; #28835: <==negation-removal== 74407 (pos)
                    (not (at_b_p1))

                    ; #54251: <==negation-removal== 83780 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #74407: origin
                    (not_at_b_p1)

                    ; #79180: origin
                    (at_b_p4)

                    ; #28835: <==negation-removal== 74407 (pos)
                    (not (at_b_p1))

                    ; #38936: <==negation-removal== 79180 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #14285: origin
                    (at_b_p5)

                    ; #74407: origin
                    (not_at_b_p1)

                    ; #28835: <==negation-removal== 74407 (pos)
                    (not (at_b_p1))

                    ; #85694: <==negation-removal== 14285 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #28049: origin
                    (at_b_p6)

                    ; #74407: origin
                    (not_at_b_p1)

                    ; #28835: <==negation-removal== 74407 (pos)
                    (not (at_b_p1))

                    ; #67605: <==negation-removal== 28049 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #62709: origin
                    (at_b_p7)

                    ; #74407: origin
                    (not_at_b_p1)

                    ; #28835: <==negation-removal== 74407 (pos)
                    (not (at_b_p1))

                    ; #33483: <==negation-removal== 62709 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #71643: origin
                    (at_b_p8)

                    ; #74407: origin
                    (not_at_b_p1)

                    ; #17659: <==negation-removal== 71643 (pos)
                    (not (not_at_b_p8))

                    ; #28835: <==negation-removal== 74407 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #27867: origin
                    (at_b_p9)

                    ; #74407: origin
                    (not_at_b_p1)

                    ; #23383: <==negation-removal== 27867 (pos)
                    (not (not_at_b_p9))

                    ; #28835: <==negation-removal== 74407 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #28835: origin
                    (at_b_p1)

                    ; #52354: origin
                    (not_at_b_p2)

                    ; #28386: <==negation-removal== 52354 (pos)
                    (not (at_b_p2))

                    ; #74407: <==negation-removal== 28835 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2))
        :effect (and
                    ; #29204: origin
                    (at_b_p10)

                    ; #52354: origin
                    (not_at_b_p2)

                    ; #28386: <==negation-removal== 52354 (pos)
                    (not (at_b_p2))

                    ; #45296: <==negation-removal== 29204 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (at_b_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #23417: origin
                    (at_b_p11)

                    ; #52354: origin
                    (not_at_b_p2)

                    ; #16668: <==negation-removal== 23417 (pos)
                    (not (not_at_b_p11))

                    ; #28386: <==negation-removal== 52354 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #52354: origin
                    (not_at_b_p2)

                    ; #66807: origin
                    (at_b_p12)

                    ; #13446: <==negation-removal== 66807 (pos)
                    (not (not_at_b_p12))

                    ; #28386: <==negation-removal== 52354 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #28386: origin
                    (at_b_p2)

                    ; #52354: origin
                    (not_at_b_p2)

                    ; #28386: <==negation-removal== 52354 (pos)
                    (not (at_b_p2))

                    ; #52354: <==negation-removal== 28386 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #52354: origin
                    (not_at_b_p2)

                    ; #83780: origin
                    (at_b_p3)

                    ; #28386: <==negation-removal== 52354 (pos)
                    (not (at_b_p2))

                    ; #54251: <==negation-removal== 83780 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #52354: origin
                    (not_at_b_p2)

                    ; #79180: origin
                    (at_b_p4)

                    ; #28386: <==negation-removal== 52354 (pos)
                    (not (at_b_p2))

                    ; #38936: <==negation-removal== 79180 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #14285: origin
                    (at_b_p5)

                    ; #52354: origin
                    (not_at_b_p2)

                    ; #28386: <==negation-removal== 52354 (pos)
                    (not (at_b_p2))

                    ; #85694: <==negation-removal== 14285 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #28049: origin
                    (at_b_p6)

                    ; #52354: origin
                    (not_at_b_p2)

                    ; #28386: <==negation-removal== 52354 (pos)
                    (not (at_b_p2))

                    ; #67605: <==negation-removal== 28049 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #52354: origin
                    (not_at_b_p2)

                    ; #62709: origin
                    (at_b_p7)

                    ; #28386: <==negation-removal== 52354 (pos)
                    (not (at_b_p2))

                    ; #33483: <==negation-removal== 62709 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #52354: origin
                    (not_at_b_p2)

                    ; #71643: origin
                    (at_b_p8)

                    ; #17659: <==negation-removal== 71643 (pos)
                    (not (not_at_b_p8))

                    ; #28386: <==negation-removal== 52354 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #27867: origin
                    (at_b_p9)

                    ; #52354: origin
                    (not_at_b_p2)

                    ; #23383: <==negation-removal== 27867 (pos)
                    (not (not_at_b_p9))

                    ; #28386: <==negation-removal== 52354 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #28835: origin
                    (at_b_p1)

                    ; #54251: origin
                    (not_at_b_p3)

                    ; #74407: <==negation-removal== 28835 (pos)
                    (not (not_at_b_p1))

                    ; #83780: <==negation-removal== 54251 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3))
        :effect (and
                    ; #29204: origin
                    (at_b_p10)

                    ; #54251: origin
                    (not_at_b_p3)

                    ; #45296: <==negation-removal== 29204 (pos)
                    (not (not_at_b_p10))

                    ; #83780: <==negation-removal== 54251 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3))
        :effect (and
                    ; #23417: origin
                    (at_b_p11)

                    ; #54251: origin
                    (not_at_b_p3)

                    ; #16668: <==negation-removal== 23417 (pos)
                    (not (not_at_b_p11))

                    ; #83780: <==negation-removal== 54251 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3))
        :effect (and
                    ; #54251: origin
                    (not_at_b_p3)

                    ; #66807: origin
                    (at_b_p12)

                    ; #13446: <==negation-removal== 66807 (pos)
                    (not (not_at_b_p12))

                    ; #83780: <==negation-removal== 54251 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #28386: origin
                    (at_b_p2)

                    ; #54251: origin
                    (not_at_b_p3)

                    ; #52354: <==negation-removal== 28386 (pos)
                    (not (not_at_b_p2))

                    ; #83780: <==negation-removal== 54251 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #54251: origin
                    (not_at_b_p3)

                    ; #83780: origin
                    (at_b_p3)

                    ; #54251: <==negation-removal== 83780 (pos)
                    (not (not_at_b_p3))

                    ; #83780: <==negation-removal== 54251 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #54251: origin
                    (not_at_b_p3)

                    ; #79180: origin
                    (at_b_p4)

                    ; #38936: <==negation-removal== 79180 (pos)
                    (not (not_at_b_p4))

                    ; #83780: <==negation-removal== 54251 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #14285: origin
                    (at_b_p5)

                    ; #54251: origin
                    (not_at_b_p3)

                    ; #83780: <==negation-removal== 54251 (pos)
                    (not (at_b_p3))

                    ; #85694: <==negation-removal== 14285 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #28049: origin
                    (at_b_p6)

                    ; #54251: origin
                    (not_at_b_p3)

                    ; #67605: <==negation-removal== 28049 (pos)
                    (not (not_at_b_p6))

                    ; #83780: <==negation-removal== 54251 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #54251: origin
                    (not_at_b_p3)

                    ; #62709: origin
                    (at_b_p7)

                    ; #33483: <==negation-removal== 62709 (pos)
                    (not (not_at_b_p7))

                    ; #83780: <==negation-removal== 54251 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #54251: origin
                    (not_at_b_p3)

                    ; #71643: origin
                    (at_b_p8)

                    ; #17659: <==negation-removal== 71643 (pos)
                    (not (not_at_b_p8))

                    ; #83780: <==negation-removal== 54251 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #27867: origin
                    (at_b_p9)

                    ; #54251: origin
                    (not_at_b_p3)

                    ; #23383: <==negation-removal== 27867 (pos)
                    (not (not_at_b_p9))

                    ; #83780: <==negation-removal== 54251 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #28835: origin
                    (at_b_p1)

                    ; #38936: origin
                    (not_at_b_p4)

                    ; #74407: <==negation-removal== 28835 (pos)
                    (not (not_at_b_p1))

                    ; #79180: <==negation-removal== 38936 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4))
        :effect (and
                    ; #29204: origin
                    (at_b_p10)

                    ; #38936: origin
                    (not_at_b_p4)

                    ; #45296: <==negation-removal== 29204 (pos)
                    (not (not_at_b_p10))

                    ; #79180: <==negation-removal== 38936 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4))
        :effect (and
                    ; #23417: origin
                    (at_b_p11)

                    ; #38936: origin
                    (not_at_b_p4)

                    ; #16668: <==negation-removal== 23417 (pos)
                    (not (not_at_b_p11))

                    ; #79180: <==negation-removal== 38936 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4))
        :effect (and
                    ; #38936: origin
                    (not_at_b_p4)

                    ; #66807: origin
                    (at_b_p12)

                    ; #13446: <==negation-removal== 66807 (pos)
                    (not (not_at_b_p12))

                    ; #79180: <==negation-removal== 38936 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #28386: origin
                    (at_b_p2)

                    ; #38936: origin
                    (not_at_b_p4)

                    ; #52354: <==negation-removal== 28386 (pos)
                    (not (not_at_b_p2))

                    ; #79180: <==negation-removal== 38936 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #38936: origin
                    (not_at_b_p4)

                    ; #83780: origin
                    (at_b_p3)

                    ; #54251: <==negation-removal== 83780 (pos)
                    (not (not_at_b_p3))

                    ; #79180: <==negation-removal== 38936 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #38936: origin
                    (not_at_b_p4)

                    ; #79180: origin
                    (at_b_p4)

                    ; #38936: <==negation-removal== 79180 (pos)
                    (not (not_at_b_p4))

                    ; #79180: <==negation-removal== 38936 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #14285: origin
                    (at_b_p5)

                    ; #38936: origin
                    (not_at_b_p4)

                    ; #79180: <==negation-removal== 38936 (pos)
                    (not (at_b_p4))

                    ; #85694: <==negation-removal== 14285 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #28049: origin
                    (at_b_p6)

                    ; #38936: origin
                    (not_at_b_p4)

                    ; #67605: <==negation-removal== 28049 (pos)
                    (not (not_at_b_p6))

                    ; #79180: <==negation-removal== 38936 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #38936: origin
                    (not_at_b_p4)

                    ; #62709: origin
                    (at_b_p7)

                    ; #33483: <==negation-removal== 62709 (pos)
                    (not (not_at_b_p7))

                    ; #79180: <==negation-removal== 38936 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #38936: origin
                    (not_at_b_p4)

                    ; #71643: origin
                    (at_b_p8)

                    ; #17659: <==negation-removal== 71643 (pos)
                    (not (not_at_b_p8))

                    ; #79180: <==negation-removal== 38936 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #27867: origin
                    (at_b_p9)

                    ; #38936: origin
                    (not_at_b_p4)

                    ; #23383: <==negation-removal== 27867 (pos)
                    (not (not_at_b_p9))

                    ; #79180: <==negation-removal== 38936 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #28835: origin
                    (at_b_p1)

                    ; #85694: origin
                    (not_at_b_p5)

                    ; #14285: <==negation-removal== 85694 (pos)
                    (not (at_b_p5))

                    ; #74407: <==negation-removal== 28835 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #29204: origin
                    (at_b_p10)

                    ; #85694: origin
                    (not_at_b_p5)

                    ; #14285: <==negation-removal== 85694 (pos)
                    (not (at_b_p5))

                    ; #45296: <==negation-removal== 29204 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #23417: origin
                    (at_b_p11)

                    ; #85694: origin
                    (not_at_b_p5)

                    ; #14285: <==negation-removal== 85694 (pos)
                    (not (at_b_p5))

                    ; #16668: <==negation-removal== 23417 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #66807: origin
                    (at_b_p12)

                    ; #85694: origin
                    (not_at_b_p5)

                    ; #13446: <==negation-removal== 66807 (pos)
                    (not (not_at_b_p12))

                    ; #14285: <==negation-removal== 85694 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #28386: origin
                    (at_b_p2)

                    ; #85694: origin
                    (not_at_b_p5)

                    ; #14285: <==negation-removal== 85694 (pos)
                    (not (at_b_p5))

                    ; #52354: <==negation-removal== 28386 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #83780: origin
                    (at_b_p3)

                    ; #85694: origin
                    (not_at_b_p5)

                    ; #14285: <==negation-removal== 85694 (pos)
                    (not (at_b_p5))

                    ; #54251: <==negation-removal== 83780 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #79180: origin
                    (at_b_p4)

                    ; #85694: origin
                    (not_at_b_p5)

                    ; #14285: <==negation-removal== 85694 (pos)
                    (not (at_b_p5))

                    ; #38936: <==negation-removal== 79180 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #14285: origin
                    (at_b_p5)

                    ; #85694: origin
                    (not_at_b_p5)

                    ; #14285: <==negation-removal== 85694 (pos)
                    (not (at_b_p5))

                    ; #85694: <==negation-removal== 14285 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #28049: origin
                    (at_b_p6)

                    ; #85694: origin
                    (not_at_b_p5)

                    ; #14285: <==negation-removal== 85694 (pos)
                    (not (at_b_p5))

                    ; #67605: <==negation-removal== 28049 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #62709: origin
                    (at_b_p7)

                    ; #85694: origin
                    (not_at_b_p5)

                    ; #14285: <==negation-removal== 85694 (pos)
                    (not (at_b_p5))

                    ; #33483: <==negation-removal== 62709 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #71643: origin
                    (at_b_p8)

                    ; #85694: origin
                    (not_at_b_p5)

                    ; #14285: <==negation-removal== 85694 (pos)
                    (not (at_b_p5))

                    ; #17659: <==negation-removal== 71643 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #27867: origin
                    (at_b_p9)

                    ; #85694: origin
                    (not_at_b_p5)

                    ; #14285: <==negation-removal== 85694 (pos)
                    (not (at_b_p5))

                    ; #23383: <==negation-removal== 27867 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #28835: origin
                    (at_b_p1)

                    ; #67605: origin
                    (not_at_b_p6)

                    ; #28049: <==negation-removal== 67605 (pos)
                    (not (at_b_p6))

                    ; #74407: <==negation-removal== 28835 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p10
        :precondition (and (at_b_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #29204: origin
                    (at_b_p10)

                    ; #67605: origin
                    (not_at_b_p6)

                    ; #28049: <==negation-removal== 67605 (pos)
                    (not (at_b_p6))

                    ; #45296: <==negation-removal== 29204 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6))
        :effect (and
                    ; #23417: origin
                    (at_b_p11)

                    ; #67605: origin
                    (not_at_b_p6)

                    ; #16668: <==negation-removal== 23417 (pos)
                    (not (not_at_b_p11))

                    ; #28049: <==negation-removal== 67605 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6))
        :effect (and
                    ; #66807: origin
                    (at_b_p12)

                    ; #67605: origin
                    (not_at_b_p6)

                    ; #13446: <==negation-removal== 66807 (pos)
                    (not (not_at_b_p12))

                    ; #28049: <==negation-removal== 67605 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #28386: origin
                    (at_b_p2)

                    ; #67605: origin
                    (not_at_b_p6)

                    ; #28049: <==negation-removal== 67605 (pos)
                    (not (at_b_p6))

                    ; #52354: <==negation-removal== 28386 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #67605: origin
                    (not_at_b_p6)

                    ; #83780: origin
                    (at_b_p3)

                    ; #28049: <==negation-removal== 67605 (pos)
                    (not (at_b_p6))

                    ; #54251: <==negation-removal== 83780 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #67605: origin
                    (not_at_b_p6)

                    ; #79180: origin
                    (at_b_p4)

                    ; #28049: <==negation-removal== 67605 (pos)
                    (not (at_b_p6))

                    ; #38936: <==negation-removal== 79180 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #14285: origin
                    (at_b_p5)

                    ; #67605: origin
                    (not_at_b_p6)

                    ; #28049: <==negation-removal== 67605 (pos)
                    (not (at_b_p6))

                    ; #85694: <==negation-removal== 14285 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #28049: origin
                    (at_b_p6)

                    ; #67605: origin
                    (not_at_b_p6)

                    ; #28049: <==negation-removal== 67605 (pos)
                    (not (at_b_p6))

                    ; #67605: <==negation-removal== 28049 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #62709: origin
                    (at_b_p7)

                    ; #67605: origin
                    (not_at_b_p6)

                    ; #28049: <==negation-removal== 67605 (pos)
                    (not (at_b_p6))

                    ; #33483: <==negation-removal== 62709 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #67605: origin
                    (not_at_b_p6)

                    ; #71643: origin
                    (at_b_p8)

                    ; #17659: <==negation-removal== 71643 (pos)
                    (not (not_at_b_p8))

                    ; #28049: <==negation-removal== 67605 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #27867: origin
                    (at_b_p9)

                    ; #67605: origin
                    (not_at_b_p6)

                    ; #23383: <==negation-removal== 27867 (pos)
                    (not (not_at_b_p9))

                    ; #28049: <==negation-removal== 67605 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #28835: origin
                    (at_b_p1)

                    ; #33483: origin
                    (not_at_b_p7)

                    ; #62709: <==negation-removal== 33483 (pos)
                    (not (at_b_p7))

                    ; #74407: <==negation-removal== 28835 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7))
        :effect (and
                    ; #29204: origin
                    (at_b_p10)

                    ; #33483: origin
                    (not_at_b_p7)

                    ; #45296: <==negation-removal== 29204 (pos)
                    (not (not_at_b_p10))

                    ; #62709: <==negation-removal== 33483 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_b_p7))
        :effect (and
                    ; #23417: origin
                    (at_b_p11)

                    ; #33483: origin
                    (not_at_b_p7)

                    ; #16668: <==negation-removal== 23417 (pos)
                    (not (not_at_b_p11))

                    ; #62709: <==negation-removal== 33483 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7))
        :effect (and
                    ; #33483: origin
                    (not_at_b_p7)

                    ; #66807: origin
                    (at_b_p12)

                    ; #13446: <==negation-removal== 66807 (pos)
                    (not (not_at_b_p12))

                    ; #62709: <==negation-removal== 33483 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #28386: origin
                    (at_b_p2)

                    ; #33483: origin
                    (not_at_b_p7)

                    ; #52354: <==negation-removal== 28386 (pos)
                    (not (not_at_b_p2))

                    ; #62709: <==negation-removal== 33483 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #33483: origin
                    (not_at_b_p7)

                    ; #83780: origin
                    (at_b_p3)

                    ; #54251: <==negation-removal== 83780 (pos)
                    (not (not_at_b_p3))

                    ; #62709: <==negation-removal== 33483 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #33483: origin
                    (not_at_b_p7)

                    ; #79180: origin
                    (at_b_p4)

                    ; #38936: <==negation-removal== 79180 (pos)
                    (not (not_at_b_p4))

                    ; #62709: <==negation-removal== 33483 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #14285: origin
                    (at_b_p5)

                    ; #33483: origin
                    (not_at_b_p7)

                    ; #62709: <==negation-removal== 33483 (pos)
                    (not (at_b_p7))

                    ; #85694: <==negation-removal== 14285 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #28049: origin
                    (at_b_p6)

                    ; #33483: origin
                    (not_at_b_p7)

                    ; #62709: <==negation-removal== 33483 (pos)
                    (not (at_b_p7))

                    ; #67605: <==negation-removal== 28049 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #33483: origin
                    (not_at_b_p7)

                    ; #62709: origin
                    (at_b_p7)

                    ; #33483: <==negation-removal== 62709 (pos)
                    (not (not_at_b_p7))

                    ; #62709: <==negation-removal== 33483 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #33483: origin
                    (not_at_b_p7)

                    ; #71643: origin
                    (at_b_p8)

                    ; #17659: <==negation-removal== 71643 (pos)
                    (not (not_at_b_p8))

                    ; #62709: <==negation-removal== 33483 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #27867: origin
                    (at_b_p9)

                    ; #33483: origin
                    (not_at_b_p7)

                    ; #23383: <==negation-removal== 27867 (pos)
                    (not (not_at_b_p9))

                    ; #62709: <==negation-removal== 33483 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #17659: origin
                    (not_at_b_p8)

                    ; #28835: origin
                    (at_b_p1)

                    ; #71643: <==negation-removal== 17659 (pos)
                    (not (at_b_p8))

                    ; #74407: <==negation-removal== 28835 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8))
        :effect (and
                    ; #17659: origin
                    (not_at_b_p8)

                    ; #29204: origin
                    (at_b_p10)

                    ; #45296: <==negation-removal== 29204 (pos)
                    (not (not_at_b_p10))

                    ; #71643: <==negation-removal== 17659 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8))
        :effect (and
                    ; #17659: origin
                    (not_at_b_p8)

                    ; #23417: origin
                    (at_b_p11)

                    ; #16668: <==negation-removal== 23417 (pos)
                    (not (not_at_b_p11))

                    ; #71643: <==negation-removal== 17659 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #17659: origin
                    (not_at_b_p8)

                    ; #66807: origin
                    (at_b_p12)

                    ; #13446: <==negation-removal== 66807 (pos)
                    (not (not_at_b_p12))

                    ; #71643: <==negation-removal== 17659 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #17659: origin
                    (not_at_b_p8)

                    ; #28386: origin
                    (at_b_p2)

                    ; #52354: <==negation-removal== 28386 (pos)
                    (not (not_at_b_p2))

                    ; #71643: <==negation-removal== 17659 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #17659: origin
                    (not_at_b_p8)

                    ; #83780: origin
                    (at_b_p3)

                    ; #54251: <==negation-removal== 83780 (pos)
                    (not (not_at_b_p3))

                    ; #71643: <==negation-removal== 17659 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #17659: origin
                    (not_at_b_p8)

                    ; #79180: origin
                    (at_b_p4)

                    ; #38936: <==negation-removal== 79180 (pos)
                    (not (not_at_b_p4))

                    ; #71643: <==negation-removal== 17659 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #14285: origin
                    (at_b_p5)

                    ; #17659: origin
                    (not_at_b_p8)

                    ; #71643: <==negation-removal== 17659 (pos)
                    (not (at_b_p8))

                    ; #85694: <==negation-removal== 14285 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #17659: origin
                    (not_at_b_p8)

                    ; #28049: origin
                    (at_b_p6)

                    ; #67605: <==negation-removal== 28049 (pos)
                    (not (not_at_b_p6))

                    ; #71643: <==negation-removal== 17659 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #17659: origin
                    (not_at_b_p8)

                    ; #62709: origin
                    (at_b_p7)

                    ; #33483: <==negation-removal== 62709 (pos)
                    (not (not_at_b_p7))

                    ; #71643: <==negation-removal== 17659 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #17659: origin
                    (not_at_b_p8)

                    ; #71643: origin
                    (at_b_p8)

                    ; #17659: <==negation-removal== 71643 (pos)
                    (not (not_at_b_p8))

                    ; #71643: <==negation-removal== 17659 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #17659: origin
                    (not_at_b_p8)

                    ; #27867: origin
                    (at_b_p9)

                    ; #23383: <==negation-removal== 27867 (pos)
                    (not (not_at_b_p9))

                    ; #71643: <==negation-removal== 17659 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #23383: origin
                    (not_at_b_p9)

                    ; #28835: origin
                    (at_b_p1)

                    ; #27867: <==negation-removal== 23383 (pos)
                    (not (at_b_p9))

                    ; #74407: <==negation-removal== 28835 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (at_b_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #23383: origin
                    (not_at_b_p9)

                    ; #29204: origin
                    (at_b_p10)

                    ; #27867: <==negation-removal== 23383 (pos)
                    (not (at_b_p9))

                    ; #45296: <==negation-removal== 29204 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (at_b_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #23383: origin
                    (not_at_b_p9)

                    ; #23417: origin
                    (at_b_p11)

                    ; #16668: <==negation-removal== 23417 (pos)
                    (not (not_at_b_p11))

                    ; #27867: <==negation-removal== 23383 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #23383: origin
                    (not_at_b_p9)

                    ; #66807: origin
                    (at_b_p12)

                    ; #13446: <==negation-removal== 66807 (pos)
                    (not (not_at_b_p12))

                    ; #27867: <==negation-removal== 23383 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #23383: origin
                    (not_at_b_p9)

                    ; #28386: origin
                    (at_b_p2)

                    ; #27867: <==negation-removal== 23383 (pos)
                    (not (at_b_p9))

                    ; #52354: <==negation-removal== 28386 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #23383: origin
                    (not_at_b_p9)

                    ; #83780: origin
                    (at_b_p3)

                    ; #27867: <==negation-removal== 23383 (pos)
                    (not (at_b_p9))

                    ; #54251: <==negation-removal== 83780 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #23383: origin
                    (not_at_b_p9)

                    ; #79180: origin
                    (at_b_p4)

                    ; #27867: <==negation-removal== 23383 (pos)
                    (not (at_b_p9))

                    ; #38936: <==negation-removal== 79180 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #14285: origin
                    (at_b_p5)

                    ; #23383: origin
                    (not_at_b_p9)

                    ; #27867: <==negation-removal== 23383 (pos)
                    (not (at_b_p9))

                    ; #85694: <==negation-removal== 14285 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #23383: origin
                    (not_at_b_p9)

                    ; #28049: origin
                    (at_b_p6)

                    ; #27867: <==negation-removal== 23383 (pos)
                    (not (at_b_p9))

                    ; #67605: <==negation-removal== 28049 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #23383: origin
                    (not_at_b_p9)

                    ; #62709: origin
                    (at_b_p7)

                    ; #27867: <==negation-removal== 23383 (pos)
                    (not (at_b_p9))

                    ; #33483: <==negation-removal== 62709 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #23383: origin
                    (not_at_b_p9)

                    ; #71643: origin
                    (at_b_p8)

                    ; #17659: <==negation-removal== 71643 (pos)
                    (not (not_at_b_p8))

                    ; #27867: <==negation-removal== 23383 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #23383: origin
                    (not_at_b_p9)

                    ; #27867: origin
                    (at_b_p9)

                    ; #23383: <==negation-removal== 27867 (pos)
                    (not (not_at_b_p9))

                    ; #27867: <==negation-removal== 23383 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10))
        :effect (and
                    ; #74829: origin
                    (at_c_p1)

                    ; #81539: origin
                    (not_at_c_p10)

                    ; #35824: <==negation-removal== 81539 (pos)
                    (not (at_c_p10))

                    ; #78365: <==negation-removal== 74829 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_c_p10))
        :effect (and
                    ; #35824: origin
                    (at_c_p10)

                    ; #81539: origin
                    (not_at_c_p10)

                    ; #35824: <==negation-removal== 81539 (pos)
                    (not (at_c_p10))

                    ; #81539: <==negation-removal== 35824 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #43547: origin
                    (at_c_p11)

                    ; #81539: origin
                    (not_at_c_p10)

                    ; #35824: <==negation-removal== 81539 (pos)
                    (not (at_c_p10))

                    ; #40396: <==negation-removal== 43547 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #71398: origin
                    (at_c_p12)

                    ; #81539: origin
                    (not_at_c_p10)

                    ; #35824: <==negation-removal== 81539 (pos)
                    (not (at_c_p10))

                    ; #62694: <==negation-removal== 71398 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #63192: origin
                    (at_c_p2)

                    ; #81539: origin
                    (not_at_c_p10)

                    ; #35824: <==negation-removal== 81539 (pos)
                    (not (at_c_p10))

                    ; #72838: <==negation-removal== 63192 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #25395: origin
                    (at_c_p3)

                    ; #81539: origin
                    (not_at_c_p10)

                    ; #35824: <==negation-removal== 81539 (pos)
                    (not (at_c_p10))

                    ; #79419: <==negation-removal== 25395 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #22284: origin
                    (at_c_p4)

                    ; #81539: origin
                    (not_at_c_p10)

                    ; #27237: <==negation-removal== 22284 (pos)
                    (not (not_at_c_p4))

                    ; #35824: <==negation-removal== 81539 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #18340: origin
                    (at_c_p5)

                    ; #81539: origin
                    (not_at_c_p10)

                    ; #35824: <==negation-removal== 81539 (pos)
                    (not (at_c_p10))

                    ; #94384: <==negation-removal== 18340 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #26312: origin
                    (at_c_p6)

                    ; #81539: origin
                    (not_at_c_p10)

                    ; #35824: <==negation-removal== 81539 (pos)
                    (not (at_c_p10))

                    ; #38054: <==negation-removal== 26312 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #25436: origin
                    (at_c_p7)

                    ; #81539: origin
                    (not_at_c_p10)

                    ; #15311: <==negation-removal== 25436 (pos)
                    (not (not_at_c_p7))

                    ; #35824: <==negation-removal== 81539 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_c_p10))
        :effect (and
                    ; #34915: origin
                    (at_c_p8)

                    ; #81539: origin
                    (not_at_c_p10)

                    ; #25524: <==negation-removal== 34915 (pos)
                    (not (not_at_c_p8))

                    ; #35824: <==negation-removal== 81539 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #17657: origin
                    (at_c_p9)

                    ; #81539: origin
                    (not_at_c_p10)

                    ; #35824: <==negation-removal== 81539 (pos)
                    (not (at_c_p10))

                    ; #74965: <==negation-removal== 17657 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11))
        :effect (and
                    ; #40396: origin
                    (not_at_c_p11)

                    ; #74829: origin
                    (at_c_p1)

                    ; #43547: <==negation-removal== 40396 (pos)
                    (not (at_c_p11))

                    ; #78365: <==negation-removal== 74829 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11))
        :effect (and
                    ; #35824: origin
                    (at_c_p10)

                    ; #40396: origin
                    (not_at_c_p11)

                    ; #43547: <==negation-removal== 40396 (pos)
                    (not (at_c_p11))

                    ; #81539: <==negation-removal== 35824 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #40396: origin
                    (not_at_c_p11)

                    ; #43547: origin
                    (at_c_p11)

                    ; #40396: <==negation-removal== 43547 (pos)
                    (not (not_at_c_p11))

                    ; #43547: <==negation-removal== 40396 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #40396: origin
                    (not_at_c_p11)

                    ; #71398: origin
                    (at_c_p12)

                    ; #43547: <==negation-removal== 40396 (pos)
                    (not (at_c_p11))

                    ; #62694: <==negation-removal== 71398 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11))
        :effect (and
                    ; #40396: origin
                    (not_at_c_p11)

                    ; #63192: origin
                    (at_c_p2)

                    ; #43547: <==negation-removal== 40396 (pos)
                    (not (at_c_p11))

                    ; #72838: <==negation-removal== 63192 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #25395: origin
                    (at_c_p3)

                    ; #40396: origin
                    (not_at_c_p11)

                    ; #43547: <==negation-removal== 40396 (pos)
                    (not (at_c_p11))

                    ; #79419: <==negation-removal== 25395 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11))
        :effect (and
                    ; #22284: origin
                    (at_c_p4)

                    ; #40396: origin
                    (not_at_c_p11)

                    ; #27237: <==negation-removal== 22284 (pos)
                    (not (not_at_c_p4))

                    ; #43547: <==negation-removal== 40396 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_c_p11))
        :effect (and
                    ; #18340: origin
                    (at_c_p5)

                    ; #40396: origin
                    (not_at_c_p11)

                    ; #43547: <==negation-removal== 40396 (pos)
                    (not (at_c_p11))

                    ; #94384: <==negation-removal== 18340 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11))
        :effect (and
                    ; #26312: origin
                    (at_c_p6)

                    ; #40396: origin
                    (not_at_c_p11)

                    ; #38054: <==negation-removal== 26312 (pos)
                    (not (not_at_c_p6))

                    ; #43547: <==negation-removal== 40396 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11))
        :effect (and
                    ; #25436: origin
                    (at_c_p7)

                    ; #40396: origin
                    (not_at_c_p11)

                    ; #15311: <==negation-removal== 25436 (pos)
                    (not (not_at_c_p7))

                    ; #43547: <==negation-removal== 40396 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11))
        :effect (and
                    ; #34915: origin
                    (at_c_p8)

                    ; #40396: origin
                    (not_at_c_p11)

                    ; #25524: <==negation-removal== 34915 (pos)
                    (not (not_at_c_p8))

                    ; #43547: <==negation-removal== 40396 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11))
        :effect (and
                    ; #17657: origin
                    (at_c_p9)

                    ; #40396: origin
                    (not_at_c_p11)

                    ; #43547: <==negation-removal== 40396 (pos)
                    (not (at_c_p11))

                    ; #74965: <==negation-removal== 17657 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #62694: origin
                    (not_at_c_p12)

                    ; #74829: origin
                    (at_c_p1)

                    ; #71398: <==negation-removal== 62694 (pos)
                    (not (at_c_p12))

                    ; #78365: <==negation-removal== 74829 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12))
        :effect (and
                    ; #35824: origin
                    (at_c_p10)

                    ; #62694: origin
                    (not_at_c_p12)

                    ; #71398: <==negation-removal== 62694 (pos)
                    (not (at_c_p12))

                    ; #81539: <==negation-removal== 35824 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_c_p12))
        :effect (and
                    ; #43547: origin
                    (at_c_p11)

                    ; #62694: origin
                    (not_at_c_p12)

                    ; #40396: <==negation-removal== 43547 (pos)
                    (not (not_at_c_p11))

                    ; #71398: <==negation-removal== 62694 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #62694: origin
                    (not_at_c_p12)

                    ; #71398: origin
                    (at_c_p12)

                    ; #62694: <==negation-removal== 71398 (pos)
                    (not (not_at_c_p12))

                    ; #71398: <==negation-removal== 62694 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (at_c_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #62694: origin
                    (not_at_c_p12)

                    ; #63192: origin
                    (at_c_p2)

                    ; #71398: <==negation-removal== 62694 (pos)
                    (not (at_c_p12))

                    ; #72838: <==negation-removal== 63192 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #25395: origin
                    (at_c_p3)

                    ; #62694: origin
                    (not_at_c_p12)

                    ; #71398: <==negation-removal== 62694 (pos)
                    (not (at_c_p12))

                    ; #79419: <==negation-removal== 25395 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12))
        :effect (and
                    ; #22284: origin
                    (at_c_p4)

                    ; #62694: origin
                    (not_at_c_p12)

                    ; #27237: <==negation-removal== 22284 (pos)
                    (not (not_at_c_p4))

                    ; #71398: <==negation-removal== 62694 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #18340: origin
                    (at_c_p5)

                    ; #62694: origin
                    (not_at_c_p12)

                    ; #71398: <==negation-removal== 62694 (pos)
                    (not (at_c_p12))

                    ; #94384: <==negation-removal== 18340 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12))
        :effect (and
                    ; #26312: origin
                    (at_c_p6)

                    ; #62694: origin
                    (not_at_c_p12)

                    ; #38054: <==negation-removal== 26312 (pos)
                    (not (not_at_c_p6))

                    ; #71398: <==negation-removal== 62694 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12))
        :effect (and
                    ; #25436: origin
                    (at_c_p7)

                    ; #62694: origin
                    (not_at_c_p12)

                    ; #15311: <==negation-removal== 25436 (pos)
                    (not (not_at_c_p7))

                    ; #71398: <==negation-removal== 62694 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #34915: origin
                    (at_c_p8)

                    ; #62694: origin
                    (not_at_c_p12)

                    ; #25524: <==negation-removal== 34915 (pos)
                    (not (not_at_c_p8))

                    ; #71398: <==negation-removal== 62694 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12))
        :effect (and
                    ; #17657: origin
                    (at_c_p9)

                    ; #62694: origin
                    (not_at_c_p12)

                    ; #71398: <==negation-removal== 62694 (pos)
                    (not (at_c_p12))

                    ; #74965: <==negation-removal== 17657 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #74829: origin
                    (at_c_p1)

                    ; #78365: origin
                    (not_at_c_p1)

                    ; #74829: <==negation-removal== 78365 (pos)
                    (not (at_c_p1))

                    ; #78365: <==negation-removal== 74829 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #35824: origin
                    (at_c_p10)

                    ; #78365: origin
                    (not_at_c_p1)

                    ; #74829: <==negation-removal== 78365 (pos)
                    (not (at_c_p1))

                    ; #81539: <==negation-removal== 35824 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_c_p1))
        :effect (and
                    ; #43547: origin
                    (at_c_p11)

                    ; #78365: origin
                    (not_at_c_p1)

                    ; #40396: <==negation-removal== 43547 (pos)
                    (not (not_at_c_p11))

                    ; #74829: <==negation-removal== 78365 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #71398: origin
                    (at_c_p12)

                    ; #78365: origin
                    (not_at_c_p1)

                    ; #62694: <==negation-removal== 71398 (pos)
                    (not (not_at_c_p12))

                    ; #74829: <==negation-removal== 78365 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #63192: origin
                    (at_c_p2)

                    ; #78365: origin
                    (not_at_c_p1)

                    ; #72838: <==negation-removal== 63192 (pos)
                    (not (not_at_c_p2))

                    ; #74829: <==negation-removal== 78365 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #25395: origin
                    (at_c_p3)

                    ; #78365: origin
                    (not_at_c_p1)

                    ; #74829: <==negation-removal== 78365 (pos)
                    (not (at_c_p1))

                    ; #79419: <==negation-removal== 25395 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #22284: origin
                    (at_c_p4)

                    ; #78365: origin
                    (not_at_c_p1)

                    ; #27237: <==negation-removal== 22284 (pos)
                    (not (not_at_c_p4))

                    ; #74829: <==negation-removal== 78365 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #18340: origin
                    (at_c_p5)

                    ; #78365: origin
                    (not_at_c_p1)

                    ; #74829: <==negation-removal== 78365 (pos)
                    (not (at_c_p1))

                    ; #94384: <==negation-removal== 18340 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #26312: origin
                    (at_c_p6)

                    ; #78365: origin
                    (not_at_c_p1)

                    ; #38054: <==negation-removal== 26312 (pos)
                    (not (not_at_c_p6))

                    ; #74829: <==negation-removal== 78365 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #25436: origin
                    (at_c_p7)

                    ; #78365: origin
                    (not_at_c_p1)

                    ; #15311: <==negation-removal== 25436 (pos)
                    (not (not_at_c_p7))

                    ; #74829: <==negation-removal== 78365 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #34915: origin
                    (at_c_p8)

                    ; #78365: origin
                    (not_at_c_p1)

                    ; #25524: <==negation-removal== 34915 (pos)
                    (not (not_at_c_p8))

                    ; #74829: <==negation-removal== 78365 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #17657: origin
                    (at_c_p9)

                    ; #78365: origin
                    (not_at_c_p1)

                    ; #74829: <==negation-removal== 78365 (pos)
                    (not (at_c_p1))

                    ; #74965: <==negation-removal== 17657 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #72838: origin
                    (not_at_c_p2)

                    ; #74829: origin
                    (at_c_p1)

                    ; #63192: <==negation-removal== 72838 (pos)
                    (not (at_c_p2))

                    ; #78365: <==negation-removal== 74829 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #35824: origin
                    (at_c_p10)

                    ; #72838: origin
                    (not_at_c_p2)

                    ; #63192: <==negation-removal== 72838 (pos)
                    (not (at_c_p2))

                    ; #81539: <==negation-removal== 35824 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (at_c_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #43547: origin
                    (at_c_p11)

                    ; #72838: origin
                    (not_at_c_p2)

                    ; #40396: <==negation-removal== 43547 (pos)
                    (not (not_at_c_p11))

                    ; #63192: <==negation-removal== 72838 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #71398: origin
                    (at_c_p12)

                    ; #72838: origin
                    (not_at_c_p2)

                    ; #62694: <==negation-removal== 71398 (pos)
                    (not (not_at_c_p12))

                    ; #63192: <==negation-removal== 72838 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #63192: origin
                    (at_c_p2)

                    ; #72838: origin
                    (not_at_c_p2)

                    ; #63192: <==negation-removal== 72838 (pos)
                    (not (at_c_p2))

                    ; #72838: <==negation-removal== 63192 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #25395: origin
                    (at_c_p3)

                    ; #72838: origin
                    (not_at_c_p2)

                    ; #63192: <==negation-removal== 72838 (pos)
                    (not (at_c_p2))

                    ; #79419: <==negation-removal== 25395 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #22284: origin
                    (at_c_p4)

                    ; #72838: origin
                    (not_at_c_p2)

                    ; #27237: <==negation-removal== 22284 (pos)
                    (not (not_at_c_p4))

                    ; #63192: <==negation-removal== 72838 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #18340: origin
                    (at_c_p5)

                    ; #72838: origin
                    (not_at_c_p2)

                    ; #63192: <==negation-removal== 72838 (pos)
                    (not (at_c_p2))

                    ; #94384: <==negation-removal== 18340 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #26312: origin
                    (at_c_p6)

                    ; #72838: origin
                    (not_at_c_p2)

                    ; #38054: <==negation-removal== 26312 (pos)
                    (not (not_at_c_p6))

                    ; #63192: <==negation-removal== 72838 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #25436: origin
                    (at_c_p7)

                    ; #72838: origin
                    (not_at_c_p2)

                    ; #15311: <==negation-removal== 25436 (pos)
                    (not (not_at_c_p7))

                    ; #63192: <==negation-removal== 72838 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #34915: origin
                    (at_c_p8)

                    ; #72838: origin
                    (not_at_c_p2)

                    ; #25524: <==negation-removal== 34915 (pos)
                    (not (not_at_c_p8))

                    ; #63192: <==negation-removal== 72838 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #17657: origin
                    (at_c_p9)

                    ; #72838: origin
                    (not_at_c_p2)

                    ; #63192: <==negation-removal== 72838 (pos)
                    (not (at_c_p2))

                    ; #74965: <==negation-removal== 17657 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #74829: origin
                    (at_c_p1)

                    ; #79419: origin
                    (not_at_c_p3)

                    ; #25395: <==negation-removal== 79419 (pos)
                    (not (at_c_p3))

                    ; #78365: <==negation-removal== 74829 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3))
        :effect (and
                    ; #35824: origin
                    (at_c_p10)

                    ; #79419: origin
                    (not_at_c_p3)

                    ; #25395: <==negation-removal== 79419 (pos)
                    (not (at_c_p3))

                    ; #81539: <==negation-removal== 35824 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3))
        :effect (and
                    ; #43547: origin
                    (at_c_p11)

                    ; #79419: origin
                    (not_at_c_p3)

                    ; #25395: <==negation-removal== 79419 (pos)
                    (not (at_c_p3))

                    ; #40396: <==negation-removal== 43547 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_c_p3))
        :effect (and
                    ; #71398: origin
                    (at_c_p12)

                    ; #79419: origin
                    (not_at_c_p3)

                    ; #25395: <==negation-removal== 79419 (pos)
                    (not (at_c_p3))

                    ; #62694: <==negation-removal== 71398 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #63192: origin
                    (at_c_p2)

                    ; #79419: origin
                    (not_at_c_p3)

                    ; #25395: <==negation-removal== 79419 (pos)
                    (not (at_c_p3))

                    ; #72838: <==negation-removal== 63192 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #25395: origin
                    (at_c_p3)

                    ; #79419: origin
                    (not_at_c_p3)

                    ; #25395: <==negation-removal== 79419 (pos)
                    (not (at_c_p3))

                    ; #79419: <==negation-removal== 25395 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #22284: origin
                    (at_c_p4)

                    ; #79419: origin
                    (not_at_c_p3)

                    ; #25395: <==negation-removal== 79419 (pos)
                    (not (at_c_p3))

                    ; #27237: <==negation-removal== 22284 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #18340: origin
                    (at_c_p5)

                    ; #79419: origin
                    (not_at_c_p3)

                    ; #25395: <==negation-removal== 79419 (pos)
                    (not (at_c_p3))

                    ; #94384: <==negation-removal== 18340 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #26312: origin
                    (at_c_p6)

                    ; #79419: origin
                    (not_at_c_p3)

                    ; #25395: <==negation-removal== 79419 (pos)
                    (not (at_c_p3))

                    ; #38054: <==negation-removal== 26312 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #25436: origin
                    (at_c_p7)

                    ; #79419: origin
                    (not_at_c_p3)

                    ; #15311: <==negation-removal== 25436 (pos)
                    (not (not_at_c_p7))

                    ; #25395: <==negation-removal== 79419 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #34915: origin
                    (at_c_p8)

                    ; #79419: origin
                    (not_at_c_p3)

                    ; #25395: <==negation-removal== 79419 (pos)
                    (not (at_c_p3))

                    ; #25524: <==negation-removal== 34915 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #17657: origin
                    (at_c_p9)

                    ; #79419: origin
                    (not_at_c_p3)

                    ; #25395: <==negation-removal== 79419 (pos)
                    (not (at_c_p3))

                    ; #74965: <==negation-removal== 17657 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #27237: origin
                    (not_at_c_p4)

                    ; #74829: origin
                    (at_c_p1)

                    ; #22284: <==negation-removal== 27237 (pos)
                    (not (at_c_p4))

                    ; #78365: <==negation-removal== 74829 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_c_p4))
        :effect (and
                    ; #27237: origin
                    (not_at_c_p4)

                    ; #35824: origin
                    (at_c_p10)

                    ; #22284: <==negation-removal== 27237 (pos)
                    (not (at_c_p4))

                    ; #81539: <==negation-removal== 35824 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4))
        :effect (and
                    ; #27237: origin
                    (not_at_c_p4)

                    ; #43547: origin
                    (at_c_p11)

                    ; #22284: <==negation-removal== 27237 (pos)
                    (not (at_c_p4))

                    ; #40396: <==negation-removal== 43547 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #27237: origin
                    (not_at_c_p4)

                    ; #71398: origin
                    (at_c_p12)

                    ; #22284: <==negation-removal== 27237 (pos)
                    (not (at_c_p4))

                    ; #62694: <==negation-removal== 71398 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #27237: origin
                    (not_at_c_p4)

                    ; #63192: origin
                    (at_c_p2)

                    ; #22284: <==negation-removal== 27237 (pos)
                    (not (at_c_p4))

                    ; #72838: <==negation-removal== 63192 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #25395: origin
                    (at_c_p3)

                    ; #27237: origin
                    (not_at_c_p4)

                    ; #22284: <==negation-removal== 27237 (pos)
                    (not (at_c_p4))

                    ; #79419: <==negation-removal== 25395 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #22284: origin
                    (at_c_p4)

                    ; #27237: origin
                    (not_at_c_p4)

                    ; #22284: <==negation-removal== 27237 (pos)
                    (not (at_c_p4))

                    ; #27237: <==negation-removal== 22284 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #18340: origin
                    (at_c_p5)

                    ; #27237: origin
                    (not_at_c_p4)

                    ; #22284: <==negation-removal== 27237 (pos)
                    (not (at_c_p4))

                    ; #94384: <==negation-removal== 18340 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #26312: origin
                    (at_c_p6)

                    ; #27237: origin
                    (not_at_c_p4)

                    ; #22284: <==negation-removal== 27237 (pos)
                    (not (at_c_p4))

                    ; #38054: <==negation-removal== 26312 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #25436: origin
                    (at_c_p7)

                    ; #27237: origin
                    (not_at_c_p4)

                    ; #15311: <==negation-removal== 25436 (pos)
                    (not (not_at_c_p7))

                    ; #22284: <==negation-removal== 27237 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #27237: origin
                    (not_at_c_p4)

                    ; #34915: origin
                    (at_c_p8)

                    ; #22284: <==negation-removal== 27237 (pos)
                    (not (at_c_p4))

                    ; #25524: <==negation-removal== 34915 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #17657: origin
                    (at_c_p9)

                    ; #27237: origin
                    (not_at_c_p4)

                    ; #22284: <==negation-removal== 27237 (pos)
                    (not (at_c_p4))

                    ; #74965: <==negation-removal== 17657 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #74829: origin
                    (at_c_p1)

                    ; #94384: origin
                    (not_at_c_p5)

                    ; #18340: <==negation-removal== 94384 (pos)
                    (not (at_c_p5))

                    ; #78365: <==negation-removal== 74829 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #35824: origin
                    (at_c_p10)

                    ; #94384: origin
                    (not_at_c_p5)

                    ; #18340: <==negation-removal== 94384 (pos)
                    (not (at_c_p5))

                    ; #81539: <==negation-removal== 35824 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #43547: origin
                    (at_c_p11)

                    ; #94384: origin
                    (not_at_c_p5)

                    ; #18340: <==negation-removal== 94384 (pos)
                    (not (at_c_p5))

                    ; #40396: <==negation-removal== 43547 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #71398: origin
                    (at_c_p12)

                    ; #94384: origin
                    (not_at_c_p5)

                    ; #18340: <==negation-removal== 94384 (pos)
                    (not (at_c_p5))

                    ; #62694: <==negation-removal== 71398 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #63192: origin
                    (at_c_p2)

                    ; #94384: origin
                    (not_at_c_p5)

                    ; #18340: <==negation-removal== 94384 (pos)
                    (not (at_c_p5))

                    ; #72838: <==negation-removal== 63192 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #25395: origin
                    (at_c_p3)

                    ; #94384: origin
                    (not_at_c_p5)

                    ; #18340: <==negation-removal== 94384 (pos)
                    (not (at_c_p5))

                    ; #79419: <==negation-removal== 25395 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #22284: origin
                    (at_c_p4)

                    ; #94384: origin
                    (not_at_c_p5)

                    ; #18340: <==negation-removal== 94384 (pos)
                    (not (at_c_p5))

                    ; #27237: <==negation-removal== 22284 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #18340: origin
                    (at_c_p5)

                    ; #94384: origin
                    (not_at_c_p5)

                    ; #18340: <==negation-removal== 94384 (pos)
                    (not (at_c_p5))

                    ; #94384: <==negation-removal== 18340 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #26312: origin
                    (at_c_p6)

                    ; #94384: origin
                    (not_at_c_p5)

                    ; #18340: <==negation-removal== 94384 (pos)
                    (not (at_c_p5))

                    ; #38054: <==negation-removal== 26312 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #25436: origin
                    (at_c_p7)

                    ; #94384: origin
                    (not_at_c_p5)

                    ; #15311: <==negation-removal== 25436 (pos)
                    (not (not_at_c_p7))

                    ; #18340: <==negation-removal== 94384 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #34915: origin
                    (at_c_p8)

                    ; #94384: origin
                    (not_at_c_p5)

                    ; #18340: <==negation-removal== 94384 (pos)
                    (not (at_c_p5))

                    ; #25524: <==negation-removal== 34915 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #17657: origin
                    (at_c_p9)

                    ; #94384: origin
                    (not_at_c_p5)

                    ; #18340: <==negation-removal== 94384 (pos)
                    (not (at_c_p5))

                    ; #74965: <==negation-removal== 17657 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #38054: origin
                    (not_at_c_p6)

                    ; #74829: origin
                    (at_c_p1)

                    ; #26312: <==negation-removal== 38054 (pos)
                    (not (at_c_p6))

                    ; #78365: <==negation-removal== 74829 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6))
        :effect (and
                    ; #35824: origin
                    (at_c_p10)

                    ; #38054: origin
                    (not_at_c_p6)

                    ; #26312: <==negation-removal== 38054 (pos)
                    (not (at_c_p6))

                    ; #81539: <==negation-removal== 35824 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6))
        :effect (and
                    ; #38054: origin
                    (not_at_c_p6)

                    ; #43547: origin
                    (at_c_p11)

                    ; #26312: <==negation-removal== 38054 (pos)
                    (not (at_c_p6))

                    ; #40396: <==negation-removal== 43547 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6))
        :effect (and
                    ; #38054: origin
                    (not_at_c_p6)

                    ; #71398: origin
                    (at_c_p12)

                    ; #26312: <==negation-removal== 38054 (pos)
                    (not (at_c_p6))

                    ; #62694: <==negation-removal== 71398 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #38054: origin
                    (not_at_c_p6)

                    ; #63192: origin
                    (at_c_p2)

                    ; #26312: <==negation-removal== 38054 (pos)
                    (not (at_c_p6))

                    ; #72838: <==negation-removal== 63192 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #25395: origin
                    (at_c_p3)

                    ; #38054: origin
                    (not_at_c_p6)

                    ; #26312: <==negation-removal== 38054 (pos)
                    (not (at_c_p6))

                    ; #79419: <==negation-removal== 25395 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #22284: origin
                    (at_c_p4)

                    ; #38054: origin
                    (not_at_c_p6)

                    ; #26312: <==negation-removal== 38054 (pos)
                    (not (at_c_p6))

                    ; #27237: <==negation-removal== 22284 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #18340: origin
                    (at_c_p5)

                    ; #38054: origin
                    (not_at_c_p6)

                    ; #26312: <==negation-removal== 38054 (pos)
                    (not (at_c_p6))

                    ; #94384: <==negation-removal== 18340 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #26312: origin
                    (at_c_p6)

                    ; #38054: origin
                    (not_at_c_p6)

                    ; #26312: <==negation-removal== 38054 (pos)
                    (not (at_c_p6))

                    ; #38054: <==negation-removal== 26312 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #25436: origin
                    (at_c_p7)

                    ; #38054: origin
                    (not_at_c_p6)

                    ; #15311: <==negation-removal== 25436 (pos)
                    (not (not_at_c_p7))

                    ; #26312: <==negation-removal== 38054 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #34915: origin
                    (at_c_p8)

                    ; #38054: origin
                    (not_at_c_p6)

                    ; #25524: <==negation-removal== 34915 (pos)
                    (not (not_at_c_p8))

                    ; #26312: <==negation-removal== 38054 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #17657: origin
                    (at_c_p9)

                    ; #38054: origin
                    (not_at_c_p6)

                    ; #26312: <==negation-removal== 38054 (pos)
                    (not (at_c_p6))

                    ; #74965: <==negation-removal== 17657 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #15311: origin
                    (not_at_c_p7)

                    ; #74829: origin
                    (at_c_p1)

                    ; #25436: <==negation-removal== 15311 (pos)
                    (not (at_c_p7))

                    ; #78365: <==negation-removal== 74829 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7))
        :effect (and
                    ; #15311: origin
                    (not_at_c_p7)

                    ; #35824: origin
                    (at_c_p10)

                    ; #25436: <==negation-removal== 15311 (pos)
                    (not (at_c_p7))

                    ; #81539: <==negation-removal== 35824 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #15311: origin
                    (not_at_c_p7)

                    ; #43547: origin
                    (at_c_p11)

                    ; #25436: <==negation-removal== 15311 (pos)
                    (not (at_c_p7))

                    ; #40396: <==negation-removal== 43547 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7))
        :effect (and
                    ; #15311: origin
                    (not_at_c_p7)

                    ; #71398: origin
                    (at_c_p12)

                    ; #25436: <==negation-removal== 15311 (pos)
                    (not (at_c_p7))

                    ; #62694: <==negation-removal== 71398 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #15311: origin
                    (not_at_c_p7)

                    ; #63192: origin
                    (at_c_p2)

                    ; #25436: <==negation-removal== 15311 (pos)
                    (not (at_c_p7))

                    ; #72838: <==negation-removal== 63192 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #15311: origin
                    (not_at_c_p7)

                    ; #25395: origin
                    (at_c_p3)

                    ; #25436: <==negation-removal== 15311 (pos)
                    (not (at_c_p7))

                    ; #79419: <==negation-removal== 25395 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #15311: origin
                    (not_at_c_p7)

                    ; #22284: origin
                    (at_c_p4)

                    ; #25436: <==negation-removal== 15311 (pos)
                    (not (at_c_p7))

                    ; #27237: <==negation-removal== 22284 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #15311: origin
                    (not_at_c_p7)

                    ; #18340: origin
                    (at_c_p5)

                    ; #25436: <==negation-removal== 15311 (pos)
                    (not (at_c_p7))

                    ; #94384: <==negation-removal== 18340 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #15311: origin
                    (not_at_c_p7)

                    ; #26312: origin
                    (at_c_p6)

                    ; #25436: <==negation-removal== 15311 (pos)
                    (not (at_c_p7))

                    ; #38054: <==negation-removal== 26312 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #15311: origin
                    (not_at_c_p7)

                    ; #25436: origin
                    (at_c_p7)

                    ; #15311: <==negation-removal== 25436 (pos)
                    (not (not_at_c_p7))

                    ; #25436: <==negation-removal== 15311 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #15311: origin
                    (not_at_c_p7)

                    ; #34915: origin
                    (at_c_p8)

                    ; #25436: <==negation-removal== 15311 (pos)
                    (not (at_c_p7))

                    ; #25524: <==negation-removal== 34915 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #15311: origin
                    (not_at_c_p7)

                    ; #17657: origin
                    (at_c_p9)

                    ; #25436: <==negation-removal== 15311 (pos)
                    (not (at_c_p7))

                    ; #74965: <==negation-removal== 17657 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #25524: origin
                    (not_at_c_p8)

                    ; #74829: origin
                    (at_c_p1)

                    ; #34915: <==negation-removal== 25524 (pos)
                    (not (at_c_p8))

                    ; #78365: <==negation-removal== 74829 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8))
        :effect (and
                    ; #25524: origin
                    (not_at_c_p8)

                    ; #35824: origin
                    (at_c_p10)

                    ; #34915: <==negation-removal== 25524 (pos)
                    (not (at_c_p8))

                    ; #81539: <==negation-removal== 35824 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8))
        :effect (and
                    ; #25524: origin
                    (not_at_c_p8)

                    ; #43547: origin
                    (at_c_p11)

                    ; #34915: <==negation-removal== 25524 (pos)
                    (not (at_c_p8))

                    ; #40396: <==negation-removal== 43547 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_c_p8))
        :effect (and
                    ; #25524: origin
                    (not_at_c_p8)

                    ; #71398: origin
                    (at_c_p12)

                    ; #34915: <==negation-removal== 25524 (pos)
                    (not (at_c_p8))

                    ; #62694: <==negation-removal== 71398 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #25524: origin
                    (not_at_c_p8)

                    ; #63192: origin
                    (at_c_p2)

                    ; #34915: <==negation-removal== 25524 (pos)
                    (not (at_c_p8))

                    ; #72838: <==negation-removal== 63192 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #25395: origin
                    (at_c_p3)

                    ; #25524: origin
                    (not_at_c_p8)

                    ; #34915: <==negation-removal== 25524 (pos)
                    (not (at_c_p8))

                    ; #79419: <==negation-removal== 25395 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #22284: origin
                    (at_c_p4)

                    ; #25524: origin
                    (not_at_c_p8)

                    ; #27237: <==negation-removal== 22284 (pos)
                    (not (not_at_c_p4))

                    ; #34915: <==negation-removal== 25524 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #18340: origin
                    (at_c_p5)

                    ; #25524: origin
                    (not_at_c_p8)

                    ; #34915: <==negation-removal== 25524 (pos)
                    (not (at_c_p8))

                    ; #94384: <==negation-removal== 18340 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #25524: origin
                    (not_at_c_p8)

                    ; #26312: origin
                    (at_c_p6)

                    ; #34915: <==negation-removal== 25524 (pos)
                    (not (at_c_p8))

                    ; #38054: <==negation-removal== 26312 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #25436: origin
                    (at_c_p7)

                    ; #25524: origin
                    (not_at_c_p8)

                    ; #15311: <==negation-removal== 25436 (pos)
                    (not (not_at_c_p7))

                    ; #34915: <==negation-removal== 25524 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #25524: origin
                    (not_at_c_p8)

                    ; #34915: origin
                    (at_c_p8)

                    ; #25524: <==negation-removal== 34915 (pos)
                    (not (not_at_c_p8))

                    ; #34915: <==negation-removal== 25524 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #17657: origin
                    (at_c_p9)

                    ; #25524: origin
                    (not_at_c_p8)

                    ; #34915: <==negation-removal== 25524 (pos)
                    (not (at_c_p8))

                    ; #74965: <==negation-removal== 17657 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #74829: origin
                    (at_c_p1)

                    ; #74965: origin
                    (not_at_c_p9)

                    ; #17657: <==negation-removal== 74965 (pos)
                    (not (at_c_p9))

                    ; #78365: <==negation-removal== 74829 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #35824: origin
                    (at_c_p10)

                    ; #74965: origin
                    (not_at_c_p9)

                    ; #17657: <==negation-removal== 74965 (pos)
                    (not (at_c_p9))

                    ; #81539: <==negation-removal== 35824 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p9_p11
        :precondition (and (at_c_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #43547: origin
                    (at_c_p11)

                    ; #74965: origin
                    (not_at_c_p9)

                    ; #17657: <==negation-removal== 74965 (pos)
                    (not (at_c_p9))

                    ; #40396: <==negation-removal== 43547 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #71398: origin
                    (at_c_p12)

                    ; #74965: origin
                    (not_at_c_p9)

                    ; #17657: <==negation-removal== 74965 (pos)
                    (not (at_c_p9))

                    ; #62694: <==negation-removal== 71398 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #63192: origin
                    (at_c_p2)

                    ; #74965: origin
                    (not_at_c_p9)

                    ; #17657: <==negation-removal== 74965 (pos)
                    (not (at_c_p9))

                    ; #72838: <==negation-removal== 63192 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #25395: origin
                    (at_c_p3)

                    ; #74965: origin
                    (not_at_c_p9)

                    ; #17657: <==negation-removal== 74965 (pos)
                    (not (at_c_p9))

                    ; #79419: <==negation-removal== 25395 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #22284: origin
                    (at_c_p4)

                    ; #74965: origin
                    (not_at_c_p9)

                    ; #17657: <==negation-removal== 74965 (pos)
                    (not (at_c_p9))

                    ; #27237: <==negation-removal== 22284 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #18340: origin
                    (at_c_p5)

                    ; #74965: origin
                    (not_at_c_p9)

                    ; #17657: <==negation-removal== 74965 (pos)
                    (not (at_c_p9))

                    ; #94384: <==negation-removal== 18340 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #26312: origin
                    (at_c_p6)

                    ; #74965: origin
                    (not_at_c_p9)

                    ; #17657: <==negation-removal== 74965 (pos)
                    (not (at_c_p9))

                    ; #38054: <==negation-removal== 26312 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #25436: origin
                    (at_c_p7)

                    ; #74965: origin
                    (not_at_c_p9)

                    ; #15311: <==negation-removal== 25436 (pos)
                    (not (not_at_c_p7))

                    ; #17657: <==negation-removal== 74965 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #34915: origin
                    (at_c_p8)

                    ; #74965: origin
                    (not_at_c_p9)

                    ; #17657: <==negation-removal== 74965 (pos)
                    (not (at_c_p9))

                    ; #25524: <==negation-removal== 34915 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #17657: origin
                    (at_c_p9)

                    ; #74965: origin
                    (not_at_c_p9)

                    ; #17657: <==negation-removal== 74965 (pos)
                    (not (at_c_p9))

                    ; #74965: <==negation-removal== 17657 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #12776: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #18236: <==commonly_known== 66770 (neg)
                    (Pb_checked_p10)

                    ; #32754: <==commonly_known== 66770 (neg)
                    (Pa_checked_p10)

                    ; #48894: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #48929: <==commonly_known== 80084 (pos)
                    (Bb_checked_p10)

                    ; #55176: <==commonly_known== 80084 (pos)
                    (Bc_checked_p10)

                    ; #77275: <==closure== 12776 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #80084: origin
                    (checked_p10)

                    ; #83480: <==commonly_known== 66770 (neg)
                    (Pc_checked_p10)

                    ; #83873: <==commonly_known== 80084 (pos)
                    (Ba_checked_p10)

                    ; #93457: <==closure== 48894 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #11652: <==uncertain_firing== 77275 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #12927: <==negation-removal== 18236 (pos)
                    (not (Bb_not_checked_p10))

                    ; #15723: <==negation-removal== 32754 (pos)
                    (not (Ba_not_checked_p10))

                    ; #18506: <==negation-removal== 55176 (pos)
                    (not (Pc_not_checked_p10))

                    ; #22709: <==uncertain_firing== 48894 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #36654: <==negation-removal== 83873 (pos)
                    (not (Pa_not_checked_p10))

                    ; #37751: <==negation-removal== 48929 (pos)
                    (not (Pb_not_checked_p10))

                    ; #42458: <==negation-removal== 93457 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #44133: <==uncertain_firing== 12776 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #59894: <==negation-removal== 48894 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #65100: <==negation-removal== 12776 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #66770: <==negation-removal== 80084 (pos)
                    (not (not_checked_p10))

                    ; #81552: <==negation-removal== 77275 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #87479: <==negation-removal== 83480 (pos)
                    (not (Bc_not_checked_p10))

                    ; #90875: <==uncertain_firing== 93457 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #14908: <==commonly_known== 90158 (pos)
                    (Bb_checked_p11)

                    ; #25826: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #28878: <==commonly_known== 24001 (neg)
                    (Pb_checked_p11)

                    ; #30822: <==commonly_known== 24001 (neg)
                    (Pc_checked_p11)

                    ; #40196: <==commonly_known== 24001 (neg)
                    (Pa_checked_p11)

                    ; #41316: <==closure== 25826 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #54249: <==commonly_known== 90158 (pos)
                    (Ba_checked_p11)

                    ; #58578: <==commonly_known== 90158 (pos)
                    (Bc_checked_p11)

                    ; #78230: <==closure== 81697 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #81697: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #90158: origin
                    (checked_p11)

                    ; #21965: <==negation-removal== 41316 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #24001: <==negation-removal== 90158 (pos)
                    (not (not_checked_p11))

                    ; #24097: <==uncertain_firing== 41316 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #36922: <==negation-removal== 40196 (pos)
                    (not (Ba_not_checked_p11))

                    ; #38934: <==negation-removal== 81697 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #39298: <==negation-removal== 54249 (pos)
                    (not (Pa_not_checked_p11))

                    ; #50235: <==negation-removal== 14908 (pos)
                    (not (Pb_not_checked_p11))

                    ; #53659: <==negation-removal== 30822 (pos)
                    (not (Bc_not_checked_p11))

                    ; #60334: <==uncertain_firing== 25826 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #61746: <==uncertain_firing== 81697 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #74942: <==negation-removal== 28878 (pos)
                    (not (Bb_not_checked_p11))

                    ; #85131: <==uncertain_firing== 78230 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #85511: <==negation-removal== 78230 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #90575: <==negation-removal== 25826 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #91339: <==negation-removal== 58578 (pos)
                    (not (Pc_not_checked_p11))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #16583: <==commonly_known== 40062 (neg)
                    (Pa_checked_p12)

                    ; #19130: <==closure== 38090 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #23490: origin
                    (checked_p12)

                    ; #38090: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #41063: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #44476: <==commonly_known== 23490 (pos)
                    (Bb_checked_p12)

                    ; #47669: <==commonly_known== 40062 (neg)
                    (Pb_checked_p12)

                    ; #56423: <==commonly_known== 23490 (pos)
                    (Bc_checked_p12)

                    ; #83185: <==commonly_known== 23490 (pos)
                    (Ba_checked_p12)

                    ; #83474: <==closure== 41063 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #89741: <==commonly_known== 40062 (neg)
                    (Pc_checked_p12)

                    ; #12466: <==negation-removal== 38090 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #14720: <==uncertain_firing== 19130 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #18808: <==uncertain_firing== 41063 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #25681: <==negation-removal== 47669 (pos)
                    (not (Bb_not_checked_p12))

                    ; #27526: <==negation-removal== 44476 (pos)
                    (not (Pb_not_checked_p12))

                    ; #36218: <==negation-removal== 16583 (pos)
                    (not (Ba_not_checked_p12))

                    ; #40062: <==negation-removal== 23490 (pos)
                    (not (not_checked_p12))

                    ; #44860: <==negation-removal== 83474 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #48396: <==negation-removal== 83185 (pos)
                    (not (Pa_not_checked_p12))

                    ; #61339: <==negation-removal== 41063 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #68696: <==negation-removal== 19130 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #80578: <==negation-removal== 56423 (pos)
                    (not (Pc_not_checked_p12))

                    ; #81255: <==uncertain_firing== 38090 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #84870: <==uncertain_firing== 83474 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #86754: <==negation-removal== 89741 (pos)
                    (not (Bc_not_checked_p12))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #14705: origin
                    (checked_p1)

                    ; #23394: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #24636: <==commonly_known== 10184 (neg)
                    (Pc_checked_p1)

                    ; #26278: <==commonly_known== 10184 (neg)
                    (Pb_checked_p1)

                    ; #36865: <==closure== 23394 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #43924: <==closure== 69070 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #50603: <==commonly_known== 10184 (neg)
                    (Pa_checked_p1)

                    ; #57629: <==commonly_known== 14705 (pos)
                    (Bb_checked_p1)

                    ; #65106: <==commonly_known== 14705 (pos)
                    (Bc_checked_p1)

                    ; #65237: <==commonly_known== 14705 (pos)
                    (Ba_checked_p1)

                    ; #69070: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #10184: <==negation-removal== 14705 (pos)
                    (not (not_checked_p1))

                    ; #11973: <==negation-removal== 43924 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #12554: <==negation-removal== 57629 (pos)
                    (not (Pb_not_checked_p1))

                    ; #12653: <==negation-removal== 23394 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #13150: <==negation-removal== 26278 (pos)
                    (not (Bb_not_checked_p1))

                    ; #17503: <==negation-removal== 65237 (pos)
                    (not (Pa_not_checked_p1))

                    ; #18447: <==negation-removal== 36865 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #20814: <==uncertain_firing== 43924 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #27626: <==uncertain_firing== 36865 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #42440: <==negation-removal== 65106 (pos)
                    (not (Pc_not_checked_p1))

                    ; #55965: <==uncertain_firing== 23394 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #61618: <==negation-removal== 50603 (pos)
                    (not (Ba_not_checked_p1))

                    ; #67487: <==uncertain_firing== 69070 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #79104: <==negation-removal== 69070 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #96258: <==negation-removal== 24636 (pos)
                    (not (Bc_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #15048: <==commonly_known== 16372 (pos)
                    (Ba_checked_p2)

                    ; #16372: origin
                    (checked_p2)

                    ; #16567: <==commonly_known== 88385 (neg)
                    (Pa_checked_p2)

                    ; #25005: <==commonly_known== 16372 (pos)
                    (Bc_checked_p2)

                    ; #33304: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #36524: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #45742: <==commonly_known== 88385 (neg)
                    (Pb_checked_p2)

                    ; #46397: <==closure== 33304 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #64039: <==commonly_known== 88385 (neg)
                    (Pc_checked_p2)

                    ; #81558: <==commonly_known== 16372 (pos)
                    (Bb_checked_p2)

                    ; #90533: <==closure== 36524 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #22956: <==uncertain_firing== 33304 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #26613: <==negation-removal== 25005 (pos)
                    (not (Pc_not_checked_p2))

                    ; #27765: <==negation-removal== 33304 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #30982: <==uncertain_firing== 46397 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #31658: <==negation-removal== 64039 (pos)
                    (not (Bc_not_checked_p2))

                    ; #41302: <==negation-removal== 36524 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #51255: <==uncertain_firing== 36524 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #51910: <==negation-removal== 15048 (pos)
                    (not (Pa_not_checked_p2))

                    ; #60624: <==uncertain_firing== 90533 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #61782: <==negation-removal== 16567 (pos)
                    (not (Ba_not_checked_p2))

                    ; #65324: <==negation-removal== 46397 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #66570: <==negation-removal== 90533 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #74235: <==negation-removal== 81558 (pos)
                    (not (Pb_not_checked_p2))

                    ; #88385: <==negation-removal== 16372 (pos)
                    (not (not_checked_p2))

                    ; #88829: <==negation-removal== 45742 (pos)
                    (not (Bb_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #24296: <==commonly_known== 90922 (pos)
                    (Bc_checked_p3)

                    ; #37155: <==commonly_known== 64541 (neg)
                    (Pa_checked_p3)

                    ; #53092: <==commonly_known== 64541 (neg)
                    (Pc_checked_p3)

                    ; #58101: <==commonly_known== 90922 (pos)
                    (Ba_checked_p3)

                    ; #59208: <==commonly_known== 90922 (pos)
                    (Bb_checked_p3)

                    ; #62665: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #69405: <==closure== 62665 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #78386: <==commonly_known== 64541 (neg)
                    (Pb_checked_p3)

                    ; #83360: <==closure== 83877 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #83877: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #90922: origin
                    (checked_p3)

                    ; #12775: <==uncertain_firing== 83877 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #18981: <==negation-removal== 59208 (pos)
                    (not (Pb_not_checked_p3))

                    ; #20786: <==negation-removal== 62665 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #28883: <==negation-removal== 83877 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #32088: <==negation-removal== 37155 (pos)
                    (not (Ba_not_checked_p3))

                    ; #41473: <==uncertain_firing== 62665 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #52371: <==negation-removal== 24296 (pos)
                    (not (Pc_not_checked_p3))

                    ; #60367: <==negation-removal== 69405 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #64541: <==negation-removal== 90922 (pos)
                    (not (not_checked_p3))

                    ; #68009: <==negation-removal== 83360 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #72411: <==uncertain_firing== 69405 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #75433: <==negation-removal== 53092 (pos)
                    (not (Bc_not_checked_p3))

                    ; #82950: <==uncertain_firing== 83360 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #84442: <==negation-removal== 58101 (pos)
                    (not (Pa_not_checked_p3))

                    ; #89048: <==negation-removal== 78386 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #37628: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #39611: <==closure== 37628 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #52791: <==commonly_known== 50585 (neg)
                    (Pb_checked_p4)

                    ; #57532: <==commonly_known== 50585 (neg)
                    (Pc_checked_p4)

                    ; #58059: <==closure== 67632 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #66918: <==commonly_known== 69053 (pos)
                    (Bc_checked_p4)

                    ; #67632: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #69053: origin
                    (checked_p4)

                    ; #78524: <==commonly_known== 50585 (neg)
                    (Pa_checked_p4)

                    ; #88943: <==commonly_known== 69053 (pos)
                    (Ba_checked_p4)

                    ; #90279: <==commonly_known== 69053 (pos)
                    (Bb_checked_p4)

                    ; #12216: <==uncertain_firing== 39611 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #13010: <==uncertain_firing== 58059 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #21785: <==negation-removal== 78524 (pos)
                    (not (Ba_not_checked_p4))

                    ; #22481: <==negation-removal== 39611 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #28037: <==negation-removal== 58059 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #33087: <==negation-removal== 57532 (pos)
                    (not (Bc_not_checked_p4))

                    ; #36785: <==negation-removal== 52791 (pos)
                    (not (Bb_not_checked_p4))

                    ; #37181: <==negation-removal== 90279 (pos)
                    (not (Pb_not_checked_p4))

                    ; #40028: <==negation-removal== 67632 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #41644: <==uncertain_firing== 37628 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #50585: <==negation-removal== 69053 (pos)
                    (not (not_checked_p4))

                    ; #50794: <==negation-removal== 66918 (pos)
                    (not (Pc_not_checked_p4))

                    ; #59811: <==uncertain_firing== 67632 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #80132: <==negation-removal== 37628 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #82223: <==negation-removal== 88943 (pos)
                    (not (Pa_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #34024: <==commonly_known== 45895 (neg)
                    (Pb_checked_p5)

                    ; #43923: origin
                    (checked_p5)

                    ; #52710: <==closure== 82373 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #54872: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #59550: <==commonly_known== 45895 (neg)
                    (Pa_checked_p5)

                    ; #71951: <==commonly_known== 43923 (pos)
                    (Bb_checked_p5)

                    ; #73757: <==commonly_known== 43923 (pos)
                    (Bc_checked_p5)

                    ; #82373: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #83244: <==commonly_known== 45895 (neg)
                    (Pc_checked_p5)

                    ; #88570: <==closure== 54872 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #99547: <==commonly_known== 43923 (pos)
                    (Ba_checked_p5)

                    ; #10774: <==uncertain_firing== 82373 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #19667: <==negation-removal== 99547 (pos)
                    (not (Pa_not_checked_p5))

                    ; #22602: <==negation-removal== 59550 (pos)
                    (not (Ba_not_checked_p5))

                    ; #32619: <==negation-removal== 73757 (pos)
                    (not (Pc_not_checked_p5))

                    ; #38485: <==negation-removal== 54872 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #42204: <==negation-removal== 83244 (pos)
                    (not (Bc_not_checked_p5))

                    ; #44547: <==negation-removal== 88570 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #45895: <==negation-removal== 43923 (pos)
                    (not (not_checked_p5))

                    ; #51012: <==negation-removal== 71951 (pos)
                    (not (Pb_not_checked_p5))

                    ; #55286: <==negation-removal== 52710 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #66556: <==negation-removal== 34024 (pos)
                    (not (Bb_not_checked_p5))

                    ; #72865: <==negation-removal== 82373 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #76810: <==uncertain_firing== 88570 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #82331: <==uncertain_firing== 52710 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #84223: <==uncertain_firing== 54872 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #34847: <==commonly_known== 18907 (neg)
                    (Pc_checked_p6)

                    ; #36170: <==commonly_known== 73434 (pos)
                    (Bc_checked_p6)

                    ; #37403: <==closure== 40862 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #40656: <==commonly_known== 73434 (pos)
                    (Ba_checked_p6)

                    ; #40862: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #49251: <==commonly_known== 18907 (neg)
                    (Pb_checked_p6)

                    ; #73434: origin
                    (checked_p6)

                    ; #78273: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #79193: <==closure== 78273 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #83571: <==commonly_known== 73434 (pos)
                    (Bb_checked_p6)

                    ; #90550: <==commonly_known== 18907 (neg)
                    (Pa_checked_p6)

                    ; #18907: <==negation-removal== 73434 (pos)
                    (not (not_checked_p6))

                    ; #22416: <==negation-removal== 36170 (pos)
                    (not (Pc_not_checked_p6))

                    ; #23662: <==negation-removal== 79193 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #27288: <==uncertain_firing== 37403 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #30537: <==negation-removal== 78273 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #31572: <==uncertain_firing== 78273 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #32235: <==uncertain_firing== 40862 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #35384: <==negation-removal== 37403 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #39548: <==negation-removal== 40862 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #42154: <==uncertain_firing== 79193 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #43931: <==negation-removal== 49251 (pos)
                    (not (Bb_not_checked_p6))

                    ; #53415: <==negation-removal== 83571 (pos)
                    (not (Pb_not_checked_p6))

                    ; #60167: <==negation-removal== 90550 (pos)
                    (not (Ba_not_checked_p6))

                    ; #72368: <==negation-removal== 34847 (pos)
                    (not (Bc_not_checked_p6))

                    ; #81507: <==negation-removal== 40656 (pos)
                    (not (Pa_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #17818: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #22917: <==closure== 26192 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #26192: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #31483: <==commonly_known== 82131 (pos)
                    (Ba_checked_p7)

                    ; #52757: <==commonly_known== 80130 (neg)
                    (Pc_checked_p7)

                    ; #60874: <==commonly_known== 80130 (neg)
                    (Pb_checked_p7)

                    ; #66369: <==commonly_known== 82131 (pos)
                    (Bc_checked_p7)

                    ; #66712: <==commonly_known== 80130 (neg)
                    (Pa_checked_p7)

                    ; #82131: origin
                    (checked_p7)

                    ; #88034: <==closure== 17818 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #94133: <==commonly_known== 82131 (pos)
                    (Bb_checked_p7)

                    ; #18569: <==negation-removal== 60874 (pos)
                    (not (Bb_not_checked_p7))

                    ; #26765: <==negation-removal== 66712 (pos)
                    (not (Ba_not_checked_p7))

                    ; #46107: <==negation-removal== 31483 (pos)
                    (not (Pa_not_checked_p7))

                    ; #51300: <==uncertain_firing== 88034 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #55637: <==uncertain_firing== 17818 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #55669: <==negation-removal== 26192 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #63639: <==negation-removal== 17818 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #66931: <==negation-removal== 88034 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #70968: <==negation-removal== 52757 (pos)
                    (not (Bc_not_checked_p7))

                    ; #71288: <==negation-removal== 66369 (pos)
                    (not (Pc_not_checked_p7))

                    ; #71528: <==uncertain_firing== 22917 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #77555: <==negation-removal== 22917 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #80130: <==negation-removal== 82131 (pos)
                    (not (not_checked_p7))

                    ; #88306: <==uncertain_firing== 26192 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #89044: <==negation-removal== 94133 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #19567: <==commonly_known== 59401 (pos)
                    (Ba_checked_p8)

                    ; #27085: <==closure== 93657 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #49264: <==commonly_known== 87187 (neg)
                    (Pa_checked_p8)

                    ; #49855: <==commonly_known== 87187 (neg)
                    (Pc_checked_p8)

                    ; #59401: origin
                    (checked_p8)

                    ; #60163: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #69339: <==commonly_known== 59401 (pos)
                    (Bb_checked_p8)

                    ; #69490: <==closure== 60163 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #84801: <==commonly_known== 87187 (neg)
                    (Pb_checked_p8)

                    ; #93657: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #94347: <==commonly_known== 59401 (pos)
                    (Bc_checked_p8)

                    ; #20685: <==uncertain_firing== 60163 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #22524: <==uncertain_firing== 93657 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #33445: <==negation-removal== 84801 (pos)
                    (not (Bb_not_checked_p8))

                    ; #38334: <==negation-removal== 49264 (pos)
                    (not (Ba_not_checked_p8))

                    ; #42305: <==negation-removal== 94347 (pos)
                    (not (Pc_not_checked_p8))

                    ; #49712: <==negation-removal== 69339 (pos)
                    (not (Pb_not_checked_p8))

                    ; #50143: <==negation-removal== 49855 (pos)
                    (not (Bc_not_checked_p8))

                    ; #54200: <==uncertain_firing== 69490 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #58311: <==negation-removal== 19567 (pos)
                    (not (Pa_not_checked_p8))

                    ; #59602: <==negation-removal== 93657 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #61379: <==negation-removal== 60163 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #65319: <==uncertain_firing== 27085 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #72117: <==negation-removal== 69490 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #78675: <==negation-removal== 27085 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #87187: <==negation-removal== 59401 (pos)
                    (not (not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11669: origin
                    (checked_p9)

                    ; #11982: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #18748: <==commonly_known== 43198 (neg)
                    (Pc_checked_p9)

                    ; #34685: <==closure== 41576 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #36352: <==closure== 11982 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #41576: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #45262: <==commonly_known== 11669 (pos)
                    (Bb_checked_p9)

                    ; #50546: <==commonly_known== 11669 (pos)
                    (Ba_checked_p9)

                    ; #55382: <==commonly_known== 43198 (neg)
                    (Pa_checked_p9)

                    ; #73947: <==commonly_known== 43198 (neg)
                    (Pb_checked_p9)

                    ; #82559: <==commonly_known== 11669 (pos)
                    (Bc_checked_p9)

                    ; #12658: <==negation-removal== 34685 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #13529: <==negation-removal== 55382 (pos)
                    (not (Ba_not_checked_p9))

                    ; #14051: <==uncertain_firing== 34685 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #28619: <==negation-removal== 50546 (pos)
                    (not (Pa_not_checked_p9))

                    ; #38689: <==negation-removal== 41576 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #43198: <==negation-removal== 11669 (pos)
                    (not (not_checked_p9))

                    ; #43505: <==negation-removal== 11982 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #45199: <==uncertain_firing== 41576 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #50454: <==uncertain_firing== 36352 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #52829: <==negation-removal== 45262 (pos)
                    (not (Pb_not_checked_p9))

                    ; #59031: <==negation-removal== 36352 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #66522: <==negation-removal== 82559 (pos)
                    (not (Pc_not_checked_p9))

                    ; #72255: <==negation-removal== 73947 (pos)
                    (not (Bb_not_checked_p9))

                    ; #82297: <==negation-removal== 18748 (pos)
                    (not (Bc_not_checked_p9))

                    ; #87868: <==uncertain_firing== 11982 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #18236: <==commonly_known== 66770 (neg)
                    (Pb_checked_p10)

                    ; #24388: <==closure== 70639 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #32754: <==commonly_known== 66770 (neg)
                    (Pa_checked_p10)

                    ; #48929: <==commonly_known== 80084 (pos)
                    (Bb_checked_p10)

                    ; #55176: <==commonly_known== 80084 (pos)
                    (Bc_checked_p10)

                    ; #70639: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #73827: <==closure== 84817 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #80084: origin
                    (checked_p10)

                    ; #83480: <==commonly_known== 66770 (neg)
                    (Pc_checked_p10)

                    ; #83873: <==commonly_known== 80084 (pos)
                    (Ba_checked_p10)

                    ; #84817: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #12927: <==negation-removal== 18236 (pos)
                    (not (Bb_not_checked_p10))

                    ; #15723: <==negation-removal== 32754 (pos)
                    (not (Ba_not_checked_p10))

                    ; #18506: <==negation-removal== 55176 (pos)
                    (not (Pc_not_checked_p10))

                    ; #36654: <==negation-removal== 83873 (pos)
                    (not (Pa_not_checked_p10))

                    ; #37751: <==negation-removal== 48929 (pos)
                    (not (Pb_not_checked_p10))

                    ; #43477: <==negation-removal== 84817 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #51335: <==uncertain_firing== 24388 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #55728: <==uncertain_firing== 70639 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #58358: <==negation-removal== 70639 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #61114: <==negation-removal== 73827 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #64036: <==uncertain_firing== 84817 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #66770: <==negation-removal== 80084 (pos)
                    (not (not_checked_p10))

                    ; #71568: <==negation-removal== 24388 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #82427: <==uncertain_firing== 73827 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #87479: <==negation-removal== 83480 (pos)
                    (not (Bc_not_checked_p10))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #14908: <==commonly_known== 90158 (pos)
                    (Bb_checked_p11)

                    ; #24570: <==closure== 62636 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #28878: <==commonly_known== 24001 (neg)
                    (Pb_checked_p11)

                    ; #30821: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #30822: <==commonly_known== 24001 (neg)
                    (Pc_checked_p11)

                    ; #40196: <==commonly_known== 24001 (neg)
                    (Pa_checked_p11)

                    ; #54249: <==commonly_known== 90158 (pos)
                    (Ba_checked_p11)

                    ; #58578: <==commonly_known== 90158 (pos)
                    (Bc_checked_p11)

                    ; #62280: <==closure== 30821 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #62636: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #90158: origin
                    (checked_p11)

                    ; #15272: <==negation-removal== 62636 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #17005: <==negation-removal== 24570 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #24001: <==negation-removal== 90158 (pos)
                    (not (not_checked_p11))

                    ; #36922: <==negation-removal== 40196 (pos)
                    (not (Ba_not_checked_p11))

                    ; #39298: <==negation-removal== 54249 (pos)
                    (not (Pa_not_checked_p11))

                    ; #46688: <==uncertain_firing== 24570 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #48459: <==negation-removal== 62280 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #50235: <==negation-removal== 14908 (pos)
                    (not (Pb_not_checked_p11))

                    ; #53659: <==negation-removal== 30822 (pos)
                    (not (Bc_not_checked_p11))

                    ; #60290: <==uncertain_firing== 62280 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #67992: <==uncertain_firing== 30821 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #71761: <==uncertain_firing== 62636 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #74942: <==negation-removal== 28878 (pos)
                    (not (Bb_not_checked_p11))

                    ; #75868: <==negation-removal== 30821 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #91339: <==negation-removal== 58578 (pos)
                    (not (Pc_not_checked_p11))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #16194: <==closure== 87573 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #16583: <==commonly_known== 40062 (neg)
                    (Pa_checked_p12)

                    ; #23490: origin
                    (checked_p12)

                    ; #42167: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #44476: <==commonly_known== 23490 (pos)
                    (Bb_checked_p12)

                    ; #46649: <==closure== 42167 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #47669: <==commonly_known== 40062 (neg)
                    (Pb_checked_p12)

                    ; #56423: <==commonly_known== 23490 (pos)
                    (Bc_checked_p12)

                    ; #83185: <==commonly_known== 23490 (pos)
                    (Ba_checked_p12)

                    ; #87573: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #89741: <==commonly_known== 40062 (neg)
                    (Pc_checked_p12)

                    ; #20143: <==uncertain_firing== 42167 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #24740: <==negation-removal== 46649 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #25324: <==negation-removal== 16194 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #25681: <==negation-removal== 47669 (pos)
                    (not (Bb_not_checked_p12))

                    ; #27526: <==negation-removal== 44476 (pos)
                    (not (Pb_not_checked_p12))

                    ; #29786: <==uncertain_firing== 46649 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #36218: <==negation-removal== 16583 (pos)
                    (not (Ba_not_checked_p12))

                    ; #39276: <==uncertain_firing== 87573 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #40062: <==negation-removal== 23490 (pos)
                    (not (not_checked_p12))

                    ; #45821: <==negation-removal== 87573 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #48396: <==negation-removal== 83185 (pos)
                    (not (Pa_not_checked_p12))

                    ; #79951: <==negation-removal== 42167 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #80578: <==negation-removal== 56423 (pos)
                    (not (Pc_not_checked_p12))

                    ; #86754: <==negation-removal== 89741 (pos)
                    (not (Bc_not_checked_p12))

                    ; #88725: <==uncertain_firing== 16194 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #14705: origin
                    (checked_p1)

                    ; #24636: <==commonly_known== 10184 (neg)
                    (Pc_checked_p1)

                    ; #26278: <==commonly_known== 10184 (neg)
                    (Pb_checked_p1)

                    ; #36770: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #40431: <==closure== 71475 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #50603: <==commonly_known== 10184 (neg)
                    (Pa_checked_p1)

                    ; #57629: <==commonly_known== 14705 (pos)
                    (Bb_checked_p1)

                    ; #65106: <==commonly_known== 14705 (pos)
                    (Bc_checked_p1)

                    ; #65237: <==commonly_known== 14705 (pos)
                    (Ba_checked_p1)

                    ; #71475: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #86999: <==closure== 36770 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #10184: <==negation-removal== 14705 (pos)
                    (not (not_checked_p1))

                    ; #12554: <==negation-removal== 57629 (pos)
                    (not (Pb_not_checked_p1))

                    ; #13150: <==negation-removal== 26278 (pos)
                    (not (Bb_not_checked_p1))

                    ; #17503: <==negation-removal== 65237 (pos)
                    (not (Pa_not_checked_p1))

                    ; #27132: <==uncertain_firing== 71475 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #42440: <==negation-removal== 65106 (pos)
                    (not (Pc_not_checked_p1))

                    ; #46520: <==uncertain_firing== 40431 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #46693: <==uncertain_firing== 86999 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #49303: <==negation-removal== 86999 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #50457: <==negation-removal== 71475 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #61618: <==negation-removal== 50603 (pos)
                    (not (Ba_not_checked_p1))

                    ; #65822: <==negation-removal== 36770 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #80987: <==uncertain_firing== 36770 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #84714: <==negation-removal== 40431 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #96258: <==negation-removal== 24636 (pos)
                    (not (Bc_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #15048: <==commonly_known== 16372 (pos)
                    (Ba_checked_p2)

                    ; #15814: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #16372: origin
                    (checked_p2)

                    ; #16567: <==commonly_known== 88385 (neg)
                    (Pa_checked_p2)

                    ; #25005: <==commonly_known== 16372 (pos)
                    (Bc_checked_p2)

                    ; #40623: <==closure== 15814 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #45742: <==commonly_known== 88385 (neg)
                    (Pb_checked_p2)

                    ; #52938: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #64039: <==commonly_known== 88385 (neg)
                    (Pc_checked_p2)

                    ; #81558: <==commonly_known== 16372 (pos)
                    (Bb_checked_p2)

                    ; #90464: <==closure== 52938 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #18917: <==negation-removal== 40623 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #20198: <==uncertain_firing== 52938 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #21240: <==negation-removal== 15814 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #26613: <==negation-removal== 25005 (pos)
                    (not (Pc_not_checked_p2))

                    ; #30572: <==uncertain_firing== 40623 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #31658: <==negation-removal== 64039 (pos)
                    (not (Bc_not_checked_p2))

                    ; #37852: <==negation-removal== 52938 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #49246: <==uncertain_firing== 15814 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #51804: <==uncertain_firing== 90464 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #51910: <==negation-removal== 15048 (pos)
                    (not (Pa_not_checked_p2))

                    ; #61091: <==negation-removal== 90464 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #61782: <==negation-removal== 16567 (pos)
                    (not (Ba_not_checked_p2))

                    ; #74235: <==negation-removal== 81558 (pos)
                    (not (Pb_not_checked_p2))

                    ; #88385: <==negation-removal== 16372 (pos)
                    (not (not_checked_p2))

                    ; #88829: <==negation-removal== 45742 (pos)
                    (not (Bb_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #24296: <==commonly_known== 90922 (pos)
                    (Bc_checked_p3)

                    ; #28050: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #31910: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #37155: <==commonly_known== 64541 (neg)
                    (Pa_checked_p3)

                    ; #53092: <==commonly_known== 64541 (neg)
                    (Pc_checked_p3)

                    ; #58101: <==commonly_known== 90922 (pos)
                    (Ba_checked_p3)

                    ; #59208: <==commonly_known== 90922 (pos)
                    (Bb_checked_p3)

                    ; #78386: <==commonly_known== 64541 (neg)
                    (Pb_checked_p3)

                    ; #87087: <==closure== 31910 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #88870: <==closure== 28050 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #90922: origin
                    (checked_p3)

                    ; #18981: <==negation-removal== 59208 (pos)
                    (not (Pb_not_checked_p3))

                    ; #32038: <==uncertain_firing== 31910 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #32088: <==negation-removal== 37155 (pos)
                    (not (Ba_not_checked_p3))

                    ; #38723: <==negation-removal== 28050 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #44696: <==uncertain_firing== 87087 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #49204: <==uncertain_firing== 88870 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #49508: <==negation-removal== 31910 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #52371: <==negation-removal== 24296 (pos)
                    (not (Pc_not_checked_p3))

                    ; #54681: <==uncertain_firing== 28050 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #64541: <==negation-removal== 90922 (pos)
                    (not (not_checked_p3))

                    ; #72226: <==negation-removal== 87087 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #75433: <==negation-removal== 53092 (pos)
                    (not (Bc_not_checked_p3))

                    ; #75673: <==negation-removal== 88870 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #84442: <==negation-removal== 58101 (pos)
                    (not (Pa_not_checked_p3))

                    ; #89048: <==negation-removal== 78386 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #40080: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #52791: <==commonly_known== 50585 (neg)
                    (Pb_checked_p4)

                    ; #57532: <==commonly_known== 50585 (neg)
                    (Pc_checked_p4)

                    ; #59188: <==closure== 40080 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #66918: <==commonly_known== 69053 (pos)
                    (Bc_checked_p4)

                    ; #67847: <==closure== 83294 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #69053: origin
                    (checked_p4)

                    ; #78524: <==commonly_known== 50585 (neg)
                    (Pa_checked_p4)

                    ; #83294: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #88943: <==commonly_known== 69053 (pos)
                    (Ba_checked_p4)

                    ; #90279: <==commonly_known== 69053 (pos)
                    (Bb_checked_p4)

                    ; #11694: <==negation-removal== 40080 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #12752: <==uncertain_firing== 40080 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #19079: <==negation-removal== 59188 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #21785: <==negation-removal== 78524 (pos)
                    (not (Ba_not_checked_p4))

                    ; #23454: <==uncertain_firing== 83294 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #33087: <==negation-removal== 57532 (pos)
                    (not (Bc_not_checked_p4))

                    ; #36785: <==negation-removal== 52791 (pos)
                    (not (Bb_not_checked_p4))

                    ; #37181: <==negation-removal== 90279 (pos)
                    (not (Pb_not_checked_p4))

                    ; #40696: <==uncertain_firing== 59188 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #43780: <==uncertain_firing== 67847 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #50585: <==negation-removal== 69053 (pos)
                    (not (not_checked_p4))

                    ; #50794: <==negation-removal== 66918 (pos)
                    (not (Pc_not_checked_p4))

                    ; #50976: <==negation-removal== 83294 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #66086: <==negation-removal== 67847 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #82223: <==negation-removal== 88943 (pos)
                    (not (Pa_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #34024: <==commonly_known== 45895 (neg)
                    (Pb_checked_p5)

                    ; #43923: origin
                    (checked_p5)

                    ; #44940: <==closure== 45371 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #45371: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #54153: <==closure== 68072 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #59550: <==commonly_known== 45895 (neg)
                    (Pa_checked_p5)

                    ; #68072: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #71951: <==commonly_known== 43923 (pos)
                    (Bb_checked_p5)

                    ; #73757: <==commonly_known== 43923 (pos)
                    (Bc_checked_p5)

                    ; #83244: <==commonly_known== 45895 (neg)
                    (Pc_checked_p5)

                    ; #99547: <==commonly_known== 43923 (pos)
                    (Ba_checked_p5)

                    ; #12171: <==uncertain_firing== 68072 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #19667: <==negation-removal== 99547 (pos)
                    (not (Pa_not_checked_p5))

                    ; #22602: <==negation-removal== 59550 (pos)
                    (not (Ba_not_checked_p5))

                    ; #29413: <==negation-removal== 44940 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #32619: <==negation-removal== 73757 (pos)
                    (not (Pc_not_checked_p5))

                    ; #42204: <==negation-removal== 83244 (pos)
                    (not (Bc_not_checked_p5))

                    ; #45895: <==negation-removal== 43923 (pos)
                    (not (not_checked_p5))

                    ; #47801: <==negation-removal== 54153 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #50293: <==uncertain_firing== 44940 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #51012: <==negation-removal== 71951 (pos)
                    (not (Pb_not_checked_p5))

                    ; #57684: <==negation-removal== 45371 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #66556: <==negation-removal== 34024 (pos)
                    (not (Bb_not_checked_p5))

                    ; #74892: <==uncertain_firing== 45371 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #85204: <==uncertain_firing== 54153 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #86567: <==negation-removal== 68072 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #34847: <==commonly_known== 18907 (neg)
                    (Pc_checked_p6)

                    ; #36170: <==commonly_known== 73434 (pos)
                    (Bc_checked_p6)

                    ; #38004: <==closure== 62394 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #40656: <==commonly_known== 73434 (pos)
                    (Ba_checked_p6)

                    ; #49251: <==commonly_known== 18907 (neg)
                    (Pb_checked_p6)

                    ; #50598: <==closure== 67054 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #62394: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #67054: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #73434: origin
                    (checked_p6)

                    ; #83571: <==commonly_known== 73434 (pos)
                    (Bb_checked_p6)

                    ; #90550: <==commonly_known== 18907 (neg)
                    (Pa_checked_p6)

                    ; #18907: <==negation-removal== 73434 (pos)
                    (not (not_checked_p6))

                    ; #22416: <==negation-removal== 36170 (pos)
                    (not (Pc_not_checked_p6))

                    ; #24980: <==negation-removal== 62394 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #27191: <==uncertain_firing== 67054 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #28839: <==uncertain_firing== 38004 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #30937: <==negation-removal== 67054 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #43202: <==negation-removal== 50598 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #43931: <==negation-removal== 49251 (pos)
                    (not (Bb_not_checked_p6))

                    ; #51815: <==negation-removal== 38004 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #53415: <==negation-removal== 83571 (pos)
                    (not (Pb_not_checked_p6))

                    ; #60167: <==negation-removal== 90550 (pos)
                    (not (Ba_not_checked_p6))

                    ; #69571: <==uncertain_firing== 50598 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #72368: <==negation-removal== 34847 (pos)
                    (not (Bc_not_checked_p6))

                    ; #76537: <==uncertain_firing== 62394 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #81507: <==negation-removal== 40656 (pos)
                    (not (Pa_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #12308: <==closure== 66838 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #31483: <==commonly_known== 82131 (pos)
                    (Ba_checked_p7)

                    ; #40466: <==closure== 56323 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #52757: <==commonly_known== 80130 (neg)
                    (Pc_checked_p7)

                    ; #56323: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #60874: <==commonly_known== 80130 (neg)
                    (Pb_checked_p7)

                    ; #66369: <==commonly_known== 82131 (pos)
                    (Bc_checked_p7)

                    ; #66712: <==commonly_known== 80130 (neg)
                    (Pa_checked_p7)

                    ; #66838: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #82131: origin
                    (checked_p7)

                    ; #94133: <==commonly_known== 82131 (pos)
                    (Bb_checked_p7)

                    ; #11052: <==negation-removal== 66838 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #18569: <==negation-removal== 60874 (pos)
                    (not (Bb_not_checked_p7))

                    ; #26765: <==negation-removal== 66712 (pos)
                    (not (Ba_not_checked_p7))

                    ; #33943: <==uncertain_firing== 56323 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #40865: <==negation-removal== 40466 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #42334: <==negation-removal== 12308 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #45973: <==negation-removal== 56323 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #46107: <==negation-removal== 31483 (pos)
                    (not (Pa_not_checked_p7))

                    ; #52159: <==uncertain_firing== 12308 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #55288: <==uncertain_firing== 66838 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #57238: <==uncertain_firing== 40466 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #70968: <==negation-removal== 52757 (pos)
                    (not (Bc_not_checked_p7))

                    ; #71288: <==negation-removal== 66369 (pos)
                    (not (Pc_not_checked_p7))

                    ; #80130: <==negation-removal== 82131 (pos)
                    (not (not_checked_p7))

                    ; #89044: <==negation-removal== 94133 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #19567: <==commonly_known== 59401 (pos)
                    (Ba_checked_p8)

                    ; #30013: <==closure== 80633 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #45363: <==closure== 49978 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #49264: <==commonly_known== 87187 (neg)
                    (Pa_checked_p8)

                    ; #49855: <==commonly_known== 87187 (neg)
                    (Pc_checked_p8)

                    ; #49978: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #59401: origin
                    (checked_p8)

                    ; #69339: <==commonly_known== 59401 (pos)
                    (Bb_checked_p8)

                    ; #80633: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #84801: <==commonly_known== 87187 (neg)
                    (Pb_checked_p8)

                    ; #94347: <==commonly_known== 59401 (pos)
                    (Bc_checked_p8)

                    ; #12977: <==negation-removal== 30013 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #22815: <==negation-removal== 80633 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #31948: <==uncertain_firing== 45363 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #33445: <==negation-removal== 84801 (pos)
                    (not (Bb_not_checked_p8))

                    ; #38334: <==negation-removal== 49264 (pos)
                    (not (Ba_not_checked_p8))

                    ; #42305: <==negation-removal== 94347 (pos)
                    (not (Pc_not_checked_p8))

                    ; #49712: <==negation-removal== 69339 (pos)
                    (not (Pb_not_checked_p8))

                    ; #50143: <==negation-removal== 49855 (pos)
                    (not (Bc_not_checked_p8))

                    ; #50701: <==uncertain_firing== 49978 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #54057: <==negation-removal== 49978 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #58311: <==negation-removal== 19567 (pos)
                    (not (Pa_not_checked_p8))

                    ; #71032: <==negation-removal== 45363 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #84728: <==uncertain_firing== 30013 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #87187: <==negation-removal== 59401 (pos)
                    (not (not_checked_p8))

                    ; #87610: <==uncertain_firing== 80633 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11669: origin
                    (checked_p9)

                    ; #18748: <==commonly_known== 43198 (neg)
                    (Pc_checked_p9)

                    ; #37888: <==closure== 77634 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #45262: <==commonly_known== 11669 (pos)
                    (Bb_checked_p9)

                    ; #50546: <==commonly_known== 11669 (pos)
                    (Ba_checked_p9)

                    ; #55382: <==commonly_known== 43198 (neg)
                    (Pa_checked_p9)

                    ; #73947: <==commonly_known== 43198 (neg)
                    (Pb_checked_p9)

                    ; #77634: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #82559: <==commonly_known== 11669 (pos)
                    (Bc_checked_p9)

                    ; #84850: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #88573: <==closure== 84850 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #13529: <==negation-removal== 55382 (pos)
                    (not (Ba_not_checked_p9))

                    ; #25172: <==uncertain_firing== 84850 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #26109: <==uncertain_firing== 77634 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #27497: <==negation-removal== 37888 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #28276: <==uncertain_firing== 37888 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #28619: <==negation-removal== 50546 (pos)
                    (not (Pa_not_checked_p9))

                    ; #43198: <==negation-removal== 11669 (pos)
                    (not (not_checked_p9))

                    ; #44222: <==uncertain_firing== 88573 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #52829: <==negation-removal== 45262 (pos)
                    (not (Pb_not_checked_p9))

                    ; #53832: <==negation-removal== 77634 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #53954: <==negation-removal== 88573 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #61190: <==negation-removal== 84850 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #66522: <==negation-removal== 82559 (pos)
                    (not (Pc_not_checked_p9))

                    ; #72255: <==negation-removal== 73947 (pos)
                    (not (Bb_not_checked_p9))

                    ; #82297: <==negation-removal== 18748 (pos)
                    (not (Bc_not_checked_p9))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #18236: <==commonly_known== 66770 (neg)
                    (Pb_checked_p10)

                    ; #26659: <==closure== 65557 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #32754: <==commonly_known== 66770 (neg)
                    (Pa_checked_p10)

                    ; #48929: <==commonly_known== 80084 (pos)
                    (Bb_checked_p10)

                    ; #55176: <==commonly_known== 80084 (pos)
                    (Bc_checked_p10)

                    ; #57906: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #65557: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #70628: <==closure== 57906 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #80084: origin
                    (checked_p10)

                    ; #83480: <==commonly_known== 66770 (neg)
                    (Pc_checked_p10)

                    ; #83873: <==commonly_known== 80084 (pos)
                    (Ba_checked_p10)

                    ; #12927: <==negation-removal== 18236 (pos)
                    (not (Bb_not_checked_p10))

                    ; #15723: <==negation-removal== 32754 (pos)
                    (not (Ba_not_checked_p10))

                    ; #16577: <==uncertain_firing== 70628 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #18506: <==negation-removal== 55176 (pos)
                    (not (Pc_not_checked_p10))

                    ; #35308: <==uncertain_firing== 26659 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #36654: <==negation-removal== 83873 (pos)
                    (not (Pa_not_checked_p10))

                    ; #37751: <==negation-removal== 48929 (pos)
                    (not (Pb_not_checked_p10))

                    ; #44178: <==negation-removal== 70628 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #49081: <==uncertain_firing== 65557 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #49779: <==negation-removal== 57906 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #66770: <==negation-removal== 80084 (pos)
                    (not (not_checked_p10))

                    ; #67025: <==negation-removal== 65557 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #67390: <==negation-removal== 26659 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #68253: <==uncertain_firing== 57906 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #87479: <==negation-removal== 83480 (pos)
                    (not (Bc_not_checked_p10))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #14908: <==commonly_known== 90158 (pos)
                    (Bb_checked_p11)

                    ; #17874: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #28878: <==commonly_known== 24001 (neg)
                    (Pb_checked_p11)

                    ; #30822: <==commonly_known== 24001 (neg)
                    (Pc_checked_p11)

                    ; #40196: <==commonly_known== 24001 (neg)
                    (Pa_checked_p11)

                    ; #54249: <==commonly_known== 90158 (pos)
                    (Ba_checked_p11)

                    ; #55634: <==closure== 17874 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #58578: <==commonly_known== 90158 (pos)
                    (Bc_checked_p11)

                    ; #61605: <==closure== 86915 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #86915: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #90158: origin
                    (checked_p11)

                    ; #23485: <==negation-removal== 55634 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #24001: <==negation-removal== 90158 (pos)
                    (not (not_checked_p11))

                    ; #34027: <==negation-removal== 61605 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #36922: <==negation-removal== 40196 (pos)
                    (not (Ba_not_checked_p11))

                    ; #39298: <==negation-removal== 54249 (pos)
                    (not (Pa_not_checked_p11))

                    ; #40509: <==negation-removal== 17874 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #44713: <==uncertain_firing== 55634 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #50235: <==negation-removal== 14908 (pos)
                    (not (Pb_not_checked_p11))

                    ; #53591: <==uncertain_firing== 61605 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #53659: <==negation-removal== 30822 (pos)
                    (not (Bc_not_checked_p11))

                    ; #56324: <==uncertain_firing== 86915 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #62077: <==negation-removal== 86915 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #74942: <==negation-removal== 28878 (pos)
                    (not (Bb_not_checked_p11))

                    ; #87397: <==uncertain_firing== 17874 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #91339: <==negation-removal== 58578 (pos)
                    (not (Pc_not_checked_p11))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #16583: <==commonly_known== 40062 (neg)
                    (Pa_checked_p12)

                    ; #23490: origin
                    (checked_p12)

                    ; #41804: <==closure== 46666 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #44476: <==commonly_known== 23490 (pos)
                    (Bb_checked_p12)

                    ; #46666: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #47033: <==closure== 70221 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #47669: <==commonly_known== 40062 (neg)
                    (Pb_checked_p12)

                    ; #56423: <==commonly_known== 23490 (pos)
                    (Bc_checked_p12)

                    ; #70221: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #83185: <==commonly_known== 23490 (pos)
                    (Ba_checked_p12)

                    ; #89741: <==commonly_known== 40062 (neg)
                    (Pc_checked_p12)

                    ; #17904: <==uncertain_firing== 47033 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #25681: <==negation-removal== 47669 (pos)
                    (not (Bb_not_checked_p12))

                    ; #27526: <==negation-removal== 44476 (pos)
                    (not (Pb_not_checked_p12))

                    ; #30636: <==negation-removal== 70221 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #36218: <==negation-removal== 16583 (pos)
                    (not (Ba_not_checked_p12))

                    ; #36828: <==uncertain_firing== 70221 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #40062: <==negation-removal== 23490 (pos)
                    (not (not_checked_p12))

                    ; #48396: <==negation-removal== 83185 (pos)
                    (not (Pa_not_checked_p12))

                    ; #52224: <==negation-removal== 41804 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #58375: <==negation-removal== 47033 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #75521: <==negation-removal== 46666 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #80578: <==negation-removal== 56423 (pos)
                    (not (Pc_not_checked_p12))

                    ; #81948: <==uncertain_firing== 41804 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #86754: <==negation-removal== 89741 (pos)
                    (not (Bc_not_checked_p12))

                    ; #91987: <==uncertain_firing== 46666 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #14705: origin
                    (checked_p1)

                    ; #24636: <==commonly_known== 10184 (neg)
                    (Pc_checked_p1)

                    ; #24907: <==closure== 39803 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #26278: <==commonly_known== 10184 (neg)
                    (Pb_checked_p1)

                    ; #39803: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #47823: <==closure== 48782 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #48782: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #50603: <==commonly_known== 10184 (neg)
                    (Pa_checked_p1)

                    ; #57629: <==commonly_known== 14705 (pos)
                    (Bb_checked_p1)

                    ; #65106: <==commonly_known== 14705 (pos)
                    (Bc_checked_p1)

                    ; #65237: <==commonly_known== 14705 (pos)
                    (Ba_checked_p1)

                    ; #10125: <==negation-removal== 39803 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #10184: <==negation-removal== 14705 (pos)
                    (not (not_checked_p1))

                    ; #12554: <==negation-removal== 57629 (pos)
                    (not (Pb_not_checked_p1))

                    ; #13150: <==negation-removal== 26278 (pos)
                    (not (Bb_not_checked_p1))

                    ; #17503: <==negation-removal== 65237 (pos)
                    (not (Pa_not_checked_p1))

                    ; #22892: <==negation-removal== 24907 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #31248: <==uncertain_firing== 24907 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #37976: <==uncertain_firing== 39803 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #42440: <==negation-removal== 65106 (pos)
                    (not (Pc_not_checked_p1))

                    ; #61618: <==negation-removal== 50603 (pos)
                    (not (Ba_not_checked_p1))

                    ; #61644: <==negation-removal== 48782 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #63415: <==uncertain_firing== 47823 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #71580: <==uncertain_firing== 48782 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #87440: <==negation-removal== 47823 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #96258: <==negation-removal== 24636 (pos)
                    (not (Bc_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11712: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #15048: <==commonly_known== 16372 (pos)
                    (Ba_checked_p2)

                    ; #16372: origin
                    (checked_p2)

                    ; #16567: <==commonly_known== 88385 (neg)
                    (Pa_checked_p2)

                    ; #25005: <==commonly_known== 16372 (pos)
                    (Bc_checked_p2)

                    ; #45742: <==commonly_known== 88385 (neg)
                    (Pb_checked_p2)

                    ; #47648: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #57018: <==closure== 11712 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #64039: <==commonly_known== 88385 (neg)
                    (Pc_checked_p2)

                    ; #81558: <==commonly_known== 16372 (pos)
                    (Bb_checked_p2)

                    ; #89554: <==closure== 47648 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #23232: <==uncertain_firing== 47648 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #26613: <==negation-removal== 25005 (pos)
                    (not (Pc_not_checked_p2))

                    ; #31658: <==negation-removal== 64039 (pos)
                    (not (Bc_not_checked_p2))

                    ; #36502: <==negation-removal== 11712 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #38061: <==uncertain_firing== 57018 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #51910: <==negation-removal== 15048 (pos)
                    (not (Pa_not_checked_p2))

                    ; #57043: <==negation-removal== 47648 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #61782: <==negation-removal== 16567 (pos)
                    (not (Ba_not_checked_p2))

                    ; #65814: <==uncertain_firing== 89554 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #74235: <==negation-removal== 81558 (pos)
                    (not (Pb_not_checked_p2))

                    ; #77405: <==negation-removal== 57018 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #78071: <==negation-removal== 89554 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #87575: <==uncertain_firing== 11712 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #88385: <==negation-removal== 16372 (pos)
                    (not (not_checked_p2))

                    ; #88829: <==negation-removal== 45742 (pos)
                    (not (Bb_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #19180: <==closure== 35281 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #24296: <==commonly_known== 90922 (pos)
                    (Bc_checked_p3)

                    ; #35281: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #37155: <==commonly_known== 64541 (neg)
                    (Pa_checked_p3)

                    ; #53092: <==commonly_known== 64541 (neg)
                    (Pc_checked_p3)

                    ; #58101: <==commonly_known== 90922 (pos)
                    (Ba_checked_p3)

                    ; #59208: <==commonly_known== 90922 (pos)
                    (Bb_checked_p3)

                    ; #63444: <==closure== 83511 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #78386: <==commonly_known== 64541 (neg)
                    (Pb_checked_p3)

                    ; #83511: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #90922: origin
                    (checked_p3)

                    ; #11144: <==uncertain_firing== 35281 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #18981: <==negation-removal== 59208 (pos)
                    (not (Pb_not_checked_p3))

                    ; #26406: <==uncertain_firing== 63444 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #31517: <==negation-removal== 83511 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #32088: <==negation-removal== 37155 (pos)
                    (not (Ba_not_checked_p3))

                    ; #32149: <==uncertain_firing== 83511 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #39628: <==uncertain_firing== 19180 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #52371: <==negation-removal== 24296 (pos)
                    (not (Pc_not_checked_p3))

                    ; #64541: <==negation-removal== 90922 (pos)
                    (not (not_checked_p3))

                    ; #67093: <==negation-removal== 35281 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #71680: <==negation-removal== 19180 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #75433: <==negation-removal== 53092 (pos)
                    (not (Bc_not_checked_p3))

                    ; #84442: <==negation-removal== 58101 (pos)
                    (not (Pa_not_checked_p3))

                    ; #87033: <==negation-removal== 63444 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #89048: <==negation-removal== 78386 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #47564: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #47747: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #52791: <==commonly_known== 50585 (neg)
                    (Pb_checked_p4)

                    ; #57532: <==commonly_known== 50585 (neg)
                    (Pc_checked_p4)

                    ; #66918: <==commonly_known== 69053 (pos)
                    (Bc_checked_p4)

                    ; #69053: origin
                    (checked_p4)

                    ; #71939: <==closure== 47564 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #78231: <==closure== 47747 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #78524: <==commonly_known== 50585 (neg)
                    (Pa_checked_p4)

                    ; #88943: <==commonly_known== 69053 (pos)
                    (Ba_checked_p4)

                    ; #90279: <==commonly_known== 69053 (pos)
                    (Bb_checked_p4)

                    ; #16519: <==negation-removal== 71939 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #21785: <==negation-removal== 78524 (pos)
                    (not (Ba_not_checked_p4))

                    ; #33087: <==negation-removal== 57532 (pos)
                    (not (Bc_not_checked_p4))

                    ; #36094: <==uncertain_firing== 78231 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #36785: <==negation-removal== 52791 (pos)
                    (not (Bb_not_checked_p4))

                    ; #37181: <==negation-removal== 90279 (pos)
                    (not (Pb_not_checked_p4))

                    ; #38094: <==uncertain_firing== 71939 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #46640: <==uncertain_firing== 47747 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #50585: <==negation-removal== 69053 (pos)
                    (not (not_checked_p4))

                    ; #50794: <==negation-removal== 66918 (pos)
                    (not (Pc_not_checked_p4))

                    ; #57517: <==negation-removal== 47747 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #69065: <==negation-removal== 78231 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #78255: <==negation-removal== 47564 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #81139: <==uncertain_firing== 47564 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #82223: <==negation-removal== 88943 (pos)
                    (not (Pa_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12886: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #17801: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #19480: <==closure== 12886 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #34024: <==commonly_known== 45895 (neg)
                    (Pb_checked_p5)

                    ; #43923: origin
                    (checked_p5)

                    ; #59550: <==commonly_known== 45895 (neg)
                    (Pa_checked_p5)

                    ; #66130: <==closure== 17801 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #71951: <==commonly_known== 43923 (pos)
                    (Bb_checked_p5)

                    ; #73757: <==commonly_known== 43923 (pos)
                    (Bc_checked_p5)

                    ; #83244: <==commonly_known== 45895 (neg)
                    (Pc_checked_p5)

                    ; #99547: <==commonly_known== 43923 (pos)
                    (Ba_checked_p5)

                    ; #11844: <==negation-removal== 17801 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #19667: <==negation-removal== 99547 (pos)
                    (not (Pa_not_checked_p5))

                    ; #22602: <==negation-removal== 59550 (pos)
                    (not (Ba_not_checked_p5))

                    ; #27911: <==negation-removal== 66130 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #32198: <==uncertain_firing== 17801 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #32619: <==negation-removal== 73757 (pos)
                    (not (Pc_not_checked_p5))

                    ; #42204: <==negation-removal== 83244 (pos)
                    (not (Bc_not_checked_p5))

                    ; #45895: <==negation-removal== 43923 (pos)
                    (not (not_checked_p5))

                    ; #51012: <==negation-removal== 71951 (pos)
                    (not (Pb_not_checked_p5))

                    ; #59979: <==uncertain_firing== 12886 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #66556: <==negation-removal== 34024 (pos)
                    (not (Bb_not_checked_p5))

                    ; #69855: <==negation-removal== 12886 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #74725: <==negation-removal== 19480 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #76403: <==uncertain_firing== 66130 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #85133: <==uncertain_firing== 19480 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #34847: <==commonly_known== 18907 (neg)
                    (Pc_checked_p6)

                    ; #36170: <==commonly_known== 73434 (pos)
                    (Bc_checked_p6)

                    ; #36649: <==closure== 68327 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #40656: <==commonly_known== 73434 (pos)
                    (Ba_checked_p6)

                    ; #44500: <==closure== 63961 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #49251: <==commonly_known== 18907 (neg)
                    (Pb_checked_p6)

                    ; #63961: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #68327: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #73434: origin
                    (checked_p6)

                    ; #83571: <==commonly_known== 73434 (pos)
                    (Bb_checked_p6)

                    ; #90550: <==commonly_known== 18907 (neg)
                    (Pa_checked_p6)

                    ; #18907: <==negation-removal== 73434 (pos)
                    (not (not_checked_p6))

                    ; #22416: <==negation-removal== 36170 (pos)
                    (not (Pc_not_checked_p6))

                    ; #25949: <==negation-removal== 63961 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #31177: <==uncertain_firing== 68327 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #38620: <==uncertain_firing== 44500 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #43931: <==negation-removal== 49251 (pos)
                    (not (Bb_not_checked_p6))

                    ; #53415: <==negation-removal== 83571 (pos)
                    (not (Pb_not_checked_p6))

                    ; #60167: <==negation-removal== 90550 (pos)
                    (not (Ba_not_checked_p6))

                    ; #69033: <==uncertain_firing== 63961 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #72368: <==negation-removal== 34847 (pos)
                    (not (Bc_not_checked_p6))

                    ; #79957: <==negation-removal== 44500 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #81507: <==negation-removal== 40656 (pos)
                    (not (Pa_not_checked_p6))

                    ; #82289: <==uncertain_firing== 36649 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #82989: <==negation-removal== 36649 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #92138: <==negation-removal== 68327 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #20464: <==closure== 31900 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #31483: <==commonly_known== 82131 (pos)
                    (Ba_checked_p7)

                    ; #31900: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #52757: <==commonly_known== 80130 (neg)
                    (Pc_checked_p7)

                    ; #58516: <==closure== 88841 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #60874: <==commonly_known== 80130 (neg)
                    (Pb_checked_p7)

                    ; #66369: <==commonly_known== 82131 (pos)
                    (Bc_checked_p7)

                    ; #66712: <==commonly_known== 80130 (neg)
                    (Pa_checked_p7)

                    ; #82131: origin
                    (checked_p7)

                    ; #88841: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #94133: <==commonly_known== 82131 (pos)
                    (Bb_checked_p7)

                    ; #17724: <==uncertain_firing== 31900 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #18569: <==negation-removal== 60874 (pos)
                    (not (Bb_not_checked_p7))

                    ; #25196: <==negation-removal== 58516 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #26765: <==negation-removal== 66712 (pos)
                    (not (Ba_not_checked_p7))

                    ; #46107: <==negation-removal== 31483 (pos)
                    (not (Pa_not_checked_p7))

                    ; #55900: <==negation-removal== 20464 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #70968: <==negation-removal== 52757 (pos)
                    (not (Bc_not_checked_p7))

                    ; #71288: <==negation-removal== 66369 (pos)
                    (not (Pc_not_checked_p7))

                    ; #71553: <==uncertain_firing== 88841 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #80130: <==negation-removal== 82131 (pos)
                    (not (not_checked_p7))

                    ; #83222: <==uncertain_firing== 58516 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #85524: <==negation-removal== 31900 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #85697: <==negation-removal== 88841 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #89044: <==negation-removal== 94133 (pos)
                    (not (Pb_not_checked_p7))

                    ; #89882: <==uncertain_firing== 20464 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #19567: <==commonly_known== 59401 (pos)
                    (Ba_checked_p8)

                    ; #27590: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #49264: <==commonly_known== 87187 (neg)
                    (Pa_checked_p8)

                    ; #49855: <==commonly_known== 87187 (neg)
                    (Pc_checked_p8)

                    ; #59401: origin
                    (checked_p8)

                    ; #68227: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #69339: <==commonly_known== 59401 (pos)
                    (Bb_checked_p8)

                    ; #76316: <==closure== 68227 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #83100: <==closure== 27590 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #84801: <==commonly_known== 87187 (neg)
                    (Pb_checked_p8)

                    ; #94347: <==commonly_known== 59401 (pos)
                    (Bc_checked_p8)

                    ; #12075: <==uncertain_firing== 27590 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #22259: <==negation-removal== 83100 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #31753: <==uncertain_firing== 68227 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #33445: <==negation-removal== 84801 (pos)
                    (not (Bb_not_checked_p8))

                    ; #38334: <==negation-removal== 49264 (pos)
                    (not (Ba_not_checked_p8))

                    ; #42268: <==uncertain_firing== 83100 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #42305: <==negation-removal== 94347 (pos)
                    (not (Pc_not_checked_p8))

                    ; #49712: <==negation-removal== 69339 (pos)
                    (not (Pb_not_checked_p8))

                    ; #50143: <==negation-removal== 49855 (pos)
                    (not (Bc_not_checked_p8))

                    ; #58311: <==negation-removal== 19567 (pos)
                    (not (Pa_not_checked_p8))

                    ; #73576: <==negation-removal== 27590 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #79759: <==uncertain_firing== 76316 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #85297: <==negation-removal== 76316 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #87187: <==negation-removal== 59401 (pos)
                    (not (not_checked_p8))

                    ; #99618: <==negation-removal== 68227 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11669: origin
                    (checked_p9)

                    ; #18748: <==commonly_known== 43198 (neg)
                    (Pc_checked_p9)

                    ; #45262: <==commonly_known== 11669 (pos)
                    (Bb_checked_p9)

                    ; #48239: <==closure== 49055 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #49055: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #50546: <==commonly_known== 11669 (pos)
                    (Ba_checked_p9)

                    ; #55382: <==commonly_known== 43198 (neg)
                    (Pa_checked_p9)

                    ; #73947: <==commonly_known== 43198 (neg)
                    (Pb_checked_p9)

                    ; #82559: <==commonly_known== 11669 (pos)
                    (Bc_checked_p9)

                    ; #84945: <==closure== 89333 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #89333: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #13529: <==negation-removal== 55382 (pos)
                    (not (Ba_not_checked_p9))

                    ; #13899: <==uncertain_firing== 84945 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #24146: <==uncertain_firing== 49055 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #24162: <==uncertain_firing== 89333 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #28619: <==negation-removal== 50546 (pos)
                    (not (Pa_not_checked_p9))

                    ; #43198: <==negation-removal== 11669 (pos)
                    (not (not_checked_p9))

                    ; #48943: <==negation-removal== 84945 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #52829: <==negation-removal== 45262 (pos)
                    (not (Pb_not_checked_p9))

                    ; #55350: <==negation-removal== 49055 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #66170: <==uncertain_firing== 48239 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #66522: <==negation-removal== 82559 (pos)
                    (not (Pc_not_checked_p9))

                    ; #72255: <==negation-removal== 73947 (pos)
                    (not (Bb_not_checked_p9))

                    ; #72830: <==negation-removal== 48239 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #75821: <==negation-removal== 89333 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #82297: <==negation-removal== 18748 (pos)
                    (not (Bc_not_checked_p9))))

)