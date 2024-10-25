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
        :precondition (and (Ba_survivorat_s_p10)
                           (at_a_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #10451: <==closure== 90901 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #29050: <==closure== 49909 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #41607: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #49909: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #63159: <==closure== 41607 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #90901: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #11582: <==uncertain_firing== 41607 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #14983: <==negation-removal== 29050 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #17415: <==uncertain_firing== 29050 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #28363: <==uncertain_firing== 49909 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #34888: <==negation-removal== 41607 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #38122: <==negation-removal== 49909 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #43097: <==negation-removal== 63159 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #44099: <==uncertain_firing== 90901 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #63829: <==uncertain_firing== 63159 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #69403: <==uncertain_firing== 10451 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #70063: <==negation-removal== 10451 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #75375: <==negation-removal== 90901 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))))

    (:action badcomm_p10_b_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #10451: <==closure== 90901 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #29050: <==closure== 49909 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #41607: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #49909: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #63159: <==closure== 41607 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #90901: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #11582: <==uncertain_firing== 41607 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #14983: <==negation-removal== 29050 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #17415: <==uncertain_firing== 29050 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #28363: <==uncertain_firing== 49909 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #34888: <==negation-removal== 41607 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #38122: <==negation-removal== 49909 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #43097: <==negation-removal== 63159 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #44099: <==uncertain_firing== 90901 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #63829: <==uncertain_firing== 63159 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #69403: <==uncertain_firing== 10451 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #70063: <==negation-removal== 10451 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #75375: <==negation-removal== 90901 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))))

    (:action badcomm_p10_c_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #10451: <==closure== 90901 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #29050: <==closure== 49909 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #41607: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #49909: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #63159: <==closure== 41607 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #90901: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #11582: <==uncertain_firing== 41607 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #14983: <==negation-removal== 29050 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #17415: <==uncertain_firing== 29050 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #28363: <==uncertain_firing== 49909 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #34888: <==negation-removal== 41607 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #38122: <==negation-removal== 49909 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #43097: <==negation-removal== 63159 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #44099: <==uncertain_firing== 90901 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #63829: <==uncertain_firing== 63159 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #69403: <==uncertain_firing== 10451 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #70063: <==negation-removal== 10451 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #75375: <==negation-removal== 90901 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))))

    (:action badcomm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #16559: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #24125: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #32670: <==closure== 60005 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #59049: <==closure== 24125 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #60005: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #70085: <==closure== 16559 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #16847: <==negation-removal== 70085 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #17111: <==negation-removal== 59049 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #19886: <==negation-removal== 16559 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #19950: <==negation-removal== 60005 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #33399: <==uncertain_firing== 59049 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #41316: <==uncertain_firing== 32670 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #45217: <==negation-removal== 32670 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #46371: <==uncertain_firing== 60005 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #49725: <==uncertain_firing== 70085 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #66130: <==uncertain_firing== 16559 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #82819: <==negation-removal== 24125 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #87062: <==uncertain_firing== 24125 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))))

    (:action badcomm_p11_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #16559: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #24125: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #32670: <==closure== 60005 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #59049: <==closure== 24125 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #60005: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #70085: <==closure== 16559 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #16847: <==negation-removal== 70085 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #17111: <==negation-removal== 59049 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #19886: <==negation-removal== 16559 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #19950: <==negation-removal== 60005 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #33399: <==uncertain_firing== 59049 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #41316: <==uncertain_firing== 32670 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #45217: <==negation-removal== 32670 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #46371: <==uncertain_firing== 60005 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #49725: <==uncertain_firing== 70085 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #66130: <==uncertain_firing== 16559 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #82819: <==negation-removal== 24125 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #87062: <==uncertain_firing== 24125 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))))

    (:action badcomm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #16559: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #24125: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #32670: <==closure== 60005 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #59049: <==closure== 24125 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #60005: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #70085: <==closure== 16559 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #16847: <==negation-removal== 70085 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #17111: <==negation-removal== 59049 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #19886: <==negation-removal== 16559 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #19950: <==negation-removal== 60005 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #33399: <==uncertain_firing== 59049 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #41316: <==uncertain_firing== 32670 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #45217: <==negation-removal== 32670 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #46371: <==uncertain_firing== 60005 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #49725: <==uncertain_firing== 70085 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #66130: <==uncertain_firing== 16559 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #82819: <==negation-removal== 24125 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #87062: <==uncertain_firing== 24125 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))))

    (:action badcomm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #16873: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #18183: <==closure== 16873 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #69322: <==closure== 82532 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #77856: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #82532: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #89867: <==closure== 77856 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #24779: <==uncertain_firing== 16873 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #28693: <==uncertain_firing== 18183 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #40083: <==uncertain_firing== 89867 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #43167: <==uncertain_firing== 77856 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #55775: <==uncertain_firing== 69322 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #60004: <==negation-removal== 77856 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #65367: <==negation-removal== 16873 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #67439: <==negation-removal== 82532 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #71242: <==uncertain_firing== 82532 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #77244: <==negation-removal== 89867 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #80695: <==negation-removal== 18183 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #84602: <==negation-removal== 69322 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))))

    (:action badcomm_p12_b_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #16873: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #18183: <==closure== 16873 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #69322: <==closure== 82532 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #77856: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #82532: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #89867: <==closure== 77856 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #24779: <==uncertain_firing== 16873 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #28693: <==uncertain_firing== 18183 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #40083: <==uncertain_firing== 89867 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #43167: <==uncertain_firing== 77856 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #55775: <==uncertain_firing== 69322 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #60004: <==negation-removal== 77856 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #65367: <==negation-removal== 16873 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #67439: <==negation-removal== 82532 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #71242: <==uncertain_firing== 82532 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #77244: <==negation-removal== 89867 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #80695: <==negation-removal== 18183 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #84602: <==negation-removal== 69322 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))))

    (:action badcomm_p12_c_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #16873: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #18183: <==closure== 16873 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #69322: <==closure== 82532 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #77856: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #82532: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #89867: <==closure== 77856 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #24779: <==uncertain_firing== 16873 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #28693: <==uncertain_firing== 18183 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #40083: <==uncertain_firing== 89867 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #43167: <==uncertain_firing== 77856 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #55775: <==uncertain_firing== 69322 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #60004: <==negation-removal== 77856 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #65367: <==negation-removal== 16873 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #67439: <==negation-removal== 82532 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #71242: <==uncertain_firing== 82532 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #77244: <==negation-removal== 89867 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #80695: <==negation-removal== 18183 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #84602: <==negation-removal== 69322 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))))

    (:action badcomm_p1_a_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #22290: <==closure== 24417 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #24417: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #26922: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #27538: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #43376: <==closure== 26922 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #74772: <==closure== 27538 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #13123: <==uncertain_firing== 24417 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #22404: <==negation-removal== 24417 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #23423: <==negation-removal== 74772 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #29884: <==uncertain_firing== 22290 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #43305: <==negation-removal== 43376 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #46815: <==uncertain_firing== 27538 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #54363: <==negation-removal== 27538 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #61120: <==uncertain_firing== 26922 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #63245: <==uncertain_firing== 74772 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #76592: <==negation-removal== 26922 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #80955: <==uncertain_firing== 43376 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #88741: <==negation-removal== 22290 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #22290: <==closure== 24417 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #24417: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #26922: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #27538: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #43376: <==closure== 26922 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #74772: <==closure== 27538 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #13123: <==uncertain_firing== 24417 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #22404: <==negation-removal== 24417 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #23423: <==negation-removal== 74772 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #29884: <==uncertain_firing== 22290 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #43305: <==negation-removal== 43376 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #46815: <==uncertain_firing== 27538 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #54363: <==negation-removal== 27538 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #61120: <==uncertain_firing== 26922 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #63245: <==uncertain_firing== 74772 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #76592: <==negation-removal== 26922 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #80955: <==uncertain_firing== 43376 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #88741: <==negation-removal== 22290 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #22290: <==closure== 24417 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #24417: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #26922: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #27538: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #43376: <==closure== 26922 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #74772: <==closure== 27538 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #13123: <==uncertain_firing== 24417 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #22404: <==negation-removal== 24417 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #23423: <==negation-removal== 74772 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #29884: <==uncertain_firing== 22290 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #43305: <==negation-removal== 43376 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #46815: <==uncertain_firing== 27538 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #54363: <==negation-removal== 27538 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #61120: <==uncertain_firing== 26922 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #63245: <==uncertain_firing== 74772 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #76592: <==negation-removal== 26922 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #80955: <==uncertain_firing== 43376 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #88741: <==negation-removal== 22290 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #30271: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #71353: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #75531: <==closure== 89725 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #77483: <==closure== 71353 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #89725: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #91020: <==closure== 30271 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #14049: <==negation-removal== 75531 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #28459: <==uncertain_firing== 75531 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #31352: <==negation-removal== 71353 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #38327: <==negation-removal== 30271 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #49244: <==uncertain_firing== 77483 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #49538: <==uncertain_firing== 71353 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #62883: <==negation-removal== 91020 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #63315: <==uncertain_firing== 89725 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #69609: <==uncertain_firing== 91020 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #76080: <==negation-removal== 89725 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #78418: <==negation-removal== 77483 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #81362: <==uncertain_firing== 30271 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #30271: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #71353: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #75531: <==closure== 89725 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #77483: <==closure== 71353 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #89725: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #91020: <==closure== 30271 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #14049: <==negation-removal== 75531 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #28459: <==uncertain_firing== 75531 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #31352: <==negation-removal== 71353 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #38327: <==negation-removal== 30271 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #49244: <==uncertain_firing== 77483 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #49538: <==uncertain_firing== 71353 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #62883: <==negation-removal== 91020 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #63315: <==uncertain_firing== 89725 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #69609: <==uncertain_firing== 91020 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #76080: <==negation-removal== 89725 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #78418: <==negation-removal== 77483 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #81362: <==uncertain_firing== 30271 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #30271: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #71353: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #75531: <==closure== 89725 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #77483: <==closure== 71353 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #89725: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #91020: <==closure== 30271 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #14049: <==negation-removal== 75531 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #28459: <==uncertain_firing== 75531 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #31352: <==negation-removal== 71353 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #38327: <==negation-removal== 30271 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #49244: <==uncertain_firing== 77483 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #49538: <==uncertain_firing== 71353 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #62883: <==negation-removal== 91020 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #63315: <==uncertain_firing== 89725 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #69609: <==uncertain_firing== 91020 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #76080: <==negation-removal== 89725 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #78418: <==negation-removal== 77483 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #81362: <==uncertain_firing== 30271 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #13953: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #25048: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #35971: <==closure== 13953 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #71632: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #76976: <==closure== 71632 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #82764: <==closure== 25048 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #11689: <==uncertain_firing== 76976 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #16587: <==negation-removal== 82764 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #17949: <==negation-removal== 76976 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #27989: <==negation-removal== 71632 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #45276: <==uncertain_firing== 13953 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #47040: <==negation-removal== 25048 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #68201: <==negation-removal== 13953 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #69046: <==negation-removal== 35971 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #70185: <==uncertain_firing== 71632 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #75386: <==uncertain_firing== 35971 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #83341: <==uncertain_firing== 82764 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #88629: <==uncertain_firing== 25048 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #13953: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #25048: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #35971: <==closure== 13953 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #71632: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #76976: <==closure== 71632 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #82764: <==closure== 25048 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #11689: <==uncertain_firing== 76976 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #16587: <==negation-removal== 82764 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #17949: <==negation-removal== 76976 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #27989: <==negation-removal== 71632 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #45276: <==uncertain_firing== 13953 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #47040: <==negation-removal== 25048 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #68201: <==negation-removal== 13953 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #69046: <==negation-removal== 35971 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #70185: <==uncertain_firing== 71632 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #75386: <==uncertain_firing== 35971 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #83341: <==uncertain_firing== 82764 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #88629: <==uncertain_firing== 25048 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #13953: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #25048: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #35971: <==closure== 13953 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #71632: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #76976: <==closure== 71632 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #82764: <==closure== 25048 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #11689: <==uncertain_firing== 76976 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #16587: <==negation-removal== 82764 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #17949: <==negation-removal== 76976 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #27989: <==negation-removal== 71632 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #45276: <==uncertain_firing== 13953 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #47040: <==negation-removal== 25048 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #68201: <==negation-removal== 13953 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #69046: <==negation-removal== 35971 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #70185: <==uncertain_firing== 71632 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #75386: <==uncertain_firing== 35971 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #83341: <==uncertain_firing== 82764 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #88629: <==uncertain_firing== 25048 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #20345: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #23888: <==closure== 20345 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #34548: <==closure== 60182 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #34866: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #60182: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #75769: <==closure== 34866 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #12085: <==uncertain_firing== 34866 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #27871: <==negation-removal== 20345 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #28417: <==uncertain_firing== 75769 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #29924: <==uncertain_firing== 34548 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #32713: <==negation-removal== 60182 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #33787: <==uncertain_firing== 23888 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #49848: <==negation-removal== 34548 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #52018: <==negation-removal== 75769 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #70581: <==negation-removal== 23888 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #72743: <==negation-removal== 34866 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #75074: <==uncertain_firing== 60182 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #91047: <==uncertain_firing== 20345 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #20345: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #23888: <==closure== 20345 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #34548: <==closure== 60182 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #34866: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #60182: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #75769: <==closure== 34866 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #12085: <==uncertain_firing== 34866 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #27871: <==negation-removal== 20345 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #28417: <==uncertain_firing== 75769 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #29924: <==uncertain_firing== 34548 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #32713: <==negation-removal== 60182 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #33787: <==uncertain_firing== 23888 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #49848: <==negation-removal== 34548 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #52018: <==negation-removal== 75769 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #70581: <==negation-removal== 23888 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #72743: <==negation-removal== 34866 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #75074: <==uncertain_firing== 60182 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #91047: <==uncertain_firing== 20345 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (at_c_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #20345: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #23888: <==closure== 20345 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #34548: <==closure== 60182 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #34866: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #60182: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #75769: <==closure== 34866 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #12085: <==uncertain_firing== 34866 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #27871: <==negation-removal== 20345 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #28417: <==uncertain_firing== 75769 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #29924: <==uncertain_firing== 34548 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #32713: <==negation-removal== 60182 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #33787: <==uncertain_firing== 23888 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #49848: <==negation-removal== 34548 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #52018: <==negation-removal== 75769 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #70581: <==negation-removal== 23888 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #72743: <==negation-removal== 34866 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #75074: <==uncertain_firing== 60182 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #91047: <==uncertain_firing== 20345 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #52296: <==closure== 82373 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #58656: <==closure== 76294 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #76294: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #77840: <==closure== 88467 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #82373: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #88467: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #12340: <==negation-removal== 88467 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #32665: <==uncertain_firing== 82373 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #35126: <==uncertain_firing== 88467 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #43124: <==uncertain_firing== 58656 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #43842: <==negation-removal== 77840 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #45587: <==negation-removal== 58656 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #46126: <==negation-removal== 52296 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #68666: <==negation-removal== 76294 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #68741: <==negation-removal== 82373 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #70231: <==uncertain_firing== 77840 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #87797: <==uncertain_firing== 52296 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #88351: <==uncertain_firing== 76294 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #52296: <==closure== 82373 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #58656: <==closure== 76294 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #76294: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #77840: <==closure== 88467 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #82373: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #88467: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #12340: <==negation-removal== 88467 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #32665: <==uncertain_firing== 82373 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #35126: <==uncertain_firing== 88467 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #43124: <==uncertain_firing== 58656 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #43842: <==negation-removal== 77840 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #45587: <==negation-removal== 58656 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #46126: <==negation-removal== 52296 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #68666: <==negation-removal== 76294 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #68741: <==negation-removal== 82373 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #70231: <==uncertain_firing== 77840 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #87797: <==uncertain_firing== 52296 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #88351: <==uncertain_firing== 76294 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #52296: <==closure== 82373 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #58656: <==closure== 76294 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #76294: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #77840: <==closure== 88467 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #82373: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #88467: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #12340: <==negation-removal== 88467 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #32665: <==uncertain_firing== 82373 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #35126: <==uncertain_firing== 88467 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #43124: <==uncertain_firing== 58656 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #43842: <==negation-removal== 77840 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #45587: <==negation-removal== 58656 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #46126: <==negation-removal== 52296 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #68666: <==negation-removal== 76294 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #68741: <==negation-removal== 82373 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #70231: <==uncertain_firing== 77840 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #87797: <==uncertain_firing== 52296 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #88351: <==uncertain_firing== 76294 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #26414: <==closure== 43388 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #43388: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #45898: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #53859: <==closure== 45898 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #62478: <==closure== 68672 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #68672: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #11225: <==uncertain_firing== 68672 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #14014: <==negation-removal== 62478 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #19091: <==uncertain_firing== 53859 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #21950: <==negation-removal== 45898 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #25055: <==uncertain_firing== 45898 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #27886: <==negation-removal== 68672 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #29203: <==uncertain_firing== 43388 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #49457: <==uncertain_firing== 62478 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #50222: <==negation-removal== 26414 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #68933: <==uncertain_firing== 26414 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #79947: <==negation-removal== 43388 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #84930: <==negation-removal== 53859 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #26414: <==closure== 43388 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #43388: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #45898: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #53859: <==closure== 45898 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #62478: <==closure== 68672 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #68672: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #11225: <==uncertain_firing== 68672 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #14014: <==negation-removal== 62478 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #19091: <==uncertain_firing== 53859 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #21950: <==negation-removal== 45898 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #25055: <==uncertain_firing== 45898 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #27886: <==negation-removal== 68672 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #29203: <==uncertain_firing== 43388 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #49457: <==uncertain_firing== 62478 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #50222: <==negation-removal== 26414 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #68933: <==uncertain_firing== 26414 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #79947: <==negation-removal== 43388 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #84930: <==negation-removal== 53859 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #26414: <==closure== 43388 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #43388: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #45898: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #53859: <==closure== 45898 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #62478: <==closure== 68672 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #68672: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #11225: <==uncertain_firing== 68672 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #14014: <==negation-removal== 62478 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #19091: <==uncertain_firing== 53859 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #21950: <==negation-removal== 45898 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #25055: <==uncertain_firing== 45898 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #27886: <==negation-removal== 68672 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #29203: <==uncertain_firing== 43388 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #49457: <==uncertain_firing== 62478 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #50222: <==negation-removal== 26414 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #68933: <==uncertain_firing== 26414 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #79947: <==negation-removal== 43388 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #84930: <==negation-removal== 53859 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #23195: <==closure== 63501 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #43711: <==closure== 53256 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #48631: <==closure== 56145 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #53256: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #56145: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #63501: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #16114: <==negation-removal== 63501 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #21724: <==negation-removal== 23195 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #30434: <==uncertain_firing== 23195 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #44910: <==negation-removal== 53256 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #46427: <==uncertain_firing== 53256 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #51752: <==uncertain_firing== 63501 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #52784: <==negation-removal== 43711 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #63030: <==uncertain_firing== 48631 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #65301: <==uncertain_firing== 56145 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #65379: <==negation-removal== 56145 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #73914: <==uncertain_firing== 43711 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #86783: <==negation-removal== 48631 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #23195: <==closure== 63501 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #43711: <==closure== 53256 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #48631: <==closure== 56145 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #53256: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #56145: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #63501: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #16114: <==negation-removal== 63501 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #21724: <==negation-removal== 23195 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #30434: <==uncertain_firing== 23195 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #44910: <==negation-removal== 53256 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #46427: <==uncertain_firing== 53256 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #51752: <==uncertain_firing== 63501 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #52784: <==negation-removal== 43711 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #63030: <==uncertain_firing== 48631 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #65301: <==uncertain_firing== 56145 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #65379: <==negation-removal== 56145 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #73914: <==uncertain_firing== 43711 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #86783: <==negation-removal== 48631 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #23195: <==closure== 63501 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #43711: <==closure== 53256 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #48631: <==closure== 56145 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #53256: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #56145: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #63501: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #16114: <==negation-removal== 63501 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #21724: <==negation-removal== 23195 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #30434: <==uncertain_firing== 23195 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #44910: <==negation-removal== 53256 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #46427: <==uncertain_firing== 53256 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #51752: <==uncertain_firing== 63501 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #52784: <==negation-removal== 43711 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #63030: <==uncertain_firing== 48631 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #65301: <==uncertain_firing== 56145 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #65379: <==negation-removal== 56145 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #73914: <==uncertain_firing== 43711 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #86783: <==negation-removal== 48631 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #19531: <==closure== 80267 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #30573: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #34623: <==closure== 66083 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #57288: <==closure== 30573 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #66083: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #80267: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #16879: <==uncertain_firing== 80267 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #19062: <==negation-removal== 57288 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #21082: <==uncertain_firing== 66083 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #25580: <==uncertain_firing== 57288 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #46046: <==uncertain_firing== 30573 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #47323: <==uncertain_firing== 34623 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #53670: <==negation-removal== 19531 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #53701: <==negation-removal== 80267 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #58344: <==negation-removal== 66083 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #69225: <==negation-removal== 30573 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #79994: <==uncertain_firing== 19531 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #88769: <==negation-removal== 34623 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #19531: <==closure== 80267 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #30573: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #34623: <==closure== 66083 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #57288: <==closure== 30573 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #66083: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #80267: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #16879: <==uncertain_firing== 80267 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #19062: <==negation-removal== 57288 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #21082: <==uncertain_firing== 66083 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #25580: <==uncertain_firing== 57288 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #46046: <==uncertain_firing== 30573 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #47323: <==uncertain_firing== 34623 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #53670: <==negation-removal== 19531 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #53701: <==negation-removal== 80267 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #58344: <==negation-removal== 66083 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #69225: <==negation-removal== 30573 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #79994: <==uncertain_firing== 19531 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #88769: <==negation-removal== 34623 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #19531: <==closure== 80267 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #30573: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #34623: <==closure== 66083 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #57288: <==closure== 30573 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #66083: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #80267: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #16879: <==uncertain_firing== 80267 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #19062: <==negation-removal== 57288 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #21082: <==uncertain_firing== 66083 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #25580: <==uncertain_firing== 57288 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #46046: <==uncertain_firing== 30573 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #47323: <==uncertain_firing== 34623 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #53670: <==negation-removal== 19531 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #53701: <==negation-removal== 80267 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #58344: <==negation-removal== 66083 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #69225: <==negation-removal== 30573 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #79994: <==uncertain_firing== 19531 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #88769: <==negation-removal== 34623 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #18608: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #26881: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #31883: <==closure== 55529 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #44904: <==closure== 18608 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #55529: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #81423: <==closure== 26881 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #10047: <==negation-removal== 18608 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #22970: <==negation-removal== 81423 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #37860: <==negation-removal== 55529 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #42927: <==uncertain_firing== 81423 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #45601: <==uncertain_firing== 18608 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #48639: <==negation-removal== 26881 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #58777: <==negation-removal== 44904 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #61643: <==uncertain_firing== 26881 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #63455: <==negation-removal== 31883 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #76816: <==uncertain_firing== 55529 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #81234: <==uncertain_firing== 31883 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #91596: <==uncertain_firing== 44904 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #18608: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #26881: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #31883: <==closure== 55529 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #44904: <==closure== 18608 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #55529: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #81423: <==closure== 26881 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #10047: <==negation-removal== 18608 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #22970: <==negation-removal== 81423 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #37860: <==negation-removal== 55529 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #42927: <==uncertain_firing== 81423 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #45601: <==uncertain_firing== 18608 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #48639: <==negation-removal== 26881 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #58777: <==negation-removal== 44904 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #61643: <==uncertain_firing== 26881 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #63455: <==negation-removal== 31883 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #76816: <==uncertain_firing== 55529 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #81234: <==uncertain_firing== 31883 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #91596: <==uncertain_firing== 44904 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #18608: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #26881: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #31883: <==closure== 55529 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #44904: <==closure== 18608 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #55529: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #81423: <==closure== 26881 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #10047: <==negation-removal== 18608 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #22970: <==negation-removal== 81423 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #37860: <==negation-removal== 55529 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #42927: <==uncertain_firing== 81423 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #45601: <==uncertain_firing== 18608 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #48639: <==negation-removal== 26881 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #58777: <==negation-removal== 44904 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #61643: <==uncertain_firing== 26881 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #63455: <==negation-removal== 31883 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #76816: <==uncertain_firing== 55529 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #81234: <==uncertain_firing== 31883 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #91596: <==uncertain_firing== 44904 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))))

    (:action comm_p10_a_s
        :precondition (and (Ba_survivorat_s_p10)
                           (at_a_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #15872: origin
                    (Bc_survivorat_s_p10)

                    ; #32229: <==closure== 15872 (pos)
                    (Pc_survivorat_s_p10)

                    ; #35008: <==closure== 59498 (pos)
                    (Pb_survivorat_s_p10)

                    ; #59498: origin
                    (Bb_survivorat_s_p10)

                    ; #74317: origin
                    (Ba_survivorat_s_p10)

                    ; #86037: <==closure== 74317 (pos)
                    (Pa_survivorat_s_p10)

                    ; #15319: <==negation-removal== 74317 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #48064: <==negation-removal== 15872 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #50827: <==negation-removal== 86037 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #58998: <==negation-removal== 32229 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #88675: <==negation-removal== 59498 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #88817: <==negation-removal== 35008 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #15872: origin
                    (Bc_survivorat_s_p10)

                    ; #32229: <==closure== 15872 (pos)
                    (Pc_survivorat_s_p10)

                    ; #35008: <==closure== 59498 (pos)
                    (Pb_survivorat_s_p10)

                    ; #59498: origin
                    (Bb_survivorat_s_p10)

                    ; #74317: origin
                    (Ba_survivorat_s_p10)

                    ; #86037: <==closure== 74317 (pos)
                    (Pa_survivorat_s_p10)

                    ; #15319: <==negation-removal== 74317 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #48064: <==negation-removal== 15872 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #50827: <==negation-removal== 86037 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #58998: <==negation-removal== 32229 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #88675: <==negation-removal== 59498 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #88817: <==negation-removal== 35008 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #15872: origin
                    (Bc_survivorat_s_p10)

                    ; #32229: <==closure== 15872 (pos)
                    (Pc_survivorat_s_p10)

                    ; #35008: <==closure== 59498 (pos)
                    (Pb_survivorat_s_p10)

                    ; #59498: origin
                    (Bb_survivorat_s_p10)

                    ; #74317: origin
                    (Ba_survivorat_s_p10)

                    ; #86037: <==closure== 74317 (pos)
                    (Pa_survivorat_s_p10)

                    ; #15319: <==negation-removal== 74317 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #48064: <==negation-removal== 15872 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #50827: <==negation-removal== 86037 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #58998: <==negation-removal== 32229 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #88675: <==negation-removal== 59498 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #88817: <==negation-removal== 35008 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #14679: origin
                    (Ba_survivorat_s_p11)

                    ; #15742: <==closure== 75657 (pos)
                    (Pb_survivorat_s_p11)

                    ; #55162: origin
                    (Bc_survivorat_s_p11)

                    ; #57554: <==closure== 55162 (pos)
                    (Pc_survivorat_s_p11)

                    ; #74117: <==closure== 14679 (pos)
                    (Pa_survivorat_s_p11)

                    ; #75657: origin
                    (Bb_survivorat_s_p11)

                    ; #24362: <==negation-removal== 14679 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #25708: <==negation-removal== 15742 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #34129: <==negation-removal== 74117 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #54292: <==negation-removal== 75657 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #62923: <==negation-removal== 57554 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #82564: <==negation-removal== 55162 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #14679: origin
                    (Ba_survivorat_s_p11)

                    ; #15742: <==closure== 75657 (pos)
                    (Pb_survivorat_s_p11)

                    ; #55162: origin
                    (Bc_survivorat_s_p11)

                    ; #57554: <==closure== 55162 (pos)
                    (Pc_survivorat_s_p11)

                    ; #74117: <==closure== 14679 (pos)
                    (Pa_survivorat_s_p11)

                    ; #75657: origin
                    (Bb_survivorat_s_p11)

                    ; #24362: <==negation-removal== 14679 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #25708: <==negation-removal== 15742 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #34129: <==negation-removal== 74117 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #54292: <==negation-removal== 75657 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #62923: <==negation-removal== 57554 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #82564: <==negation-removal== 55162 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #14679: origin
                    (Ba_survivorat_s_p11)

                    ; #15742: <==closure== 75657 (pos)
                    (Pb_survivorat_s_p11)

                    ; #55162: origin
                    (Bc_survivorat_s_p11)

                    ; #57554: <==closure== 55162 (pos)
                    (Pc_survivorat_s_p11)

                    ; #74117: <==closure== 14679 (pos)
                    (Pa_survivorat_s_p11)

                    ; #75657: origin
                    (Bb_survivorat_s_p11)

                    ; #24362: <==negation-removal== 14679 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #25708: <==negation-removal== 15742 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #34129: <==negation-removal== 74117 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #54292: <==negation-removal== 75657 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #62923: <==negation-removal== 57554 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #82564: <==negation-removal== 55162 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #10511: origin
                    (Bb_survivorat_s_p12)

                    ; #13225: <==closure== 67556 (pos)
                    (Pc_survivorat_s_p12)

                    ; #15521: <==closure== 17549 (pos)
                    (Pa_survivorat_s_p12)

                    ; #17549: origin
                    (Ba_survivorat_s_p12)

                    ; #42347: <==closure== 10511 (pos)
                    (Pb_survivorat_s_p12)

                    ; #67556: origin
                    (Bc_survivorat_s_p12)

                    ; #19977: <==negation-removal== 42347 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #34823: <==negation-removal== 15521 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #39117: <==negation-removal== 67556 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #57783: <==negation-removal== 13225 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #59138: <==negation-removal== 17549 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #71254: <==negation-removal== 10511 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #10511: origin
                    (Bb_survivorat_s_p12)

                    ; #13225: <==closure== 67556 (pos)
                    (Pc_survivorat_s_p12)

                    ; #15521: <==closure== 17549 (pos)
                    (Pa_survivorat_s_p12)

                    ; #17549: origin
                    (Ba_survivorat_s_p12)

                    ; #42347: <==closure== 10511 (pos)
                    (Pb_survivorat_s_p12)

                    ; #67556: origin
                    (Bc_survivorat_s_p12)

                    ; #19977: <==negation-removal== 42347 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #34823: <==negation-removal== 15521 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #39117: <==negation-removal== 67556 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #57783: <==negation-removal== 13225 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #59138: <==negation-removal== 17549 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #71254: <==negation-removal== 10511 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #10511: origin
                    (Bb_survivorat_s_p12)

                    ; #13225: <==closure== 67556 (pos)
                    (Pc_survivorat_s_p12)

                    ; #15521: <==closure== 17549 (pos)
                    (Pa_survivorat_s_p12)

                    ; #17549: origin
                    (Ba_survivorat_s_p12)

                    ; #42347: <==closure== 10511 (pos)
                    (Pb_survivorat_s_p12)

                    ; #67556: origin
                    (Bc_survivorat_s_p12)

                    ; #19977: <==negation-removal== 42347 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #34823: <==negation-removal== 15521 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #39117: <==negation-removal== 67556 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #57783: <==negation-removal== 13225 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #59138: <==negation-removal== 17549 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #71254: <==negation-removal== 10511 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #25141: <==closure== 55685 (pos)
                    (Pa_survivorat_s_p1)

                    ; #32795: origin
                    (Bb_survivorat_s_p1)

                    ; #39708: <==closure== 32795 (pos)
                    (Pb_survivorat_s_p1)

                    ; #42555: <==closure== 81890 (pos)
                    (Pc_survivorat_s_p1)

                    ; #55685: origin
                    (Ba_survivorat_s_p1)

                    ; #81890: origin
                    (Bc_survivorat_s_p1)

                    ; #18240: <==negation-removal== 32795 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #21170: <==negation-removal== 42555 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #29083: <==negation-removal== 25141 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #31751: <==negation-removal== 55685 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #52273: <==negation-removal== 39708 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #80517: <==negation-removal== 81890 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #25141: <==closure== 55685 (pos)
                    (Pa_survivorat_s_p1)

                    ; #32795: origin
                    (Bb_survivorat_s_p1)

                    ; #39708: <==closure== 32795 (pos)
                    (Pb_survivorat_s_p1)

                    ; #42555: <==closure== 81890 (pos)
                    (Pc_survivorat_s_p1)

                    ; #55685: origin
                    (Ba_survivorat_s_p1)

                    ; #81890: origin
                    (Bc_survivorat_s_p1)

                    ; #18240: <==negation-removal== 32795 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #21170: <==negation-removal== 42555 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #29083: <==negation-removal== 25141 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #31751: <==negation-removal== 55685 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #52273: <==negation-removal== 39708 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #80517: <==negation-removal== 81890 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #25141: <==closure== 55685 (pos)
                    (Pa_survivorat_s_p1)

                    ; #32795: origin
                    (Bb_survivorat_s_p1)

                    ; #39708: <==closure== 32795 (pos)
                    (Pb_survivorat_s_p1)

                    ; #42555: <==closure== 81890 (pos)
                    (Pc_survivorat_s_p1)

                    ; #55685: origin
                    (Ba_survivorat_s_p1)

                    ; #81890: origin
                    (Bc_survivorat_s_p1)

                    ; #18240: <==negation-removal== 32795 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #21170: <==negation-removal== 42555 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #29083: <==negation-removal== 25141 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #31751: <==negation-removal== 55685 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #52273: <==negation-removal== 39708 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #80517: <==negation-removal== 81890 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #26116: <==closure== 33479 (pos)
                    (Pa_survivorat_s_p2)

                    ; #33479: origin
                    (Ba_survivorat_s_p2)

                    ; #45409: origin
                    (Bc_survivorat_s_p2)

                    ; #56529: <==closure== 45409 (pos)
                    (Pc_survivorat_s_p2)

                    ; #66841: <==closure== 88257 (pos)
                    (Pb_survivorat_s_p2)

                    ; #88257: origin
                    (Bb_survivorat_s_p2)

                    ; #16825: <==negation-removal== 56529 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #27808: <==negation-removal== 45409 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #31853: <==negation-removal== 66841 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #41961: <==negation-removal== 26116 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #49590: <==negation-removal== 88257 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #74899: <==negation-removal== 33479 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #26116: <==closure== 33479 (pos)
                    (Pa_survivorat_s_p2)

                    ; #33479: origin
                    (Ba_survivorat_s_p2)

                    ; #45409: origin
                    (Bc_survivorat_s_p2)

                    ; #56529: <==closure== 45409 (pos)
                    (Pc_survivorat_s_p2)

                    ; #66841: <==closure== 88257 (pos)
                    (Pb_survivorat_s_p2)

                    ; #88257: origin
                    (Bb_survivorat_s_p2)

                    ; #16825: <==negation-removal== 56529 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #27808: <==negation-removal== 45409 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #31853: <==negation-removal== 66841 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #41961: <==negation-removal== 26116 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #49590: <==negation-removal== 88257 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #74899: <==negation-removal== 33479 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #26116: <==closure== 33479 (pos)
                    (Pa_survivorat_s_p2)

                    ; #33479: origin
                    (Ba_survivorat_s_p2)

                    ; #45409: origin
                    (Bc_survivorat_s_p2)

                    ; #56529: <==closure== 45409 (pos)
                    (Pc_survivorat_s_p2)

                    ; #66841: <==closure== 88257 (pos)
                    (Pb_survivorat_s_p2)

                    ; #88257: origin
                    (Bb_survivorat_s_p2)

                    ; #16825: <==negation-removal== 56529 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #27808: <==negation-removal== 45409 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #31853: <==negation-removal== 66841 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #41961: <==negation-removal== 26116 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #49590: <==negation-removal== 88257 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #74899: <==negation-removal== 33479 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #29608: origin
                    (Ba_survivorat_s_p3)

                    ; #32454: <==closure== 69657 (pos)
                    (Pc_survivorat_s_p3)

                    ; #44072: origin
                    (Bb_survivorat_s_p3)

                    ; #47005: <==closure== 44072 (pos)
                    (Pb_survivorat_s_p3)

                    ; #61042: <==closure== 29608 (pos)
                    (Pa_survivorat_s_p3)

                    ; #69657: origin
                    (Bc_survivorat_s_p3)

                    ; #40087: <==negation-removal== 47005 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #50787: <==negation-removal== 69657 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #63331: <==negation-removal== 29608 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #67555: <==negation-removal== 44072 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #79444: <==negation-removal== 32454 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #87943: <==negation-removal== 61042 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #29608: origin
                    (Ba_survivorat_s_p3)

                    ; #32454: <==closure== 69657 (pos)
                    (Pc_survivorat_s_p3)

                    ; #44072: origin
                    (Bb_survivorat_s_p3)

                    ; #47005: <==closure== 44072 (pos)
                    (Pb_survivorat_s_p3)

                    ; #61042: <==closure== 29608 (pos)
                    (Pa_survivorat_s_p3)

                    ; #69657: origin
                    (Bc_survivorat_s_p3)

                    ; #40087: <==negation-removal== 47005 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #50787: <==negation-removal== 69657 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #63331: <==negation-removal== 29608 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #67555: <==negation-removal== 44072 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #79444: <==negation-removal== 32454 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #87943: <==negation-removal== 61042 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #29608: origin
                    (Ba_survivorat_s_p3)

                    ; #32454: <==closure== 69657 (pos)
                    (Pc_survivorat_s_p3)

                    ; #44072: origin
                    (Bb_survivorat_s_p3)

                    ; #47005: <==closure== 44072 (pos)
                    (Pb_survivorat_s_p3)

                    ; #61042: <==closure== 29608 (pos)
                    (Pa_survivorat_s_p3)

                    ; #69657: origin
                    (Bc_survivorat_s_p3)

                    ; #40087: <==negation-removal== 47005 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #50787: <==negation-removal== 69657 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #63331: <==negation-removal== 29608 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #67555: <==negation-removal== 44072 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #79444: <==negation-removal== 32454 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #87943: <==negation-removal== 61042 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #28865: origin
                    (Bb_survivorat_s_p4)

                    ; #28976: <==closure== 85081 (pos)
                    (Pa_survivorat_s_p4)

                    ; #32833: origin
                    (Bc_survivorat_s_p4)

                    ; #35435: <==closure== 32833 (pos)
                    (Pc_survivorat_s_p4)

                    ; #85081: origin
                    (Ba_survivorat_s_p4)

                    ; #91031: <==closure== 28865 (pos)
                    (Pb_survivorat_s_p4)

                    ; #14944: <==negation-removal== 91031 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #15747: <==negation-removal== 28976 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #30355: <==negation-removal== 28865 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #43810: <==negation-removal== 85081 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #65371: <==negation-removal== 32833 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #69374: <==negation-removal== 35435 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #28865: origin
                    (Bb_survivorat_s_p4)

                    ; #28976: <==closure== 85081 (pos)
                    (Pa_survivorat_s_p4)

                    ; #32833: origin
                    (Bc_survivorat_s_p4)

                    ; #35435: <==closure== 32833 (pos)
                    (Pc_survivorat_s_p4)

                    ; #85081: origin
                    (Ba_survivorat_s_p4)

                    ; #91031: <==closure== 28865 (pos)
                    (Pb_survivorat_s_p4)

                    ; #14944: <==negation-removal== 91031 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #15747: <==negation-removal== 28976 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #30355: <==negation-removal== 28865 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #43810: <==negation-removal== 85081 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #65371: <==negation-removal== 32833 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #69374: <==negation-removal== 35435 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (at_c_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #28865: origin
                    (Bb_survivorat_s_p4)

                    ; #28976: <==closure== 85081 (pos)
                    (Pa_survivorat_s_p4)

                    ; #32833: origin
                    (Bc_survivorat_s_p4)

                    ; #35435: <==closure== 32833 (pos)
                    (Pc_survivorat_s_p4)

                    ; #85081: origin
                    (Ba_survivorat_s_p4)

                    ; #91031: <==closure== 28865 (pos)
                    (Pb_survivorat_s_p4)

                    ; #14944: <==negation-removal== 91031 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #15747: <==negation-removal== 28976 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #30355: <==negation-removal== 28865 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #43810: <==negation-removal== 85081 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #65371: <==negation-removal== 32833 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #69374: <==negation-removal== 35435 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #14656: <==closure== 85843 (pos)
                    (Pc_survivorat_s_p5)

                    ; #43219: origin
                    (Bb_survivorat_s_p5)

                    ; #66233: <==closure== 43219 (pos)
                    (Pb_survivorat_s_p5)

                    ; #74572: origin
                    (Ba_survivorat_s_p5)

                    ; #78917: <==closure== 74572 (pos)
                    (Pa_survivorat_s_p5)

                    ; #85843: origin
                    (Bc_survivorat_s_p5)

                    ; #12344: <==negation-removal== 43219 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #50612: <==negation-removal== 66233 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #61263: <==negation-removal== 85843 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #63396: <==negation-removal== 78917 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #69414: <==negation-removal== 74572 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #74585: <==negation-removal== 14656 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #14656: <==closure== 85843 (pos)
                    (Pc_survivorat_s_p5)

                    ; #43219: origin
                    (Bb_survivorat_s_p5)

                    ; #66233: <==closure== 43219 (pos)
                    (Pb_survivorat_s_p5)

                    ; #74572: origin
                    (Ba_survivorat_s_p5)

                    ; #78917: <==closure== 74572 (pos)
                    (Pa_survivorat_s_p5)

                    ; #85843: origin
                    (Bc_survivorat_s_p5)

                    ; #12344: <==negation-removal== 43219 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #50612: <==negation-removal== 66233 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #61263: <==negation-removal== 85843 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #63396: <==negation-removal== 78917 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #69414: <==negation-removal== 74572 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #74585: <==negation-removal== 14656 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #14656: <==closure== 85843 (pos)
                    (Pc_survivorat_s_p5)

                    ; #43219: origin
                    (Bb_survivorat_s_p5)

                    ; #66233: <==closure== 43219 (pos)
                    (Pb_survivorat_s_p5)

                    ; #74572: origin
                    (Ba_survivorat_s_p5)

                    ; #78917: <==closure== 74572 (pos)
                    (Pa_survivorat_s_p5)

                    ; #85843: origin
                    (Bc_survivorat_s_p5)

                    ; #12344: <==negation-removal== 43219 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #50612: <==negation-removal== 66233 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #61263: <==negation-removal== 85843 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #63396: <==negation-removal== 78917 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #69414: <==negation-removal== 74572 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #74585: <==negation-removal== 14656 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #15377: origin
                    (Bb_survivorat_s_p6)

                    ; #29999: origin
                    (Bc_survivorat_s_p6)

                    ; #39282: <==closure== 29999 (pos)
                    (Pc_survivorat_s_p6)

                    ; #40159: origin
                    (Ba_survivorat_s_p6)

                    ; #66906: <==closure== 15377 (pos)
                    (Pb_survivorat_s_p6)

                    ; #88017: <==closure== 40159 (pos)
                    (Pa_survivorat_s_p6)

                    ; #24069: <==negation-removal== 15377 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #34515: <==negation-removal== 29999 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #53591: <==negation-removal== 88017 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #60461: <==negation-removal== 39282 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #77819: <==negation-removal== 40159 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #87353: <==negation-removal== 66906 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #15377: origin
                    (Bb_survivorat_s_p6)

                    ; #29999: origin
                    (Bc_survivorat_s_p6)

                    ; #39282: <==closure== 29999 (pos)
                    (Pc_survivorat_s_p6)

                    ; #40159: origin
                    (Ba_survivorat_s_p6)

                    ; #66906: <==closure== 15377 (pos)
                    (Pb_survivorat_s_p6)

                    ; #88017: <==closure== 40159 (pos)
                    (Pa_survivorat_s_p6)

                    ; #24069: <==negation-removal== 15377 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #34515: <==negation-removal== 29999 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #53591: <==negation-removal== 88017 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #60461: <==negation-removal== 39282 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #77819: <==negation-removal== 40159 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #87353: <==negation-removal== 66906 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #15377: origin
                    (Bb_survivorat_s_p6)

                    ; #29999: origin
                    (Bc_survivorat_s_p6)

                    ; #39282: <==closure== 29999 (pos)
                    (Pc_survivorat_s_p6)

                    ; #40159: origin
                    (Ba_survivorat_s_p6)

                    ; #66906: <==closure== 15377 (pos)
                    (Pb_survivorat_s_p6)

                    ; #88017: <==closure== 40159 (pos)
                    (Pa_survivorat_s_p6)

                    ; #24069: <==negation-removal== 15377 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #34515: <==negation-removal== 29999 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #53591: <==negation-removal== 88017 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #60461: <==negation-removal== 39282 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #77819: <==negation-removal== 40159 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #87353: <==negation-removal== 66906 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #20632: origin
                    (Bb_survivorat_s_p7)

                    ; #21727: origin
                    (Bc_survivorat_s_p7)

                    ; #38510: <==closure== 20632 (pos)
                    (Pb_survivorat_s_p7)

                    ; #42278: origin
                    (Ba_survivorat_s_p7)

                    ; #58216: <==closure== 21727 (pos)
                    (Pc_survivorat_s_p7)

                    ; #77323: <==closure== 42278 (pos)
                    (Pa_survivorat_s_p7)

                    ; #11909: <==negation-removal== 20632 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #33215: <==negation-removal== 21727 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #41052: <==negation-removal== 38510 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #54068: <==negation-removal== 77323 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #76982: <==negation-removal== 42278 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #91819: <==negation-removal== 58216 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #20632: origin
                    (Bb_survivorat_s_p7)

                    ; #21727: origin
                    (Bc_survivorat_s_p7)

                    ; #38510: <==closure== 20632 (pos)
                    (Pb_survivorat_s_p7)

                    ; #42278: origin
                    (Ba_survivorat_s_p7)

                    ; #58216: <==closure== 21727 (pos)
                    (Pc_survivorat_s_p7)

                    ; #77323: <==closure== 42278 (pos)
                    (Pa_survivorat_s_p7)

                    ; #11909: <==negation-removal== 20632 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #33215: <==negation-removal== 21727 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #41052: <==negation-removal== 38510 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #54068: <==negation-removal== 77323 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #76982: <==negation-removal== 42278 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #91819: <==negation-removal== 58216 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #20632: origin
                    (Bb_survivorat_s_p7)

                    ; #21727: origin
                    (Bc_survivorat_s_p7)

                    ; #38510: <==closure== 20632 (pos)
                    (Pb_survivorat_s_p7)

                    ; #42278: origin
                    (Ba_survivorat_s_p7)

                    ; #58216: <==closure== 21727 (pos)
                    (Pc_survivorat_s_p7)

                    ; #77323: <==closure== 42278 (pos)
                    (Pa_survivorat_s_p7)

                    ; #11909: <==negation-removal== 20632 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #33215: <==negation-removal== 21727 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #41052: <==negation-removal== 38510 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #54068: <==negation-removal== 77323 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #76982: <==negation-removal== 42278 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #91819: <==negation-removal== 58216 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #24267: <==closure== 87181 (pos)
                    (Pc_survivorat_s_p8)

                    ; #26485: origin
                    (Bb_survivorat_s_p8)

                    ; #56787: origin
                    (Ba_survivorat_s_p8)

                    ; #70951: <==closure== 26485 (pos)
                    (Pb_survivorat_s_p8)

                    ; #80360: <==closure== 56787 (pos)
                    (Pa_survivorat_s_p8)

                    ; #87181: origin
                    (Bc_survivorat_s_p8)

                    ; #13518: <==negation-removal== 24267 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #34654: <==negation-removal== 56787 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #35214: <==negation-removal== 80360 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #51425: <==negation-removal== 70951 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #54952: <==negation-removal== 87181 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #66927: <==negation-removal== 26485 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #24267: <==closure== 87181 (pos)
                    (Pc_survivorat_s_p8)

                    ; #26485: origin
                    (Bb_survivorat_s_p8)

                    ; #56787: origin
                    (Ba_survivorat_s_p8)

                    ; #70951: <==closure== 26485 (pos)
                    (Pb_survivorat_s_p8)

                    ; #80360: <==closure== 56787 (pos)
                    (Pa_survivorat_s_p8)

                    ; #87181: origin
                    (Bc_survivorat_s_p8)

                    ; #13518: <==negation-removal== 24267 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #34654: <==negation-removal== 56787 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #35214: <==negation-removal== 80360 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #51425: <==negation-removal== 70951 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #54952: <==negation-removal== 87181 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #66927: <==negation-removal== 26485 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #24267: <==closure== 87181 (pos)
                    (Pc_survivorat_s_p8)

                    ; #26485: origin
                    (Bb_survivorat_s_p8)

                    ; #56787: origin
                    (Ba_survivorat_s_p8)

                    ; #70951: <==closure== 26485 (pos)
                    (Pb_survivorat_s_p8)

                    ; #80360: <==closure== 56787 (pos)
                    (Pa_survivorat_s_p8)

                    ; #87181: origin
                    (Bc_survivorat_s_p8)

                    ; #13518: <==negation-removal== 24267 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #34654: <==negation-removal== 56787 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #35214: <==negation-removal== 80360 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #51425: <==negation-removal== 70951 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #54952: <==negation-removal== 87181 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #66927: <==negation-removal== 26485 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #26034: <==closure== 74765 (pos)
                    (Pb_survivorat_s_p9)

                    ; #29585: origin
                    (Bc_survivorat_s_p9)

                    ; #74765: origin
                    (Bb_survivorat_s_p9)

                    ; #77236: <==closure== 29585 (pos)
                    (Pc_survivorat_s_p9)

                    ; #83003: origin
                    (Ba_survivorat_s_p9)

                    ; #83439: <==closure== 83003 (pos)
                    (Pa_survivorat_s_p9)

                    ; #14408: <==negation-removal== 83003 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #51670: <==negation-removal== 26034 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #65592: <==negation-removal== 74765 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #69269: <==negation-removal== 83439 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #72551: <==negation-removal== 77236 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #89704: <==negation-removal== 29585 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #26034: <==closure== 74765 (pos)
                    (Pb_survivorat_s_p9)

                    ; #29585: origin
                    (Bc_survivorat_s_p9)

                    ; #74765: origin
                    (Bb_survivorat_s_p9)

                    ; #77236: <==closure== 29585 (pos)
                    (Pc_survivorat_s_p9)

                    ; #83003: origin
                    (Ba_survivorat_s_p9)

                    ; #83439: <==closure== 83003 (pos)
                    (Pa_survivorat_s_p9)

                    ; #14408: <==negation-removal== 83003 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #51670: <==negation-removal== 26034 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #65592: <==negation-removal== 74765 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #69269: <==negation-removal== 83439 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #72551: <==negation-removal== 77236 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #89704: <==negation-removal== 29585 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #26034: <==closure== 74765 (pos)
                    (Pb_survivorat_s_p9)

                    ; #29585: origin
                    (Bc_survivorat_s_p9)

                    ; #74765: origin
                    (Bb_survivorat_s_p9)

                    ; #77236: <==closure== 29585 (pos)
                    (Pc_survivorat_s_p9)

                    ; #83003: origin
                    (Ba_survivorat_s_p9)

                    ; #83439: <==closure== 83003 (pos)
                    (Pa_survivorat_s_p9)

                    ; #14408: <==negation-removal== 83003 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #51670: <==negation-removal== 26034 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #65592: <==negation-removal== 74765 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #69269: <==negation-removal== 83439 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #72551: <==negation-removal== 77236 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #89704: <==negation-removal== 29585 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #51691: origin
                    (not_at_a_p10)

                    ; #55635: origin
                    (at_a_p1)

                    ; #10336: <==negation-removal== 51691 (pos)
                    (not (at_a_p10))

                    ; #76921: <==negation-removal== 55635 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #10336: origin
                    (at_a_p10)

                    ; #51691: origin
                    (not_at_a_p10)

                    ; #10336: <==negation-removal== 51691 (pos)
                    (not (at_a_p10))

                    ; #51691: <==negation-removal== 10336 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (at_a_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #51691: origin
                    (not_at_a_p10)

                    ; #61273: origin
                    (at_a_p11)

                    ; #10336: <==negation-removal== 51691 (pos)
                    (not (at_a_p10))

                    ; #80979: <==negation-removal== 61273 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #51691: origin
                    (not_at_a_p10)

                    ; #68717: origin
                    (at_a_p12)

                    ; #10336: <==negation-removal== 51691 (pos)
                    (not (at_a_p10))

                    ; #36958: <==negation-removal== 68717 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #38281: origin
                    (at_a_p2)

                    ; #51691: origin
                    (not_at_a_p10)

                    ; #10336: <==negation-removal== 51691 (pos)
                    (not (at_a_p10))

                    ; #20924: <==negation-removal== 38281 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10))
        :effect (and
                    ; #12398: origin
                    (at_a_p3)

                    ; #51691: origin
                    (not_at_a_p10)

                    ; #10336: <==negation-removal== 51691 (pos)
                    (not (at_a_p10))

                    ; #13262: <==negation-removal== 12398 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10))
        :effect (and
                    ; #51691: origin
                    (not_at_a_p10)

                    ; #88996: origin
                    (at_a_p4)

                    ; #10336: <==negation-removal== 51691 (pos)
                    (not (at_a_p10))

                    ; #22958: <==negation-removal== 88996 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10))
        :effect (and
                    ; #38821: origin
                    (at_a_p5)

                    ; #51691: origin
                    (not_at_a_p10)

                    ; #10336: <==negation-removal== 51691 (pos)
                    (not (at_a_p10))

                    ; #28208: <==negation-removal== 38821 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10))
        :effect (and
                    ; #27303: origin
                    (at_a_p6)

                    ; #51691: origin
                    (not_at_a_p10)

                    ; #10336: <==negation-removal== 51691 (pos)
                    (not (at_a_p10))

                    ; #62436: <==negation-removal== 27303 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10))
        :effect (and
                    ; #27620: origin
                    (at_a_p7)

                    ; #51691: origin
                    (not_at_a_p10)

                    ; #10336: <==negation-removal== 51691 (pos)
                    (not (at_a_p10))

                    ; #76000: <==negation-removal== 27620 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (at_a_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #51691: origin
                    (not_at_a_p10)

                    ; #79121: origin
                    (at_a_p8)

                    ; #10336: <==negation-removal== 51691 (pos)
                    (not (at_a_p10))

                    ; #83359: <==negation-removal== 79121 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10))
        :effect (and
                    ; #51265: origin
                    (at_a_p9)

                    ; #51691: origin
                    (not_at_a_p10)

                    ; #10336: <==negation-removal== 51691 (pos)
                    (not (at_a_p10))

                    ; #45322: <==negation-removal== 51265 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11))
        :effect (and
                    ; #55635: origin
                    (at_a_p1)

                    ; #80979: origin
                    (not_at_a_p11)

                    ; #61273: <==negation-removal== 80979 (pos)
                    (not (at_a_p11))

                    ; #76921: <==negation-removal== 55635 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #10336: origin
                    (at_a_p10)

                    ; #80979: origin
                    (not_at_a_p11)

                    ; #51691: <==negation-removal== 10336 (pos)
                    (not (not_at_a_p10))

                    ; #61273: <==negation-removal== 80979 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #61273: origin
                    (at_a_p11)

                    ; #80979: origin
                    (not_at_a_p11)

                    ; #61273: <==negation-removal== 80979 (pos)
                    (not (at_a_p11))

                    ; #80979: <==negation-removal== 61273 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11))
        :effect (and
                    ; #68717: origin
                    (at_a_p12)

                    ; #80979: origin
                    (not_at_a_p11)

                    ; #36958: <==negation-removal== 68717 (pos)
                    (not (not_at_a_p12))

                    ; #61273: <==negation-removal== 80979 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #38281: origin
                    (at_a_p2)

                    ; #80979: origin
                    (not_at_a_p11)

                    ; #20924: <==negation-removal== 38281 (pos)
                    (not (not_at_a_p2))

                    ; #61273: <==negation-removal== 80979 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_a_p11))
        :effect (and
                    ; #12398: origin
                    (at_a_p3)

                    ; #80979: origin
                    (not_at_a_p11)

                    ; #13262: <==negation-removal== 12398 (pos)
                    (not (not_at_a_p3))

                    ; #61273: <==negation-removal== 80979 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p4
        :precondition (and (at_a_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #80979: origin
                    (not_at_a_p11)

                    ; #88996: origin
                    (at_a_p4)

                    ; #22958: <==negation-removal== 88996 (pos)
                    (not (not_at_a_p4))

                    ; #61273: <==negation-removal== 80979 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #38821: origin
                    (at_a_p5)

                    ; #80979: origin
                    (not_at_a_p11)

                    ; #28208: <==negation-removal== 38821 (pos)
                    (not (not_at_a_p5))

                    ; #61273: <==negation-removal== 80979 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #27303: origin
                    (at_a_p6)

                    ; #80979: origin
                    (not_at_a_p11)

                    ; #61273: <==negation-removal== 80979 (pos)
                    (not (at_a_p11))

                    ; #62436: <==negation-removal== 27303 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_a_p11))
        :effect (and
                    ; #27620: origin
                    (at_a_p7)

                    ; #80979: origin
                    (not_at_a_p11)

                    ; #61273: <==negation-removal== 80979 (pos)
                    (not (at_a_p11))

                    ; #76000: <==negation-removal== 27620 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11))
        :effect (and
                    ; #79121: origin
                    (at_a_p8)

                    ; #80979: origin
                    (not_at_a_p11)

                    ; #61273: <==negation-removal== 80979 (pos)
                    (not (at_a_p11))

                    ; #83359: <==negation-removal== 79121 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #51265: origin
                    (at_a_p9)

                    ; #80979: origin
                    (not_at_a_p11)

                    ; #45322: <==negation-removal== 51265 (pos)
                    (not (not_at_a_p9))

                    ; #61273: <==negation-removal== 80979 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (at_a_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #36958: origin
                    (not_at_a_p12)

                    ; #55635: origin
                    (at_a_p1)

                    ; #68717: <==negation-removal== 36958 (pos)
                    (not (at_a_p12))

                    ; #76921: <==negation-removal== 55635 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12))
        :effect (and
                    ; #10336: origin
                    (at_a_p10)

                    ; #36958: origin
                    (not_at_a_p12)

                    ; #51691: <==negation-removal== 10336 (pos)
                    (not (not_at_a_p10))

                    ; #68717: <==negation-removal== 36958 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (at_a_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #36958: origin
                    (not_at_a_p12)

                    ; #61273: origin
                    (at_a_p11)

                    ; #68717: <==negation-removal== 36958 (pos)
                    (not (at_a_p12))

                    ; #80979: <==negation-removal== 61273 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (at_a_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #36958: origin
                    (not_at_a_p12)

                    ; #68717: origin
                    (at_a_p12)

                    ; #36958: <==negation-removal== 68717 (pos)
                    (not (not_at_a_p12))

                    ; #68717: <==negation-removal== 36958 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12))
        :effect (and
                    ; #36958: origin
                    (not_at_a_p12)

                    ; #38281: origin
                    (at_a_p2)

                    ; #20924: <==negation-removal== 38281 (pos)
                    (not (not_at_a_p2))

                    ; #68717: <==negation-removal== 36958 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (at_a_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #12398: origin
                    (at_a_p3)

                    ; #36958: origin
                    (not_at_a_p12)

                    ; #13262: <==negation-removal== 12398 (pos)
                    (not (not_at_a_p3))

                    ; #68717: <==negation-removal== 36958 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12))
        :effect (and
                    ; #36958: origin
                    (not_at_a_p12)

                    ; #88996: origin
                    (at_a_p4)

                    ; #22958: <==negation-removal== 88996 (pos)
                    (not (not_at_a_p4))

                    ; #68717: <==negation-removal== 36958 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12))
        :effect (and
                    ; #36958: origin
                    (not_at_a_p12)

                    ; #38821: origin
                    (at_a_p5)

                    ; #28208: <==negation-removal== 38821 (pos)
                    (not (not_at_a_p5))

                    ; #68717: <==negation-removal== 36958 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12))
        :effect (and
                    ; #27303: origin
                    (at_a_p6)

                    ; #36958: origin
                    (not_at_a_p12)

                    ; #62436: <==negation-removal== 27303 (pos)
                    (not (not_at_a_p6))

                    ; #68717: <==negation-removal== 36958 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (at_a_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #27620: origin
                    (at_a_p7)

                    ; #36958: origin
                    (not_at_a_p12)

                    ; #68717: <==negation-removal== 36958 (pos)
                    (not (at_a_p12))

                    ; #76000: <==negation-removal== 27620 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p12_p8
        :precondition (and (at_a_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #36958: origin
                    (not_at_a_p12)

                    ; #79121: origin
                    (at_a_p8)

                    ; #68717: <==negation-removal== 36958 (pos)
                    (not (at_a_p12))

                    ; #83359: <==negation-removal== 79121 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12))
        :effect (and
                    ; #36958: origin
                    (not_at_a_p12)

                    ; #51265: origin
                    (at_a_p9)

                    ; #45322: <==negation-removal== 51265 (pos)
                    (not (not_at_a_p9))

                    ; #68717: <==negation-removal== 36958 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #55635: origin
                    (at_a_p1)

                    ; #76921: origin
                    (not_at_a_p1)

                    ; #55635: <==negation-removal== 76921 (pos)
                    (not (at_a_p1))

                    ; #76921: <==negation-removal== 55635 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #10336: origin
                    (at_a_p10)

                    ; #76921: origin
                    (not_at_a_p1)

                    ; #51691: <==negation-removal== 10336 (pos)
                    (not (not_at_a_p10))

                    ; #55635: <==negation-removal== 76921 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #61273: origin
                    (at_a_p11)

                    ; #76921: origin
                    (not_at_a_p1)

                    ; #55635: <==negation-removal== 76921 (pos)
                    (not (at_a_p1))

                    ; #80979: <==negation-removal== 61273 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #68717: origin
                    (at_a_p12)

                    ; #76921: origin
                    (not_at_a_p1)

                    ; #36958: <==negation-removal== 68717 (pos)
                    (not (not_at_a_p12))

                    ; #55635: <==negation-removal== 76921 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #38281: origin
                    (at_a_p2)

                    ; #76921: origin
                    (not_at_a_p1)

                    ; #20924: <==negation-removal== 38281 (pos)
                    (not (not_at_a_p2))

                    ; #55635: <==negation-removal== 76921 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #12398: origin
                    (at_a_p3)

                    ; #76921: origin
                    (not_at_a_p1)

                    ; #13262: <==negation-removal== 12398 (pos)
                    (not (not_at_a_p3))

                    ; #55635: <==negation-removal== 76921 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #76921: origin
                    (not_at_a_p1)

                    ; #88996: origin
                    (at_a_p4)

                    ; #22958: <==negation-removal== 88996 (pos)
                    (not (not_at_a_p4))

                    ; #55635: <==negation-removal== 76921 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #38821: origin
                    (at_a_p5)

                    ; #76921: origin
                    (not_at_a_p1)

                    ; #28208: <==negation-removal== 38821 (pos)
                    (not (not_at_a_p5))

                    ; #55635: <==negation-removal== 76921 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #27303: origin
                    (at_a_p6)

                    ; #76921: origin
                    (not_at_a_p1)

                    ; #55635: <==negation-removal== 76921 (pos)
                    (not (at_a_p1))

                    ; #62436: <==negation-removal== 27303 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #27620: origin
                    (at_a_p7)

                    ; #76921: origin
                    (not_at_a_p1)

                    ; #55635: <==negation-removal== 76921 (pos)
                    (not (at_a_p1))

                    ; #76000: <==negation-removal== 27620 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #76921: origin
                    (not_at_a_p1)

                    ; #79121: origin
                    (at_a_p8)

                    ; #55635: <==negation-removal== 76921 (pos)
                    (not (at_a_p1))

                    ; #83359: <==negation-removal== 79121 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #51265: origin
                    (at_a_p9)

                    ; #76921: origin
                    (not_at_a_p1)

                    ; #45322: <==negation-removal== 51265 (pos)
                    (not (not_at_a_p9))

                    ; #55635: <==negation-removal== 76921 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #20924: origin
                    (not_at_a_p2)

                    ; #55635: origin
                    (at_a_p1)

                    ; #38281: <==negation-removal== 20924 (pos)
                    (not (at_a_p2))

                    ; #76921: <==negation-removal== 55635 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (at_a_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #10336: origin
                    (at_a_p10)

                    ; #20924: origin
                    (not_at_a_p2)

                    ; #38281: <==negation-removal== 20924 (pos)
                    (not (at_a_p2))

                    ; #51691: <==negation-removal== 10336 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2))
        :effect (and
                    ; #20924: origin
                    (not_at_a_p2)

                    ; #61273: origin
                    (at_a_p11)

                    ; #38281: <==negation-removal== 20924 (pos)
                    (not (at_a_p2))

                    ; #80979: <==negation-removal== 61273 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2))
        :effect (and
                    ; #20924: origin
                    (not_at_a_p2)

                    ; #68717: origin
                    (at_a_p12)

                    ; #36958: <==negation-removal== 68717 (pos)
                    (not (not_at_a_p12))

                    ; #38281: <==negation-removal== 20924 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #20924: origin
                    (not_at_a_p2)

                    ; #38281: origin
                    (at_a_p2)

                    ; #20924: <==negation-removal== 38281 (pos)
                    (not (not_at_a_p2))

                    ; #38281: <==negation-removal== 20924 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #12398: origin
                    (at_a_p3)

                    ; #20924: origin
                    (not_at_a_p2)

                    ; #13262: <==negation-removal== 12398 (pos)
                    (not (not_at_a_p3))

                    ; #38281: <==negation-removal== 20924 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #20924: origin
                    (not_at_a_p2)

                    ; #88996: origin
                    (at_a_p4)

                    ; #22958: <==negation-removal== 88996 (pos)
                    (not (not_at_a_p4))

                    ; #38281: <==negation-removal== 20924 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #20924: origin
                    (not_at_a_p2)

                    ; #38821: origin
                    (at_a_p5)

                    ; #28208: <==negation-removal== 38821 (pos)
                    (not (not_at_a_p5))

                    ; #38281: <==negation-removal== 20924 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #20924: origin
                    (not_at_a_p2)

                    ; #27303: origin
                    (at_a_p6)

                    ; #38281: <==negation-removal== 20924 (pos)
                    (not (at_a_p2))

                    ; #62436: <==negation-removal== 27303 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #20924: origin
                    (not_at_a_p2)

                    ; #27620: origin
                    (at_a_p7)

                    ; #38281: <==negation-removal== 20924 (pos)
                    (not (at_a_p2))

                    ; #76000: <==negation-removal== 27620 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #20924: origin
                    (not_at_a_p2)

                    ; #79121: origin
                    (at_a_p8)

                    ; #38281: <==negation-removal== 20924 (pos)
                    (not (at_a_p2))

                    ; #83359: <==negation-removal== 79121 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #20924: origin
                    (not_at_a_p2)

                    ; #51265: origin
                    (at_a_p9)

                    ; #38281: <==negation-removal== 20924 (pos)
                    (not (at_a_p2))

                    ; #45322: <==negation-removal== 51265 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #13262: origin
                    (not_at_a_p3)

                    ; #55635: origin
                    (at_a_p1)

                    ; #12398: <==negation-removal== 13262 (pos)
                    (not (at_a_p3))

                    ; #76921: <==negation-removal== 55635 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #10336: origin
                    (at_a_p10)

                    ; #13262: origin
                    (not_at_a_p3)

                    ; #12398: <==negation-removal== 13262 (pos)
                    (not (at_a_p3))

                    ; #51691: <==negation-removal== 10336 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #13262: origin
                    (not_at_a_p3)

                    ; #61273: origin
                    (at_a_p11)

                    ; #12398: <==negation-removal== 13262 (pos)
                    (not (at_a_p3))

                    ; #80979: <==negation-removal== 61273 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #13262: origin
                    (not_at_a_p3)

                    ; #68717: origin
                    (at_a_p12)

                    ; #12398: <==negation-removal== 13262 (pos)
                    (not (at_a_p3))

                    ; #36958: <==negation-removal== 68717 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #13262: origin
                    (not_at_a_p3)

                    ; #38281: origin
                    (at_a_p2)

                    ; #12398: <==negation-removal== 13262 (pos)
                    (not (at_a_p3))

                    ; #20924: <==negation-removal== 38281 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #12398: origin
                    (at_a_p3)

                    ; #13262: origin
                    (not_at_a_p3)

                    ; #12398: <==negation-removal== 13262 (pos)
                    (not (at_a_p3))

                    ; #13262: <==negation-removal== 12398 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #13262: origin
                    (not_at_a_p3)

                    ; #88996: origin
                    (at_a_p4)

                    ; #12398: <==negation-removal== 13262 (pos)
                    (not (at_a_p3))

                    ; #22958: <==negation-removal== 88996 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #13262: origin
                    (not_at_a_p3)

                    ; #38821: origin
                    (at_a_p5)

                    ; #12398: <==negation-removal== 13262 (pos)
                    (not (at_a_p3))

                    ; #28208: <==negation-removal== 38821 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #13262: origin
                    (not_at_a_p3)

                    ; #27303: origin
                    (at_a_p6)

                    ; #12398: <==negation-removal== 13262 (pos)
                    (not (at_a_p3))

                    ; #62436: <==negation-removal== 27303 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #13262: origin
                    (not_at_a_p3)

                    ; #27620: origin
                    (at_a_p7)

                    ; #12398: <==negation-removal== 13262 (pos)
                    (not (at_a_p3))

                    ; #76000: <==negation-removal== 27620 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #13262: origin
                    (not_at_a_p3)

                    ; #79121: origin
                    (at_a_p8)

                    ; #12398: <==negation-removal== 13262 (pos)
                    (not (at_a_p3))

                    ; #83359: <==negation-removal== 79121 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #13262: origin
                    (not_at_a_p3)

                    ; #51265: origin
                    (at_a_p9)

                    ; #12398: <==negation-removal== 13262 (pos)
                    (not (at_a_p3))

                    ; #45322: <==negation-removal== 51265 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #22958: origin
                    (not_at_a_p4)

                    ; #55635: origin
                    (at_a_p1)

                    ; #76921: <==negation-removal== 55635 (pos)
                    (not (not_at_a_p1))

                    ; #88996: <==negation-removal== 22958 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #10336: origin
                    (at_a_p10)

                    ; #22958: origin
                    (not_at_a_p4)

                    ; #51691: <==negation-removal== 10336 (pos)
                    (not (not_at_a_p10))

                    ; #88996: <==negation-removal== 22958 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4))
        :effect (and
                    ; #22958: origin
                    (not_at_a_p4)

                    ; #61273: origin
                    (at_a_p11)

                    ; #80979: <==negation-removal== 61273 (pos)
                    (not (not_at_a_p11))

                    ; #88996: <==negation-removal== 22958 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_a_p4))
        :effect (and
                    ; #22958: origin
                    (not_at_a_p4)

                    ; #68717: origin
                    (at_a_p12)

                    ; #36958: <==negation-removal== 68717 (pos)
                    (not (not_at_a_p12))

                    ; #88996: <==negation-removal== 22958 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #22958: origin
                    (not_at_a_p4)

                    ; #38281: origin
                    (at_a_p2)

                    ; #20924: <==negation-removal== 38281 (pos)
                    (not (not_at_a_p2))

                    ; #88996: <==negation-removal== 22958 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #12398: origin
                    (at_a_p3)

                    ; #22958: origin
                    (not_at_a_p4)

                    ; #13262: <==negation-removal== 12398 (pos)
                    (not (not_at_a_p3))

                    ; #88996: <==negation-removal== 22958 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #22958: origin
                    (not_at_a_p4)

                    ; #88996: origin
                    (at_a_p4)

                    ; #22958: <==negation-removal== 88996 (pos)
                    (not (not_at_a_p4))

                    ; #88996: <==negation-removal== 22958 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #22958: origin
                    (not_at_a_p4)

                    ; #38821: origin
                    (at_a_p5)

                    ; #28208: <==negation-removal== 38821 (pos)
                    (not (not_at_a_p5))

                    ; #88996: <==negation-removal== 22958 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #22958: origin
                    (not_at_a_p4)

                    ; #27303: origin
                    (at_a_p6)

                    ; #62436: <==negation-removal== 27303 (pos)
                    (not (not_at_a_p6))

                    ; #88996: <==negation-removal== 22958 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #22958: origin
                    (not_at_a_p4)

                    ; #27620: origin
                    (at_a_p7)

                    ; #76000: <==negation-removal== 27620 (pos)
                    (not (not_at_a_p7))

                    ; #88996: <==negation-removal== 22958 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #22958: origin
                    (not_at_a_p4)

                    ; #79121: origin
                    (at_a_p8)

                    ; #83359: <==negation-removal== 79121 (pos)
                    (not (not_at_a_p8))

                    ; #88996: <==negation-removal== 22958 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #22958: origin
                    (not_at_a_p4)

                    ; #51265: origin
                    (at_a_p9)

                    ; #45322: <==negation-removal== 51265 (pos)
                    (not (not_at_a_p9))

                    ; #88996: <==negation-removal== 22958 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #28208: origin
                    (not_at_a_p5)

                    ; #55635: origin
                    (at_a_p1)

                    ; #38821: <==negation-removal== 28208 (pos)
                    (not (at_a_p5))

                    ; #76921: <==negation-removal== 55635 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #10336: origin
                    (at_a_p10)

                    ; #28208: origin
                    (not_at_a_p5)

                    ; #38821: <==negation-removal== 28208 (pos)
                    (not (at_a_p5))

                    ; #51691: <==negation-removal== 10336 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #28208: origin
                    (not_at_a_p5)

                    ; #61273: origin
                    (at_a_p11)

                    ; #38821: <==negation-removal== 28208 (pos)
                    (not (at_a_p5))

                    ; #80979: <==negation-removal== 61273 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_a_p5))
        :effect (and
                    ; #28208: origin
                    (not_at_a_p5)

                    ; #68717: origin
                    (at_a_p12)

                    ; #36958: <==negation-removal== 68717 (pos)
                    (not (not_at_a_p12))

                    ; #38821: <==negation-removal== 28208 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #28208: origin
                    (not_at_a_p5)

                    ; #38281: origin
                    (at_a_p2)

                    ; #20924: <==negation-removal== 38281 (pos)
                    (not (not_at_a_p2))

                    ; #38821: <==negation-removal== 28208 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #12398: origin
                    (at_a_p3)

                    ; #28208: origin
                    (not_at_a_p5)

                    ; #13262: <==negation-removal== 12398 (pos)
                    (not (not_at_a_p3))

                    ; #38821: <==negation-removal== 28208 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #28208: origin
                    (not_at_a_p5)

                    ; #88996: origin
                    (at_a_p4)

                    ; #22958: <==negation-removal== 88996 (pos)
                    (not (not_at_a_p4))

                    ; #38821: <==negation-removal== 28208 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #28208: origin
                    (not_at_a_p5)

                    ; #38821: origin
                    (at_a_p5)

                    ; #28208: <==negation-removal== 38821 (pos)
                    (not (not_at_a_p5))

                    ; #38821: <==negation-removal== 28208 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #27303: origin
                    (at_a_p6)

                    ; #28208: origin
                    (not_at_a_p5)

                    ; #38821: <==negation-removal== 28208 (pos)
                    (not (at_a_p5))

                    ; #62436: <==negation-removal== 27303 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #27620: origin
                    (at_a_p7)

                    ; #28208: origin
                    (not_at_a_p5)

                    ; #38821: <==negation-removal== 28208 (pos)
                    (not (at_a_p5))

                    ; #76000: <==negation-removal== 27620 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #28208: origin
                    (not_at_a_p5)

                    ; #79121: origin
                    (at_a_p8)

                    ; #38821: <==negation-removal== 28208 (pos)
                    (not (at_a_p5))

                    ; #83359: <==negation-removal== 79121 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #28208: origin
                    (not_at_a_p5)

                    ; #51265: origin
                    (at_a_p9)

                    ; #38821: <==negation-removal== 28208 (pos)
                    (not (at_a_p5))

                    ; #45322: <==negation-removal== 51265 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #55635: origin
                    (at_a_p1)

                    ; #62436: origin
                    (not_at_a_p6)

                    ; #27303: <==negation-removal== 62436 (pos)
                    (not (at_a_p6))

                    ; #76921: <==negation-removal== 55635 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #10336: origin
                    (at_a_p10)

                    ; #62436: origin
                    (not_at_a_p6)

                    ; #27303: <==negation-removal== 62436 (pos)
                    (not (at_a_p6))

                    ; #51691: <==negation-removal== 10336 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (at_a_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #61273: origin
                    (at_a_p11)

                    ; #62436: origin
                    (not_at_a_p6)

                    ; #27303: <==negation-removal== 62436 (pos)
                    (not (at_a_p6))

                    ; #80979: <==negation-removal== 61273 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #62436: origin
                    (not_at_a_p6)

                    ; #68717: origin
                    (at_a_p12)

                    ; #27303: <==negation-removal== 62436 (pos)
                    (not (at_a_p6))

                    ; #36958: <==negation-removal== 68717 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #38281: origin
                    (at_a_p2)

                    ; #62436: origin
                    (not_at_a_p6)

                    ; #20924: <==negation-removal== 38281 (pos)
                    (not (not_at_a_p2))

                    ; #27303: <==negation-removal== 62436 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #12398: origin
                    (at_a_p3)

                    ; #62436: origin
                    (not_at_a_p6)

                    ; #13262: <==negation-removal== 12398 (pos)
                    (not (not_at_a_p3))

                    ; #27303: <==negation-removal== 62436 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #62436: origin
                    (not_at_a_p6)

                    ; #88996: origin
                    (at_a_p4)

                    ; #22958: <==negation-removal== 88996 (pos)
                    (not (not_at_a_p4))

                    ; #27303: <==negation-removal== 62436 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #38821: origin
                    (at_a_p5)

                    ; #62436: origin
                    (not_at_a_p6)

                    ; #27303: <==negation-removal== 62436 (pos)
                    (not (at_a_p6))

                    ; #28208: <==negation-removal== 38821 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #27303: origin
                    (at_a_p6)

                    ; #62436: origin
                    (not_at_a_p6)

                    ; #27303: <==negation-removal== 62436 (pos)
                    (not (at_a_p6))

                    ; #62436: <==negation-removal== 27303 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #27620: origin
                    (at_a_p7)

                    ; #62436: origin
                    (not_at_a_p6)

                    ; #27303: <==negation-removal== 62436 (pos)
                    (not (at_a_p6))

                    ; #76000: <==negation-removal== 27620 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #62436: origin
                    (not_at_a_p6)

                    ; #79121: origin
                    (at_a_p8)

                    ; #27303: <==negation-removal== 62436 (pos)
                    (not (at_a_p6))

                    ; #83359: <==negation-removal== 79121 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #51265: origin
                    (at_a_p9)

                    ; #62436: origin
                    (not_at_a_p6)

                    ; #27303: <==negation-removal== 62436 (pos)
                    (not (at_a_p6))

                    ; #45322: <==negation-removal== 51265 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #55635: origin
                    (at_a_p1)

                    ; #76000: origin
                    (not_at_a_p7)

                    ; #27620: <==negation-removal== 76000 (pos)
                    (not (at_a_p7))

                    ; #76921: <==negation-removal== 55635 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (at_a_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #10336: origin
                    (at_a_p10)

                    ; #76000: origin
                    (not_at_a_p7)

                    ; #27620: <==negation-removal== 76000 (pos)
                    (not (at_a_p7))

                    ; #51691: <==negation-removal== 10336 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #61273: origin
                    (at_a_p11)

                    ; #76000: origin
                    (not_at_a_p7)

                    ; #27620: <==negation-removal== 76000 (pos)
                    (not (at_a_p7))

                    ; #80979: <==negation-removal== 61273 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (at_a_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #68717: origin
                    (at_a_p12)

                    ; #76000: origin
                    (not_at_a_p7)

                    ; #27620: <==negation-removal== 76000 (pos)
                    (not (at_a_p7))

                    ; #36958: <==negation-removal== 68717 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #38281: origin
                    (at_a_p2)

                    ; #76000: origin
                    (not_at_a_p7)

                    ; #20924: <==negation-removal== 38281 (pos)
                    (not (not_at_a_p2))

                    ; #27620: <==negation-removal== 76000 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #12398: origin
                    (at_a_p3)

                    ; #76000: origin
                    (not_at_a_p7)

                    ; #13262: <==negation-removal== 12398 (pos)
                    (not (not_at_a_p3))

                    ; #27620: <==negation-removal== 76000 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #76000: origin
                    (not_at_a_p7)

                    ; #88996: origin
                    (at_a_p4)

                    ; #22958: <==negation-removal== 88996 (pos)
                    (not (not_at_a_p4))

                    ; #27620: <==negation-removal== 76000 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #38821: origin
                    (at_a_p5)

                    ; #76000: origin
                    (not_at_a_p7)

                    ; #27620: <==negation-removal== 76000 (pos)
                    (not (at_a_p7))

                    ; #28208: <==negation-removal== 38821 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #27303: origin
                    (at_a_p6)

                    ; #76000: origin
                    (not_at_a_p7)

                    ; #27620: <==negation-removal== 76000 (pos)
                    (not (at_a_p7))

                    ; #62436: <==negation-removal== 27303 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #27620: origin
                    (at_a_p7)

                    ; #76000: origin
                    (not_at_a_p7)

                    ; #27620: <==negation-removal== 76000 (pos)
                    (not (at_a_p7))

                    ; #76000: <==negation-removal== 27620 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #76000: origin
                    (not_at_a_p7)

                    ; #79121: origin
                    (at_a_p8)

                    ; #27620: <==negation-removal== 76000 (pos)
                    (not (at_a_p7))

                    ; #83359: <==negation-removal== 79121 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #51265: origin
                    (at_a_p9)

                    ; #76000: origin
                    (not_at_a_p7)

                    ; #27620: <==negation-removal== 76000 (pos)
                    (not (at_a_p7))

                    ; #45322: <==negation-removal== 51265 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #55635: origin
                    (at_a_p1)

                    ; #83359: origin
                    (not_at_a_p8)

                    ; #76921: <==negation-removal== 55635 (pos)
                    (not (not_at_a_p1))

                    ; #79121: <==negation-removal== 83359 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8))
        :effect (and
                    ; #10336: origin
                    (at_a_p10)

                    ; #83359: origin
                    (not_at_a_p8)

                    ; #51691: <==negation-removal== 10336 (pos)
                    (not (not_at_a_p10))

                    ; #79121: <==negation-removal== 83359 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8))
        :effect (and
                    ; #61273: origin
                    (at_a_p11)

                    ; #83359: origin
                    (not_at_a_p8)

                    ; #79121: <==negation-removal== 83359 (pos)
                    (not (at_a_p8))

                    ; #80979: <==negation-removal== 61273 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_a_p8))
        :effect (and
                    ; #68717: origin
                    (at_a_p12)

                    ; #83359: origin
                    (not_at_a_p8)

                    ; #36958: <==negation-removal== 68717 (pos)
                    (not (not_at_a_p12))

                    ; #79121: <==negation-removal== 83359 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #38281: origin
                    (at_a_p2)

                    ; #83359: origin
                    (not_at_a_p8)

                    ; #20924: <==negation-removal== 38281 (pos)
                    (not (not_at_a_p2))

                    ; #79121: <==negation-removal== 83359 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #12398: origin
                    (at_a_p3)

                    ; #83359: origin
                    (not_at_a_p8)

                    ; #13262: <==negation-removal== 12398 (pos)
                    (not (not_at_a_p3))

                    ; #79121: <==negation-removal== 83359 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #83359: origin
                    (not_at_a_p8)

                    ; #88996: origin
                    (at_a_p4)

                    ; #22958: <==negation-removal== 88996 (pos)
                    (not (not_at_a_p4))

                    ; #79121: <==negation-removal== 83359 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #38821: origin
                    (at_a_p5)

                    ; #83359: origin
                    (not_at_a_p8)

                    ; #28208: <==negation-removal== 38821 (pos)
                    (not (not_at_a_p5))

                    ; #79121: <==negation-removal== 83359 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #27303: origin
                    (at_a_p6)

                    ; #83359: origin
                    (not_at_a_p8)

                    ; #62436: <==negation-removal== 27303 (pos)
                    (not (not_at_a_p6))

                    ; #79121: <==negation-removal== 83359 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #27620: origin
                    (at_a_p7)

                    ; #83359: origin
                    (not_at_a_p8)

                    ; #76000: <==negation-removal== 27620 (pos)
                    (not (not_at_a_p7))

                    ; #79121: <==negation-removal== 83359 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #79121: origin
                    (at_a_p8)

                    ; #83359: origin
                    (not_at_a_p8)

                    ; #79121: <==negation-removal== 83359 (pos)
                    (not (at_a_p8))

                    ; #83359: <==negation-removal== 79121 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #51265: origin
                    (at_a_p9)

                    ; #83359: origin
                    (not_at_a_p8)

                    ; #45322: <==negation-removal== 51265 (pos)
                    (not (not_at_a_p9))

                    ; #79121: <==negation-removal== 83359 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #45322: origin
                    (not_at_a_p9)

                    ; #55635: origin
                    (at_a_p1)

                    ; #51265: <==negation-removal== 45322 (pos)
                    (not (at_a_p9))

                    ; #76921: <==negation-removal== 55635 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9))
        :effect (and
                    ; #10336: origin
                    (at_a_p10)

                    ; #45322: origin
                    (not_at_a_p9)

                    ; #51265: <==negation-removal== 45322 (pos)
                    (not (at_a_p9))

                    ; #51691: <==negation-removal== 10336 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p9_p11
        :precondition (and (at_a_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #45322: origin
                    (not_at_a_p9)

                    ; #61273: origin
                    (at_a_p11)

                    ; #51265: <==negation-removal== 45322 (pos)
                    (not (at_a_p9))

                    ; #80979: <==negation-removal== 61273 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #45322: origin
                    (not_at_a_p9)

                    ; #68717: origin
                    (at_a_p12)

                    ; #36958: <==negation-removal== 68717 (pos)
                    (not (not_at_a_p12))

                    ; #51265: <==negation-removal== 45322 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #38281: origin
                    (at_a_p2)

                    ; #45322: origin
                    (not_at_a_p9)

                    ; #20924: <==negation-removal== 38281 (pos)
                    (not (not_at_a_p2))

                    ; #51265: <==negation-removal== 45322 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #12398: origin
                    (at_a_p3)

                    ; #45322: origin
                    (not_at_a_p9)

                    ; #13262: <==negation-removal== 12398 (pos)
                    (not (not_at_a_p3))

                    ; #51265: <==negation-removal== 45322 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #45322: origin
                    (not_at_a_p9)

                    ; #88996: origin
                    (at_a_p4)

                    ; #22958: <==negation-removal== 88996 (pos)
                    (not (not_at_a_p4))

                    ; #51265: <==negation-removal== 45322 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #38821: origin
                    (at_a_p5)

                    ; #45322: origin
                    (not_at_a_p9)

                    ; #28208: <==negation-removal== 38821 (pos)
                    (not (not_at_a_p5))

                    ; #51265: <==negation-removal== 45322 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #27303: origin
                    (at_a_p6)

                    ; #45322: origin
                    (not_at_a_p9)

                    ; #51265: <==negation-removal== 45322 (pos)
                    (not (at_a_p9))

                    ; #62436: <==negation-removal== 27303 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #27620: origin
                    (at_a_p7)

                    ; #45322: origin
                    (not_at_a_p9)

                    ; #51265: <==negation-removal== 45322 (pos)
                    (not (at_a_p9))

                    ; #76000: <==negation-removal== 27620 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #45322: origin
                    (not_at_a_p9)

                    ; #79121: origin
                    (at_a_p8)

                    ; #51265: <==negation-removal== 45322 (pos)
                    (not (at_a_p9))

                    ; #83359: <==negation-removal== 79121 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #45322: origin
                    (not_at_a_p9)

                    ; #51265: origin
                    (at_a_p9)

                    ; #45322: <==negation-removal== 51265 (pos)
                    (not (not_at_a_p9))

                    ; #51265: <==negation-removal== 45322 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #15179: origin
                    (not_at_b_p10)

                    ; #43531: origin
                    (at_b_p1)

                    ; #13596: <==negation-removal== 43531 (pos)
                    (not (not_at_b_p1))

                    ; #44788: <==negation-removal== 15179 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #15179: origin
                    (not_at_b_p10)

                    ; #44788: origin
                    (at_b_p10)

                    ; #15179: <==negation-removal== 44788 (pos)
                    (not (not_at_b_p10))

                    ; #44788: <==negation-removal== 15179 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #15179: origin
                    (not_at_b_p10)

                    ; #74360: origin
                    (at_b_p11)

                    ; #44788: <==negation-removal== 15179 (pos)
                    (not (at_b_p10))

                    ; #61308: <==negation-removal== 74360 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #15179: origin
                    (not_at_b_p10)

                    ; #62747: origin
                    (at_b_p12)

                    ; #44788: <==negation-removal== 15179 (pos)
                    (not (at_b_p10))

                    ; #45081: <==negation-removal== 62747 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #15179: origin
                    (not_at_b_p10)

                    ; #85359: origin
                    (at_b_p2)

                    ; #44788: <==negation-removal== 15179 (pos)
                    (not (at_b_p10))

                    ; #91863: <==negation-removal== 85359 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #14079: origin
                    (at_b_p3)

                    ; #15179: origin
                    (not_at_b_p10)

                    ; #44788: <==negation-removal== 15179 (pos)
                    (not (at_b_p10))

                    ; #64453: <==negation-removal== 14079 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #15179: origin
                    (not_at_b_p10)

                    ; #22379: origin
                    (at_b_p4)

                    ; #44788: <==negation-removal== 15179 (pos)
                    (not (at_b_p10))

                    ; #54176: <==negation-removal== 22379 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #15179: origin
                    (not_at_b_p10)

                    ; #19192: origin
                    (at_b_p5)

                    ; #44788: <==negation-removal== 15179 (pos)
                    (not (at_b_p10))

                    ; #66273: <==negation-removal== 19192 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #15179: origin
                    (not_at_b_p10)

                    ; #19692: origin
                    (at_b_p6)

                    ; #44788: <==negation-removal== 15179 (pos)
                    (not (at_b_p10))

                    ; #58114: <==negation-removal== 19692 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #15179: origin
                    (not_at_b_p10)

                    ; #65461: origin
                    (at_b_p7)

                    ; #44788: <==negation-removal== 15179 (pos)
                    (not (at_b_p10))

                    ; #48042: <==negation-removal== 65461 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #15179: origin
                    (not_at_b_p10)

                    ; #47903: origin
                    (at_b_p8)

                    ; #44788: <==negation-removal== 15179 (pos)
                    (not (at_b_p10))

                    ; #84056: <==negation-removal== 47903 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #15179: origin
                    (not_at_b_p10)

                    ; #62935: origin
                    (at_b_p9)

                    ; #44788: <==negation-removal== 15179 (pos)
                    (not (at_b_p10))

                    ; #60893: <==negation-removal== 62935 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11))
        :effect (and
                    ; #43531: origin
                    (at_b_p1)

                    ; #61308: origin
                    (not_at_b_p11)

                    ; #13596: <==negation-removal== 43531 (pos)
                    (not (not_at_b_p1))

                    ; #74360: <==negation-removal== 61308 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11))
        :effect (and
                    ; #44788: origin
                    (at_b_p10)

                    ; #61308: origin
                    (not_at_b_p11)

                    ; #15179: <==negation-removal== 44788 (pos)
                    (not (not_at_b_p10))

                    ; #74360: <==negation-removal== 61308 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_b_p11))
        :effect (and
                    ; #61308: origin
                    (not_at_b_p11)

                    ; #74360: origin
                    (at_b_p11)

                    ; #61308: <==negation-removal== 74360 (pos)
                    (not (not_at_b_p11))

                    ; #74360: <==negation-removal== 61308 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11))
        :effect (and
                    ; #61308: origin
                    (not_at_b_p11)

                    ; #62747: origin
                    (at_b_p12)

                    ; #45081: <==negation-removal== 62747 (pos)
                    (not (not_at_b_p12))

                    ; #74360: <==negation-removal== 61308 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11))
        :effect (and
                    ; #61308: origin
                    (not_at_b_p11)

                    ; #85359: origin
                    (at_b_p2)

                    ; #74360: <==negation-removal== 61308 (pos)
                    (not (at_b_p11))

                    ; #91863: <==negation-removal== 85359 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11))
        :effect (and
                    ; #14079: origin
                    (at_b_p3)

                    ; #61308: origin
                    (not_at_b_p11)

                    ; #64453: <==negation-removal== 14079 (pos)
                    (not (not_at_b_p3))

                    ; #74360: <==negation-removal== 61308 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11))
        :effect (and
                    ; #22379: origin
                    (at_b_p4)

                    ; #61308: origin
                    (not_at_b_p11)

                    ; #54176: <==negation-removal== 22379 (pos)
                    (not (not_at_b_p4))

                    ; #74360: <==negation-removal== 61308 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11))
        :effect (and
                    ; #19192: origin
                    (at_b_p5)

                    ; #61308: origin
                    (not_at_b_p11)

                    ; #66273: <==negation-removal== 19192 (pos)
                    (not (not_at_b_p5))

                    ; #74360: <==negation-removal== 61308 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11))
        :effect (and
                    ; #19692: origin
                    (at_b_p6)

                    ; #61308: origin
                    (not_at_b_p11)

                    ; #58114: <==negation-removal== 19692 (pos)
                    (not (not_at_b_p6))

                    ; #74360: <==negation-removal== 61308 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11))
        :effect (and
                    ; #61308: origin
                    (not_at_b_p11)

                    ; #65461: origin
                    (at_b_p7)

                    ; #48042: <==negation-removal== 65461 (pos)
                    (not (not_at_b_p7))

                    ; #74360: <==negation-removal== 61308 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11))
        :effect (and
                    ; #47903: origin
                    (at_b_p8)

                    ; #61308: origin
                    (not_at_b_p11)

                    ; #74360: <==negation-removal== 61308 (pos)
                    (not (at_b_p11))

                    ; #84056: <==negation-removal== 47903 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11))
        :effect (and
                    ; #61308: origin
                    (not_at_b_p11)

                    ; #62935: origin
                    (at_b_p9)

                    ; #60893: <==negation-removal== 62935 (pos)
                    (not (not_at_b_p9))

                    ; #74360: <==negation-removal== 61308 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #43531: origin
                    (at_b_p1)

                    ; #45081: origin
                    (not_at_b_p12)

                    ; #13596: <==negation-removal== 43531 (pos)
                    (not (not_at_b_p1))

                    ; #62747: <==negation-removal== 45081 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_b_p12))
        :effect (and
                    ; #44788: origin
                    (at_b_p10)

                    ; #45081: origin
                    (not_at_b_p12)

                    ; #15179: <==negation-removal== 44788 (pos)
                    (not (not_at_b_p10))

                    ; #62747: <==negation-removal== 45081 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #45081: origin
                    (not_at_b_p12)

                    ; #74360: origin
                    (at_b_p11)

                    ; #61308: <==negation-removal== 74360 (pos)
                    (not (not_at_b_p11))

                    ; #62747: <==negation-removal== 45081 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #45081: origin
                    (not_at_b_p12)

                    ; #62747: origin
                    (at_b_p12)

                    ; #45081: <==negation-removal== 62747 (pos)
                    (not (not_at_b_p12))

                    ; #62747: <==negation-removal== 45081 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12))
        :effect (and
                    ; #45081: origin
                    (not_at_b_p12)

                    ; #85359: origin
                    (at_b_p2)

                    ; #62747: <==negation-removal== 45081 (pos)
                    (not (at_b_p12))

                    ; #91863: <==negation-removal== 85359 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #14079: origin
                    (at_b_p3)

                    ; #45081: origin
                    (not_at_b_p12)

                    ; #62747: <==negation-removal== 45081 (pos)
                    (not (at_b_p12))

                    ; #64453: <==negation-removal== 14079 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #22379: origin
                    (at_b_p4)

                    ; #45081: origin
                    (not_at_b_p12)

                    ; #54176: <==negation-removal== 22379 (pos)
                    (not (not_at_b_p4))

                    ; #62747: <==negation-removal== 45081 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #19192: origin
                    (at_b_p5)

                    ; #45081: origin
                    (not_at_b_p12)

                    ; #62747: <==negation-removal== 45081 (pos)
                    (not (at_b_p12))

                    ; #66273: <==negation-removal== 19192 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #19692: origin
                    (at_b_p6)

                    ; #45081: origin
                    (not_at_b_p12)

                    ; #58114: <==negation-removal== 19692 (pos)
                    (not (not_at_b_p6))

                    ; #62747: <==negation-removal== 45081 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #45081: origin
                    (not_at_b_p12)

                    ; #65461: origin
                    (at_b_p7)

                    ; #48042: <==negation-removal== 65461 (pos)
                    (not (not_at_b_p7))

                    ; #62747: <==negation-removal== 45081 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #45081: origin
                    (not_at_b_p12)

                    ; #47903: origin
                    (at_b_p8)

                    ; #62747: <==negation-removal== 45081 (pos)
                    (not (at_b_p12))

                    ; #84056: <==negation-removal== 47903 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12))
        :effect (and
                    ; #45081: origin
                    (not_at_b_p12)

                    ; #62935: origin
                    (at_b_p9)

                    ; #60893: <==negation-removal== 62935 (pos)
                    (not (not_at_b_p9))

                    ; #62747: <==negation-removal== 45081 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #13596: origin
                    (not_at_b_p1)

                    ; #43531: origin
                    (at_b_p1)

                    ; #13596: <==negation-removal== 43531 (pos)
                    (not (not_at_b_p1))

                    ; #43531: <==negation-removal== 13596 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (at_b_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #13596: origin
                    (not_at_b_p1)

                    ; #44788: origin
                    (at_b_p10)

                    ; #15179: <==negation-removal== 44788 (pos)
                    (not (not_at_b_p10))

                    ; #43531: <==negation-removal== 13596 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #13596: origin
                    (not_at_b_p1)

                    ; #74360: origin
                    (at_b_p11)

                    ; #43531: <==negation-removal== 13596 (pos)
                    (not (at_b_p1))

                    ; #61308: <==negation-removal== 74360 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #13596: origin
                    (not_at_b_p1)

                    ; #62747: origin
                    (at_b_p12)

                    ; #43531: <==negation-removal== 13596 (pos)
                    (not (at_b_p1))

                    ; #45081: <==negation-removal== 62747 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #13596: origin
                    (not_at_b_p1)

                    ; #85359: origin
                    (at_b_p2)

                    ; #43531: <==negation-removal== 13596 (pos)
                    (not (at_b_p1))

                    ; #91863: <==negation-removal== 85359 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #13596: origin
                    (not_at_b_p1)

                    ; #14079: origin
                    (at_b_p3)

                    ; #43531: <==negation-removal== 13596 (pos)
                    (not (at_b_p1))

                    ; #64453: <==negation-removal== 14079 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #13596: origin
                    (not_at_b_p1)

                    ; #22379: origin
                    (at_b_p4)

                    ; #43531: <==negation-removal== 13596 (pos)
                    (not (at_b_p1))

                    ; #54176: <==negation-removal== 22379 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #13596: origin
                    (not_at_b_p1)

                    ; #19192: origin
                    (at_b_p5)

                    ; #43531: <==negation-removal== 13596 (pos)
                    (not (at_b_p1))

                    ; #66273: <==negation-removal== 19192 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #13596: origin
                    (not_at_b_p1)

                    ; #19692: origin
                    (at_b_p6)

                    ; #43531: <==negation-removal== 13596 (pos)
                    (not (at_b_p1))

                    ; #58114: <==negation-removal== 19692 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #13596: origin
                    (not_at_b_p1)

                    ; #65461: origin
                    (at_b_p7)

                    ; #43531: <==negation-removal== 13596 (pos)
                    (not (at_b_p1))

                    ; #48042: <==negation-removal== 65461 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #13596: origin
                    (not_at_b_p1)

                    ; #47903: origin
                    (at_b_p8)

                    ; #43531: <==negation-removal== 13596 (pos)
                    (not (at_b_p1))

                    ; #84056: <==negation-removal== 47903 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #13596: origin
                    (not_at_b_p1)

                    ; #62935: origin
                    (at_b_p9)

                    ; #43531: <==negation-removal== 13596 (pos)
                    (not (at_b_p1))

                    ; #60893: <==negation-removal== 62935 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #43531: origin
                    (at_b_p1)

                    ; #91863: origin
                    (not_at_b_p2)

                    ; #13596: <==negation-removal== 43531 (pos)
                    (not (not_at_b_p1))

                    ; #85359: <==negation-removal== 91863 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #44788: origin
                    (at_b_p10)

                    ; #91863: origin
                    (not_at_b_p2)

                    ; #15179: <==negation-removal== 44788 (pos)
                    (not (not_at_b_p10))

                    ; #85359: <==negation-removal== 91863 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2))
        :effect (and
                    ; #74360: origin
                    (at_b_p11)

                    ; #91863: origin
                    (not_at_b_p2)

                    ; #61308: <==negation-removal== 74360 (pos)
                    (not (not_at_b_p11))

                    ; #85359: <==negation-removal== 91863 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2))
        :effect (and
                    ; #62747: origin
                    (at_b_p12)

                    ; #91863: origin
                    (not_at_b_p2)

                    ; #45081: <==negation-removal== 62747 (pos)
                    (not (not_at_b_p12))

                    ; #85359: <==negation-removal== 91863 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #85359: origin
                    (at_b_p2)

                    ; #91863: origin
                    (not_at_b_p2)

                    ; #85359: <==negation-removal== 91863 (pos)
                    (not (at_b_p2))

                    ; #91863: <==negation-removal== 85359 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #14079: origin
                    (at_b_p3)

                    ; #91863: origin
                    (not_at_b_p2)

                    ; #64453: <==negation-removal== 14079 (pos)
                    (not (not_at_b_p3))

                    ; #85359: <==negation-removal== 91863 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #22379: origin
                    (at_b_p4)

                    ; #91863: origin
                    (not_at_b_p2)

                    ; #54176: <==negation-removal== 22379 (pos)
                    (not (not_at_b_p4))

                    ; #85359: <==negation-removal== 91863 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #19192: origin
                    (at_b_p5)

                    ; #91863: origin
                    (not_at_b_p2)

                    ; #66273: <==negation-removal== 19192 (pos)
                    (not (not_at_b_p5))

                    ; #85359: <==negation-removal== 91863 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #19692: origin
                    (at_b_p6)

                    ; #91863: origin
                    (not_at_b_p2)

                    ; #58114: <==negation-removal== 19692 (pos)
                    (not (not_at_b_p6))

                    ; #85359: <==negation-removal== 91863 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #65461: origin
                    (at_b_p7)

                    ; #91863: origin
                    (not_at_b_p2)

                    ; #48042: <==negation-removal== 65461 (pos)
                    (not (not_at_b_p7))

                    ; #85359: <==negation-removal== 91863 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #47903: origin
                    (at_b_p8)

                    ; #91863: origin
                    (not_at_b_p2)

                    ; #84056: <==negation-removal== 47903 (pos)
                    (not (not_at_b_p8))

                    ; #85359: <==negation-removal== 91863 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #62935: origin
                    (at_b_p9)

                    ; #91863: origin
                    (not_at_b_p2)

                    ; #60893: <==negation-removal== 62935 (pos)
                    (not (not_at_b_p9))

                    ; #85359: <==negation-removal== 91863 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #43531: origin
                    (at_b_p1)

                    ; #64453: origin
                    (not_at_b_p3)

                    ; #13596: <==negation-removal== 43531 (pos)
                    (not (not_at_b_p1))

                    ; #14079: <==negation-removal== 64453 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3))
        :effect (and
                    ; #44788: origin
                    (at_b_p10)

                    ; #64453: origin
                    (not_at_b_p3)

                    ; #14079: <==negation-removal== 64453 (pos)
                    (not (at_b_p3))

                    ; #15179: <==negation-removal== 44788 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3))
        :effect (and
                    ; #64453: origin
                    (not_at_b_p3)

                    ; #74360: origin
                    (at_b_p11)

                    ; #14079: <==negation-removal== 64453 (pos)
                    (not (at_b_p3))

                    ; #61308: <==negation-removal== 74360 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3))
        :effect (and
                    ; #62747: origin
                    (at_b_p12)

                    ; #64453: origin
                    (not_at_b_p3)

                    ; #14079: <==negation-removal== 64453 (pos)
                    (not (at_b_p3))

                    ; #45081: <==negation-removal== 62747 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #64453: origin
                    (not_at_b_p3)

                    ; #85359: origin
                    (at_b_p2)

                    ; #14079: <==negation-removal== 64453 (pos)
                    (not (at_b_p3))

                    ; #91863: <==negation-removal== 85359 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #14079: origin
                    (at_b_p3)

                    ; #64453: origin
                    (not_at_b_p3)

                    ; #14079: <==negation-removal== 64453 (pos)
                    (not (at_b_p3))

                    ; #64453: <==negation-removal== 14079 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #22379: origin
                    (at_b_p4)

                    ; #64453: origin
                    (not_at_b_p3)

                    ; #14079: <==negation-removal== 64453 (pos)
                    (not (at_b_p3))

                    ; #54176: <==negation-removal== 22379 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #19192: origin
                    (at_b_p5)

                    ; #64453: origin
                    (not_at_b_p3)

                    ; #14079: <==negation-removal== 64453 (pos)
                    (not (at_b_p3))

                    ; #66273: <==negation-removal== 19192 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #19692: origin
                    (at_b_p6)

                    ; #64453: origin
                    (not_at_b_p3)

                    ; #14079: <==negation-removal== 64453 (pos)
                    (not (at_b_p3))

                    ; #58114: <==negation-removal== 19692 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #64453: origin
                    (not_at_b_p3)

                    ; #65461: origin
                    (at_b_p7)

                    ; #14079: <==negation-removal== 64453 (pos)
                    (not (at_b_p3))

                    ; #48042: <==negation-removal== 65461 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #47903: origin
                    (at_b_p8)

                    ; #64453: origin
                    (not_at_b_p3)

                    ; #14079: <==negation-removal== 64453 (pos)
                    (not (at_b_p3))

                    ; #84056: <==negation-removal== 47903 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #62935: origin
                    (at_b_p9)

                    ; #64453: origin
                    (not_at_b_p3)

                    ; #14079: <==negation-removal== 64453 (pos)
                    (not (at_b_p3))

                    ; #60893: <==negation-removal== 62935 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #43531: origin
                    (at_b_p1)

                    ; #54176: origin
                    (not_at_b_p4)

                    ; #13596: <==negation-removal== 43531 (pos)
                    (not (not_at_b_p1))

                    ; #22379: <==negation-removal== 54176 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #44788: origin
                    (at_b_p10)

                    ; #54176: origin
                    (not_at_b_p4)

                    ; #15179: <==negation-removal== 44788 (pos)
                    (not (not_at_b_p10))

                    ; #22379: <==negation-removal== 54176 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (at_b_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #54176: origin
                    (not_at_b_p4)

                    ; #74360: origin
                    (at_b_p11)

                    ; #22379: <==negation-removal== 54176 (pos)
                    (not (at_b_p4))

                    ; #61308: <==negation-removal== 74360 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #54176: origin
                    (not_at_b_p4)

                    ; #62747: origin
                    (at_b_p12)

                    ; #22379: <==negation-removal== 54176 (pos)
                    (not (at_b_p4))

                    ; #45081: <==negation-removal== 62747 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #54176: origin
                    (not_at_b_p4)

                    ; #85359: origin
                    (at_b_p2)

                    ; #22379: <==negation-removal== 54176 (pos)
                    (not (at_b_p4))

                    ; #91863: <==negation-removal== 85359 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #14079: origin
                    (at_b_p3)

                    ; #54176: origin
                    (not_at_b_p4)

                    ; #22379: <==negation-removal== 54176 (pos)
                    (not (at_b_p4))

                    ; #64453: <==negation-removal== 14079 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #22379: origin
                    (at_b_p4)

                    ; #54176: origin
                    (not_at_b_p4)

                    ; #22379: <==negation-removal== 54176 (pos)
                    (not (at_b_p4))

                    ; #54176: <==negation-removal== 22379 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #19192: origin
                    (at_b_p5)

                    ; #54176: origin
                    (not_at_b_p4)

                    ; #22379: <==negation-removal== 54176 (pos)
                    (not (at_b_p4))

                    ; #66273: <==negation-removal== 19192 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #19692: origin
                    (at_b_p6)

                    ; #54176: origin
                    (not_at_b_p4)

                    ; #22379: <==negation-removal== 54176 (pos)
                    (not (at_b_p4))

                    ; #58114: <==negation-removal== 19692 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #54176: origin
                    (not_at_b_p4)

                    ; #65461: origin
                    (at_b_p7)

                    ; #22379: <==negation-removal== 54176 (pos)
                    (not (at_b_p4))

                    ; #48042: <==negation-removal== 65461 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #47903: origin
                    (at_b_p8)

                    ; #54176: origin
                    (not_at_b_p4)

                    ; #22379: <==negation-removal== 54176 (pos)
                    (not (at_b_p4))

                    ; #84056: <==negation-removal== 47903 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #54176: origin
                    (not_at_b_p4)

                    ; #62935: origin
                    (at_b_p9)

                    ; #22379: <==negation-removal== 54176 (pos)
                    (not (at_b_p4))

                    ; #60893: <==negation-removal== 62935 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #43531: origin
                    (at_b_p1)

                    ; #66273: origin
                    (not_at_b_p5)

                    ; #13596: <==negation-removal== 43531 (pos)
                    (not (not_at_b_p1))

                    ; #19192: <==negation-removal== 66273 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5))
        :effect (and
                    ; #44788: origin
                    (at_b_p10)

                    ; #66273: origin
                    (not_at_b_p5)

                    ; #15179: <==negation-removal== 44788 (pos)
                    (not (not_at_b_p10))

                    ; #19192: <==negation-removal== 66273 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #66273: origin
                    (not_at_b_p5)

                    ; #74360: origin
                    (at_b_p11)

                    ; #19192: <==negation-removal== 66273 (pos)
                    (not (at_b_p5))

                    ; #61308: <==negation-removal== 74360 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5))
        :effect (and
                    ; #62747: origin
                    (at_b_p12)

                    ; #66273: origin
                    (not_at_b_p5)

                    ; #19192: <==negation-removal== 66273 (pos)
                    (not (at_b_p5))

                    ; #45081: <==negation-removal== 62747 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #66273: origin
                    (not_at_b_p5)

                    ; #85359: origin
                    (at_b_p2)

                    ; #19192: <==negation-removal== 66273 (pos)
                    (not (at_b_p5))

                    ; #91863: <==negation-removal== 85359 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #14079: origin
                    (at_b_p3)

                    ; #66273: origin
                    (not_at_b_p5)

                    ; #19192: <==negation-removal== 66273 (pos)
                    (not (at_b_p5))

                    ; #64453: <==negation-removal== 14079 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #22379: origin
                    (at_b_p4)

                    ; #66273: origin
                    (not_at_b_p5)

                    ; #19192: <==negation-removal== 66273 (pos)
                    (not (at_b_p5))

                    ; #54176: <==negation-removal== 22379 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #19192: origin
                    (at_b_p5)

                    ; #66273: origin
                    (not_at_b_p5)

                    ; #19192: <==negation-removal== 66273 (pos)
                    (not (at_b_p5))

                    ; #66273: <==negation-removal== 19192 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #19692: origin
                    (at_b_p6)

                    ; #66273: origin
                    (not_at_b_p5)

                    ; #19192: <==negation-removal== 66273 (pos)
                    (not (at_b_p5))

                    ; #58114: <==negation-removal== 19692 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #65461: origin
                    (at_b_p7)

                    ; #66273: origin
                    (not_at_b_p5)

                    ; #19192: <==negation-removal== 66273 (pos)
                    (not (at_b_p5))

                    ; #48042: <==negation-removal== 65461 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #47903: origin
                    (at_b_p8)

                    ; #66273: origin
                    (not_at_b_p5)

                    ; #19192: <==negation-removal== 66273 (pos)
                    (not (at_b_p5))

                    ; #84056: <==negation-removal== 47903 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #62935: origin
                    (at_b_p9)

                    ; #66273: origin
                    (not_at_b_p5)

                    ; #19192: <==negation-removal== 66273 (pos)
                    (not (at_b_p5))

                    ; #60893: <==negation-removal== 62935 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #43531: origin
                    (at_b_p1)

                    ; #58114: origin
                    (not_at_b_p6)

                    ; #13596: <==negation-removal== 43531 (pos)
                    (not (not_at_b_p1))

                    ; #19692: <==negation-removal== 58114 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (at_b_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #44788: origin
                    (at_b_p10)

                    ; #58114: origin
                    (not_at_b_p6)

                    ; #15179: <==negation-removal== 44788 (pos)
                    (not (not_at_b_p10))

                    ; #19692: <==negation-removal== 58114 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6))
        :effect (and
                    ; #58114: origin
                    (not_at_b_p6)

                    ; #74360: origin
                    (at_b_p11)

                    ; #19692: <==negation-removal== 58114 (pos)
                    (not (at_b_p6))

                    ; #61308: <==negation-removal== 74360 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6))
        :effect (and
                    ; #58114: origin
                    (not_at_b_p6)

                    ; #62747: origin
                    (at_b_p12)

                    ; #19692: <==negation-removal== 58114 (pos)
                    (not (at_b_p6))

                    ; #45081: <==negation-removal== 62747 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #58114: origin
                    (not_at_b_p6)

                    ; #85359: origin
                    (at_b_p2)

                    ; #19692: <==negation-removal== 58114 (pos)
                    (not (at_b_p6))

                    ; #91863: <==negation-removal== 85359 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #14079: origin
                    (at_b_p3)

                    ; #58114: origin
                    (not_at_b_p6)

                    ; #19692: <==negation-removal== 58114 (pos)
                    (not (at_b_p6))

                    ; #64453: <==negation-removal== 14079 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #22379: origin
                    (at_b_p4)

                    ; #58114: origin
                    (not_at_b_p6)

                    ; #19692: <==negation-removal== 58114 (pos)
                    (not (at_b_p6))

                    ; #54176: <==negation-removal== 22379 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #19192: origin
                    (at_b_p5)

                    ; #58114: origin
                    (not_at_b_p6)

                    ; #19692: <==negation-removal== 58114 (pos)
                    (not (at_b_p6))

                    ; #66273: <==negation-removal== 19192 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #19692: origin
                    (at_b_p6)

                    ; #58114: origin
                    (not_at_b_p6)

                    ; #19692: <==negation-removal== 58114 (pos)
                    (not (at_b_p6))

                    ; #58114: <==negation-removal== 19692 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #58114: origin
                    (not_at_b_p6)

                    ; #65461: origin
                    (at_b_p7)

                    ; #19692: <==negation-removal== 58114 (pos)
                    (not (at_b_p6))

                    ; #48042: <==negation-removal== 65461 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #47903: origin
                    (at_b_p8)

                    ; #58114: origin
                    (not_at_b_p6)

                    ; #19692: <==negation-removal== 58114 (pos)
                    (not (at_b_p6))

                    ; #84056: <==negation-removal== 47903 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #58114: origin
                    (not_at_b_p6)

                    ; #62935: origin
                    (at_b_p9)

                    ; #19692: <==negation-removal== 58114 (pos)
                    (not (at_b_p6))

                    ; #60893: <==negation-removal== 62935 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #43531: origin
                    (at_b_p1)

                    ; #48042: origin
                    (not_at_b_p7)

                    ; #13596: <==negation-removal== 43531 (pos)
                    (not (not_at_b_p1))

                    ; #65461: <==negation-removal== 48042 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7))
        :effect (and
                    ; #44788: origin
                    (at_b_p10)

                    ; #48042: origin
                    (not_at_b_p7)

                    ; #15179: <==negation-removal== 44788 (pos)
                    (not (not_at_b_p10))

                    ; #65461: <==negation-removal== 48042 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_b_p7))
        :effect (and
                    ; #48042: origin
                    (not_at_b_p7)

                    ; #74360: origin
                    (at_b_p11)

                    ; #61308: <==negation-removal== 74360 (pos)
                    (not (not_at_b_p11))

                    ; #65461: <==negation-removal== 48042 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7))
        :effect (and
                    ; #48042: origin
                    (not_at_b_p7)

                    ; #62747: origin
                    (at_b_p12)

                    ; #45081: <==negation-removal== 62747 (pos)
                    (not (not_at_b_p12))

                    ; #65461: <==negation-removal== 48042 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #48042: origin
                    (not_at_b_p7)

                    ; #85359: origin
                    (at_b_p2)

                    ; #65461: <==negation-removal== 48042 (pos)
                    (not (at_b_p7))

                    ; #91863: <==negation-removal== 85359 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #14079: origin
                    (at_b_p3)

                    ; #48042: origin
                    (not_at_b_p7)

                    ; #64453: <==negation-removal== 14079 (pos)
                    (not (not_at_b_p3))

                    ; #65461: <==negation-removal== 48042 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #22379: origin
                    (at_b_p4)

                    ; #48042: origin
                    (not_at_b_p7)

                    ; #54176: <==negation-removal== 22379 (pos)
                    (not (not_at_b_p4))

                    ; #65461: <==negation-removal== 48042 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #19192: origin
                    (at_b_p5)

                    ; #48042: origin
                    (not_at_b_p7)

                    ; #65461: <==negation-removal== 48042 (pos)
                    (not (at_b_p7))

                    ; #66273: <==negation-removal== 19192 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #19692: origin
                    (at_b_p6)

                    ; #48042: origin
                    (not_at_b_p7)

                    ; #58114: <==negation-removal== 19692 (pos)
                    (not (not_at_b_p6))

                    ; #65461: <==negation-removal== 48042 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #48042: origin
                    (not_at_b_p7)

                    ; #65461: origin
                    (at_b_p7)

                    ; #48042: <==negation-removal== 65461 (pos)
                    (not (not_at_b_p7))

                    ; #65461: <==negation-removal== 48042 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #47903: origin
                    (at_b_p8)

                    ; #48042: origin
                    (not_at_b_p7)

                    ; #65461: <==negation-removal== 48042 (pos)
                    (not (at_b_p7))

                    ; #84056: <==negation-removal== 47903 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #48042: origin
                    (not_at_b_p7)

                    ; #62935: origin
                    (at_b_p9)

                    ; #60893: <==negation-removal== 62935 (pos)
                    (not (not_at_b_p9))

                    ; #65461: <==negation-removal== 48042 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #43531: origin
                    (at_b_p1)

                    ; #84056: origin
                    (not_at_b_p8)

                    ; #13596: <==negation-removal== 43531 (pos)
                    (not (not_at_b_p1))

                    ; #47903: <==negation-removal== 84056 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #44788: origin
                    (at_b_p10)

                    ; #84056: origin
                    (not_at_b_p8)

                    ; #15179: <==negation-removal== 44788 (pos)
                    (not (not_at_b_p10))

                    ; #47903: <==negation-removal== 84056 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8))
        :effect (and
                    ; #74360: origin
                    (at_b_p11)

                    ; #84056: origin
                    (not_at_b_p8)

                    ; #47903: <==negation-removal== 84056 (pos)
                    (not (at_b_p8))

                    ; #61308: <==negation-removal== 74360 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #62747: origin
                    (at_b_p12)

                    ; #84056: origin
                    (not_at_b_p8)

                    ; #45081: <==negation-removal== 62747 (pos)
                    (not (not_at_b_p12))

                    ; #47903: <==negation-removal== 84056 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #84056: origin
                    (not_at_b_p8)

                    ; #85359: origin
                    (at_b_p2)

                    ; #47903: <==negation-removal== 84056 (pos)
                    (not (at_b_p8))

                    ; #91863: <==negation-removal== 85359 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #14079: origin
                    (at_b_p3)

                    ; #84056: origin
                    (not_at_b_p8)

                    ; #47903: <==negation-removal== 84056 (pos)
                    (not (at_b_p8))

                    ; #64453: <==negation-removal== 14079 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #22379: origin
                    (at_b_p4)

                    ; #84056: origin
                    (not_at_b_p8)

                    ; #47903: <==negation-removal== 84056 (pos)
                    (not (at_b_p8))

                    ; #54176: <==negation-removal== 22379 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #19192: origin
                    (at_b_p5)

                    ; #84056: origin
                    (not_at_b_p8)

                    ; #47903: <==negation-removal== 84056 (pos)
                    (not (at_b_p8))

                    ; #66273: <==negation-removal== 19192 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #19692: origin
                    (at_b_p6)

                    ; #84056: origin
                    (not_at_b_p8)

                    ; #47903: <==negation-removal== 84056 (pos)
                    (not (at_b_p8))

                    ; #58114: <==negation-removal== 19692 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #65461: origin
                    (at_b_p7)

                    ; #84056: origin
                    (not_at_b_p8)

                    ; #47903: <==negation-removal== 84056 (pos)
                    (not (at_b_p8))

                    ; #48042: <==negation-removal== 65461 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #47903: origin
                    (at_b_p8)

                    ; #84056: origin
                    (not_at_b_p8)

                    ; #47903: <==negation-removal== 84056 (pos)
                    (not (at_b_p8))

                    ; #84056: <==negation-removal== 47903 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #62935: origin
                    (at_b_p9)

                    ; #84056: origin
                    (not_at_b_p8)

                    ; #47903: <==negation-removal== 84056 (pos)
                    (not (at_b_p8))

                    ; #60893: <==negation-removal== 62935 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #43531: origin
                    (at_b_p1)

                    ; #60893: origin
                    (not_at_b_p9)

                    ; #13596: <==negation-removal== 43531 (pos)
                    (not (not_at_b_p1))

                    ; #62935: <==negation-removal== 60893 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9))
        :effect (and
                    ; #44788: origin
                    (at_b_p10)

                    ; #60893: origin
                    (not_at_b_p9)

                    ; #15179: <==negation-removal== 44788 (pos)
                    (not (not_at_b_p10))

                    ; #62935: <==negation-removal== 60893 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (at_b_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #60893: origin
                    (not_at_b_p9)

                    ; #74360: origin
                    (at_b_p11)

                    ; #61308: <==negation-removal== 74360 (pos)
                    (not (not_at_b_p11))

                    ; #62935: <==negation-removal== 60893 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #60893: origin
                    (not_at_b_p9)

                    ; #62747: origin
                    (at_b_p12)

                    ; #45081: <==negation-removal== 62747 (pos)
                    (not (not_at_b_p12))

                    ; #62935: <==negation-removal== 60893 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #60893: origin
                    (not_at_b_p9)

                    ; #85359: origin
                    (at_b_p2)

                    ; #62935: <==negation-removal== 60893 (pos)
                    (not (at_b_p9))

                    ; #91863: <==negation-removal== 85359 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #14079: origin
                    (at_b_p3)

                    ; #60893: origin
                    (not_at_b_p9)

                    ; #62935: <==negation-removal== 60893 (pos)
                    (not (at_b_p9))

                    ; #64453: <==negation-removal== 14079 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #22379: origin
                    (at_b_p4)

                    ; #60893: origin
                    (not_at_b_p9)

                    ; #54176: <==negation-removal== 22379 (pos)
                    (not (not_at_b_p4))

                    ; #62935: <==negation-removal== 60893 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #19192: origin
                    (at_b_p5)

                    ; #60893: origin
                    (not_at_b_p9)

                    ; #62935: <==negation-removal== 60893 (pos)
                    (not (at_b_p9))

                    ; #66273: <==negation-removal== 19192 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #19692: origin
                    (at_b_p6)

                    ; #60893: origin
                    (not_at_b_p9)

                    ; #58114: <==negation-removal== 19692 (pos)
                    (not (not_at_b_p6))

                    ; #62935: <==negation-removal== 60893 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #60893: origin
                    (not_at_b_p9)

                    ; #65461: origin
                    (at_b_p7)

                    ; #48042: <==negation-removal== 65461 (pos)
                    (not (not_at_b_p7))

                    ; #62935: <==negation-removal== 60893 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #47903: origin
                    (at_b_p8)

                    ; #60893: origin
                    (not_at_b_p9)

                    ; #62935: <==negation-removal== 60893 (pos)
                    (not (at_b_p9))

                    ; #84056: <==negation-removal== 47903 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #60893: origin
                    (not_at_b_p9)

                    ; #62935: origin
                    (at_b_p9)

                    ; #60893: <==negation-removal== 62935 (pos)
                    (not (not_at_b_p9))

                    ; #62935: <==negation-removal== 60893 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #34006: origin
                    (not_at_c_p10)

                    ; #40974: origin
                    (at_c_p1)

                    ; #62201: <==negation-removal== 34006 (pos)
                    (not (at_c_p10))

                    ; #74865: <==negation-removal== 40974 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #34006: origin
                    (not_at_c_p10)

                    ; #62201: origin
                    (at_c_p10)

                    ; #34006: <==negation-removal== 62201 (pos)
                    (not (not_at_c_p10))

                    ; #62201: <==negation-removal== 34006 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #34006: origin
                    (not_at_c_p10)

                    ; #56285: origin
                    (at_c_p11)

                    ; #20272: <==negation-removal== 56285 (pos)
                    (not (not_at_c_p11))

                    ; #62201: <==negation-removal== 34006 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #34006: origin
                    (not_at_c_p10)

                    ; #54821: origin
                    (at_c_p12)

                    ; #14906: <==negation-removal== 54821 (pos)
                    (not (not_at_c_p12))

                    ; #62201: <==negation-removal== 34006 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #34006: origin
                    (not_at_c_p10)

                    ; #53811: origin
                    (at_c_p2)

                    ; #58008: <==negation-removal== 53811 (pos)
                    (not (not_at_c_p2))

                    ; #62201: <==negation-removal== 34006 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #34006: origin
                    (not_at_c_p10)

                    ; #57637: origin
                    (at_c_p3)

                    ; #62201: <==negation-removal== 34006 (pos)
                    (not (at_c_p10))

                    ; #75737: <==negation-removal== 57637 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #34006: origin
                    (not_at_c_p10)

                    ; #79772: origin
                    (at_c_p4)

                    ; #62201: <==negation-removal== 34006 (pos)
                    (not (at_c_p10))

                    ; #66454: <==negation-removal== 79772 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #34006: origin
                    (not_at_c_p10)

                    ; #42531: origin
                    (at_c_p5)

                    ; #62201: <==negation-removal== 34006 (pos)
                    (not (at_c_p10))

                    ; #70981: <==negation-removal== 42531 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #34006: origin
                    (not_at_c_p10)

                    ; #87321: origin
                    (at_c_p6)

                    ; #62201: <==negation-removal== 34006 (pos)
                    (not (at_c_p10))

                    ; #73869: <==negation-removal== 87321 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #34006: origin
                    (not_at_c_p10)

                    ; #46040: origin
                    (at_c_p7)

                    ; #49560: <==negation-removal== 46040 (pos)
                    (not (not_at_c_p7))

                    ; #62201: <==negation-removal== 34006 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #34006: origin
                    (not_at_c_p10)

                    ; #38283: origin
                    (at_c_p8)

                    ; #34852: <==negation-removal== 38283 (pos)
                    (not (not_at_c_p8))

                    ; #62201: <==negation-removal== 34006 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #34006: origin
                    (not_at_c_p10)

                    ; #64978: origin
                    (at_c_p9)

                    ; #53512: <==negation-removal== 64978 (pos)
                    (not (not_at_c_p9))

                    ; #62201: <==negation-removal== 34006 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (at_c_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #20272: origin
                    (not_at_c_p11)

                    ; #40974: origin
                    (at_c_p1)

                    ; #56285: <==negation-removal== 20272 (pos)
                    (not (at_c_p11))

                    ; #74865: <==negation-removal== 40974 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #20272: origin
                    (not_at_c_p11)

                    ; #62201: origin
                    (at_c_p10)

                    ; #34006: <==negation-removal== 62201 (pos)
                    (not (not_at_c_p10))

                    ; #56285: <==negation-removal== 20272 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #20272: origin
                    (not_at_c_p11)

                    ; #56285: origin
                    (at_c_p11)

                    ; #20272: <==negation-removal== 56285 (pos)
                    (not (not_at_c_p11))

                    ; #56285: <==negation-removal== 20272 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #20272: origin
                    (not_at_c_p11)

                    ; #54821: origin
                    (at_c_p12)

                    ; #14906: <==negation-removal== 54821 (pos)
                    (not (not_at_c_p12))

                    ; #56285: <==negation-removal== 20272 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (at_c_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #20272: origin
                    (not_at_c_p11)

                    ; #53811: origin
                    (at_c_p2)

                    ; #56285: <==negation-removal== 20272 (pos)
                    (not (at_c_p11))

                    ; #58008: <==negation-removal== 53811 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #20272: origin
                    (not_at_c_p11)

                    ; #57637: origin
                    (at_c_p3)

                    ; #56285: <==negation-removal== 20272 (pos)
                    (not (at_c_p11))

                    ; #75737: <==negation-removal== 57637 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #20272: origin
                    (not_at_c_p11)

                    ; #79772: origin
                    (at_c_p4)

                    ; #56285: <==negation-removal== 20272 (pos)
                    (not (at_c_p11))

                    ; #66454: <==negation-removal== 79772 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #20272: origin
                    (not_at_c_p11)

                    ; #42531: origin
                    (at_c_p5)

                    ; #56285: <==negation-removal== 20272 (pos)
                    (not (at_c_p11))

                    ; #70981: <==negation-removal== 42531 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #20272: origin
                    (not_at_c_p11)

                    ; #87321: origin
                    (at_c_p6)

                    ; #56285: <==negation-removal== 20272 (pos)
                    (not (at_c_p11))

                    ; #73869: <==negation-removal== 87321 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #20272: origin
                    (not_at_c_p11)

                    ; #46040: origin
                    (at_c_p7)

                    ; #49560: <==negation-removal== 46040 (pos)
                    (not (not_at_c_p7))

                    ; #56285: <==negation-removal== 20272 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #20272: origin
                    (not_at_c_p11)

                    ; #38283: origin
                    (at_c_p8)

                    ; #34852: <==negation-removal== 38283 (pos)
                    (not (not_at_c_p8))

                    ; #56285: <==negation-removal== 20272 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #20272: origin
                    (not_at_c_p11)

                    ; #64978: origin
                    (at_c_p9)

                    ; #53512: <==negation-removal== 64978 (pos)
                    (not (not_at_c_p9))

                    ; #56285: <==negation-removal== 20272 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #14906: origin
                    (not_at_c_p12)

                    ; #40974: origin
                    (at_c_p1)

                    ; #54821: <==negation-removal== 14906 (pos)
                    (not (at_c_p12))

                    ; #74865: <==negation-removal== 40974 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12))
        :effect (and
                    ; #14906: origin
                    (not_at_c_p12)

                    ; #62201: origin
                    (at_c_p10)

                    ; #34006: <==negation-removal== 62201 (pos)
                    (not (not_at_c_p10))

                    ; #54821: <==negation-removal== 14906 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #14906: origin
                    (not_at_c_p12)

                    ; #56285: origin
                    (at_c_p11)

                    ; #20272: <==negation-removal== 56285 (pos)
                    (not (not_at_c_p11))

                    ; #54821: <==negation-removal== 14906 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #14906: origin
                    (not_at_c_p12)

                    ; #54821: origin
                    (at_c_p12)

                    ; #14906: <==negation-removal== 54821 (pos)
                    (not (not_at_c_p12))

                    ; #54821: <==negation-removal== 14906 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12))
        :effect (and
                    ; #14906: origin
                    (not_at_c_p12)

                    ; #53811: origin
                    (at_c_p2)

                    ; #54821: <==negation-removal== 14906 (pos)
                    (not (at_c_p12))

                    ; #58008: <==negation-removal== 53811 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (at_c_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #14906: origin
                    (not_at_c_p12)

                    ; #57637: origin
                    (at_c_p3)

                    ; #54821: <==negation-removal== 14906 (pos)
                    (not (at_c_p12))

                    ; #75737: <==negation-removal== 57637 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #14906: origin
                    (not_at_c_p12)

                    ; #79772: origin
                    (at_c_p4)

                    ; #54821: <==negation-removal== 14906 (pos)
                    (not (at_c_p12))

                    ; #66454: <==negation-removal== 79772 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #14906: origin
                    (not_at_c_p12)

                    ; #42531: origin
                    (at_c_p5)

                    ; #54821: <==negation-removal== 14906 (pos)
                    (not (at_c_p12))

                    ; #70981: <==negation-removal== 42531 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (at_c_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #14906: origin
                    (not_at_c_p12)

                    ; #87321: origin
                    (at_c_p6)

                    ; #54821: <==negation-removal== 14906 (pos)
                    (not (at_c_p12))

                    ; #73869: <==negation-removal== 87321 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #14906: origin
                    (not_at_c_p12)

                    ; #46040: origin
                    (at_c_p7)

                    ; #49560: <==negation-removal== 46040 (pos)
                    (not (not_at_c_p7))

                    ; #54821: <==negation-removal== 14906 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #14906: origin
                    (not_at_c_p12)

                    ; #38283: origin
                    (at_c_p8)

                    ; #34852: <==negation-removal== 38283 (pos)
                    (not (not_at_c_p8))

                    ; #54821: <==negation-removal== 14906 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #14906: origin
                    (not_at_c_p12)

                    ; #64978: origin
                    (at_c_p9)

                    ; #53512: <==negation-removal== 64978 (pos)
                    (not (not_at_c_p9))

                    ; #54821: <==negation-removal== 14906 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #40974: origin
                    (at_c_p1)

                    ; #74865: origin
                    (not_at_c_p1)

                    ; #40974: <==negation-removal== 74865 (pos)
                    (not (at_c_p1))

                    ; #74865: <==negation-removal== 40974 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #62201: origin
                    (at_c_p10)

                    ; #74865: origin
                    (not_at_c_p1)

                    ; #34006: <==negation-removal== 62201 (pos)
                    (not (not_at_c_p10))

                    ; #40974: <==negation-removal== 74865 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #56285: origin
                    (at_c_p11)

                    ; #74865: origin
                    (not_at_c_p1)

                    ; #20272: <==negation-removal== 56285 (pos)
                    (not (not_at_c_p11))

                    ; #40974: <==negation-removal== 74865 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #54821: origin
                    (at_c_p12)

                    ; #74865: origin
                    (not_at_c_p1)

                    ; #14906: <==negation-removal== 54821 (pos)
                    (not (not_at_c_p12))

                    ; #40974: <==negation-removal== 74865 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #53811: origin
                    (at_c_p2)

                    ; #74865: origin
                    (not_at_c_p1)

                    ; #40974: <==negation-removal== 74865 (pos)
                    (not (at_c_p1))

                    ; #58008: <==negation-removal== 53811 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #57637: origin
                    (at_c_p3)

                    ; #74865: origin
                    (not_at_c_p1)

                    ; #40974: <==negation-removal== 74865 (pos)
                    (not (at_c_p1))

                    ; #75737: <==negation-removal== 57637 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #74865: origin
                    (not_at_c_p1)

                    ; #79772: origin
                    (at_c_p4)

                    ; #40974: <==negation-removal== 74865 (pos)
                    (not (at_c_p1))

                    ; #66454: <==negation-removal== 79772 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #42531: origin
                    (at_c_p5)

                    ; #74865: origin
                    (not_at_c_p1)

                    ; #40974: <==negation-removal== 74865 (pos)
                    (not (at_c_p1))

                    ; #70981: <==negation-removal== 42531 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #74865: origin
                    (not_at_c_p1)

                    ; #87321: origin
                    (at_c_p6)

                    ; #40974: <==negation-removal== 74865 (pos)
                    (not (at_c_p1))

                    ; #73869: <==negation-removal== 87321 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #46040: origin
                    (at_c_p7)

                    ; #74865: origin
                    (not_at_c_p1)

                    ; #40974: <==negation-removal== 74865 (pos)
                    (not (at_c_p1))

                    ; #49560: <==negation-removal== 46040 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #38283: origin
                    (at_c_p8)

                    ; #74865: origin
                    (not_at_c_p1)

                    ; #34852: <==negation-removal== 38283 (pos)
                    (not (not_at_c_p8))

                    ; #40974: <==negation-removal== 74865 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #64978: origin
                    (at_c_p9)

                    ; #74865: origin
                    (not_at_c_p1)

                    ; #40974: <==negation-removal== 74865 (pos)
                    (not (at_c_p1))

                    ; #53512: <==negation-removal== 64978 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #40974: origin
                    (at_c_p1)

                    ; #58008: origin
                    (not_at_c_p2)

                    ; #53811: <==negation-removal== 58008 (pos)
                    (not (at_c_p2))

                    ; #74865: <==negation-removal== 40974 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #58008: origin
                    (not_at_c_p2)

                    ; #62201: origin
                    (at_c_p10)

                    ; #34006: <==negation-removal== 62201 (pos)
                    (not (not_at_c_p10))

                    ; #53811: <==negation-removal== 58008 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (at_c_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #56285: origin
                    (at_c_p11)

                    ; #58008: origin
                    (not_at_c_p2)

                    ; #20272: <==negation-removal== 56285 (pos)
                    (not (not_at_c_p11))

                    ; #53811: <==negation-removal== 58008 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #54821: origin
                    (at_c_p12)

                    ; #58008: origin
                    (not_at_c_p2)

                    ; #14906: <==negation-removal== 54821 (pos)
                    (not (not_at_c_p12))

                    ; #53811: <==negation-removal== 58008 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #53811: origin
                    (at_c_p2)

                    ; #58008: origin
                    (not_at_c_p2)

                    ; #53811: <==negation-removal== 58008 (pos)
                    (not (at_c_p2))

                    ; #58008: <==negation-removal== 53811 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #57637: origin
                    (at_c_p3)

                    ; #58008: origin
                    (not_at_c_p2)

                    ; #53811: <==negation-removal== 58008 (pos)
                    (not (at_c_p2))

                    ; #75737: <==negation-removal== 57637 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #58008: origin
                    (not_at_c_p2)

                    ; #79772: origin
                    (at_c_p4)

                    ; #53811: <==negation-removal== 58008 (pos)
                    (not (at_c_p2))

                    ; #66454: <==negation-removal== 79772 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #42531: origin
                    (at_c_p5)

                    ; #58008: origin
                    (not_at_c_p2)

                    ; #53811: <==negation-removal== 58008 (pos)
                    (not (at_c_p2))

                    ; #70981: <==negation-removal== 42531 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #58008: origin
                    (not_at_c_p2)

                    ; #87321: origin
                    (at_c_p6)

                    ; #53811: <==negation-removal== 58008 (pos)
                    (not (at_c_p2))

                    ; #73869: <==negation-removal== 87321 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #46040: origin
                    (at_c_p7)

                    ; #58008: origin
                    (not_at_c_p2)

                    ; #49560: <==negation-removal== 46040 (pos)
                    (not (not_at_c_p7))

                    ; #53811: <==negation-removal== 58008 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #38283: origin
                    (at_c_p8)

                    ; #58008: origin
                    (not_at_c_p2)

                    ; #34852: <==negation-removal== 38283 (pos)
                    (not (not_at_c_p8))

                    ; #53811: <==negation-removal== 58008 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #58008: origin
                    (not_at_c_p2)

                    ; #64978: origin
                    (at_c_p9)

                    ; #53512: <==negation-removal== 64978 (pos)
                    (not (not_at_c_p9))

                    ; #53811: <==negation-removal== 58008 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #40974: origin
                    (at_c_p1)

                    ; #75737: origin
                    (not_at_c_p3)

                    ; #57637: <==negation-removal== 75737 (pos)
                    (not (at_c_p3))

                    ; #74865: <==negation-removal== 40974 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #62201: origin
                    (at_c_p10)

                    ; #75737: origin
                    (not_at_c_p3)

                    ; #34006: <==negation-removal== 62201 (pos)
                    (not (not_at_c_p10))

                    ; #57637: <==negation-removal== 75737 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #56285: origin
                    (at_c_p11)

                    ; #75737: origin
                    (not_at_c_p3)

                    ; #20272: <==negation-removal== 56285 (pos)
                    (not (not_at_c_p11))

                    ; #57637: <==negation-removal== 75737 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #54821: origin
                    (at_c_p12)

                    ; #75737: origin
                    (not_at_c_p3)

                    ; #14906: <==negation-removal== 54821 (pos)
                    (not (not_at_c_p12))

                    ; #57637: <==negation-removal== 75737 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #53811: origin
                    (at_c_p2)

                    ; #75737: origin
                    (not_at_c_p3)

                    ; #57637: <==negation-removal== 75737 (pos)
                    (not (at_c_p3))

                    ; #58008: <==negation-removal== 53811 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #57637: origin
                    (at_c_p3)

                    ; #75737: origin
                    (not_at_c_p3)

                    ; #57637: <==negation-removal== 75737 (pos)
                    (not (at_c_p3))

                    ; #75737: <==negation-removal== 57637 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #75737: origin
                    (not_at_c_p3)

                    ; #79772: origin
                    (at_c_p4)

                    ; #57637: <==negation-removal== 75737 (pos)
                    (not (at_c_p3))

                    ; #66454: <==negation-removal== 79772 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #42531: origin
                    (at_c_p5)

                    ; #75737: origin
                    (not_at_c_p3)

                    ; #57637: <==negation-removal== 75737 (pos)
                    (not (at_c_p3))

                    ; #70981: <==negation-removal== 42531 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #75737: origin
                    (not_at_c_p3)

                    ; #87321: origin
                    (at_c_p6)

                    ; #57637: <==negation-removal== 75737 (pos)
                    (not (at_c_p3))

                    ; #73869: <==negation-removal== 87321 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #46040: origin
                    (at_c_p7)

                    ; #75737: origin
                    (not_at_c_p3)

                    ; #49560: <==negation-removal== 46040 (pos)
                    (not (not_at_c_p7))

                    ; #57637: <==negation-removal== 75737 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #38283: origin
                    (at_c_p8)

                    ; #75737: origin
                    (not_at_c_p3)

                    ; #34852: <==negation-removal== 38283 (pos)
                    (not (not_at_c_p8))

                    ; #57637: <==negation-removal== 75737 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #64978: origin
                    (at_c_p9)

                    ; #75737: origin
                    (not_at_c_p3)

                    ; #53512: <==negation-removal== 64978 (pos)
                    (not (not_at_c_p9))

                    ; #57637: <==negation-removal== 75737 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #40974: origin
                    (at_c_p1)

                    ; #66454: origin
                    (not_at_c_p4)

                    ; #74865: <==negation-removal== 40974 (pos)
                    (not (not_at_c_p1))

                    ; #79772: <==negation-removal== 66454 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #62201: origin
                    (at_c_p10)

                    ; #66454: origin
                    (not_at_c_p4)

                    ; #34006: <==negation-removal== 62201 (pos)
                    (not (not_at_c_p10))

                    ; #79772: <==negation-removal== 66454 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4))
        :effect (and
                    ; #56285: origin
                    (at_c_p11)

                    ; #66454: origin
                    (not_at_c_p4)

                    ; #20272: <==negation-removal== 56285 (pos)
                    (not (not_at_c_p11))

                    ; #79772: <==negation-removal== 66454 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_c_p4))
        :effect (and
                    ; #54821: origin
                    (at_c_p12)

                    ; #66454: origin
                    (not_at_c_p4)

                    ; #14906: <==negation-removal== 54821 (pos)
                    (not (not_at_c_p12))

                    ; #79772: <==negation-removal== 66454 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #53811: origin
                    (at_c_p2)

                    ; #66454: origin
                    (not_at_c_p4)

                    ; #58008: <==negation-removal== 53811 (pos)
                    (not (not_at_c_p2))

                    ; #79772: <==negation-removal== 66454 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #57637: origin
                    (at_c_p3)

                    ; #66454: origin
                    (not_at_c_p4)

                    ; #75737: <==negation-removal== 57637 (pos)
                    (not (not_at_c_p3))

                    ; #79772: <==negation-removal== 66454 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #66454: origin
                    (not_at_c_p4)

                    ; #79772: origin
                    (at_c_p4)

                    ; #66454: <==negation-removal== 79772 (pos)
                    (not (not_at_c_p4))

                    ; #79772: <==negation-removal== 66454 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #42531: origin
                    (at_c_p5)

                    ; #66454: origin
                    (not_at_c_p4)

                    ; #70981: <==negation-removal== 42531 (pos)
                    (not (not_at_c_p5))

                    ; #79772: <==negation-removal== 66454 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #66454: origin
                    (not_at_c_p4)

                    ; #87321: origin
                    (at_c_p6)

                    ; #73869: <==negation-removal== 87321 (pos)
                    (not (not_at_c_p6))

                    ; #79772: <==negation-removal== 66454 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #46040: origin
                    (at_c_p7)

                    ; #66454: origin
                    (not_at_c_p4)

                    ; #49560: <==negation-removal== 46040 (pos)
                    (not (not_at_c_p7))

                    ; #79772: <==negation-removal== 66454 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #38283: origin
                    (at_c_p8)

                    ; #66454: origin
                    (not_at_c_p4)

                    ; #34852: <==negation-removal== 38283 (pos)
                    (not (not_at_c_p8))

                    ; #79772: <==negation-removal== 66454 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #64978: origin
                    (at_c_p9)

                    ; #66454: origin
                    (not_at_c_p4)

                    ; #53512: <==negation-removal== 64978 (pos)
                    (not (not_at_c_p9))

                    ; #79772: <==negation-removal== 66454 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #40974: origin
                    (at_c_p1)

                    ; #70981: origin
                    (not_at_c_p5)

                    ; #42531: <==negation-removal== 70981 (pos)
                    (not (at_c_p5))

                    ; #74865: <==negation-removal== 40974 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5))
        :effect (and
                    ; #62201: origin
                    (at_c_p10)

                    ; #70981: origin
                    (not_at_c_p5)

                    ; #34006: <==negation-removal== 62201 (pos)
                    (not (not_at_c_p10))

                    ; #42531: <==negation-removal== 70981 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #56285: origin
                    (at_c_p11)

                    ; #70981: origin
                    (not_at_c_p5)

                    ; #20272: <==negation-removal== 56285 (pos)
                    (not (not_at_c_p11))

                    ; #42531: <==negation-removal== 70981 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_c_p5))
        :effect (and
                    ; #54821: origin
                    (at_c_p12)

                    ; #70981: origin
                    (not_at_c_p5)

                    ; #14906: <==negation-removal== 54821 (pos)
                    (not (not_at_c_p12))

                    ; #42531: <==negation-removal== 70981 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #53811: origin
                    (at_c_p2)

                    ; #70981: origin
                    (not_at_c_p5)

                    ; #42531: <==negation-removal== 70981 (pos)
                    (not (at_c_p5))

                    ; #58008: <==negation-removal== 53811 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #57637: origin
                    (at_c_p3)

                    ; #70981: origin
                    (not_at_c_p5)

                    ; #42531: <==negation-removal== 70981 (pos)
                    (not (at_c_p5))

                    ; #75737: <==negation-removal== 57637 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #70981: origin
                    (not_at_c_p5)

                    ; #79772: origin
                    (at_c_p4)

                    ; #42531: <==negation-removal== 70981 (pos)
                    (not (at_c_p5))

                    ; #66454: <==negation-removal== 79772 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #42531: origin
                    (at_c_p5)

                    ; #70981: origin
                    (not_at_c_p5)

                    ; #42531: <==negation-removal== 70981 (pos)
                    (not (at_c_p5))

                    ; #70981: <==negation-removal== 42531 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #70981: origin
                    (not_at_c_p5)

                    ; #87321: origin
                    (at_c_p6)

                    ; #42531: <==negation-removal== 70981 (pos)
                    (not (at_c_p5))

                    ; #73869: <==negation-removal== 87321 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #46040: origin
                    (at_c_p7)

                    ; #70981: origin
                    (not_at_c_p5)

                    ; #42531: <==negation-removal== 70981 (pos)
                    (not (at_c_p5))

                    ; #49560: <==negation-removal== 46040 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #38283: origin
                    (at_c_p8)

                    ; #70981: origin
                    (not_at_c_p5)

                    ; #34852: <==negation-removal== 38283 (pos)
                    (not (not_at_c_p8))

                    ; #42531: <==negation-removal== 70981 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #64978: origin
                    (at_c_p9)

                    ; #70981: origin
                    (not_at_c_p5)

                    ; #42531: <==negation-removal== 70981 (pos)
                    (not (at_c_p5))

                    ; #53512: <==negation-removal== 64978 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #40974: origin
                    (at_c_p1)

                    ; #73869: origin
                    (not_at_c_p6)

                    ; #74865: <==negation-removal== 40974 (pos)
                    (not (not_at_c_p1))

                    ; #87321: <==negation-removal== 73869 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #62201: origin
                    (at_c_p10)

                    ; #73869: origin
                    (not_at_c_p6)

                    ; #34006: <==negation-removal== 62201 (pos)
                    (not (not_at_c_p10))

                    ; #87321: <==negation-removal== 73869 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #56285: origin
                    (at_c_p11)

                    ; #73869: origin
                    (not_at_c_p6)

                    ; #20272: <==negation-removal== 56285 (pos)
                    (not (not_at_c_p11))

                    ; #87321: <==negation-removal== 73869 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #54821: origin
                    (at_c_p12)

                    ; #73869: origin
                    (not_at_c_p6)

                    ; #14906: <==negation-removal== 54821 (pos)
                    (not (not_at_c_p12))

                    ; #87321: <==negation-removal== 73869 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #53811: origin
                    (at_c_p2)

                    ; #73869: origin
                    (not_at_c_p6)

                    ; #58008: <==negation-removal== 53811 (pos)
                    (not (not_at_c_p2))

                    ; #87321: <==negation-removal== 73869 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #57637: origin
                    (at_c_p3)

                    ; #73869: origin
                    (not_at_c_p6)

                    ; #75737: <==negation-removal== 57637 (pos)
                    (not (not_at_c_p3))

                    ; #87321: <==negation-removal== 73869 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #73869: origin
                    (not_at_c_p6)

                    ; #79772: origin
                    (at_c_p4)

                    ; #66454: <==negation-removal== 79772 (pos)
                    (not (not_at_c_p4))

                    ; #87321: <==negation-removal== 73869 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #42531: origin
                    (at_c_p5)

                    ; #73869: origin
                    (not_at_c_p6)

                    ; #70981: <==negation-removal== 42531 (pos)
                    (not (not_at_c_p5))

                    ; #87321: <==negation-removal== 73869 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #73869: origin
                    (not_at_c_p6)

                    ; #87321: origin
                    (at_c_p6)

                    ; #73869: <==negation-removal== 87321 (pos)
                    (not (not_at_c_p6))

                    ; #87321: <==negation-removal== 73869 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #46040: origin
                    (at_c_p7)

                    ; #73869: origin
                    (not_at_c_p6)

                    ; #49560: <==negation-removal== 46040 (pos)
                    (not (not_at_c_p7))

                    ; #87321: <==negation-removal== 73869 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #38283: origin
                    (at_c_p8)

                    ; #73869: origin
                    (not_at_c_p6)

                    ; #34852: <==negation-removal== 38283 (pos)
                    (not (not_at_c_p8))

                    ; #87321: <==negation-removal== 73869 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #64978: origin
                    (at_c_p9)

                    ; #73869: origin
                    (not_at_c_p6)

                    ; #53512: <==negation-removal== 64978 (pos)
                    (not (not_at_c_p9))

                    ; #87321: <==negation-removal== 73869 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #40974: origin
                    (at_c_p1)

                    ; #49560: origin
                    (not_at_c_p7)

                    ; #46040: <==negation-removal== 49560 (pos)
                    (not (at_c_p7))

                    ; #74865: <==negation-removal== 40974 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (at_c_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #49560: origin
                    (not_at_c_p7)

                    ; #62201: origin
                    (at_c_p10)

                    ; #34006: <==negation-removal== 62201 (pos)
                    (not (not_at_c_p10))

                    ; #46040: <==negation-removal== 49560 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #49560: origin
                    (not_at_c_p7)

                    ; #56285: origin
                    (at_c_p11)

                    ; #20272: <==negation-removal== 56285 (pos)
                    (not (not_at_c_p11))

                    ; #46040: <==negation-removal== 49560 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #49560: origin
                    (not_at_c_p7)

                    ; #54821: origin
                    (at_c_p12)

                    ; #14906: <==negation-removal== 54821 (pos)
                    (not (not_at_c_p12))

                    ; #46040: <==negation-removal== 49560 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #49560: origin
                    (not_at_c_p7)

                    ; #53811: origin
                    (at_c_p2)

                    ; #46040: <==negation-removal== 49560 (pos)
                    (not (at_c_p7))

                    ; #58008: <==negation-removal== 53811 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #49560: origin
                    (not_at_c_p7)

                    ; #57637: origin
                    (at_c_p3)

                    ; #46040: <==negation-removal== 49560 (pos)
                    (not (at_c_p7))

                    ; #75737: <==negation-removal== 57637 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #49560: origin
                    (not_at_c_p7)

                    ; #79772: origin
                    (at_c_p4)

                    ; #46040: <==negation-removal== 49560 (pos)
                    (not (at_c_p7))

                    ; #66454: <==negation-removal== 79772 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #42531: origin
                    (at_c_p5)

                    ; #49560: origin
                    (not_at_c_p7)

                    ; #46040: <==negation-removal== 49560 (pos)
                    (not (at_c_p7))

                    ; #70981: <==negation-removal== 42531 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #49560: origin
                    (not_at_c_p7)

                    ; #87321: origin
                    (at_c_p6)

                    ; #46040: <==negation-removal== 49560 (pos)
                    (not (at_c_p7))

                    ; #73869: <==negation-removal== 87321 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #46040: origin
                    (at_c_p7)

                    ; #49560: origin
                    (not_at_c_p7)

                    ; #46040: <==negation-removal== 49560 (pos)
                    (not (at_c_p7))

                    ; #49560: <==negation-removal== 46040 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #38283: origin
                    (at_c_p8)

                    ; #49560: origin
                    (not_at_c_p7)

                    ; #34852: <==negation-removal== 38283 (pos)
                    (not (not_at_c_p8))

                    ; #46040: <==negation-removal== 49560 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #49560: origin
                    (not_at_c_p7)

                    ; #64978: origin
                    (at_c_p9)

                    ; #46040: <==negation-removal== 49560 (pos)
                    (not (at_c_p7))

                    ; #53512: <==negation-removal== 64978 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #34852: origin
                    (not_at_c_p8)

                    ; #40974: origin
                    (at_c_p1)

                    ; #38283: <==negation-removal== 34852 (pos)
                    (not (at_c_p8))

                    ; #74865: <==negation-removal== 40974 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #34852: origin
                    (not_at_c_p8)

                    ; #62201: origin
                    (at_c_p10)

                    ; #34006: <==negation-removal== 62201 (pos)
                    (not (not_at_c_p10))

                    ; #38283: <==negation-removal== 34852 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8))
        :effect (and
                    ; #34852: origin
                    (not_at_c_p8)

                    ; #56285: origin
                    (at_c_p11)

                    ; #20272: <==negation-removal== 56285 (pos)
                    (not (not_at_c_p11))

                    ; #38283: <==negation-removal== 34852 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #34852: origin
                    (not_at_c_p8)

                    ; #54821: origin
                    (at_c_p12)

                    ; #14906: <==negation-removal== 54821 (pos)
                    (not (not_at_c_p12))

                    ; #38283: <==negation-removal== 34852 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #34852: origin
                    (not_at_c_p8)

                    ; #53811: origin
                    (at_c_p2)

                    ; #38283: <==negation-removal== 34852 (pos)
                    (not (at_c_p8))

                    ; #58008: <==negation-removal== 53811 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #34852: origin
                    (not_at_c_p8)

                    ; #57637: origin
                    (at_c_p3)

                    ; #38283: <==negation-removal== 34852 (pos)
                    (not (at_c_p8))

                    ; #75737: <==negation-removal== 57637 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #34852: origin
                    (not_at_c_p8)

                    ; #79772: origin
                    (at_c_p4)

                    ; #38283: <==negation-removal== 34852 (pos)
                    (not (at_c_p8))

                    ; #66454: <==negation-removal== 79772 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #34852: origin
                    (not_at_c_p8)

                    ; #42531: origin
                    (at_c_p5)

                    ; #38283: <==negation-removal== 34852 (pos)
                    (not (at_c_p8))

                    ; #70981: <==negation-removal== 42531 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #34852: origin
                    (not_at_c_p8)

                    ; #87321: origin
                    (at_c_p6)

                    ; #38283: <==negation-removal== 34852 (pos)
                    (not (at_c_p8))

                    ; #73869: <==negation-removal== 87321 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #34852: origin
                    (not_at_c_p8)

                    ; #46040: origin
                    (at_c_p7)

                    ; #38283: <==negation-removal== 34852 (pos)
                    (not (at_c_p8))

                    ; #49560: <==negation-removal== 46040 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #34852: origin
                    (not_at_c_p8)

                    ; #38283: origin
                    (at_c_p8)

                    ; #34852: <==negation-removal== 38283 (pos)
                    (not (not_at_c_p8))

                    ; #38283: <==negation-removal== 34852 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #34852: origin
                    (not_at_c_p8)

                    ; #64978: origin
                    (at_c_p9)

                    ; #38283: <==negation-removal== 34852 (pos)
                    (not (at_c_p8))

                    ; #53512: <==negation-removal== 64978 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #40974: origin
                    (at_c_p1)

                    ; #53512: origin
                    (not_at_c_p9)

                    ; #64978: <==negation-removal== 53512 (pos)
                    (not (at_c_p9))

                    ; #74865: <==negation-removal== 40974 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9))
        :effect (and
                    ; #53512: origin
                    (not_at_c_p9)

                    ; #62201: origin
                    (at_c_p10)

                    ; #34006: <==negation-removal== 62201 (pos)
                    (not (not_at_c_p10))

                    ; #64978: <==negation-removal== 53512 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (at_c_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #53512: origin
                    (not_at_c_p9)

                    ; #56285: origin
                    (at_c_p11)

                    ; #20272: <==negation-removal== 56285 (pos)
                    (not (not_at_c_p11))

                    ; #64978: <==negation-removal== 53512 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #53512: origin
                    (not_at_c_p9)

                    ; #54821: origin
                    (at_c_p12)

                    ; #14906: <==negation-removal== 54821 (pos)
                    (not (not_at_c_p12))

                    ; #64978: <==negation-removal== 53512 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #53512: origin
                    (not_at_c_p9)

                    ; #53811: origin
                    (at_c_p2)

                    ; #58008: <==negation-removal== 53811 (pos)
                    (not (not_at_c_p2))

                    ; #64978: <==negation-removal== 53512 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #53512: origin
                    (not_at_c_p9)

                    ; #57637: origin
                    (at_c_p3)

                    ; #64978: <==negation-removal== 53512 (pos)
                    (not (at_c_p9))

                    ; #75737: <==negation-removal== 57637 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #53512: origin
                    (not_at_c_p9)

                    ; #79772: origin
                    (at_c_p4)

                    ; #64978: <==negation-removal== 53512 (pos)
                    (not (at_c_p9))

                    ; #66454: <==negation-removal== 79772 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #42531: origin
                    (at_c_p5)

                    ; #53512: origin
                    (not_at_c_p9)

                    ; #64978: <==negation-removal== 53512 (pos)
                    (not (at_c_p9))

                    ; #70981: <==negation-removal== 42531 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #53512: origin
                    (not_at_c_p9)

                    ; #87321: origin
                    (at_c_p6)

                    ; #64978: <==negation-removal== 53512 (pos)
                    (not (at_c_p9))

                    ; #73869: <==negation-removal== 87321 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #46040: origin
                    (at_c_p7)

                    ; #53512: origin
                    (not_at_c_p9)

                    ; #49560: <==negation-removal== 46040 (pos)
                    (not (not_at_c_p7))

                    ; #64978: <==negation-removal== 53512 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #38283: origin
                    (at_c_p8)

                    ; #53512: origin
                    (not_at_c_p9)

                    ; #34852: <==negation-removal== 38283 (pos)
                    (not (not_at_c_p8))

                    ; #64978: <==negation-removal== 53512 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #53512: origin
                    (not_at_c_p9)

                    ; #64978: origin
                    (at_c_p9)

                    ; #53512: <==negation-removal== 64978 (pos)
                    (not (not_at_c_p9))

                    ; #64978: <==negation-removal== 53512 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #11712: <==commonly_known== 23587 (pos)
                    (Bb_checked_p10)

                    ; #23587: origin
                    (checked_p10)

                    ; #40767: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #45988: <==commonly_known== 58942 (neg)
                    (Pa_checked_p10)

                    ; #46582: <==commonly_known== 23587 (pos)
                    (Bc_checked_p10)

                    ; #47091: <==commonly_known== 58942 (neg)
                    (Pc_checked_p10)

                    ; #53989: <==commonly_known== 58942 (neg)
                    (Pb_checked_p10)

                    ; #73716: <==commonly_known== 23587 (pos)
                    (Ba_checked_p10)

                    ; #77306: <==closure== 81581 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #81154: <==closure== 40767 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #81581: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #12037: <==negation-removal== 40767 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #17089: <==negation-removal== 47091 (pos)
                    (not (Bc_not_checked_p10))

                    ; #18506: <==negation-removal== 45988 (pos)
                    (not (Ba_not_checked_p10))

                    ; #18767: <==negation-removal== 11712 (pos)
                    (not (Pb_not_checked_p10))

                    ; #28690: <==uncertain_firing== 40767 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #35707: <==uncertain_firing== 81154 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #37873: <==uncertain_firing== 81581 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #48775: <==negation-removal== 77306 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #52181: <==uncertain_firing== 77306 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #58942: <==negation-removal== 23587 (pos)
                    (not (not_checked_p10))

                    ; #61633: <==negation-removal== 73716 (pos)
                    (not (Pa_not_checked_p10))

                    ; #64684: <==negation-removal== 81581 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #70580: <==negation-removal== 53989 (pos)
                    (not (Bb_not_checked_p10))

                    ; #80513: <==negation-removal== 46582 (pos)
                    (not (Pc_not_checked_p10))

                    ; #83097: <==negation-removal== 81154 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #15033: origin
                    (checked_p11)

                    ; #21434: <==commonly_known== 72653 (neg)
                    (Pa_checked_p11)

                    ; #22057: <==commonly_known== 72653 (neg)
                    (Pc_checked_p11)

                    ; #23938: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #24452: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #29095: <==closure== 23938 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #34904: <==commonly_known== 15033 (pos)
                    (Ba_checked_p11)

                    ; #45465: <==commonly_known== 15033 (pos)
                    (Bc_checked_p11)

                    ; #75503: <==commonly_known== 15033 (pos)
                    (Bb_checked_p11)

                    ; #87421: <==commonly_known== 72653 (neg)
                    (Pb_checked_p11)

                    ; #92172: <==closure== 24452 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #19400: <==uncertain_firing== 29095 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #25323: <==negation-removal== 87421 (pos)
                    (not (Bb_not_checked_p11))

                    ; #26796: <==negation-removal== 45465 (pos)
                    (not (Pc_not_checked_p11))

                    ; #32949: <==negation-removal== 22057 (pos)
                    (not (Bc_not_checked_p11))

                    ; #36555: <==negation-removal== 21434 (pos)
                    (not (Ba_not_checked_p11))

                    ; #39673: <==uncertain_firing== 92172 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #41846: <==uncertain_firing== 24452 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #42957: <==negation-removal== 34904 (pos)
                    (not (Pa_not_checked_p11))

                    ; #56005: <==negation-removal== 75503 (pos)
                    (not (Pb_not_checked_p11))

                    ; #66415: <==negation-removal== 23938 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #68405: <==negation-removal== 29095 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #72653: <==negation-removal== 15033 (pos)
                    (not (not_checked_p11))

                    ; #76908: <==negation-removal== 92172 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #82626: <==uncertain_firing== 23938 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #84187: <==negation-removal== 24452 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #11166: origin
                    (checked_p12)

                    ; #26378: <==commonly_known== 84779 (neg)
                    (Pa_checked_p12)

                    ; #26678: <==closure== 90782 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #32236: <==commonly_known== 84779 (neg)
                    (Pc_checked_p12)

                    ; #35520: <==commonly_known== 11166 (pos)
                    (Bb_checked_p12)

                    ; #50173: <==closure== 71053 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #50529: <==commonly_known== 11166 (pos)
                    (Ba_checked_p12)

                    ; #71053: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #72556: <==commonly_known== 11166 (pos)
                    (Bc_checked_p12)

                    ; #79249: <==commonly_known== 84779 (neg)
                    (Pb_checked_p12)

                    ; #90782: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #11964: <==uncertain_firing== 26678 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #19516: <==negation-removal== 32236 (pos)
                    (not (Bc_not_checked_p12))

                    ; #22424: <==negation-removal== 26378 (pos)
                    (not (Ba_not_checked_p12))

                    ; #25983: <==negation-removal== 26678 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #27557: <==uncertain_firing== 71053 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #32094: <==uncertain_firing== 90782 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #32844: <==negation-removal== 50529 (pos)
                    (not (Pa_not_checked_p12))

                    ; #38576: <==negation-removal== 71053 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #42718: <==negation-removal== 50173 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #48156: <==negation-removal== 35520 (pos)
                    (not (Pb_not_checked_p12))

                    ; #72900: <==negation-removal== 79249 (pos)
                    (not (Bb_not_checked_p12))

                    ; #73347: <==uncertain_firing== 50173 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #79663: <==negation-removal== 72556 (pos)
                    (not (Pc_not_checked_p12))

                    ; #80908: <==negation-removal== 90782 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #84779: <==negation-removal== 11166 (pos)
                    (not (not_checked_p12))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #19389: origin
                    (checked_p1)

                    ; #30512: <==commonly_known== 19389 (pos)
                    (Bc_checked_p1)

                    ; #36996: <==closure== 73428 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #44954: <==commonly_known== 19617 (neg)
                    (Pa_checked_p1)

                    ; #59863: <==commonly_known== 19389 (pos)
                    (Bb_checked_p1)

                    ; #68039: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #73428: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #75523: <==commonly_known== 19617 (neg)
                    (Pc_checked_p1)

                    ; #81447: <==closure== 68039 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #90563: <==commonly_known== 19389 (pos)
                    (Ba_checked_p1)

                    ; #95557: <==commonly_known== 19617 (neg)
                    (Pb_checked_p1)

                    ; #11350: <==negation-removal== 95557 (pos)
                    (not (Bb_not_checked_p1))

                    ; #15548: <==uncertain_firing== 68039 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #19617: <==negation-removal== 19389 (pos)
                    (not (not_checked_p1))

                    ; #22693: <==negation-removal== 68039 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #27768: <==uncertain_firing== 73428 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #35827: <==negation-removal== 73428 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #40570: <==negation-removal== 90563 (pos)
                    (not (Pa_not_checked_p1))

                    ; #42349: <==negation-removal== 30512 (pos)
                    (not (Pc_not_checked_p1))

                    ; #49173: <==negation-removal== 44954 (pos)
                    (not (Ba_not_checked_p1))

                    ; #60464: <==negation-removal== 75523 (pos)
                    (not (Bc_not_checked_p1))

                    ; #67957: <==uncertain_firing== 36996 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #69458: <==negation-removal== 36996 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #79637: <==negation-removal== 81447 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #81473: <==negation-removal== 59863 (pos)
                    (not (Pb_not_checked_p1))

                    ; #86543: <==uncertain_firing== 81447 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #19219: <==commonly_known== 88030 (pos)
                    (Bc_checked_p2)

                    ; #25328: <==closure== 50579 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #26159: <==commonly_known== 39444 (neg)
                    (Pc_checked_p2)

                    ; #27788: <==commonly_known== 39444 (neg)
                    (Pb_checked_p2)

                    ; #32872: <==commonly_known== 88030 (pos)
                    (Ba_checked_p2)

                    ; #34842: <==closure== 87835 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #46524: <==commonly_known== 88030 (pos)
                    (Bb_checked_p2)

                    ; #50579: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #59231: <==commonly_known== 39444 (neg)
                    (Pa_checked_p2)

                    ; #87835: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #88030: origin
                    (checked_p2)

                    ; #16935: <==uncertain_firing== 87835 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #21521: <==negation-removal== 26159 (pos)
                    (not (Bc_not_checked_p2))

                    ; #30663: <==negation-removal== 25328 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #33832: <==negation-removal== 46524 (pos)
                    (not (Pb_not_checked_p2))

                    ; #38983: <==negation-removal== 87835 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #39444: <==negation-removal== 88030 (pos)
                    (not (not_checked_p2))

                    ; #43873: <==negation-removal== 50579 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #49432: <==negation-removal== 19219 (pos)
                    (not (Pc_not_checked_p2))

                    ; #67954: <==negation-removal== 27788 (pos)
                    (not (Bb_not_checked_p2))

                    ; #69786: <==uncertain_firing== 25328 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #78593: <==negation-removal== 32872 (pos)
                    (not (Pa_not_checked_p2))

                    ; #78613: <==uncertain_firing== 34842 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #79804: <==uncertain_firing== 50579 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #85554: <==negation-removal== 34842 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #89324: <==negation-removal== 59231 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #10567: <==commonly_known== 35022 (pos)
                    (Bb_checked_p3)

                    ; #16670: <==commonly_known== 48813 (neg)
                    (Pa_checked_p3)

                    ; #19608: <==commonly_known== 35022 (pos)
                    (Bc_checked_p3)

                    ; #35022: origin
                    (checked_p3)

                    ; #37583: <==closure== 53176 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #50960: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #53176: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #55288: <==closure== 50960 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #69400: <==commonly_known== 35022 (pos)
                    (Ba_checked_p3)

                    ; #90702: <==commonly_known== 48813 (neg)
                    (Pc_checked_p3)

                    ; #92955: <==commonly_known== 48813 (neg)
                    (Pb_checked_p3)

                    ; #17361: <==uncertain_firing== 37583 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #20422: <==negation-removal== 37583 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #34047: <==uncertain_firing== 50960 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #38767: <==negation-removal== 10567 (pos)
                    (not (Pb_not_checked_p3))

                    ; #39694: <==uncertain_firing== 53176 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #41915: <==negation-removal== 53176 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #45301: <==negation-removal== 16670 (pos)
                    (not (Ba_not_checked_p3))

                    ; #48813: <==negation-removal== 35022 (pos)
                    (not (not_checked_p3))

                    ; #53871: <==negation-removal== 92955 (pos)
                    (not (Bb_not_checked_p3))

                    ; #58154: <==uncertain_firing== 55288 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #69350: <==negation-removal== 50960 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #73163: <==negation-removal== 90702 (pos)
                    (not (Bc_not_checked_p3))

                    ; #79276: <==negation-removal== 69400 (pos)
                    (not (Pa_not_checked_p3))

                    ; #84008: <==negation-removal== 55288 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #84889: <==negation-removal== 19608 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13733: <==commonly_known== 15152 (pos)
                    (Bc_checked_p4)

                    ; #15152: origin
                    (checked_p4)

                    ; #18705: <==commonly_known== 69968 (neg)
                    (Pb_checked_p4)

                    ; #41782: <==closure== 52068 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #43797: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #52068: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #56291: <==closure== 43797 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #68885: <==commonly_known== 15152 (pos)
                    (Ba_checked_p4)

                    ; #78243: <==commonly_known== 69968 (neg)
                    (Pa_checked_p4)

                    ; #89851: <==commonly_known== 15152 (pos)
                    (Bb_checked_p4)

                    ; #95658: <==commonly_known== 69968 (neg)
                    (Pc_checked_p4)

                    ; #13260: <==negation-removal== 68885 (pos)
                    (not (Pa_not_checked_p4))

                    ; #14346: <==negation-removal== 43797 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #18392: <==uncertain_firing== 52068 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #21411: <==uncertain_firing== 41782 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #27637: <==uncertain_firing== 43797 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #41814: <==negation-removal== 89851 (pos)
                    (not (Pb_not_checked_p4))

                    ; #61314: <==negation-removal== 56291 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #69968: <==negation-removal== 15152 (pos)
                    (not (not_checked_p4))

                    ; #78086: <==negation-removal== 52068 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #84421: <==negation-removal== 95658 (pos)
                    (not (Bc_not_checked_p4))

                    ; #86535: <==negation-removal== 18705 (pos)
                    (not (Bb_not_checked_p4))

                    ; #88933: <==negation-removal== 13733 (pos)
                    (not (Pc_not_checked_p4))

                    ; #90400: <==negation-removal== 41782 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #90580: <==uncertain_firing== 56291 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #99196: <==negation-removal== 78243 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #19261: <==commonly_known== 13531 (neg)
                    (Pa_checked_p5)

                    ; #25484: <==commonly_known== 71050 (pos)
                    (Bb_checked_p5)

                    ; #26788: <==commonly_known== 71050 (pos)
                    (Ba_checked_p5)

                    ; #35359: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #41546: <==commonly_known== 13531 (neg)
                    (Pb_checked_p5)

                    ; #46447: <==closure== 35359 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #53027: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #58041: <==commonly_known== 71050 (pos)
                    (Bc_checked_p5)

                    ; #67938: <==commonly_known== 13531 (neg)
                    (Pc_checked_p5)

                    ; #71050: origin
                    (checked_p5)

                    ; #85634: <==closure== 53027 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #10216: <==uncertain_firing== 46447 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #13531: <==negation-removal== 71050 (pos)
                    (not (not_checked_p5))

                    ; #14312: <==negation-removal== 85634 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #17721: <==negation-removal== 26788 (pos)
                    (not (Pa_not_checked_p5))

                    ; #40826: <==negation-removal== 46447 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #42807: <==negation-removal== 19261 (pos)
                    (not (Ba_not_checked_p5))

                    ; #43520: <==uncertain_firing== 53027 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #43692: <==uncertain_firing== 85634 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #50342: <==uncertain_firing== 35359 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #57071: <==negation-removal== 67938 (pos)
                    (not (Bc_not_checked_p5))

                    ; #58155: <==negation-removal== 41546 (pos)
                    (not (Bb_not_checked_p5))

                    ; #59111: <==negation-removal== 53027 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #60441: <==negation-removal== 35359 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #78490: <==negation-removal== 58041 (pos)
                    (not (Pc_not_checked_p5))

                    ; #87626: <==negation-removal== 25484 (pos)
                    (not (Pb_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #14271: <==commonly_known== 71815 (pos)
                    (Bc_checked_p6)

                    ; #20904: <==commonly_known== 85976 (neg)
                    (Pc_checked_p6)

                    ; #30796: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #34085: <==closure== 30796 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #35267: <==commonly_known== 71815 (pos)
                    (Ba_checked_p6)

                    ; #37781: <==closure== 48560 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #48560: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #52618: <==commonly_known== 85976 (neg)
                    (Pa_checked_p6)

                    ; #61435: <==commonly_known== 85976 (neg)
                    (Pb_checked_p6)

                    ; #71815: origin
                    (checked_p6)

                    ; #85335: <==commonly_known== 71815 (pos)
                    (Bb_checked_p6)

                    ; #17422: <==negation-removal== 34085 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #22972: <==negation-removal== 35267 (pos)
                    (not (Pa_not_checked_p6))

                    ; #29172: <==uncertain_firing== 34085 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #40759: <==negation-removal== 52618 (pos)
                    (not (Ba_not_checked_p6))

                    ; #42319: <==negation-removal== 14271 (pos)
                    (not (Pc_not_checked_p6))

                    ; #49170: <==uncertain_firing== 37781 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #53699: <==negation-removal== 48560 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #60231: <==uncertain_firing== 30796 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #62288: <==negation-removal== 20904 (pos)
                    (not (Bc_not_checked_p6))

                    ; #65617: <==uncertain_firing== 48560 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #65627: <==negation-removal== 85335 (pos)
                    (not (Pb_not_checked_p6))

                    ; #72973: <==negation-removal== 37781 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #73579: <==negation-removal== 61435 (pos)
                    (not (Bb_not_checked_p6))

                    ; #78656: <==negation-removal== 30796 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #85976: <==negation-removal== 71815 (pos)
                    (not (not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #20133: <==closure== 32526 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #32526: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #34578: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #35728: <==commonly_known== 81799 (pos)
                    (Bc_checked_p7)

                    ; #40837: <==commonly_known== 20159 (neg)
                    (Pb_checked_p7)

                    ; #43647: <==commonly_known== 81799 (pos)
                    (Ba_checked_p7)

                    ; #47148: <==commonly_known== 20159 (neg)
                    (Pc_checked_p7)

                    ; #60842: <==commonly_known== 20159 (neg)
                    (Pa_checked_p7)

                    ; #70875: <==closure== 34578 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #77411: <==commonly_known== 81799 (pos)
                    (Bb_checked_p7)

                    ; #81799: origin
                    (checked_p7)

                    ; #18792: <==negation-removal== 34578 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #20159: <==negation-removal== 81799 (pos)
                    (not (not_checked_p7))

                    ; #20657: <==uncertain_firing== 20133 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #22655: <==uncertain_firing== 70875 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #27472: <==negation-removal== 70875 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #29998: <==uncertain_firing== 34578 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #37074: <==negation-removal== 20133 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #48797: <==uncertain_firing== 32526 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #49646: <==negation-removal== 43647 (pos)
                    (not (Pa_not_checked_p7))

                    ; #50814: <==negation-removal== 35728 (pos)
                    (not (Pc_not_checked_p7))

                    ; #57782: <==negation-removal== 40837 (pos)
                    (not (Bb_not_checked_p7))

                    ; #66496: <==negation-removal== 47148 (pos)
                    (not (Bc_not_checked_p7))

                    ; #75695: <==negation-removal== 77411 (pos)
                    (not (Pb_not_checked_p7))

                    ; #82812: <==negation-removal== 60842 (pos)
                    (not (Ba_not_checked_p7))

                    ; #83859: <==negation-removal== 32526 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #18722: <==commonly_known== 56803 (pos)
                    (Bc_checked_p8)

                    ; #30353: <==closure== 30715 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #30715: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #44949: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #49832: <==commonly_known== 56803 (pos)
                    (Ba_checked_p8)

                    ; #56803: origin
                    (checked_p8)

                    ; #63735: <==commonly_known== 88399 (neg)
                    (Pc_checked_p8)

                    ; #67288: <==closure== 44949 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #82141: <==commonly_known== 88399 (neg)
                    (Pa_checked_p8)

                    ; #83041: <==commonly_known== 88399 (neg)
                    (Pb_checked_p8)

                    ; #84027: <==commonly_known== 56803 (pos)
                    (Bb_checked_p8)

                    ; #14052: <==negation-removal== 49832 (pos)
                    (not (Pa_not_checked_p8))

                    ; #23800: <==negation-removal== 83041 (pos)
                    (not (Bb_not_checked_p8))

                    ; #24996: <==negation-removal== 82141 (pos)
                    (not (Ba_not_checked_p8))

                    ; #26135: <==negation-removal== 18722 (pos)
                    (not (Pc_not_checked_p8))

                    ; #31847: <==negation-removal== 44949 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #36271: <==negation-removal== 30715 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #40884: <==uncertain_firing== 67288 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #51792: <==uncertain_firing== 30353 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #63720: <==negation-removal== 63735 (pos)
                    (not (Bc_not_checked_p8))

                    ; #68530: <==uncertain_firing== 30715 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #77970: <==negation-removal== 67288 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #83165: <==uncertain_firing== 44949 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #86267: <==negation-removal== 84027 (pos)
                    (not (Pb_not_checked_p8))

                    ; #88399: <==negation-removal== 56803 (pos)
                    (not (not_checked_p8))

                    ; #92695: <==negation-removal== 30353 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #21649: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #28212: <==commonly_known== 48147 (pos)
                    (Bc_checked_p9)

                    ; #30084: <==commonly_known== 57613 (neg)
                    (Pb_checked_p9)

                    ; #46285: <==commonly_known== 48147 (pos)
                    (Ba_checked_p9)

                    ; #47697: <==closure== 53208 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #48147: origin
                    (checked_p9)

                    ; #50393: <==closure== 21649 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #53208: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #58721: <==commonly_known== 57613 (neg)
                    (Pa_checked_p9)

                    ; #78653: <==commonly_known== 57613 (neg)
                    (Pc_checked_p9)

                    ; #90696: <==commonly_known== 48147 (pos)
                    (Bb_checked_p9)

                    ; #10498: <==negation-removal== 78653 (pos)
                    (not (Bc_not_checked_p9))

                    ; #23741: <==uncertain_firing== 53208 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #28901: <==negation-removal== 28212 (pos)
                    (not (Pc_not_checked_p9))

                    ; #32414: <==negation-removal== 46285 (pos)
                    (not (Pa_not_checked_p9))

                    ; #40617: <==negation-removal== 58721 (pos)
                    (not (Ba_not_checked_p9))

                    ; #50503: <==negation-removal== 30084 (pos)
                    (not (Bb_not_checked_p9))

                    ; #57613: <==negation-removal== 48147 (pos)
                    (not (not_checked_p9))

                    ; #57740: <==negation-removal== 50393 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #60588: <==negation-removal== 21649 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #61585: <==negation-removal== 47697 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #77294: <==negation-removal== 90696 (pos)
                    (not (Pb_not_checked_p9))

                    ; #82785: <==uncertain_firing== 50393 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #87363: <==uncertain_firing== 47697 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #91241: <==negation-removal== 53208 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #92209: <==uncertain_firing== 21649 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #11712: <==commonly_known== 23587 (pos)
                    (Bb_checked_p10)

                    ; #23587: origin
                    (checked_p10)

                    ; #45988: <==commonly_known== 58942 (neg)
                    (Pa_checked_p10)

                    ; #46582: <==commonly_known== 23587 (pos)
                    (Bc_checked_p10)

                    ; #47091: <==commonly_known== 58942 (neg)
                    (Pc_checked_p10)

                    ; #53989: <==commonly_known== 58942 (neg)
                    (Pb_checked_p10)

                    ; #68745: <==closure== 76172 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #73716: <==commonly_known== 23587 (pos)
                    (Ba_checked_p10)

                    ; #76172: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #84481: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #90714: <==closure== 84481 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #17089: <==negation-removal== 47091 (pos)
                    (not (Bc_not_checked_p10))

                    ; #18506: <==negation-removal== 45988 (pos)
                    (not (Ba_not_checked_p10))

                    ; #18767: <==negation-removal== 11712 (pos)
                    (not (Pb_not_checked_p10))

                    ; #20380: <==negation-removal== 76172 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #26422: <==uncertain_firing== 76172 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #29829: <==negation-removal== 90714 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #55816: <==negation-removal== 84481 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #57928: <==uncertain_firing== 84481 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #58942: <==negation-removal== 23587 (pos)
                    (not (not_checked_p10))

                    ; #61633: <==negation-removal== 73716 (pos)
                    (not (Pa_not_checked_p10))

                    ; #66588: <==uncertain_firing== 90714 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #70580: <==negation-removal== 53989 (pos)
                    (not (Bb_not_checked_p10))

                    ; #71990: <==negation-removal== 68745 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #77125: <==uncertain_firing== 68745 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #80513: <==negation-removal== 46582 (pos)
                    (not (Pc_not_checked_p10))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #15033: origin
                    (checked_p11)

                    ; #21434: <==commonly_known== 72653 (neg)
                    (Pa_checked_p11)

                    ; #22057: <==commonly_known== 72653 (neg)
                    (Pc_checked_p11)

                    ; #29807: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #34904: <==commonly_known== 15033 (pos)
                    (Ba_checked_p11)

                    ; #45465: <==commonly_known== 15033 (pos)
                    (Bc_checked_p11)

                    ; #56345: <==closure== 29807 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #58351: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #60798: <==closure== 58351 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #75503: <==commonly_known== 15033 (pos)
                    (Bb_checked_p11)

                    ; #87421: <==commonly_known== 72653 (neg)
                    (Pb_checked_p11)

                    ; #17451: <==uncertain_firing== 58351 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #25323: <==negation-removal== 87421 (pos)
                    (not (Bb_not_checked_p11))

                    ; #26796: <==negation-removal== 45465 (pos)
                    (not (Pc_not_checked_p11))

                    ; #32949: <==negation-removal== 22057 (pos)
                    (not (Bc_not_checked_p11))

                    ; #34620: <==uncertain_firing== 56345 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #36555: <==negation-removal== 21434 (pos)
                    (not (Ba_not_checked_p11))

                    ; #42957: <==negation-removal== 34904 (pos)
                    (not (Pa_not_checked_p11))

                    ; #46048: <==uncertain_firing== 29807 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #56005: <==negation-removal== 75503 (pos)
                    (not (Pb_not_checked_p11))

                    ; #56367: <==negation-removal== 58351 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #56990: <==uncertain_firing== 60798 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #72653: <==negation-removal== 15033 (pos)
                    (not (not_checked_p11))

                    ; #79577: <==negation-removal== 60798 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #83356: <==negation-removal== 29807 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #88338: <==negation-removal== 56345 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #11166: origin
                    (checked_p12)

                    ; #26378: <==commonly_known== 84779 (neg)
                    (Pa_checked_p12)

                    ; #32236: <==commonly_known== 84779 (neg)
                    (Pc_checked_p12)

                    ; #35520: <==commonly_known== 11166 (pos)
                    (Bb_checked_p12)

                    ; #49294: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #50529: <==commonly_known== 11166 (pos)
                    (Ba_checked_p12)

                    ; #69087: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #70887: <==closure== 49294 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #72556: <==commonly_known== 11166 (pos)
                    (Bc_checked_p12)

                    ; #79249: <==commonly_known== 84779 (neg)
                    (Pb_checked_p12)

                    ; #91668: <==closure== 69087 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #10385: <==negation-removal== 70887 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #15146: <==uncertain_firing== 91668 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #19516: <==negation-removal== 32236 (pos)
                    (not (Bc_not_checked_p12))

                    ; #22424: <==negation-removal== 26378 (pos)
                    (not (Ba_not_checked_p12))

                    ; #26293: <==negation-removal== 49294 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #31765: <==uncertain_firing== 49294 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #32844: <==negation-removal== 50529 (pos)
                    (not (Pa_not_checked_p12))

                    ; #39029: <==uncertain_firing== 69087 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #42809: <==negation-removal== 91668 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #48156: <==negation-removal== 35520 (pos)
                    (not (Pb_not_checked_p12))

                    ; #72900: <==negation-removal== 79249 (pos)
                    (not (Bb_not_checked_p12))

                    ; #77272: <==uncertain_firing== 70887 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #79663: <==negation-removal== 72556 (pos)
                    (not (Pc_not_checked_p12))

                    ; #84779: <==negation-removal== 11166 (pos)
                    (not (not_checked_p12))

                    ; #85642: <==negation-removal== 69087 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11143: <==closure== 50774 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #17657: <==closure== 66797 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #19389: origin
                    (checked_p1)

                    ; #30512: <==commonly_known== 19389 (pos)
                    (Bc_checked_p1)

                    ; #44954: <==commonly_known== 19617 (neg)
                    (Pa_checked_p1)

                    ; #50774: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #59863: <==commonly_known== 19389 (pos)
                    (Bb_checked_p1)

                    ; #66797: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #75523: <==commonly_known== 19617 (neg)
                    (Pc_checked_p1)

                    ; #90563: <==commonly_known== 19389 (pos)
                    (Ba_checked_p1)

                    ; #95557: <==commonly_known== 19617 (neg)
                    (Pb_checked_p1)

                    ; #11350: <==negation-removal== 95557 (pos)
                    (not (Bb_not_checked_p1))

                    ; #15360: <==negation-removal== 66797 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #19617: <==negation-removal== 19389 (pos)
                    (not (not_checked_p1))

                    ; #34872: <==negation-removal== 17657 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #40570: <==negation-removal== 90563 (pos)
                    (not (Pa_not_checked_p1))

                    ; #42349: <==negation-removal== 30512 (pos)
                    (not (Pc_not_checked_p1))

                    ; #44892: <==uncertain_firing== 11143 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #48866: <==uncertain_firing== 17657 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #49173: <==negation-removal== 44954 (pos)
                    (not (Ba_not_checked_p1))

                    ; #55104: <==negation-removal== 11143 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #60464: <==negation-removal== 75523 (pos)
                    (not (Bc_not_checked_p1))

                    ; #63671: <==uncertain_firing== 50774 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #69991: <==negation-removal== 50774 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #81473: <==negation-removal== 59863 (pos)
                    (not (Pb_not_checked_p1))

                    ; #84467: <==uncertain_firing== 66797 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #19219: <==commonly_known== 88030 (pos)
                    (Bc_checked_p2)

                    ; #26159: <==commonly_known== 39444 (neg)
                    (Pc_checked_p2)

                    ; #27788: <==commonly_known== 39444 (neg)
                    (Pb_checked_p2)

                    ; #32872: <==commonly_known== 88030 (pos)
                    (Ba_checked_p2)

                    ; #46524: <==commonly_known== 88030 (pos)
                    (Bb_checked_p2)

                    ; #56317: <==closure== 88266 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #58720: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #59231: <==commonly_known== 39444 (neg)
                    (Pa_checked_p2)

                    ; #60183: <==closure== 58720 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #88030: origin
                    (checked_p2)

                    ; #88266: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #12948: <==negation-removal== 56317 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #21521: <==negation-removal== 26159 (pos)
                    (not (Bc_not_checked_p2))

                    ; #33832: <==negation-removal== 46524 (pos)
                    (not (Pb_not_checked_p2))

                    ; #39444: <==negation-removal== 88030 (pos)
                    (not (not_checked_p2))

                    ; #40754: <==negation-removal== 88266 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #49432: <==negation-removal== 19219 (pos)
                    (not (Pc_not_checked_p2))

                    ; #56287: <==uncertain_firing== 60183 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #64110: <==uncertain_firing== 56317 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #65604: <==uncertain_firing== 58720 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #67954: <==negation-removal== 27788 (pos)
                    (not (Bb_not_checked_p2))

                    ; #76080: <==uncertain_firing== 88266 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #78593: <==negation-removal== 32872 (pos)
                    (not (Pa_not_checked_p2))

                    ; #78690: <==negation-removal== 60183 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #80028: <==negation-removal== 58720 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #89324: <==negation-removal== 59231 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #10567: <==commonly_known== 35022 (pos)
                    (Bb_checked_p3)

                    ; #16670: <==commonly_known== 48813 (neg)
                    (Pa_checked_p3)

                    ; #19608: <==commonly_known== 35022 (pos)
                    (Bc_checked_p3)

                    ; #35022: origin
                    (checked_p3)

                    ; #45486: <==closure== 97114 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #53882: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #69400: <==commonly_known== 35022 (pos)
                    (Ba_checked_p3)

                    ; #73451: <==closure== 53882 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #90702: <==commonly_known== 48813 (neg)
                    (Pc_checked_p3)

                    ; #92955: <==commonly_known== 48813 (neg)
                    (Pb_checked_p3)

                    ; #97114: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #11612: <==negation-removal== 45486 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #27195: <==negation-removal== 97114 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #29681: <==negation-removal== 73451 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #32386: <==negation-removal== 53882 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #36786: <==uncertain_firing== 53882 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #38767: <==negation-removal== 10567 (pos)
                    (not (Pb_not_checked_p3))

                    ; #45301: <==negation-removal== 16670 (pos)
                    (not (Ba_not_checked_p3))

                    ; #45420: <==uncertain_firing== 97114 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #48813: <==negation-removal== 35022 (pos)
                    (not (not_checked_p3))

                    ; #53871: <==negation-removal== 92955 (pos)
                    (not (Bb_not_checked_p3))

                    ; #73163: <==negation-removal== 90702 (pos)
                    (not (Bc_not_checked_p3))

                    ; #78263: <==uncertain_firing== 73451 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #79276: <==negation-removal== 69400 (pos)
                    (not (Pa_not_checked_p3))

                    ; #79604: <==uncertain_firing== 45486 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #84889: <==negation-removal== 19608 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13733: <==commonly_known== 15152 (pos)
                    (Bc_checked_p4)

                    ; #15152: origin
                    (checked_p4)

                    ; #18705: <==commonly_known== 69968 (neg)
                    (Pb_checked_p4)

                    ; #49126: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #54331: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #68885: <==commonly_known== 15152 (pos)
                    (Ba_checked_p4)

                    ; #70307: <==closure== 54331 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #78243: <==commonly_known== 69968 (neg)
                    (Pa_checked_p4)

                    ; #89851: <==commonly_known== 15152 (pos)
                    (Bb_checked_p4)

                    ; #91490: <==closure== 49126 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #95658: <==commonly_known== 69968 (neg)
                    (Pc_checked_p4)

                    ; #13260: <==negation-removal== 68885 (pos)
                    (not (Pa_not_checked_p4))

                    ; #39585: <==uncertain_firing== 54331 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #41426: <==uncertain_firing== 49126 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #41814: <==negation-removal== 89851 (pos)
                    (not (Pb_not_checked_p4))

                    ; #50184: <==uncertain_firing== 70307 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #64827: <==negation-removal== 54331 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #64935: <==negation-removal== 70307 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #66681: <==uncertain_firing== 91490 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #69968: <==negation-removal== 15152 (pos)
                    (not (not_checked_p4))

                    ; #72249: <==negation-removal== 49126 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #73490: <==negation-removal== 91490 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #84421: <==negation-removal== 95658 (pos)
                    (not (Bc_not_checked_p4))

                    ; #86535: <==negation-removal== 18705 (pos)
                    (not (Bb_not_checked_p4))

                    ; #88933: <==negation-removal== 13733 (pos)
                    (not (Pc_not_checked_p4))

                    ; #99196: <==negation-removal== 78243 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #14838: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #19261: <==commonly_known== 13531 (neg)
                    (Pa_checked_p5)

                    ; #25484: <==commonly_known== 71050 (pos)
                    (Bb_checked_p5)

                    ; #26788: <==commonly_known== 71050 (pos)
                    (Ba_checked_p5)

                    ; #33579: <==closure== 89735 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #41546: <==commonly_known== 13531 (neg)
                    (Pb_checked_p5)

                    ; #58041: <==commonly_known== 71050 (pos)
                    (Bc_checked_p5)

                    ; #67938: <==commonly_known== 13531 (neg)
                    (Pc_checked_p5)

                    ; #71050: origin
                    (checked_p5)

                    ; #74975: <==closure== 14838 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #89735: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #13531: <==negation-removal== 71050 (pos)
                    (not (not_checked_p5))

                    ; #17721: <==negation-removal== 26788 (pos)
                    (not (Pa_not_checked_p5))

                    ; #25466: <==negation-removal== 33579 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #42405: <==negation-removal== 74975 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #42807: <==negation-removal== 19261 (pos)
                    (not (Ba_not_checked_p5))

                    ; #56702: <==uncertain_firing== 33579 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #57071: <==negation-removal== 67938 (pos)
                    (not (Bc_not_checked_p5))

                    ; #58155: <==negation-removal== 41546 (pos)
                    (not (Bb_not_checked_p5))

                    ; #58211: <==uncertain_firing== 89735 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #59836: <==uncertain_firing== 74975 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #74757: <==negation-removal== 89735 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #78490: <==negation-removal== 58041 (pos)
                    (not (Pc_not_checked_p5))

                    ; #80476: <==negation-removal== 14838 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #81863: <==uncertain_firing== 14838 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #87626: <==negation-removal== 25484 (pos)
                    (not (Pb_not_checked_p5))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #14271: <==commonly_known== 71815 (pos)
                    (Bc_checked_p6)

                    ; #19773: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #20904: <==commonly_known== 85976 (neg)
                    (Pc_checked_p6)

                    ; #27290: <==closure== 19773 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #35267: <==commonly_known== 71815 (pos)
                    (Ba_checked_p6)

                    ; #52566: <==closure== 77124 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #52618: <==commonly_known== 85976 (neg)
                    (Pa_checked_p6)

                    ; #61435: <==commonly_known== 85976 (neg)
                    (Pb_checked_p6)

                    ; #71815: origin
                    (checked_p6)

                    ; #77124: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #85335: <==commonly_known== 71815 (pos)
                    (Bb_checked_p6)

                    ; #10732: <==negation-removal== 77124 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #22972: <==negation-removal== 35267 (pos)
                    (not (Pa_not_checked_p6))

                    ; #40759: <==negation-removal== 52618 (pos)
                    (not (Ba_not_checked_p6))

                    ; #42319: <==negation-removal== 14271 (pos)
                    (not (Pc_not_checked_p6))

                    ; #56032: <==uncertain_firing== 19773 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #56680: <==negation-removal== 52566 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #57352: <==negation-removal== 19773 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #59408: <==uncertain_firing== 77124 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #60985: <==uncertain_firing== 27290 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #62288: <==negation-removal== 20904 (pos)
                    (not (Bc_not_checked_p6))

                    ; #63578: <==negation-removal== 27290 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #65627: <==negation-removal== 85335 (pos)
                    (not (Pb_not_checked_p6))

                    ; #73579: <==negation-removal== 61435 (pos)
                    (not (Bb_not_checked_p6))

                    ; #85976: <==negation-removal== 71815 (pos)
                    (not (not_checked_p6))

                    ; #89337: <==uncertain_firing== 52566 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #17905: <==closure== 64804 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #35728: <==commonly_known== 81799 (pos)
                    (Bc_checked_p7)

                    ; #40837: <==commonly_known== 20159 (neg)
                    (Pb_checked_p7)

                    ; #43647: <==commonly_known== 81799 (pos)
                    (Ba_checked_p7)

                    ; #47148: <==commonly_known== 20159 (neg)
                    (Pc_checked_p7)

                    ; #60842: <==commonly_known== 20159 (neg)
                    (Pa_checked_p7)

                    ; #64804: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #77411: <==commonly_known== 81799 (pos)
                    (Bb_checked_p7)

                    ; #81799: origin
                    (checked_p7)

                    ; #85304: <==closure== 87608 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #87608: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #20159: <==negation-removal== 81799 (pos)
                    (not (not_checked_p7))

                    ; #27086: <==uncertain_firing== 85304 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #34603: <==negation-removal== 85304 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #35968: <==negation-removal== 87608 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #44992: <==uncertain_firing== 64804 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #49646: <==negation-removal== 43647 (pos)
                    (not (Pa_not_checked_p7))

                    ; #50814: <==negation-removal== 35728 (pos)
                    (not (Pc_not_checked_p7))

                    ; #57232: <==negation-removal== 64804 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #57782: <==negation-removal== 40837 (pos)
                    (not (Bb_not_checked_p7))

                    ; #59114: <==uncertain_firing== 17905 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #66496: <==negation-removal== 47148 (pos)
                    (not (Bc_not_checked_p7))

                    ; #67421: <==negation-removal== 17905 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #75695: <==negation-removal== 77411 (pos)
                    (not (Pb_not_checked_p7))

                    ; #82812: <==negation-removal== 60842 (pos)
                    (not (Ba_not_checked_p7))

                    ; #83612: <==uncertain_firing== 87608 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #18722: <==commonly_known== 56803 (pos)
                    (Bc_checked_p8)

                    ; #49832: <==commonly_known== 56803 (pos)
                    (Ba_checked_p8)

                    ; #53641: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #56743: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #56803: origin
                    (checked_p8)

                    ; #63735: <==commonly_known== 88399 (neg)
                    (Pc_checked_p8)

                    ; #78979: <==closure== 56743 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #81511: <==closure== 53641 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #82141: <==commonly_known== 88399 (neg)
                    (Pa_checked_p8)

                    ; #83041: <==commonly_known== 88399 (neg)
                    (Pb_checked_p8)

                    ; #84027: <==commonly_known== 56803 (pos)
                    (Bb_checked_p8)

                    ; #14052: <==negation-removal== 49832 (pos)
                    (not (Pa_not_checked_p8))

                    ; #23800: <==negation-removal== 83041 (pos)
                    (not (Bb_not_checked_p8))

                    ; #24996: <==negation-removal== 82141 (pos)
                    (not (Ba_not_checked_p8))

                    ; #26135: <==negation-removal== 18722 (pos)
                    (not (Pc_not_checked_p8))

                    ; #29602: <==uncertain_firing== 53641 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #33670: <==uncertain_firing== 81511 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #46028: <==negation-removal== 56743 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #63720: <==negation-removal== 63735 (pos)
                    (not (Bc_not_checked_p8))

                    ; #70029: <==uncertain_firing== 78979 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #70525: <==uncertain_firing== 56743 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #70822: <==negation-removal== 53641 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #84180: <==negation-removal== 81511 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #86267: <==negation-removal== 84027 (pos)
                    (not (Pb_not_checked_p8))

                    ; #88399: <==negation-removal== 56803 (pos)
                    (not (not_checked_p8))

                    ; #90515: <==negation-removal== 78979 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #28212: <==commonly_known== 48147 (pos)
                    (Bc_checked_p9)

                    ; #30084: <==commonly_known== 57613 (neg)
                    (Pb_checked_p9)

                    ; #37910: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #44930: <==closure== 37910 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #46285: <==commonly_known== 48147 (pos)
                    (Ba_checked_p9)

                    ; #48147: origin
                    (checked_p9)

                    ; #51110: <==closure== 64977 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #58721: <==commonly_known== 57613 (neg)
                    (Pa_checked_p9)

                    ; #64977: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #78653: <==commonly_known== 57613 (neg)
                    (Pc_checked_p9)

                    ; #90696: <==commonly_known== 48147 (pos)
                    (Bb_checked_p9)

                    ; #10498: <==negation-removal== 78653 (pos)
                    (not (Bc_not_checked_p9))

                    ; #20309: <==negation-removal== 64977 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #24178: <==uncertain_firing== 37910 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #28833: <==uncertain_firing== 64977 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #28901: <==negation-removal== 28212 (pos)
                    (not (Pc_not_checked_p9))

                    ; #32414: <==negation-removal== 46285 (pos)
                    (not (Pa_not_checked_p9))

                    ; #40617: <==negation-removal== 58721 (pos)
                    (not (Ba_not_checked_p9))

                    ; #42611: <==negation-removal== 37910 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #50503: <==negation-removal== 30084 (pos)
                    (not (Bb_not_checked_p9))

                    ; #57613: <==negation-removal== 48147 (pos)
                    (not (not_checked_p9))

                    ; #61370: <==negation-removal== 51110 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #68880: <==negation-removal== 44930 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #70930: <==uncertain_firing== 44930 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #77294: <==negation-removal== 90696 (pos)
                    (not (Pb_not_checked_p9))

                    ; #78287: <==uncertain_firing== 51110 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #11387: <==closure== 79613 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #11712: <==commonly_known== 23587 (pos)
                    (Bb_checked_p10)

                    ; #23587: origin
                    (checked_p10)

                    ; #35668: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #45988: <==commonly_known== 58942 (neg)
                    (Pa_checked_p10)

                    ; #46582: <==commonly_known== 23587 (pos)
                    (Bc_checked_p10)

                    ; #47091: <==commonly_known== 58942 (neg)
                    (Pc_checked_p10)

                    ; #53989: <==commonly_known== 58942 (neg)
                    (Pb_checked_p10)

                    ; #73716: <==commonly_known== 23587 (pos)
                    (Ba_checked_p10)

                    ; #79613: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #98634: <==closure== 35668 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #10075: <==negation-removal== 11387 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #11161: <==negation-removal== 79613 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #14895: <==negation-removal== 35668 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #17089: <==negation-removal== 47091 (pos)
                    (not (Bc_not_checked_p10))

                    ; #18506: <==negation-removal== 45988 (pos)
                    (not (Ba_not_checked_p10))

                    ; #18767: <==negation-removal== 11712 (pos)
                    (not (Pb_not_checked_p10))

                    ; #24136: <==uncertain_firing== 35668 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #34613: <==uncertain_firing== 11387 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #37839: <==uncertain_firing== 98634 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #44790: <==negation-removal== 98634 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #58942: <==negation-removal== 23587 (pos)
                    (not (not_checked_p10))

                    ; #61633: <==negation-removal== 73716 (pos)
                    (not (Pa_not_checked_p10))

                    ; #70580: <==negation-removal== 53989 (pos)
                    (not (Bb_not_checked_p10))

                    ; #73979: <==uncertain_firing== 79613 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #80513: <==negation-removal== 46582 (pos)
                    (not (Pc_not_checked_p10))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #10900: <==closure== 43405 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #15033: origin
                    (checked_p11)

                    ; #21434: <==commonly_known== 72653 (neg)
                    (Pa_checked_p11)

                    ; #22057: <==commonly_known== 72653 (neg)
                    (Pc_checked_p11)

                    ; #34904: <==commonly_known== 15033 (pos)
                    (Ba_checked_p11)

                    ; #43405: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #45465: <==commonly_known== 15033 (pos)
                    (Bc_checked_p11)

                    ; #48039: <==closure== 69081 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #69081: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #75503: <==commonly_known== 15033 (pos)
                    (Bb_checked_p11)

                    ; #87421: <==commonly_known== 72653 (neg)
                    (Pb_checked_p11)

                    ; #10343: <==negation-removal== 48039 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #16472: <==uncertain_firing== 69081 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #24754: <==uncertain_firing== 10900 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #25323: <==negation-removal== 87421 (pos)
                    (not (Bb_not_checked_p11))

                    ; #26796: <==negation-removal== 45465 (pos)
                    (not (Pc_not_checked_p11))

                    ; #32949: <==negation-removal== 22057 (pos)
                    (not (Bc_not_checked_p11))

                    ; #35188: <==negation-removal== 69081 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #36555: <==negation-removal== 21434 (pos)
                    (not (Ba_not_checked_p11))

                    ; #42957: <==negation-removal== 34904 (pos)
                    (not (Pa_not_checked_p11))

                    ; #56005: <==negation-removal== 75503 (pos)
                    (not (Pb_not_checked_p11))

                    ; #72653: <==negation-removal== 15033 (pos)
                    (not (not_checked_p11))

                    ; #73903: <==uncertain_firing== 48039 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #78013: <==uncertain_firing== 43405 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #89241: <==negation-removal== 10900 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #89789: <==negation-removal== 43405 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #11166: origin
                    (checked_p12)

                    ; #26378: <==commonly_known== 84779 (neg)
                    (Pa_checked_p12)

                    ; #32236: <==commonly_known== 84779 (neg)
                    (Pc_checked_p12)

                    ; #35520: <==commonly_known== 11166 (pos)
                    (Bb_checked_p12)

                    ; #50529: <==commonly_known== 11166 (pos)
                    (Ba_checked_p12)

                    ; #52655: <==closure== 83500 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #72556: <==commonly_known== 11166 (pos)
                    (Bc_checked_p12)

                    ; #73219: <==closure== 89756 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #79249: <==commonly_known== 84779 (neg)
                    (Pb_checked_p12)

                    ; #83500: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #89756: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #15532: <==negation-removal== 73219 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #16096: <==uncertain_firing== 89756 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #19516: <==negation-removal== 32236 (pos)
                    (not (Bc_not_checked_p12))

                    ; #22424: <==negation-removal== 26378 (pos)
                    (not (Ba_not_checked_p12))

                    ; #32140: <==negation-removal== 83500 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #32844: <==negation-removal== 50529 (pos)
                    (not (Pa_not_checked_p12))

                    ; #35127: <==uncertain_firing== 52655 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #48156: <==negation-removal== 35520 (pos)
                    (not (Pb_not_checked_p12))

                    ; #49399: <==negation-removal== 89756 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #50056: <==uncertain_firing== 83500 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #52839: <==negation-removal== 52655 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #72900: <==negation-removal== 79249 (pos)
                    (not (Bb_not_checked_p12))

                    ; #79663: <==negation-removal== 72556 (pos)
                    (not (Pc_not_checked_p12))

                    ; #84779: <==negation-removal== 11166 (pos)
                    (not (not_checked_p12))

                    ; #96551: <==uncertain_firing== 73219 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #19389: origin
                    (checked_p1)

                    ; #30428: <==closure== 73040 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #30512: <==commonly_known== 19389 (pos)
                    (Bc_checked_p1)

                    ; #44954: <==commonly_known== 19617 (neg)
                    (Pa_checked_p1)

                    ; #59863: <==commonly_known== 19389 (pos)
                    (Bb_checked_p1)

                    ; #60449: <==closure== 90755 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #73040: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #75523: <==commonly_known== 19617 (neg)
                    (Pc_checked_p1)

                    ; #90563: <==commonly_known== 19389 (pos)
                    (Ba_checked_p1)

                    ; #90755: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #95557: <==commonly_known== 19617 (neg)
                    (Pb_checked_p1)

                    ; #11350: <==negation-removal== 95557 (pos)
                    (not (Bb_not_checked_p1))

                    ; #19617: <==negation-removal== 19389 (pos)
                    (not (not_checked_p1))

                    ; #24451: <==uncertain_firing== 60449 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #39784: <==uncertain_firing== 73040 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #40570: <==negation-removal== 90563 (pos)
                    (not (Pa_not_checked_p1))

                    ; #42218: <==uncertain_firing== 30428 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #42349: <==negation-removal== 30512 (pos)
                    (not (Pc_not_checked_p1))

                    ; #47106: <==uncertain_firing== 90755 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #47721: <==negation-removal== 30428 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #49173: <==negation-removal== 44954 (pos)
                    (not (Ba_not_checked_p1))

                    ; #49425: <==negation-removal== 90755 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #54959: <==negation-removal== 73040 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #60464: <==negation-removal== 75523 (pos)
                    (not (Bc_not_checked_p1))

                    ; #60548: <==negation-removal== 60449 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #81473: <==negation-removal== 59863 (pos)
                    (not (Pb_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #19219: <==commonly_known== 88030 (pos)
                    (Bc_checked_p2)

                    ; #21317: <==closure== 73243 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #26159: <==commonly_known== 39444 (neg)
                    (Pc_checked_p2)

                    ; #27788: <==commonly_known== 39444 (neg)
                    (Pb_checked_p2)

                    ; #32872: <==commonly_known== 88030 (pos)
                    (Ba_checked_p2)

                    ; #46524: <==commonly_known== 88030 (pos)
                    (Bb_checked_p2)

                    ; #59231: <==commonly_known== 39444 (neg)
                    (Pa_checked_p2)

                    ; #63823: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #71754: <==closure== 63823 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #73243: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #88030: origin
                    (checked_p2)

                    ; #10328: <==negation-removal== 71754 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #21521: <==negation-removal== 26159 (pos)
                    (not (Bc_not_checked_p2))

                    ; #27820: <==negation-removal== 21317 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #31261: <==negation-removal== 73243 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #33832: <==negation-removal== 46524 (pos)
                    (not (Pb_not_checked_p2))

                    ; #37107: <==uncertain_firing== 21317 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #39444: <==negation-removal== 88030 (pos)
                    (not (not_checked_p2))

                    ; #44975: <==uncertain_firing== 63823 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #46691: <==uncertain_firing== 71754 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #49432: <==negation-removal== 19219 (pos)
                    (not (Pc_not_checked_p2))

                    ; #54508: <==negation-removal== 63823 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #67954: <==negation-removal== 27788 (pos)
                    (not (Bb_not_checked_p2))

                    ; #78593: <==negation-removal== 32872 (pos)
                    (not (Pa_not_checked_p2))

                    ; #85438: <==uncertain_firing== 73243 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #89324: <==negation-removal== 59231 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #10567: <==commonly_known== 35022 (pos)
                    (Bb_checked_p3)

                    ; #16670: <==commonly_known== 48813 (neg)
                    (Pa_checked_p3)

                    ; #19608: <==commonly_known== 35022 (pos)
                    (Bc_checked_p3)

                    ; #26023: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #35022: origin
                    (checked_p3)

                    ; #68005: <==closure== 79105 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #69400: <==commonly_known== 35022 (pos)
                    (Ba_checked_p3)

                    ; #79105: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #86058: <==closure== 26023 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #90702: <==commonly_known== 48813 (neg)
                    (Pc_checked_p3)

                    ; #92955: <==commonly_known== 48813 (neg)
                    (Pb_checked_p3)

                    ; #12302: <==uncertain_firing== 26023 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #15200: <==uncertain_firing== 79105 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #18560: <==negation-removal== 68005 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #22561: <==uncertain_firing== 86058 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #38767: <==negation-removal== 10567 (pos)
                    (not (Pb_not_checked_p3))

                    ; #45301: <==negation-removal== 16670 (pos)
                    (not (Ba_not_checked_p3))

                    ; #48813: <==negation-removal== 35022 (pos)
                    (not (not_checked_p3))

                    ; #53871: <==negation-removal== 92955 (pos)
                    (not (Bb_not_checked_p3))

                    ; #61675: <==negation-removal== 79105 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #68129: <==negation-removal== 26023 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #70184: <==negation-removal== 86058 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #73163: <==negation-removal== 90702 (pos)
                    (not (Bc_not_checked_p3))

                    ; #74029: <==uncertain_firing== 68005 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #79276: <==negation-removal== 69400 (pos)
                    (not (Pa_not_checked_p3))

                    ; #84889: <==negation-removal== 19608 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13733: <==commonly_known== 15152 (pos)
                    (Bc_checked_p4)

                    ; #15152: origin
                    (checked_p4)

                    ; #18705: <==commonly_known== 69968 (neg)
                    (Pb_checked_p4)

                    ; #28822: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #32392: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #68885: <==commonly_known== 15152 (pos)
                    (Ba_checked_p4)

                    ; #78203: <==closure== 28822 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #78243: <==commonly_known== 69968 (neg)
                    (Pa_checked_p4)

                    ; #89851: <==commonly_known== 15152 (pos)
                    (Bb_checked_p4)

                    ; #95658: <==commonly_known== 69968 (neg)
                    (Pc_checked_p4)

                    ; #97750: <==closure== 32392 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #12743: <==uncertain_firing== 32392 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #13260: <==negation-removal== 68885 (pos)
                    (not (Pa_not_checked_p4))

                    ; #17103: <==negation-removal== 97750 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #29577: <==negation-removal== 32392 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #41814: <==negation-removal== 89851 (pos)
                    (not (Pb_not_checked_p4))

                    ; #67347: <==uncertain_firing== 97750 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #69968: <==negation-removal== 15152 (pos)
                    (not (not_checked_p4))

                    ; #72184: <==negation-removal== 78203 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #81153: <==uncertain_firing== 78203 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #84421: <==negation-removal== 95658 (pos)
                    (not (Bc_not_checked_p4))

                    ; #86535: <==negation-removal== 18705 (pos)
                    (not (Bb_not_checked_p4))

                    ; #86934: <==negation-removal== 28822 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #88080: <==uncertain_firing== 28822 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #88933: <==negation-removal== 13733 (pos)
                    (not (Pc_not_checked_p4))

                    ; #99196: <==negation-removal== 78243 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #15686: <==closure== 16630 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #16630: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #19261: <==commonly_known== 13531 (neg)
                    (Pa_checked_p5)

                    ; #24565: <==closure== 62386 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #25484: <==commonly_known== 71050 (pos)
                    (Bb_checked_p5)

                    ; #26788: <==commonly_known== 71050 (pos)
                    (Ba_checked_p5)

                    ; #41546: <==commonly_known== 13531 (neg)
                    (Pb_checked_p5)

                    ; #58041: <==commonly_known== 71050 (pos)
                    (Bc_checked_p5)

                    ; #62386: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #67938: <==commonly_known== 13531 (neg)
                    (Pc_checked_p5)

                    ; #71050: origin
                    (checked_p5)

                    ; #13531: <==negation-removal== 71050 (pos)
                    (not (not_checked_p5))

                    ; #17721: <==negation-removal== 26788 (pos)
                    (not (Pa_not_checked_p5))

                    ; #37638: <==uncertain_firing== 16630 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #42807: <==negation-removal== 19261 (pos)
                    (not (Ba_not_checked_p5))

                    ; #44530: <==uncertain_firing== 62386 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #52396: <==uncertain_firing== 24565 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #57071: <==negation-removal== 67938 (pos)
                    (not (Bc_not_checked_p5))

                    ; #58155: <==negation-removal== 41546 (pos)
                    (not (Bb_not_checked_p5))

                    ; #62220: <==uncertain_firing== 15686 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #67032: <==negation-removal== 62386 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #78490: <==negation-removal== 58041 (pos)
                    (not (Pc_not_checked_p5))

                    ; #83658: <==negation-removal== 15686 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #85616: <==negation-removal== 24565 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #87626: <==negation-removal== 25484 (pos)
                    (not (Pb_not_checked_p5))

                    ; #91622: <==negation-removal== 16630 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #14271: <==commonly_known== 71815 (pos)
                    (Bc_checked_p6)

                    ; #20904: <==commonly_known== 85976 (neg)
                    (Pc_checked_p6)

                    ; #29709: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #35267: <==commonly_known== 71815 (pos)
                    (Ba_checked_p6)

                    ; #40295: <==closure== 29709 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #52618: <==commonly_known== 85976 (neg)
                    (Pa_checked_p6)

                    ; #55576: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #61435: <==commonly_known== 85976 (neg)
                    (Pb_checked_p6)

                    ; #71815: origin
                    (checked_p6)

                    ; #85335: <==commonly_known== 71815 (pos)
                    (Bb_checked_p6)

                    ; #92132: <==closure== 55576 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #22972: <==negation-removal== 35267 (pos)
                    (not (Pa_not_checked_p6))

                    ; #26728: <==uncertain_firing== 29709 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #38984: <==negation-removal== 55576 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #40759: <==negation-removal== 52618 (pos)
                    (not (Ba_not_checked_p6))

                    ; #42319: <==negation-removal== 14271 (pos)
                    (not (Pc_not_checked_p6))

                    ; #47615: <==uncertain_firing== 92132 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #50503: <==negation-removal== 40295 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #57379: <==uncertain_firing== 55576 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #62288: <==negation-removal== 20904 (pos)
                    (not (Bc_not_checked_p6))

                    ; #65627: <==negation-removal== 85335 (pos)
                    (not (Pb_not_checked_p6))

                    ; #73579: <==negation-removal== 61435 (pos)
                    (not (Bb_not_checked_p6))

                    ; #76122: <==negation-removal== 29709 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #76811: <==uncertain_firing== 40295 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #85976: <==negation-removal== 71815 (pos)
                    (not (not_checked_p6))

                    ; #87863: <==negation-removal== 92132 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #35728: <==commonly_known== 81799 (pos)
                    (Bc_checked_p7)

                    ; #40837: <==commonly_known== 20159 (neg)
                    (Pb_checked_p7)

                    ; #43647: <==commonly_known== 81799 (pos)
                    (Ba_checked_p7)

                    ; #44453: <==closure== 45664 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #45664: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #47148: <==commonly_known== 20159 (neg)
                    (Pc_checked_p7)

                    ; #60842: <==commonly_known== 20159 (neg)
                    (Pa_checked_p7)

                    ; #61404: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #70311: <==closure== 61404 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #77411: <==commonly_known== 81799 (pos)
                    (Bb_checked_p7)

                    ; #81799: origin
                    (checked_p7)

                    ; #11212: <==uncertain_firing== 70311 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #20159: <==negation-removal== 81799 (pos)
                    (not (not_checked_p7))

                    ; #22232: <==negation-removal== 70311 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #45415: <==negation-removal== 44453 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #49646: <==negation-removal== 43647 (pos)
                    (not (Pa_not_checked_p7))

                    ; #50814: <==negation-removal== 35728 (pos)
                    (not (Pc_not_checked_p7))

                    ; #56097: <==negation-removal== 61404 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #56694: <==uncertain_firing== 44453 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #57782: <==negation-removal== 40837 (pos)
                    (not (Bb_not_checked_p7))

                    ; #58946: <==negation-removal== 45664 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #66496: <==negation-removal== 47148 (pos)
                    (not (Bc_not_checked_p7))

                    ; #69110: <==uncertain_firing== 61404 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #74095: <==uncertain_firing== 45664 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #75695: <==negation-removal== 77411 (pos)
                    (not (Pb_not_checked_p7))

                    ; #82812: <==negation-removal== 60842 (pos)
                    (not (Ba_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #18722: <==commonly_known== 56803 (pos)
                    (Bc_checked_p8)

                    ; #20319: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #25280: <==closure== 34583 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #34583: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #49832: <==commonly_known== 56803 (pos)
                    (Ba_checked_p8)

                    ; #56803: origin
                    (checked_p8)

                    ; #63735: <==commonly_known== 88399 (neg)
                    (Pc_checked_p8)

                    ; #67287: <==closure== 20319 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #82141: <==commonly_known== 88399 (neg)
                    (Pa_checked_p8)

                    ; #83041: <==commonly_known== 88399 (neg)
                    (Pb_checked_p8)

                    ; #84027: <==commonly_known== 56803 (pos)
                    (Bb_checked_p8)

                    ; #14052: <==negation-removal== 49832 (pos)
                    (not (Pa_not_checked_p8))

                    ; #20667: <==uncertain_firing== 20319 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #21520: <==negation-removal== 67287 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #23800: <==negation-removal== 83041 (pos)
                    (not (Bb_not_checked_p8))

                    ; #24996: <==negation-removal== 82141 (pos)
                    (not (Ba_not_checked_p8))

                    ; #26135: <==negation-removal== 18722 (pos)
                    (not (Pc_not_checked_p8))

                    ; #38019: <==negation-removal== 25280 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #52165: <==negation-removal== 34583 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #63720: <==negation-removal== 63735 (pos)
                    (not (Bc_not_checked_p8))

                    ; #66812: <==uncertain_firing== 34583 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #86267: <==negation-removal== 84027 (pos)
                    (not (Pb_not_checked_p8))

                    ; #87056: <==uncertain_firing== 67287 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #88399: <==negation-removal== 56803 (pos)
                    (not (not_checked_p8))

                    ; #89714: <==uncertain_firing== 25280 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #99689: <==negation-removal== 20319 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #13757: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #15981: <==closure== 13757 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #28212: <==commonly_known== 48147 (pos)
                    (Bc_checked_p9)

                    ; #30084: <==commonly_known== 57613 (neg)
                    (Pb_checked_p9)

                    ; #42087: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #46285: <==commonly_known== 48147 (pos)
                    (Ba_checked_p9)

                    ; #48147: origin
                    (checked_p9)

                    ; #58721: <==commonly_known== 57613 (neg)
                    (Pa_checked_p9)

                    ; #78653: <==commonly_known== 57613 (neg)
                    (Pc_checked_p9)

                    ; #86169: <==closure== 42087 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #90696: <==commonly_known== 48147 (pos)
                    (Bb_checked_p9)

                    ; #10498: <==negation-removal== 78653 (pos)
                    (not (Bc_not_checked_p9))

                    ; #16944: <==uncertain_firing== 86169 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #28901: <==negation-removal== 28212 (pos)
                    (not (Pc_not_checked_p9))

                    ; #30549: <==negation-removal== 42087 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #32414: <==negation-removal== 46285 (pos)
                    (not (Pa_not_checked_p9))

                    ; #37982: <==negation-removal== 13757 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #40617: <==negation-removal== 58721 (pos)
                    (not (Ba_not_checked_p9))

                    ; #46432: <==uncertain_firing== 15981 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #50503: <==negation-removal== 30084 (pos)
                    (not (Bb_not_checked_p9))

                    ; #57613: <==negation-removal== 48147 (pos)
                    (not (not_checked_p9))

                    ; #77294: <==negation-removal== 90696 (pos)
                    (not (Pb_not_checked_p9))

                    ; #78618: <==uncertain_firing== 42087 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #79930: <==uncertain_firing== 13757 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #88439: <==negation-removal== 15981 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #90096: <==negation-removal== 86169 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))))

)