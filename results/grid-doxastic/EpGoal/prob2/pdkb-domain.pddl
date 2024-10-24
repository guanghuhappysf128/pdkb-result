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
                           (at_a_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #15600: <==closure== 36660 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #24720: <==closure== 80332 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #36660: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #40854: <==closure== 45779 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #45779: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #80332: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #15379: <==negation-removal== 40854 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #16293: <==negation-removal== 80332 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #25845: <==uncertain_firing== 40854 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #45447: <==negation-removal== 45779 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #54691: <==uncertain_firing== 36660 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #68776: <==uncertain_firing== 80332 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #72352: <==uncertain_firing== 24720 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #74641: <==negation-removal== 36660 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #77547: <==uncertain_firing== 15600 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #78093: <==negation-removal== 15600 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #87014: <==uncertain_firing== 45779 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #89758: <==negation-removal== 24720 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))))

    (:action badcomm_p10_b_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #15600: <==closure== 36660 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #24720: <==closure== 80332 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #36660: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #40854: <==closure== 45779 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #45779: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #80332: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #15379: <==negation-removal== 40854 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #16293: <==negation-removal== 80332 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #25845: <==uncertain_firing== 40854 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #45447: <==negation-removal== 45779 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #54691: <==uncertain_firing== 36660 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #68776: <==uncertain_firing== 80332 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #72352: <==uncertain_firing== 24720 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #74641: <==negation-removal== 36660 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #77547: <==uncertain_firing== 15600 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #78093: <==negation-removal== 15600 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #87014: <==uncertain_firing== 45779 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #89758: <==negation-removal== 24720 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))))

    (:action badcomm_p10_c_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #15600: <==closure== 36660 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #24720: <==closure== 80332 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #36660: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #40854: <==closure== 45779 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #45779: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #80332: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #15379: <==negation-removal== 40854 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #16293: <==negation-removal== 80332 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #25845: <==uncertain_firing== 40854 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #45447: <==negation-removal== 45779 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #54691: <==uncertain_firing== 36660 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #68776: <==uncertain_firing== 80332 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #72352: <==uncertain_firing== 24720 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #74641: <==negation-removal== 36660 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #77547: <==uncertain_firing== 15600 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #78093: <==negation-removal== 15600 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #87014: <==uncertain_firing== 45779 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #89758: <==negation-removal== 24720 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))))

    (:action badcomm_p11_a_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #21819: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #32864: <==closure== 96706 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #48611: <==closure== 84584 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #60727: <==closure== 21819 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #84584: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #96706: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #13732: <==uncertain_firing== 21819 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #16798: <==negation-removal== 60727 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #18576: <==uncertain_firing== 96706 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #21875: <==negation-removal== 84584 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #24321: <==uncertain_firing== 32864 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #24747: <==negation-removal== 32864 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #52148: <==uncertain_firing== 48611 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #52198: <==negation-removal== 21819 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #52200: <==uncertain_firing== 60727 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #67428: <==negation-removal== 48611 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #86689: <==uncertain_firing== 84584 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #90266: <==negation-removal== 96706 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))))

    (:action badcomm_p11_b_s
        :precondition (and (at_b_p11)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #21819: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #32864: <==closure== 96706 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #48611: <==closure== 84584 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #60727: <==closure== 21819 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #84584: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #96706: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #13732: <==uncertain_firing== 21819 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #16798: <==negation-removal== 60727 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #18576: <==uncertain_firing== 96706 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #21875: <==negation-removal== 84584 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #24321: <==uncertain_firing== 32864 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #24747: <==negation-removal== 32864 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #52148: <==uncertain_firing== 48611 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #52198: <==negation-removal== 21819 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #52200: <==uncertain_firing== 60727 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #67428: <==negation-removal== 48611 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #86689: <==uncertain_firing== 84584 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #90266: <==negation-removal== 96706 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))))

    (:action badcomm_p11_c_s
        :precondition (and (at_c_p11)
                           (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #21819: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #32864: <==closure== 96706 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #48611: <==closure== 84584 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #60727: <==closure== 21819 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #84584: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #96706: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #13732: <==uncertain_firing== 21819 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #16798: <==negation-removal== 60727 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #18576: <==uncertain_firing== 96706 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #21875: <==negation-removal== 84584 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #24321: <==uncertain_firing== 32864 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #24747: <==negation-removal== 32864 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #52148: <==uncertain_firing== 48611 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #52198: <==negation-removal== 21819 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #52200: <==uncertain_firing== 60727 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #67428: <==negation-removal== 48611 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #86689: <==uncertain_firing== 84584 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #90266: <==negation-removal== 96706 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))))

    (:action badcomm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #21476: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #24523: <==closure== 29034 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #29034: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #30136: <==closure== 48364 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #48364: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #86290: <==closure== 21476 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #15103: <==negation-removal== 86290 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #16382: <==negation-removal== 30136 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #17061: <==negation-removal== 29034 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #31432: <==uncertain_firing== 24523 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #33987: <==negation-removal== 48364 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #47546: <==uncertain_firing== 30136 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #51671: <==negation-removal== 21476 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #51817: <==uncertain_firing== 86290 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #67211: <==uncertain_firing== 29034 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #75916: <==negation-removal== 24523 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #86206: <==uncertain_firing== 48364 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #91376: <==uncertain_firing== 21476 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))))

    (:action badcomm_p12_b_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #21476: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #24523: <==closure== 29034 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #29034: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #30136: <==closure== 48364 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #48364: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #86290: <==closure== 21476 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #15103: <==negation-removal== 86290 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #16382: <==negation-removal== 30136 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #17061: <==negation-removal== 29034 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #31432: <==uncertain_firing== 24523 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #33987: <==negation-removal== 48364 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #47546: <==uncertain_firing== 30136 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #51671: <==negation-removal== 21476 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #51817: <==uncertain_firing== 86290 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #67211: <==uncertain_firing== 29034 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #75916: <==negation-removal== 24523 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #86206: <==uncertain_firing== 48364 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #91376: <==uncertain_firing== 21476 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))))

    (:action badcomm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #21476: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #24523: <==closure== 29034 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #29034: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #30136: <==closure== 48364 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #48364: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #86290: <==closure== 21476 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #15103: <==negation-removal== 86290 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #16382: <==negation-removal== 30136 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #17061: <==negation-removal== 29034 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #31432: <==uncertain_firing== 24523 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #33987: <==negation-removal== 48364 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #47546: <==uncertain_firing== 30136 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #51671: <==negation-removal== 21476 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #51817: <==uncertain_firing== 86290 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #67211: <==uncertain_firing== 29034 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #75916: <==negation-removal== 24523 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #86206: <==uncertain_firing== 48364 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #91376: <==uncertain_firing== 21476 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))))

    (:action badcomm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #28918: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #33555: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #46303: <==closure== 33555 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #49794: <==closure== 69203 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #69203: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #76411: <==closure== 28918 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #11366: <==negation-removal== 76411 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #13133: <==uncertain_firing== 69203 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #25515: <==negation-removal== 69203 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #30683: <==negation-removal== 46303 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #32741: <==negation-removal== 33555 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #51988: <==uncertain_firing== 49794 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #54880: <==uncertain_firing== 28918 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #60093: <==uncertain_firing== 46303 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #61523: <==uncertain_firing== 76411 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #69492: <==uncertain_firing== 33555 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #69945: <==negation-removal== 49794 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #92621: <==negation-removal== 28918 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #28918: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #33555: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #46303: <==closure== 33555 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #49794: <==closure== 69203 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #69203: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #76411: <==closure== 28918 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #11366: <==negation-removal== 76411 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #13133: <==uncertain_firing== 69203 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #25515: <==negation-removal== 69203 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #30683: <==negation-removal== 46303 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #32741: <==negation-removal== 33555 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #51988: <==uncertain_firing== 49794 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #54880: <==uncertain_firing== 28918 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #60093: <==uncertain_firing== 46303 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #61523: <==uncertain_firing== 76411 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #69492: <==uncertain_firing== 33555 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #69945: <==negation-removal== 49794 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #92621: <==negation-removal== 28918 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #28918: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #33555: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #46303: <==closure== 33555 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #49794: <==closure== 69203 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #69203: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #76411: <==closure== 28918 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #11366: <==negation-removal== 76411 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #13133: <==uncertain_firing== 69203 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #25515: <==negation-removal== 69203 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #30683: <==negation-removal== 46303 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #32741: <==negation-removal== 33555 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #51988: <==uncertain_firing== 49794 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #54880: <==uncertain_firing== 28918 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #60093: <==uncertain_firing== 46303 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #61523: <==uncertain_firing== 76411 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #69492: <==uncertain_firing== 33555 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #69945: <==negation-removal== 49794 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #92621: <==negation-removal== 28918 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #17629: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #52258: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #69624: <==closure== 52258 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #76034: <==closure== 89902 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #85425: <==closure== 17629 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #89902: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #11364: <==uncertain_firing== 76034 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #15526: <==negation-removal== 89902 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #27247: <==uncertain_firing== 85425 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #33095: <==uncertain_firing== 89902 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #33817: <==negation-removal== 69624 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #36106: <==negation-removal== 52258 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #36133: <==uncertain_firing== 52258 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #41726: <==negation-removal== 76034 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #54083: <==uncertain_firing== 17629 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #65692: <==negation-removal== 85425 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #66984: <==negation-removal== 17629 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #84122: <==uncertain_firing== 69624 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #17629: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #52258: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #69624: <==closure== 52258 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #76034: <==closure== 89902 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #85425: <==closure== 17629 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #89902: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #11364: <==uncertain_firing== 76034 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #15526: <==negation-removal== 89902 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #27247: <==uncertain_firing== 85425 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #33095: <==uncertain_firing== 89902 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #33817: <==negation-removal== 69624 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #36106: <==negation-removal== 52258 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #36133: <==uncertain_firing== 52258 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #41726: <==negation-removal== 76034 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #54083: <==uncertain_firing== 17629 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #65692: <==negation-removal== 85425 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #66984: <==negation-removal== 17629 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #84122: <==uncertain_firing== 69624 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #17629: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #52258: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #69624: <==closure== 52258 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #76034: <==closure== 89902 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #85425: <==closure== 17629 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #89902: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #11364: <==uncertain_firing== 76034 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #15526: <==negation-removal== 89902 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #27247: <==uncertain_firing== 85425 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #33095: <==uncertain_firing== 89902 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #33817: <==negation-removal== 69624 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #36106: <==negation-removal== 52258 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #36133: <==uncertain_firing== 52258 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #41726: <==negation-removal== 76034 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #54083: <==uncertain_firing== 17629 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #65692: <==negation-removal== 85425 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #66984: <==negation-removal== 17629 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #84122: <==uncertain_firing== 69624 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #11969: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #26021: <==closure== 40981 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #33804: <==closure== 34296 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #34296: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #40981: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #91266: <==closure== 11969 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #11175: <==negation-removal== 34296 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #22977: <==uncertain_firing== 26021 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #25599: <==uncertain_firing== 91266 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #31747: <==uncertain_firing== 34296 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #33205: <==negation-removal== 33804 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #38648: <==negation-removal== 40981 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #44106: <==negation-removal== 26021 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #59688: <==uncertain_firing== 40981 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #63417: <==negation-removal== 91266 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #68671: <==negation-removal== 11969 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #84097: <==uncertain_firing== 33804 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #90061: <==uncertain_firing== 11969 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #11969: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #26021: <==closure== 40981 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #33804: <==closure== 34296 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #34296: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #40981: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #91266: <==closure== 11969 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #11175: <==negation-removal== 34296 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #22977: <==uncertain_firing== 26021 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #25599: <==uncertain_firing== 91266 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #31747: <==uncertain_firing== 34296 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #33205: <==negation-removal== 33804 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #38648: <==negation-removal== 40981 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #44106: <==negation-removal== 26021 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #59688: <==uncertain_firing== 40981 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #63417: <==negation-removal== 91266 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #68671: <==negation-removal== 11969 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #84097: <==uncertain_firing== 33804 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #90061: <==uncertain_firing== 11969 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #11969: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #26021: <==closure== 40981 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #33804: <==closure== 34296 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #34296: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #40981: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #91266: <==closure== 11969 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #11175: <==negation-removal== 34296 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #22977: <==uncertain_firing== 26021 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #25599: <==uncertain_firing== 91266 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #31747: <==uncertain_firing== 34296 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #33205: <==negation-removal== 33804 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #38648: <==negation-removal== 40981 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #44106: <==negation-removal== 26021 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #59688: <==uncertain_firing== 40981 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #63417: <==negation-removal== 91266 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #68671: <==negation-removal== 11969 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #84097: <==uncertain_firing== 33804 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #90061: <==uncertain_firing== 11969 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #11887: <==closure== 55035 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #55035: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #63034: <==closure== 81659 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #67190: <==closure== 86881 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #81659: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #86881: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #11086: <==uncertain_firing== 86881 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #11630: <==negation-removal== 55035 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #28249: <==uncertain_firing== 11887 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #42145: <==negation-removal== 11887 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #50004: <==uncertain_firing== 81659 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #52351: <==negation-removal== 86881 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #69718: <==negation-removal== 81659 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #70548: <==uncertain_firing== 63034 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #81520: <==uncertain_firing== 55035 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #82392: <==uncertain_firing== 67190 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #90515: <==negation-removal== 67190 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #91044: <==negation-removal== 63034 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #11887: <==closure== 55035 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #55035: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #63034: <==closure== 81659 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #67190: <==closure== 86881 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #81659: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #86881: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #11086: <==uncertain_firing== 86881 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #11630: <==negation-removal== 55035 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #28249: <==uncertain_firing== 11887 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #42145: <==negation-removal== 11887 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #50004: <==uncertain_firing== 81659 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #52351: <==negation-removal== 86881 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #69718: <==negation-removal== 81659 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #70548: <==uncertain_firing== 63034 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #81520: <==uncertain_firing== 55035 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #82392: <==uncertain_firing== 67190 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #90515: <==negation-removal== 67190 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #91044: <==negation-removal== 63034 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #11887: <==closure== 55035 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #55035: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #63034: <==closure== 81659 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #67190: <==closure== 86881 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #81659: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #86881: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #11086: <==uncertain_firing== 86881 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #11630: <==negation-removal== 55035 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #28249: <==uncertain_firing== 11887 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #42145: <==negation-removal== 11887 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #50004: <==uncertain_firing== 81659 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #52351: <==negation-removal== 86881 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #69718: <==negation-removal== 81659 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #70548: <==uncertain_firing== 63034 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #81520: <==uncertain_firing== 55035 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #82392: <==uncertain_firing== 67190 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #90515: <==negation-removal== 67190 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #91044: <==negation-removal== 63034 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #11232: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #33274: <==closure== 72497 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #58672: <==closure== 11232 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #63331: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #65418: <==closure== 63331 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #72497: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #11891: <==negation-removal== 33274 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #16941: <==negation-removal== 11232 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #18715: <==negation-removal== 72497 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #38487: <==negation-removal== 58672 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #44333: <==uncertain_firing== 33274 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #47206: <==uncertain_firing== 58672 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #52596: <==uncertain_firing== 65418 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #57134: <==uncertain_firing== 11232 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #69645: <==uncertain_firing== 63331 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #70074: <==negation-removal== 65418 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #75933: <==negation-removal== 63331 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #86123: <==uncertain_firing== 72497 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #11232: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #33274: <==closure== 72497 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #58672: <==closure== 11232 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #63331: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #65418: <==closure== 63331 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #72497: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #11891: <==negation-removal== 33274 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #16941: <==negation-removal== 11232 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #18715: <==negation-removal== 72497 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #38487: <==negation-removal== 58672 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #44333: <==uncertain_firing== 33274 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #47206: <==uncertain_firing== 58672 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #52596: <==uncertain_firing== 65418 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #57134: <==uncertain_firing== 11232 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #69645: <==uncertain_firing== 63331 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #70074: <==negation-removal== 65418 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #75933: <==negation-removal== 63331 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #86123: <==uncertain_firing== 72497 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #11232: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #33274: <==closure== 72497 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #58672: <==closure== 11232 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #63331: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #65418: <==closure== 63331 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #72497: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #11891: <==negation-removal== 33274 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #16941: <==negation-removal== 11232 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #18715: <==negation-removal== 72497 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #38487: <==negation-removal== 58672 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #44333: <==uncertain_firing== 33274 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #47206: <==uncertain_firing== 58672 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #52596: <==uncertain_firing== 65418 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #57134: <==uncertain_firing== 11232 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #69645: <==uncertain_firing== 63331 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #70074: <==negation-removal== 65418 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #75933: <==negation-removal== 63331 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #86123: <==uncertain_firing== 72497 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #17492: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #39699: <==closure== 17492 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #41202: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #45877: <==closure== 41202 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #47770: <==closure== 59454 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #59454: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #15201: <==negation-removal== 47770 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #21076: <==negation-removal== 39699 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #32251: <==negation-removal== 17492 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #33327: <==uncertain_firing== 41202 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #47099: <==negation-removal== 45877 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #69015: <==uncertain_firing== 39699 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #72440: <==negation-removal== 41202 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #78546: <==uncertain_firing== 45877 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #80620: <==uncertain_firing== 47770 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #88571: <==uncertain_firing== 17492 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #88962: <==negation-removal== 59454 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #89380: <==uncertain_firing== 59454 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #17492: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #39699: <==closure== 17492 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #41202: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #45877: <==closure== 41202 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #47770: <==closure== 59454 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #59454: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #15201: <==negation-removal== 47770 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #21076: <==negation-removal== 39699 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #32251: <==negation-removal== 17492 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #33327: <==uncertain_firing== 41202 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #47099: <==negation-removal== 45877 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #69015: <==uncertain_firing== 39699 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #72440: <==negation-removal== 41202 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #78546: <==uncertain_firing== 45877 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #80620: <==uncertain_firing== 47770 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #88571: <==uncertain_firing== 17492 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #88962: <==negation-removal== 59454 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #89380: <==uncertain_firing== 59454 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #17492: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #39699: <==closure== 17492 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #41202: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #45877: <==closure== 41202 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #47770: <==closure== 59454 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #59454: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #15201: <==negation-removal== 47770 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #21076: <==negation-removal== 39699 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #32251: <==negation-removal== 17492 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #33327: <==uncertain_firing== 41202 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #47099: <==negation-removal== 45877 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #69015: <==uncertain_firing== 39699 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #72440: <==negation-removal== 41202 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #78546: <==uncertain_firing== 45877 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #80620: <==uncertain_firing== 47770 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #88571: <==uncertain_firing== 17492 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #88962: <==negation-removal== 59454 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #89380: <==uncertain_firing== 59454 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #23116: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #24346: <==closure== 67610 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #45542: <==closure== 23116 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #46921: <==closure== 76075 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #67610: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #76075: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #11286: <==negation-removal== 45542 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #21354: <==uncertain_firing== 46921 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #24462: <==negation-removal== 76075 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #30824: <==uncertain_firing== 24346 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #54537: <==negation-removal== 23116 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #57550: <==negation-removal== 67610 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #59072: <==uncertain_firing== 23116 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #69351: <==negation-removal== 24346 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #72993: <==uncertain_firing== 45542 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #82934: <==uncertain_firing== 76075 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #84623: <==uncertain_firing== 67610 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #86656: <==negation-removal== 46921 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #23116: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #24346: <==closure== 67610 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #45542: <==closure== 23116 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #46921: <==closure== 76075 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #67610: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #76075: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #11286: <==negation-removal== 45542 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #21354: <==uncertain_firing== 46921 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #24462: <==negation-removal== 76075 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #30824: <==uncertain_firing== 24346 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #54537: <==negation-removal== 23116 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #57550: <==negation-removal== 67610 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #59072: <==uncertain_firing== 23116 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #69351: <==negation-removal== 24346 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #72993: <==uncertain_firing== 45542 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #82934: <==uncertain_firing== 76075 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #84623: <==uncertain_firing== 67610 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #86656: <==negation-removal== 46921 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #23116: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #24346: <==closure== 67610 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #45542: <==closure== 23116 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #46921: <==closure== 76075 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #67610: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #76075: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #11286: <==negation-removal== 45542 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #21354: <==uncertain_firing== 46921 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #24462: <==negation-removal== 76075 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #30824: <==uncertain_firing== 24346 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #54537: <==negation-removal== 23116 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #57550: <==negation-removal== 67610 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #59072: <==uncertain_firing== 23116 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #69351: <==negation-removal== 24346 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #72993: <==uncertain_firing== 45542 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #82934: <==uncertain_firing== 76075 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #84623: <==uncertain_firing== 67610 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #86656: <==negation-removal== 46921 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #19121: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #20433: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #44697: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #61001: <==closure== 44697 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #64730: <==closure== 19121 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #85272: <==closure== 20433 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #14988: <==uncertain_firing== 20433 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #26195: <==negation-removal== 64730 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #29722: <==uncertain_firing== 85272 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #30128: <==negation-removal== 19121 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #35077: <==negation-removal== 20433 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #40453: <==negation-removal== 85272 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #60552: <==negation-removal== 44697 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #64262: <==uncertain_firing== 44697 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #72892: <==uncertain_firing== 19121 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #73214: <==uncertain_firing== 61001 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #88597: <==uncertain_firing== 64730 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #91124: <==negation-removal== 61001 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #19121: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #20433: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #44697: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #61001: <==closure== 44697 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #64730: <==closure== 19121 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #85272: <==closure== 20433 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #14988: <==uncertain_firing== 20433 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #26195: <==negation-removal== 64730 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #29722: <==uncertain_firing== 85272 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #30128: <==negation-removal== 19121 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #35077: <==negation-removal== 20433 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #40453: <==negation-removal== 85272 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #60552: <==negation-removal== 44697 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #64262: <==uncertain_firing== 44697 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #72892: <==uncertain_firing== 19121 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #73214: <==uncertain_firing== 61001 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #88597: <==uncertain_firing== 64730 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #91124: <==negation-removal== 61001 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #19121: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #20433: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #44697: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #61001: <==closure== 44697 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #64730: <==closure== 19121 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #85272: <==closure== 20433 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #14988: <==uncertain_firing== 20433 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #26195: <==negation-removal== 64730 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #29722: <==uncertain_firing== 85272 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #30128: <==negation-removal== 19121 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #35077: <==negation-removal== 20433 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #40453: <==negation-removal== 85272 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #60552: <==negation-removal== 44697 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #64262: <==uncertain_firing== 44697 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #72892: <==uncertain_firing== 19121 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #73214: <==uncertain_firing== 61001 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #88597: <==uncertain_firing== 64730 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #91124: <==negation-removal== 61001 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #12514: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #17534: <==closure== 12514 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #24442: <==closure== 50705 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #47082: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #50705: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #68243: <==closure== 47082 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #10240: <==negation-removal== 68243 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #23506: <==negation-removal== 24442 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #30086: <==uncertain_firing== 12514 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #30385: <==uncertain_firing== 17534 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #31115: <==negation-removal== 12514 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #33571: <==uncertain_firing== 50705 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #66922: <==uncertain_firing== 47082 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #67692: <==negation-removal== 17534 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #67699: <==uncertain_firing== 68243 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #67789: <==uncertain_firing== 24442 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #76744: <==negation-removal== 50705 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #86140: <==negation-removal== 47082 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #12514: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #17534: <==closure== 12514 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #24442: <==closure== 50705 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #47082: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #50705: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #68243: <==closure== 47082 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #10240: <==negation-removal== 68243 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #23506: <==negation-removal== 24442 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #30086: <==uncertain_firing== 12514 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #30385: <==uncertain_firing== 17534 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #31115: <==negation-removal== 12514 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #33571: <==uncertain_firing== 50705 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #66922: <==uncertain_firing== 47082 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #67692: <==negation-removal== 17534 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #67699: <==uncertain_firing== 68243 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #67789: <==uncertain_firing== 24442 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #76744: <==negation-removal== 50705 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #86140: <==negation-removal== 47082 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #12514: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #17534: <==closure== 12514 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #24442: <==closure== 50705 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #47082: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #50705: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #68243: <==closure== 47082 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #10240: <==negation-removal== 68243 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #23506: <==negation-removal== 24442 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #30086: <==uncertain_firing== 12514 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #30385: <==uncertain_firing== 17534 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #31115: <==negation-removal== 12514 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #33571: <==uncertain_firing== 50705 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #66922: <==uncertain_firing== 47082 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #67692: <==negation-removal== 17534 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #67699: <==uncertain_firing== 68243 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #67789: <==uncertain_firing== 24442 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #76744: <==negation-removal== 50705 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #86140: <==negation-removal== 47082 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))))

    (:action comm_p10_a_s
        :precondition (and (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #17120: origin
                    (Bb_survivorat_s_p10)

                    ; #22688: <==closure== 17120 (pos)
                    (Pb_survivorat_s_p10)

                    ; #57925: origin
                    (Ba_survivorat_s_p10)

                    ; #59224: origin
                    (Bc_survivorat_s_p10)

                    ; #61399: <==closure== 57925 (pos)
                    (Pa_survivorat_s_p10)

                    ; #96895: <==closure== 59224 (pos)
                    (Pc_survivorat_s_p10)

                    ; #17415: <==negation-removal== 59224 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #19490: <==negation-removal== 17120 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #40071: <==negation-removal== 22688 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #44990: <==negation-removal== 96895 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #64368: <==negation-removal== 57925 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #73772: <==negation-removal== 61399 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #17120: origin
                    (Bb_survivorat_s_p10)

                    ; #22688: <==closure== 17120 (pos)
                    (Pb_survivorat_s_p10)

                    ; #57925: origin
                    (Ba_survivorat_s_p10)

                    ; #59224: origin
                    (Bc_survivorat_s_p10)

                    ; #61399: <==closure== 57925 (pos)
                    (Pa_survivorat_s_p10)

                    ; #96895: <==closure== 59224 (pos)
                    (Pc_survivorat_s_p10)

                    ; #17415: <==negation-removal== 59224 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #19490: <==negation-removal== 17120 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #40071: <==negation-removal== 22688 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #44990: <==negation-removal== 96895 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #64368: <==negation-removal== 57925 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #73772: <==negation-removal== 61399 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #17120: origin
                    (Bb_survivorat_s_p10)

                    ; #22688: <==closure== 17120 (pos)
                    (Pb_survivorat_s_p10)

                    ; #57925: origin
                    (Ba_survivorat_s_p10)

                    ; #59224: origin
                    (Bc_survivorat_s_p10)

                    ; #61399: <==closure== 57925 (pos)
                    (Pa_survivorat_s_p10)

                    ; #96895: <==closure== 59224 (pos)
                    (Pc_survivorat_s_p10)

                    ; #17415: <==negation-removal== 59224 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #19490: <==negation-removal== 17120 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #40071: <==negation-removal== 22688 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #44990: <==negation-removal== 96895 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #64368: <==negation-removal== 57925 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #73772: <==negation-removal== 61399 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #12784: <==closure== 55537 (pos)
                    (Pc_survivorat_s_p11)

                    ; #38184: origin
                    (Ba_survivorat_s_p11)

                    ; #47617: <==closure== 38184 (pos)
                    (Pa_survivorat_s_p11)

                    ; #52096: <==closure== 92220 (pos)
                    (Pb_survivorat_s_p11)

                    ; #55537: origin
                    (Bc_survivorat_s_p11)

                    ; #92220: origin
                    (Bb_survivorat_s_p11)

                    ; #25998: <==negation-removal== 55537 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #53137: <==negation-removal== 12784 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #56546: <==negation-removal== 92220 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #56951: <==negation-removal== 52096 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #75986: <==negation-removal== 47617 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #80325: <==negation-removal== 38184 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (at_b_p11)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #12784: <==closure== 55537 (pos)
                    (Pc_survivorat_s_p11)

                    ; #38184: origin
                    (Ba_survivorat_s_p11)

                    ; #47617: <==closure== 38184 (pos)
                    (Pa_survivorat_s_p11)

                    ; #52096: <==closure== 92220 (pos)
                    (Pb_survivorat_s_p11)

                    ; #55537: origin
                    (Bc_survivorat_s_p11)

                    ; #92220: origin
                    (Bb_survivorat_s_p11)

                    ; #25998: <==negation-removal== 55537 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #53137: <==negation-removal== 12784 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #56546: <==negation-removal== 92220 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #56951: <==negation-removal== 52096 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #75986: <==negation-removal== 47617 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #80325: <==negation-removal== 38184 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (at_c_p11)
                           (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #12784: <==closure== 55537 (pos)
                    (Pc_survivorat_s_p11)

                    ; #38184: origin
                    (Ba_survivorat_s_p11)

                    ; #47617: <==closure== 38184 (pos)
                    (Pa_survivorat_s_p11)

                    ; #52096: <==closure== 92220 (pos)
                    (Pb_survivorat_s_p11)

                    ; #55537: origin
                    (Bc_survivorat_s_p11)

                    ; #92220: origin
                    (Bb_survivorat_s_p11)

                    ; #25998: <==negation-removal== 55537 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #53137: <==negation-removal== 12784 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #56546: <==negation-removal== 92220 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #56951: <==negation-removal== 52096 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #75986: <==negation-removal== 47617 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #80325: <==negation-removal== 38184 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #19501: origin
                    (Bc_survivorat_s_p12)

                    ; #26241: origin
                    (Bb_survivorat_s_p12)

                    ; #38134: origin
                    (Ba_survivorat_s_p12)

                    ; #41625: <==closure== 38134 (pos)
                    (Pa_survivorat_s_p12)

                    ; #51841: <==closure== 26241 (pos)
                    (Pb_survivorat_s_p12)

                    ; #59585: <==closure== 19501 (pos)
                    (Pc_survivorat_s_p12)

                    ; #12162: <==negation-removal== 19501 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #26656: <==negation-removal== 41625 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #38139: <==negation-removal== 51841 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #38658: <==negation-removal== 26241 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #53112: <==negation-removal== 38134 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #70745: <==negation-removal== 59585 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #19501: origin
                    (Bc_survivorat_s_p12)

                    ; #26241: origin
                    (Bb_survivorat_s_p12)

                    ; #38134: origin
                    (Ba_survivorat_s_p12)

                    ; #41625: <==closure== 38134 (pos)
                    (Pa_survivorat_s_p12)

                    ; #51841: <==closure== 26241 (pos)
                    (Pb_survivorat_s_p12)

                    ; #59585: <==closure== 19501 (pos)
                    (Pc_survivorat_s_p12)

                    ; #12162: <==negation-removal== 19501 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #26656: <==negation-removal== 41625 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #38139: <==negation-removal== 51841 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #38658: <==negation-removal== 26241 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #53112: <==negation-removal== 38134 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #70745: <==negation-removal== 59585 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #19501: origin
                    (Bc_survivorat_s_p12)

                    ; #26241: origin
                    (Bb_survivorat_s_p12)

                    ; #38134: origin
                    (Ba_survivorat_s_p12)

                    ; #41625: <==closure== 38134 (pos)
                    (Pa_survivorat_s_p12)

                    ; #51841: <==closure== 26241 (pos)
                    (Pb_survivorat_s_p12)

                    ; #59585: <==closure== 19501 (pos)
                    (Pc_survivorat_s_p12)

                    ; #12162: <==negation-removal== 19501 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #26656: <==negation-removal== 41625 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #38139: <==negation-removal== 51841 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #38658: <==negation-removal== 26241 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #53112: <==negation-removal== 38134 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #70745: <==negation-removal== 59585 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #11473: origin
                    (Bb_survivorat_s_p1)

                    ; #40997: origin
                    (Ba_survivorat_s_p1)

                    ; #56933: origin
                    (Bc_survivorat_s_p1)

                    ; #57964: <==closure== 11473 (pos)
                    (Pb_survivorat_s_p1)

                    ; #80311: <==closure== 56933 (pos)
                    (Pc_survivorat_s_p1)

                    ; #80888: <==closure== 40997 (pos)
                    (Pa_survivorat_s_p1)

                    ; #37192: <==negation-removal== 80888 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #52697: <==negation-removal== 56933 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #54599: <==negation-removal== 11473 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #72014: <==negation-removal== 40997 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #84805: <==negation-removal== 80311 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #89769: <==negation-removal== 57964 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #11473: origin
                    (Bb_survivorat_s_p1)

                    ; #40997: origin
                    (Ba_survivorat_s_p1)

                    ; #56933: origin
                    (Bc_survivorat_s_p1)

                    ; #57964: <==closure== 11473 (pos)
                    (Pb_survivorat_s_p1)

                    ; #80311: <==closure== 56933 (pos)
                    (Pc_survivorat_s_p1)

                    ; #80888: <==closure== 40997 (pos)
                    (Pa_survivorat_s_p1)

                    ; #37192: <==negation-removal== 80888 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #52697: <==negation-removal== 56933 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #54599: <==negation-removal== 11473 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #72014: <==negation-removal== 40997 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #84805: <==negation-removal== 80311 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #89769: <==negation-removal== 57964 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #11473: origin
                    (Bb_survivorat_s_p1)

                    ; #40997: origin
                    (Ba_survivorat_s_p1)

                    ; #56933: origin
                    (Bc_survivorat_s_p1)

                    ; #57964: <==closure== 11473 (pos)
                    (Pb_survivorat_s_p1)

                    ; #80311: <==closure== 56933 (pos)
                    (Pc_survivorat_s_p1)

                    ; #80888: <==closure== 40997 (pos)
                    (Pa_survivorat_s_p1)

                    ; #37192: <==negation-removal== 80888 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #52697: <==negation-removal== 56933 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #54599: <==negation-removal== 11473 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #72014: <==negation-removal== 40997 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #84805: <==negation-removal== 80311 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #89769: <==negation-removal== 57964 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #20795: <==closure== 83765 (pos)
                    (Pc_survivorat_s_p2)

                    ; #28100: <==closure== 63948 (pos)
                    (Pa_survivorat_s_p2)

                    ; #40805: origin
                    (Bb_survivorat_s_p2)

                    ; #63948: origin
                    (Ba_survivorat_s_p2)

                    ; #75778: <==closure== 40805 (pos)
                    (Pb_survivorat_s_p2)

                    ; #83765: origin
                    (Bc_survivorat_s_p2)

                    ; #12523: <==negation-removal== 20795 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #15549: <==negation-removal== 63948 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #28300: <==negation-removal== 28100 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #40079: <==negation-removal== 75778 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #75700: <==negation-removal== 83765 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #91475: <==negation-removal== 40805 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #20795: <==closure== 83765 (pos)
                    (Pc_survivorat_s_p2)

                    ; #28100: <==closure== 63948 (pos)
                    (Pa_survivorat_s_p2)

                    ; #40805: origin
                    (Bb_survivorat_s_p2)

                    ; #63948: origin
                    (Ba_survivorat_s_p2)

                    ; #75778: <==closure== 40805 (pos)
                    (Pb_survivorat_s_p2)

                    ; #83765: origin
                    (Bc_survivorat_s_p2)

                    ; #12523: <==negation-removal== 20795 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #15549: <==negation-removal== 63948 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #28300: <==negation-removal== 28100 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #40079: <==negation-removal== 75778 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #75700: <==negation-removal== 83765 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #91475: <==negation-removal== 40805 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #20795: <==closure== 83765 (pos)
                    (Pc_survivorat_s_p2)

                    ; #28100: <==closure== 63948 (pos)
                    (Pa_survivorat_s_p2)

                    ; #40805: origin
                    (Bb_survivorat_s_p2)

                    ; #63948: origin
                    (Ba_survivorat_s_p2)

                    ; #75778: <==closure== 40805 (pos)
                    (Pb_survivorat_s_p2)

                    ; #83765: origin
                    (Bc_survivorat_s_p2)

                    ; #12523: <==negation-removal== 20795 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #15549: <==negation-removal== 63948 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #28300: <==negation-removal== 28100 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #40079: <==negation-removal== 75778 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #75700: <==negation-removal== 83765 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #91475: <==negation-removal== 40805 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #11610: origin
                    (Bc_survivorat_s_p3)

                    ; #15307: origin
                    (Bb_survivorat_s_p3)

                    ; #18387: <==closure== 15307 (pos)
                    (Pb_survivorat_s_p3)

                    ; #65641: origin
                    (Ba_survivorat_s_p3)

                    ; #76052: <==closure== 65641 (pos)
                    (Pa_survivorat_s_p3)

                    ; #79352: <==closure== 11610 (pos)
                    (Pc_survivorat_s_p3)

                    ; #37083: <==negation-removal== 18387 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #49459: <==negation-removal== 79352 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #53322: <==negation-removal== 11610 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #56655: <==negation-removal== 15307 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #64690: <==negation-removal== 76052 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #82522: <==negation-removal== 65641 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #11610: origin
                    (Bc_survivorat_s_p3)

                    ; #15307: origin
                    (Bb_survivorat_s_p3)

                    ; #18387: <==closure== 15307 (pos)
                    (Pb_survivorat_s_p3)

                    ; #65641: origin
                    (Ba_survivorat_s_p3)

                    ; #76052: <==closure== 65641 (pos)
                    (Pa_survivorat_s_p3)

                    ; #79352: <==closure== 11610 (pos)
                    (Pc_survivorat_s_p3)

                    ; #37083: <==negation-removal== 18387 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #49459: <==negation-removal== 79352 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #53322: <==negation-removal== 11610 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #56655: <==negation-removal== 15307 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #64690: <==negation-removal== 76052 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #82522: <==negation-removal== 65641 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #11610: origin
                    (Bc_survivorat_s_p3)

                    ; #15307: origin
                    (Bb_survivorat_s_p3)

                    ; #18387: <==closure== 15307 (pos)
                    (Pb_survivorat_s_p3)

                    ; #65641: origin
                    (Ba_survivorat_s_p3)

                    ; #76052: <==closure== 65641 (pos)
                    (Pa_survivorat_s_p3)

                    ; #79352: <==closure== 11610 (pos)
                    (Pc_survivorat_s_p3)

                    ; #37083: <==negation-removal== 18387 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #49459: <==negation-removal== 79352 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #53322: <==negation-removal== 11610 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #56655: <==negation-removal== 15307 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #64690: <==negation-removal== 76052 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #82522: <==negation-removal== 65641 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #16275: origin
                    (Bb_survivorat_s_p4)

                    ; #26091: <==closure== 54344 (pos)
                    (Pa_survivorat_s_p4)

                    ; #36909: origin
                    (Bc_survivorat_s_p4)

                    ; #50735: <==closure== 16275 (pos)
                    (Pb_survivorat_s_p4)

                    ; #54344: origin
                    (Ba_survivorat_s_p4)

                    ; #72863: <==closure== 36909 (pos)
                    (Pc_survivorat_s_p4)

                    ; #13322: <==negation-removal== 26091 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #30884: <==negation-removal== 16275 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #32240: <==negation-removal== 72863 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #58344: <==negation-removal== 50735 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #60205: <==negation-removal== 54344 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #63306: <==negation-removal== 36909 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #16275: origin
                    (Bb_survivorat_s_p4)

                    ; #26091: <==closure== 54344 (pos)
                    (Pa_survivorat_s_p4)

                    ; #36909: origin
                    (Bc_survivorat_s_p4)

                    ; #50735: <==closure== 16275 (pos)
                    (Pb_survivorat_s_p4)

                    ; #54344: origin
                    (Ba_survivorat_s_p4)

                    ; #72863: <==closure== 36909 (pos)
                    (Pc_survivorat_s_p4)

                    ; #13322: <==negation-removal== 26091 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #30884: <==negation-removal== 16275 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #32240: <==negation-removal== 72863 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #58344: <==negation-removal== 50735 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #60205: <==negation-removal== 54344 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #63306: <==negation-removal== 36909 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #16275: origin
                    (Bb_survivorat_s_p4)

                    ; #26091: <==closure== 54344 (pos)
                    (Pa_survivorat_s_p4)

                    ; #36909: origin
                    (Bc_survivorat_s_p4)

                    ; #50735: <==closure== 16275 (pos)
                    (Pb_survivorat_s_p4)

                    ; #54344: origin
                    (Ba_survivorat_s_p4)

                    ; #72863: <==closure== 36909 (pos)
                    (Pc_survivorat_s_p4)

                    ; #13322: <==negation-removal== 26091 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #30884: <==negation-removal== 16275 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #32240: <==negation-removal== 72863 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #58344: <==negation-removal== 50735 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #60205: <==negation-removal== 54344 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #63306: <==negation-removal== 36909 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #12389: <==closure== 62855 (pos)
                    (Pb_survivorat_s_p5)

                    ; #12394: origin
                    (Ba_survivorat_s_p5)

                    ; #33557: origin
                    (Bc_survivorat_s_p5)

                    ; #55869: <==closure== 33557 (pos)
                    (Pc_survivorat_s_p5)

                    ; #62855: origin
                    (Bb_survivorat_s_p5)

                    ; #71546: <==closure== 12394 (pos)
                    (Pa_survivorat_s_p5)

                    ; #34670: <==negation-removal== 71546 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #46065: <==negation-removal== 62855 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #53496: <==negation-removal== 33557 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #73318: <==negation-removal== 12389 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #88183: <==negation-removal== 55869 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #90628: <==negation-removal== 12394 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #12389: <==closure== 62855 (pos)
                    (Pb_survivorat_s_p5)

                    ; #12394: origin
                    (Ba_survivorat_s_p5)

                    ; #33557: origin
                    (Bc_survivorat_s_p5)

                    ; #55869: <==closure== 33557 (pos)
                    (Pc_survivorat_s_p5)

                    ; #62855: origin
                    (Bb_survivorat_s_p5)

                    ; #71546: <==closure== 12394 (pos)
                    (Pa_survivorat_s_p5)

                    ; #34670: <==negation-removal== 71546 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #46065: <==negation-removal== 62855 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #53496: <==negation-removal== 33557 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #73318: <==negation-removal== 12389 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #88183: <==negation-removal== 55869 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #90628: <==negation-removal== 12394 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #12389: <==closure== 62855 (pos)
                    (Pb_survivorat_s_p5)

                    ; #12394: origin
                    (Ba_survivorat_s_p5)

                    ; #33557: origin
                    (Bc_survivorat_s_p5)

                    ; #55869: <==closure== 33557 (pos)
                    (Pc_survivorat_s_p5)

                    ; #62855: origin
                    (Bb_survivorat_s_p5)

                    ; #71546: <==closure== 12394 (pos)
                    (Pa_survivorat_s_p5)

                    ; #34670: <==negation-removal== 71546 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #46065: <==negation-removal== 62855 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #53496: <==negation-removal== 33557 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #73318: <==negation-removal== 12389 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #88183: <==negation-removal== 55869 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #90628: <==negation-removal== 12394 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #21037: <==closure== 86670 (pos)
                    (Pa_survivorat_s_p6)

                    ; #28459: origin
                    (Bb_survivorat_s_p6)

                    ; #58659: <==closure== 74607 (pos)
                    (Pc_survivorat_s_p6)

                    ; #74607: origin
                    (Bc_survivorat_s_p6)

                    ; #86670: origin
                    (Ba_survivorat_s_p6)

                    ; #88207: <==closure== 28459 (pos)
                    (Pb_survivorat_s_p6)

                    ; #35202: <==negation-removal== 86670 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #38306: <==negation-removal== 28459 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #49717: <==negation-removal== 74607 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #60634: <==negation-removal== 58659 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #82604: <==negation-removal== 21037 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #89381: <==negation-removal== 88207 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #21037: <==closure== 86670 (pos)
                    (Pa_survivorat_s_p6)

                    ; #28459: origin
                    (Bb_survivorat_s_p6)

                    ; #58659: <==closure== 74607 (pos)
                    (Pc_survivorat_s_p6)

                    ; #74607: origin
                    (Bc_survivorat_s_p6)

                    ; #86670: origin
                    (Ba_survivorat_s_p6)

                    ; #88207: <==closure== 28459 (pos)
                    (Pb_survivorat_s_p6)

                    ; #35202: <==negation-removal== 86670 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #38306: <==negation-removal== 28459 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #49717: <==negation-removal== 74607 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #60634: <==negation-removal== 58659 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #82604: <==negation-removal== 21037 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #89381: <==negation-removal== 88207 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #21037: <==closure== 86670 (pos)
                    (Pa_survivorat_s_p6)

                    ; #28459: origin
                    (Bb_survivorat_s_p6)

                    ; #58659: <==closure== 74607 (pos)
                    (Pc_survivorat_s_p6)

                    ; #74607: origin
                    (Bc_survivorat_s_p6)

                    ; #86670: origin
                    (Ba_survivorat_s_p6)

                    ; #88207: <==closure== 28459 (pos)
                    (Pb_survivorat_s_p6)

                    ; #35202: <==negation-removal== 86670 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #38306: <==negation-removal== 28459 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #49717: <==negation-removal== 74607 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #60634: <==negation-removal== 58659 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #82604: <==negation-removal== 21037 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #89381: <==negation-removal== 88207 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #20999: origin
                    (Bc_survivorat_s_p7)

                    ; #34534: <==closure== 38860 (pos)
                    (Pa_survivorat_s_p7)

                    ; #38860: origin
                    (Ba_survivorat_s_p7)

                    ; #54962: <==closure== 20999 (pos)
                    (Pc_survivorat_s_p7)

                    ; #78927: <==closure== 85191 (pos)
                    (Pb_survivorat_s_p7)

                    ; #85191: origin
                    (Bb_survivorat_s_p7)

                    ; #19957: <==negation-removal== 85191 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #22113: <==negation-removal== 38860 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #33184: <==negation-removal== 20999 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #34527: <==negation-removal== 78927 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #66366: <==negation-removal== 54962 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #68805: <==negation-removal== 34534 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #20999: origin
                    (Bc_survivorat_s_p7)

                    ; #34534: <==closure== 38860 (pos)
                    (Pa_survivorat_s_p7)

                    ; #38860: origin
                    (Ba_survivorat_s_p7)

                    ; #54962: <==closure== 20999 (pos)
                    (Pc_survivorat_s_p7)

                    ; #78927: <==closure== 85191 (pos)
                    (Pb_survivorat_s_p7)

                    ; #85191: origin
                    (Bb_survivorat_s_p7)

                    ; #19957: <==negation-removal== 85191 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #22113: <==negation-removal== 38860 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #33184: <==negation-removal== 20999 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #34527: <==negation-removal== 78927 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #66366: <==negation-removal== 54962 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #68805: <==negation-removal== 34534 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #20999: origin
                    (Bc_survivorat_s_p7)

                    ; #34534: <==closure== 38860 (pos)
                    (Pa_survivorat_s_p7)

                    ; #38860: origin
                    (Ba_survivorat_s_p7)

                    ; #54962: <==closure== 20999 (pos)
                    (Pc_survivorat_s_p7)

                    ; #78927: <==closure== 85191 (pos)
                    (Pb_survivorat_s_p7)

                    ; #85191: origin
                    (Bb_survivorat_s_p7)

                    ; #19957: <==negation-removal== 85191 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #22113: <==negation-removal== 38860 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #33184: <==negation-removal== 20999 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #34527: <==negation-removal== 78927 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #66366: <==negation-removal== 54962 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #68805: <==negation-removal== 34534 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #25808: origin
                    (Ba_survivorat_s_p8)

                    ; #30617: <==closure== 46196 (pos)
                    (Pb_survivorat_s_p8)

                    ; #46196: origin
                    (Bb_survivorat_s_p8)

                    ; #66509: origin
                    (Bc_survivorat_s_p8)

                    ; #82922: <==closure== 25808 (pos)
                    (Pa_survivorat_s_p8)

                    ; #90457: <==closure== 66509 (pos)
                    (Pc_survivorat_s_p8)

                    ; #22988: <==negation-removal== 82922 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #28263: <==negation-removal== 25808 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #29277: <==negation-removal== 66509 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #43394: <==negation-removal== 90457 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #55222: <==negation-removal== 46196 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #67993: <==negation-removal== 30617 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #25808: origin
                    (Ba_survivorat_s_p8)

                    ; #30617: <==closure== 46196 (pos)
                    (Pb_survivorat_s_p8)

                    ; #46196: origin
                    (Bb_survivorat_s_p8)

                    ; #66509: origin
                    (Bc_survivorat_s_p8)

                    ; #82922: <==closure== 25808 (pos)
                    (Pa_survivorat_s_p8)

                    ; #90457: <==closure== 66509 (pos)
                    (Pc_survivorat_s_p8)

                    ; #22988: <==negation-removal== 82922 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #28263: <==negation-removal== 25808 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #29277: <==negation-removal== 66509 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #43394: <==negation-removal== 90457 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #55222: <==negation-removal== 46196 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #67993: <==negation-removal== 30617 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #25808: origin
                    (Ba_survivorat_s_p8)

                    ; #30617: <==closure== 46196 (pos)
                    (Pb_survivorat_s_p8)

                    ; #46196: origin
                    (Bb_survivorat_s_p8)

                    ; #66509: origin
                    (Bc_survivorat_s_p8)

                    ; #82922: <==closure== 25808 (pos)
                    (Pa_survivorat_s_p8)

                    ; #90457: <==closure== 66509 (pos)
                    (Pc_survivorat_s_p8)

                    ; #22988: <==negation-removal== 82922 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #28263: <==negation-removal== 25808 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #29277: <==negation-removal== 66509 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #43394: <==negation-removal== 90457 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #55222: <==negation-removal== 46196 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #67993: <==negation-removal== 30617 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #28062: origin
                    (Bb_survivorat_s_p9)

                    ; #43463: <==closure== 28062 (pos)
                    (Pb_survivorat_s_p9)

                    ; #52320: <==closure== 75126 (pos)
                    (Pa_survivorat_s_p9)

                    ; #75126: origin
                    (Ba_survivorat_s_p9)

                    ; #84301: origin
                    (Bc_survivorat_s_p9)

                    ; #91849: <==closure== 84301 (pos)
                    (Pc_survivorat_s_p9)

                    ; #15774: <==negation-removal== 28062 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #41016: <==negation-removal== 52320 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #74607: <==negation-removal== 91849 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #79374: <==negation-removal== 84301 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #83458: <==negation-removal== 43463 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #88439: <==negation-removal== 75126 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #28062: origin
                    (Bb_survivorat_s_p9)

                    ; #43463: <==closure== 28062 (pos)
                    (Pb_survivorat_s_p9)

                    ; #52320: <==closure== 75126 (pos)
                    (Pa_survivorat_s_p9)

                    ; #75126: origin
                    (Ba_survivorat_s_p9)

                    ; #84301: origin
                    (Bc_survivorat_s_p9)

                    ; #91849: <==closure== 84301 (pos)
                    (Pc_survivorat_s_p9)

                    ; #15774: <==negation-removal== 28062 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #41016: <==negation-removal== 52320 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #74607: <==negation-removal== 91849 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #79374: <==negation-removal== 84301 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #83458: <==negation-removal== 43463 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #88439: <==negation-removal== 75126 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #28062: origin
                    (Bb_survivorat_s_p9)

                    ; #43463: <==closure== 28062 (pos)
                    (Pb_survivorat_s_p9)

                    ; #52320: <==closure== 75126 (pos)
                    (Pa_survivorat_s_p9)

                    ; #75126: origin
                    (Ba_survivorat_s_p9)

                    ; #84301: origin
                    (Bc_survivorat_s_p9)

                    ; #91849: <==closure== 84301 (pos)
                    (Pc_survivorat_s_p9)

                    ; #15774: <==negation-removal== 28062 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #41016: <==negation-removal== 52320 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #74607: <==negation-removal== 91849 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #79374: <==negation-removal== 84301 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #83458: <==negation-removal== 43463 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #88439: <==negation-removal== 75126 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #19169: origin
                    (at_a_p1)

                    ; #24339: origin
                    (not_at_a_p10)

                    ; #61246: <==negation-removal== 24339 (pos)
                    (not (at_a_p10))

                    ; #69598: <==negation-removal== 19169 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #24339: origin
                    (not_at_a_p10)

                    ; #61246: origin
                    (at_a_p10)

                    ; #24339: <==negation-removal== 61246 (pos)
                    (not (not_at_a_p10))

                    ; #61246: <==negation-removal== 24339 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #24339: origin
                    (not_at_a_p10)

                    ; #41349: origin
                    (at_a_p11)

                    ; #36118: <==negation-removal== 41349 (pos)
                    (not (not_at_a_p11))

                    ; #61246: <==negation-removal== 24339 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10))
        :effect (and
                    ; #24339: origin
                    (not_at_a_p10)

                    ; #64516: origin
                    (at_a_p12)

                    ; #35479: <==negation-removal== 64516 (pos)
                    (not (not_at_a_p12))

                    ; #61246: <==negation-removal== 24339 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #24339: origin
                    (not_at_a_p10)

                    ; #39385: origin
                    (at_a_p2)

                    ; #51055: <==negation-removal== 39385 (pos)
                    (not (not_at_a_p2))

                    ; #61246: <==negation-removal== 24339 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p3
        :precondition (and (at_a_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #24339: origin
                    (not_at_a_p10)

                    ; #86737: origin
                    (at_a_p3)

                    ; #41846: <==negation-removal== 86737 (pos)
                    (not (not_at_a_p3))

                    ; #61246: <==negation-removal== 24339 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10))
        :effect (and
                    ; #12800: origin
                    (at_a_p4)

                    ; #24339: origin
                    (not_at_a_p10)

                    ; #61246: <==negation-removal== 24339 (pos)
                    (not (at_a_p10))

                    ; #81443: <==negation-removal== 12800 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10))
        :effect (and
                    ; #24339: origin
                    (not_at_a_p10)

                    ; #75251: origin
                    (at_a_p5)

                    ; #36172: <==negation-removal== 75251 (pos)
                    (not (not_at_a_p5))

                    ; #61246: <==negation-removal== 24339 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10))
        :effect (and
                    ; #24339: origin
                    (not_at_a_p10)

                    ; #52561: origin
                    (at_a_p6)

                    ; #61246: <==negation-removal== 24339 (pos)
                    (not (at_a_p10))

                    ; #96302: <==negation-removal== 52561 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10))
        :effect (and
                    ; #24339: origin
                    (not_at_a_p10)

                    ; #28200: origin
                    (at_a_p7)

                    ; #61246: <==negation-removal== 24339 (pos)
                    (not (at_a_p10))

                    ; #84130: <==negation-removal== 28200 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10))
        :effect (and
                    ; #24339: origin
                    (not_at_a_p10)

                    ; #29356: origin
                    (at_a_p8)

                    ; #17403: <==negation-removal== 29356 (pos)
                    (not (not_at_a_p8))

                    ; #61246: <==negation-removal== 24339 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10))
        :effect (and
                    ; #24339: origin
                    (not_at_a_p10)

                    ; #31110: origin
                    (at_a_p9)

                    ; #61246: <==negation-removal== 24339 (pos)
                    (not (at_a_p10))

                    ; #83427: <==negation-removal== 31110 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #19169: origin
                    (at_a_p1)

                    ; #36118: origin
                    (not_at_a_p11)

                    ; #41349: <==negation-removal== 36118 (pos)
                    (not (at_a_p11))

                    ; #69598: <==negation-removal== 19169 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #36118: origin
                    (not_at_a_p11)

                    ; #61246: origin
                    (at_a_p10)

                    ; #24339: <==negation-removal== 61246 (pos)
                    (not (not_at_a_p10))

                    ; #41349: <==negation-removal== 36118 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #36118: origin
                    (not_at_a_p11)

                    ; #41349: origin
                    (at_a_p11)

                    ; #36118: <==negation-removal== 41349 (pos)
                    (not (not_at_a_p11))

                    ; #41349: <==negation-removal== 36118 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (at_a_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #36118: origin
                    (not_at_a_p11)

                    ; #64516: origin
                    (at_a_p12)

                    ; #35479: <==negation-removal== 64516 (pos)
                    (not (not_at_a_p12))

                    ; #41349: <==negation-removal== 36118 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #36118: origin
                    (not_at_a_p11)

                    ; #39385: origin
                    (at_a_p2)

                    ; #41349: <==negation-removal== 36118 (pos)
                    (not (at_a_p11))

                    ; #51055: <==negation-removal== 39385 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #36118: origin
                    (not_at_a_p11)

                    ; #86737: origin
                    (at_a_p3)

                    ; #41349: <==negation-removal== 36118 (pos)
                    (not (at_a_p11))

                    ; #41846: <==negation-removal== 86737 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (at_a_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #12800: origin
                    (at_a_p4)

                    ; #36118: origin
                    (not_at_a_p11)

                    ; #41349: <==negation-removal== 36118 (pos)
                    (not (at_a_p11))

                    ; #81443: <==negation-removal== 12800 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #36118: origin
                    (not_at_a_p11)

                    ; #75251: origin
                    (at_a_p5)

                    ; #36172: <==negation-removal== 75251 (pos)
                    (not (not_at_a_p5))

                    ; #41349: <==negation-removal== 36118 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #36118: origin
                    (not_at_a_p11)

                    ; #52561: origin
                    (at_a_p6)

                    ; #41349: <==negation-removal== 36118 (pos)
                    (not (at_a_p11))

                    ; #96302: <==negation-removal== 52561 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #28200: origin
                    (at_a_p7)

                    ; #36118: origin
                    (not_at_a_p11)

                    ; #41349: <==negation-removal== 36118 (pos)
                    (not (at_a_p11))

                    ; #84130: <==negation-removal== 28200 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (at_a_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #29356: origin
                    (at_a_p8)

                    ; #36118: origin
                    (not_at_a_p11)

                    ; #17403: <==negation-removal== 29356 (pos)
                    (not (not_at_a_p8))

                    ; #41349: <==negation-removal== 36118 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #31110: origin
                    (at_a_p9)

                    ; #36118: origin
                    (not_at_a_p11)

                    ; #41349: <==negation-removal== 36118 (pos)
                    (not (at_a_p11))

                    ; #83427: <==negation-removal== 31110 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (at_a_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #19169: origin
                    (at_a_p1)

                    ; #35479: origin
                    (not_at_a_p12)

                    ; #64516: <==negation-removal== 35479 (pos)
                    (not (at_a_p12))

                    ; #69598: <==negation-removal== 19169 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #35479: origin
                    (not_at_a_p12)

                    ; #61246: origin
                    (at_a_p10)

                    ; #24339: <==negation-removal== 61246 (pos)
                    (not (not_at_a_p10))

                    ; #64516: <==negation-removal== 35479 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12))
        :effect (and
                    ; #35479: origin
                    (not_at_a_p12)

                    ; #41349: origin
                    (at_a_p11)

                    ; #36118: <==negation-removal== 41349 (pos)
                    (not (not_at_a_p11))

                    ; #64516: <==negation-removal== 35479 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12))
        :effect (and
                    ; #35479: origin
                    (not_at_a_p12)

                    ; #64516: origin
                    (at_a_p12)

                    ; #35479: <==negation-removal== 64516 (pos)
                    (not (not_at_a_p12))

                    ; #64516: <==negation-removal== 35479 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12))
        :effect (and
                    ; #35479: origin
                    (not_at_a_p12)

                    ; #39385: origin
                    (at_a_p2)

                    ; #51055: <==negation-removal== 39385 (pos)
                    (not (not_at_a_p2))

                    ; #64516: <==negation-removal== 35479 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (at_a_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #35479: origin
                    (not_at_a_p12)

                    ; #86737: origin
                    (at_a_p3)

                    ; #41846: <==negation-removal== 86737 (pos)
                    (not (not_at_a_p3))

                    ; #64516: <==negation-removal== 35479 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (at_a_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #12800: origin
                    (at_a_p4)

                    ; #35479: origin
                    (not_at_a_p12)

                    ; #64516: <==negation-removal== 35479 (pos)
                    (not (at_a_p12))

                    ; #81443: <==negation-removal== 12800 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12))
        :effect (and
                    ; #35479: origin
                    (not_at_a_p12)

                    ; #75251: origin
                    (at_a_p5)

                    ; #36172: <==negation-removal== 75251 (pos)
                    (not (not_at_a_p5))

                    ; #64516: <==negation-removal== 35479 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12))
        :effect (and
                    ; #35479: origin
                    (not_at_a_p12)

                    ; #52561: origin
                    (at_a_p6)

                    ; #64516: <==negation-removal== 35479 (pos)
                    (not (at_a_p12))

                    ; #96302: <==negation-removal== 52561 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12))
        :effect (and
                    ; #28200: origin
                    (at_a_p7)

                    ; #35479: origin
                    (not_at_a_p12)

                    ; #64516: <==negation-removal== 35479 (pos)
                    (not (at_a_p12))

                    ; #84130: <==negation-removal== 28200 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12))
        :effect (and
                    ; #29356: origin
                    (at_a_p8)

                    ; #35479: origin
                    (not_at_a_p12)

                    ; #17403: <==negation-removal== 29356 (pos)
                    (not (not_at_a_p8))

                    ; #64516: <==negation-removal== 35479 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (at_a_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #31110: origin
                    (at_a_p9)

                    ; #35479: origin
                    (not_at_a_p12)

                    ; #64516: <==negation-removal== 35479 (pos)
                    (not (at_a_p12))

                    ; #83427: <==negation-removal== 31110 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #19169: origin
                    (at_a_p1)

                    ; #69598: origin
                    (not_at_a_p1)

                    ; #19169: <==negation-removal== 69598 (pos)
                    (not (at_a_p1))

                    ; #69598: <==negation-removal== 19169 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1))
        :effect (and
                    ; #61246: origin
                    (at_a_p10)

                    ; #69598: origin
                    (not_at_a_p1)

                    ; #19169: <==negation-removal== 69598 (pos)
                    (not (at_a_p1))

                    ; #24339: <==negation-removal== 61246 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1))
        :effect (and
                    ; #41349: origin
                    (at_a_p11)

                    ; #69598: origin
                    (not_at_a_p1)

                    ; #19169: <==negation-removal== 69598 (pos)
                    (not (at_a_p1))

                    ; #36118: <==negation-removal== 41349 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1))
        :effect (and
                    ; #64516: origin
                    (at_a_p12)

                    ; #69598: origin
                    (not_at_a_p1)

                    ; #19169: <==negation-removal== 69598 (pos)
                    (not (at_a_p1))

                    ; #35479: <==negation-removal== 64516 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #39385: origin
                    (at_a_p2)

                    ; #69598: origin
                    (not_at_a_p1)

                    ; #19169: <==negation-removal== 69598 (pos)
                    (not (at_a_p1))

                    ; #51055: <==negation-removal== 39385 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #69598: origin
                    (not_at_a_p1)

                    ; #86737: origin
                    (at_a_p3)

                    ; #19169: <==negation-removal== 69598 (pos)
                    (not (at_a_p1))

                    ; #41846: <==negation-removal== 86737 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #12800: origin
                    (at_a_p4)

                    ; #69598: origin
                    (not_at_a_p1)

                    ; #19169: <==negation-removal== 69598 (pos)
                    (not (at_a_p1))

                    ; #81443: <==negation-removal== 12800 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #69598: origin
                    (not_at_a_p1)

                    ; #75251: origin
                    (at_a_p5)

                    ; #19169: <==negation-removal== 69598 (pos)
                    (not (at_a_p1))

                    ; #36172: <==negation-removal== 75251 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #52561: origin
                    (at_a_p6)

                    ; #69598: origin
                    (not_at_a_p1)

                    ; #19169: <==negation-removal== 69598 (pos)
                    (not (at_a_p1))

                    ; #96302: <==negation-removal== 52561 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #28200: origin
                    (at_a_p7)

                    ; #69598: origin
                    (not_at_a_p1)

                    ; #19169: <==negation-removal== 69598 (pos)
                    (not (at_a_p1))

                    ; #84130: <==negation-removal== 28200 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #29356: origin
                    (at_a_p8)

                    ; #69598: origin
                    (not_at_a_p1)

                    ; #17403: <==negation-removal== 29356 (pos)
                    (not (not_at_a_p8))

                    ; #19169: <==negation-removal== 69598 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #31110: origin
                    (at_a_p9)

                    ; #69598: origin
                    (not_at_a_p1)

                    ; #19169: <==negation-removal== 69598 (pos)
                    (not (at_a_p1))

                    ; #83427: <==negation-removal== 31110 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #19169: origin
                    (at_a_p1)

                    ; #51055: origin
                    (not_at_a_p2)

                    ; #39385: <==negation-removal== 51055 (pos)
                    (not (at_a_p2))

                    ; #69598: <==negation-removal== 19169 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (at_a_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #51055: origin
                    (not_at_a_p2)

                    ; #61246: origin
                    (at_a_p10)

                    ; #24339: <==negation-removal== 61246 (pos)
                    (not (not_at_a_p10))

                    ; #39385: <==negation-removal== 51055 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (at_a_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #41349: origin
                    (at_a_p11)

                    ; #51055: origin
                    (not_at_a_p2)

                    ; #36118: <==negation-removal== 41349 (pos)
                    (not (not_at_a_p11))

                    ; #39385: <==negation-removal== 51055 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #51055: origin
                    (not_at_a_p2)

                    ; #64516: origin
                    (at_a_p12)

                    ; #35479: <==negation-removal== 64516 (pos)
                    (not (not_at_a_p12))

                    ; #39385: <==negation-removal== 51055 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #39385: origin
                    (at_a_p2)

                    ; #51055: origin
                    (not_at_a_p2)

                    ; #39385: <==negation-removal== 51055 (pos)
                    (not (at_a_p2))

                    ; #51055: <==negation-removal== 39385 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #51055: origin
                    (not_at_a_p2)

                    ; #86737: origin
                    (at_a_p3)

                    ; #39385: <==negation-removal== 51055 (pos)
                    (not (at_a_p2))

                    ; #41846: <==negation-removal== 86737 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #12800: origin
                    (at_a_p4)

                    ; #51055: origin
                    (not_at_a_p2)

                    ; #39385: <==negation-removal== 51055 (pos)
                    (not (at_a_p2))

                    ; #81443: <==negation-removal== 12800 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #51055: origin
                    (not_at_a_p2)

                    ; #75251: origin
                    (at_a_p5)

                    ; #36172: <==negation-removal== 75251 (pos)
                    (not (not_at_a_p5))

                    ; #39385: <==negation-removal== 51055 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #51055: origin
                    (not_at_a_p2)

                    ; #52561: origin
                    (at_a_p6)

                    ; #39385: <==negation-removal== 51055 (pos)
                    (not (at_a_p2))

                    ; #96302: <==negation-removal== 52561 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #28200: origin
                    (at_a_p7)

                    ; #51055: origin
                    (not_at_a_p2)

                    ; #39385: <==negation-removal== 51055 (pos)
                    (not (at_a_p2))

                    ; #84130: <==negation-removal== 28200 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #29356: origin
                    (at_a_p8)

                    ; #51055: origin
                    (not_at_a_p2)

                    ; #17403: <==negation-removal== 29356 (pos)
                    (not (not_at_a_p8))

                    ; #39385: <==negation-removal== 51055 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #31110: origin
                    (at_a_p9)

                    ; #51055: origin
                    (not_at_a_p2)

                    ; #39385: <==negation-removal== 51055 (pos)
                    (not (at_a_p2))

                    ; #83427: <==negation-removal== 31110 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #19169: origin
                    (at_a_p1)

                    ; #41846: origin
                    (not_at_a_p3)

                    ; #69598: <==negation-removal== 19169 (pos)
                    (not (not_at_a_p1))

                    ; #86737: <==negation-removal== 41846 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #41846: origin
                    (not_at_a_p3)

                    ; #61246: origin
                    (at_a_p10)

                    ; #24339: <==negation-removal== 61246 (pos)
                    (not (not_at_a_p10))

                    ; #86737: <==negation-removal== 41846 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #41349: origin
                    (at_a_p11)

                    ; #41846: origin
                    (not_at_a_p3)

                    ; #36118: <==negation-removal== 41349 (pos)
                    (not (not_at_a_p11))

                    ; #86737: <==negation-removal== 41846 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #41846: origin
                    (not_at_a_p3)

                    ; #64516: origin
                    (at_a_p12)

                    ; #35479: <==negation-removal== 64516 (pos)
                    (not (not_at_a_p12))

                    ; #86737: <==negation-removal== 41846 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #39385: origin
                    (at_a_p2)

                    ; #41846: origin
                    (not_at_a_p3)

                    ; #51055: <==negation-removal== 39385 (pos)
                    (not (not_at_a_p2))

                    ; #86737: <==negation-removal== 41846 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #41846: origin
                    (not_at_a_p3)

                    ; #86737: origin
                    (at_a_p3)

                    ; #41846: <==negation-removal== 86737 (pos)
                    (not (not_at_a_p3))

                    ; #86737: <==negation-removal== 41846 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #12800: origin
                    (at_a_p4)

                    ; #41846: origin
                    (not_at_a_p3)

                    ; #81443: <==negation-removal== 12800 (pos)
                    (not (not_at_a_p4))

                    ; #86737: <==negation-removal== 41846 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #41846: origin
                    (not_at_a_p3)

                    ; #75251: origin
                    (at_a_p5)

                    ; #36172: <==negation-removal== 75251 (pos)
                    (not (not_at_a_p5))

                    ; #86737: <==negation-removal== 41846 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #41846: origin
                    (not_at_a_p3)

                    ; #52561: origin
                    (at_a_p6)

                    ; #86737: <==negation-removal== 41846 (pos)
                    (not (at_a_p3))

                    ; #96302: <==negation-removal== 52561 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #28200: origin
                    (at_a_p7)

                    ; #41846: origin
                    (not_at_a_p3)

                    ; #84130: <==negation-removal== 28200 (pos)
                    (not (not_at_a_p7))

                    ; #86737: <==negation-removal== 41846 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #29356: origin
                    (at_a_p8)

                    ; #41846: origin
                    (not_at_a_p3)

                    ; #17403: <==negation-removal== 29356 (pos)
                    (not (not_at_a_p8))

                    ; #86737: <==negation-removal== 41846 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #31110: origin
                    (at_a_p9)

                    ; #41846: origin
                    (not_at_a_p3)

                    ; #83427: <==negation-removal== 31110 (pos)
                    (not (not_at_a_p9))

                    ; #86737: <==negation-removal== 41846 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #19169: origin
                    (at_a_p1)

                    ; #81443: origin
                    (not_at_a_p4)

                    ; #12800: <==negation-removal== 81443 (pos)
                    (not (at_a_p4))

                    ; #69598: <==negation-removal== 19169 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #61246: origin
                    (at_a_p10)

                    ; #81443: origin
                    (not_at_a_p4)

                    ; #12800: <==negation-removal== 81443 (pos)
                    (not (at_a_p4))

                    ; #24339: <==negation-removal== 61246 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #41349: origin
                    (at_a_p11)

                    ; #81443: origin
                    (not_at_a_p4)

                    ; #12800: <==negation-removal== 81443 (pos)
                    (not (at_a_p4))

                    ; #36118: <==negation-removal== 41349 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_a_p4))
        :effect (and
                    ; #64516: origin
                    (at_a_p12)

                    ; #81443: origin
                    (not_at_a_p4)

                    ; #12800: <==negation-removal== 81443 (pos)
                    (not (at_a_p4))

                    ; #35479: <==negation-removal== 64516 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #39385: origin
                    (at_a_p2)

                    ; #81443: origin
                    (not_at_a_p4)

                    ; #12800: <==negation-removal== 81443 (pos)
                    (not (at_a_p4))

                    ; #51055: <==negation-removal== 39385 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #81443: origin
                    (not_at_a_p4)

                    ; #86737: origin
                    (at_a_p3)

                    ; #12800: <==negation-removal== 81443 (pos)
                    (not (at_a_p4))

                    ; #41846: <==negation-removal== 86737 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #12800: origin
                    (at_a_p4)

                    ; #81443: origin
                    (not_at_a_p4)

                    ; #12800: <==negation-removal== 81443 (pos)
                    (not (at_a_p4))

                    ; #81443: <==negation-removal== 12800 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #75251: origin
                    (at_a_p5)

                    ; #81443: origin
                    (not_at_a_p4)

                    ; #12800: <==negation-removal== 81443 (pos)
                    (not (at_a_p4))

                    ; #36172: <==negation-removal== 75251 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #52561: origin
                    (at_a_p6)

                    ; #81443: origin
                    (not_at_a_p4)

                    ; #12800: <==negation-removal== 81443 (pos)
                    (not (at_a_p4))

                    ; #96302: <==negation-removal== 52561 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #28200: origin
                    (at_a_p7)

                    ; #81443: origin
                    (not_at_a_p4)

                    ; #12800: <==negation-removal== 81443 (pos)
                    (not (at_a_p4))

                    ; #84130: <==negation-removal== 28200 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #29356: origin
                    (at_a_p8)

                    ; #81443: origin
                    (not_at_a_p4)

                    ; #12800: <==negation-removal== 81443 (pos)
                    (not (at_a_p4))

                    ; #17403: <==negation-removal== 29356 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #31110: origin
                    (at_a_p9)

                    ; #81443: origin
                    (not_at_a_p4)

                    ; #12800: <==negation-removal== 81443 (pos)
                    (not (at_a_p4))

                    ; #83427: <==negation-removal== 31110 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #19169: origin
                    (at_a_p1)

                    ; #36172: origin
                    (not_at_a_p5)

                    ; #69598: <==negation-removal== 19169 (pos)
                    (not (not_at_a_p1))

                    ; #75251: <==negation-removal== 36172 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #36172: origin
                    (not_at_a_p5)

                    ; #61246: origin
                    (at_a_p10)

                    ; #24339: <==negation-removal== 61246 (pos)
                    (not (not_at_a_p10))

                    ; #75251: <==negation-removal== 36172 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_a_p5))
        :effect (and
                    ; #36172: origin
                    (not_at_a_p5)

                    ; #41349: origin
                    (at_a_p11)

                    ; #36118: <==negation-removal== 41349 (pos)
                    (not (not_at_a_p11))

                    ; #75251: <==negation-removal== 36172 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #36172: origin
                    (not_at_a_p5)

                    ; #64516: origin
                    (at_a_p12)

                    ; #35479: <==negation-removal== 64516 (pos)
                    (not (not_at_a_p12))

                    ; #75251: <==negation-removal== 36172 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #36172: origin
                    (not_at_a_p5)

                    ; #39385: origin
                    (at_a_p2)

                    ; #51055: <==negation-removal== 39385 (pos)
                    (not (not_at_a_p2))

                    ; #75251: <==negation-removal== 36172 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #36172: origin
                    (not_at_a_p5)

                    ; #86737: origin
                    (at_a_p3)

                    ; #41846: <==negation-removal== 86737 (pos)
                    (not (not_at_a_p3))

                    ; #75251: <==negation-removal== 36172 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #12800: origin
                    (at_a_p4)

                    ; #36172: origin
                    (not_at_a_p5)

                    ; #75251: <==negation-removal== 36172 (pos)
                    (not (at_a_p5))

                    ; #81443: <==negation-removal== 12800 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #36172: origin
                    (not_at_a_p5)

                    ; #75251: origin
                    (at_a_p5)

                    ; #36172: <==negation-removal== 75251 (pos)
                    (not (not_at_a_p5))

                    ; #75251: <==negation-removal== 36172 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #36172: origin
                    (not_at_a_p5)

                    ; #52561: origin
                    (at_a_p6)

                    ; #75251: <==negation-removal== 36172 (pos)
                    (not (at_a_p5))

                    ; #96302: <==negation-removal== 52561 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #28200: origin
                    (at_a_p7)

                    ; #36172: origin
                    (not_at_a_p5)

                    ; #75251: <==negation-removal== 36172 (pos)
                    (not (at_a_p5))

                    ; #84130: <==negation-removal== 28200 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #29356: origin
                    (at_a_p8)

                    ; #36172: origin
                    (not_at_a_p5)

                    ; #17403: <==negation-removal== 29356 (pos)
                    (not (not_at_a_p8))

                    ; #75251: <==negation-removal== 36172 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #31110: origin
                    (at_a_p9)

                    ; #36172: origin
                    (not_at_a_p5)

                    ; #75251: <==negation-removal== 36172 (pos)
                    (not (at_a_p5))

                    ; #83427: <==negation-removal== 31110 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #19169: origin
                    (at_a_p1)

                    ; #96302: origin
                    (not_at_a_p6)

                    ; #52561: <==negation-removal== 96302 (pos)
                    (not (at_a_p6))

                    ; #69598: <==negation-removal== 19169 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6))
        :effect (and
                    ; #61246: origin
                    (at_a_p10)

                    ; #96302: origin
                    (not_at_a_p6)

                    ; #24339: <==negation-removal== 61246 (pos)
                    (not (not_at_a_p10))

                    ; #52561: <==negation-removal== 96302 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6))
        :effect (and
                    ; #41349: origin
                    (at_a_p11)

                    ; #96302: origin
                    (not_at_a_p6)

                    ; #36118: <==negation-removal== 41349 (pos)
                    (not (not_at_a_p11))

                    ; #52561: <==negation-removal== 96302 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6))
        :effect (and
                    ; #64516: origin
                    (at_a_p12)

                    ; #96302: origin
                    (not_at_a_p6)

                    ; #35479: <==negation-removal== 64516 (pos)
                    (not (not_at_a_p12))

                    ; #52561: <==negation-removal== 96302 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #39385: origin
                    (at_a_p2)

                    ; #96302: origin
                    (not_at_a_p6)

                    ; #51055: <==negation-removal== 39385 (pos)
                    (not (not_at_a_p2))

                    ; #52561: <==negation-removal== 96302 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #86737: origin
                    (at_a_p3)

                    ; #96302: origin
                    (not_at_a_p6)

                    ; #41846: <==negation-removal== 86737 (pos)
                    (not (not_at_a_p3))

                    ; #52561: <==negation-removal== 96302 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #12800: origin
                    (at_a_p4)

                    ; #96302: origin
                    (not_at_a_p6)

                    ; #52561: <==negation-removal== 96302 (pos)
                    (not (at_a_p6))

                    ; #81443: <==negation-removal== 12800 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #75251: origin
                    (at_a_p5)

                    ; #96302: origin
                    (not_at_a_p6)

                    ; #36172: <==negation-removal== 75251 (pos)
                    (not (not_at_a_p5))

                    ; #52561: <==negation-removal== 96302 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #52561: origin
                    (at_a_p6)

                    ; #96302: origin
                    (not_at_a_p6)

                    ; #52561: <==negation-removal== 96302 (pos)
                    (not (at_a_p6))

                    ; #96302: <==negation-removal== 52561 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #28200: origin
                    (at_a_p7)

                    ; #96302: origin
                    (not_at_a_p6)

                    ; #52561: <==negation-removal== 96302 (pos)
                    (not (at_a_p6))

                    ; #84130: <==negation-removal== 28200 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #29356: origin
                    (at_a_p8)

                    ; #96302: origin
                    (not_at_a_p6)

                    ; #17403: <==negation-removal== 29356 (pos)
                    (not (not_at_a_p8))

                    ; #52561: <==negation-removal== 96302 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #31110: origin
                    (at_a_p9)

                    ; #96302: origin
                    (not_at_a_p6)

                    ; #52561: <==negation-removal== 96302 (pos)
                    (not (at_a_p6))

                    ; #83427: <==negation-removal== 31110 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #19169: origin
                    (at_a_p1)

                    ; #84130: origin
                    (not_at_a_p7)

                    ; #28200: <==negation-removal== 84130 (pos)
                    (not (at_a_p7))

                    ; #69598: <==negation-removal== 19169 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (at_a_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #61246: origin
                    (at_a_p10)

                    ; #84130: origin
                    (not_at_a_p7)

                    ; #24339: <==negation-removal== 61246 (pos)
                    (not (not_at_a_p10))

                    ; #28200: <==negation-removal== 84130 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #41349: origin
                    (at_a_p11)

                    ; #84130: origin
                    (not_at_a_p7)

                    ; #28200: <==negation-removal== 84130 (pos)
                    (not (at_a_p7))

                    ; #36118: <==negation-removal== 41349 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7))
        :effect (and
                    ; #64516: origin
                    (at_a_p12)

                    ; #84130: origin
                    (not_at_a_p7)

                    ; #28200: <==negation-removal== 84130 (pos)
                    (not (at_a_p7))

                    ; #35479: <==negation-removal== 64516 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #39385: origin
                    (at_a_p2)

                    ; #84130: origin
                    (not_at_a_p7)

                    ; #28200: <==negation-removal== 84130 (pos)
                    (not (at_a_p7))

                    ; #51055: <==negation-removal== 39385 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #84130: origin
                    (not_at_a_p7)

                    ; #86737: origin
                    (at_a_p3)

                    ; #28200: <==negation-removal== 84130 (pos)
                    (not (at_a_p7))

                    ; #41846: <==negation-removal== 86737 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #12800: origin
                    (at_a_p4)

                    ; #84130: origin
                    (not_at_a_p7)

                    ; #28200: <==negation-removal== 84130 (pos)
                    (not (at_a_p7))

                    ; #81443: <==negation-removal== 12800 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #75251: origin
                    (at_a_p5)

                    ; #84130: origin
                    (not_at_a_p7)

                    ; #28200: <==negation-removal== 84130 (pos)
                    (not (at_a_p7))

                    ; #36172: <==negation-removal== 75251 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #52561: origin
                    (at_a_p6)

                    ; #84130: origin
                    (not_at_a_p7)

                    ; #28200: <==negation-removal== 84130 (pos)
                    (not (at_a_p7))

                    ; #96302: <==negation-removal== 52561 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #28200: origin
                    (at_a_p7)

                    ; #84130: origin
                    (not_at_a_p7)

                    ; #28200: <==negation-removal== 84130 (pos)
                    (not (at_a_p7))

                    ; #84130: <==negation-removal== 28200 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #29356: origin
                    (at_a_p8)

                    ; #84130: origin
                    (not_at_a_p7)

                    ; #17403: <==negation-removal== 29356 (pos)
                    (not (not_at_a_p8))

                    ; #28200: <==negation-removal== 84130 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #31110: origin
                    (at_a_p9)

                    ; #84130: origin
                    (not_at_a_p7)

                    ; #28200: <==negation-removal== 84130 (pos)
                    (not (at_a_p7))

                    ; #83427: <==negation-removal== 31110 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #17403: origin
                    (not_at_a_p8)

                    ; #19169: origin
                    (at_a_p1)

                    ; #29356: <==negation-removal== 17403 (pos)
                    (not (at_a_p8))

                    ; #69598: <==negation-removal== 19169 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8))
        :effect (and
                    ; #17403: origin
                    (not_at_a_p8)

                    ; #61246: origin
                    (at_a_p10)

                    ; #24339: <==negation-removal== 61246 (pos)
                    (not (not_at_a_p10))

                    ; #29356: <==negation-removal== 17403 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #17403: origin
                    (not_at_a_p8)

                    ; #41349: origin
                    (at_a_p11)

                    ; #29356: <==negation-removal== 17403 (pos)
                    (not (at_a_p8))

                    ; #36118: <==negation-removal== 41349 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_a_p8))
        :effect (and
                    ; #17403: origin
                    (not_at_a_p8)

                    ; #64516: origin
                    (at_a_p12)

                    ; #29356: <==negation-removal== 17403 (pos)
                    (not (at_a_p8))

                    ; #35479: <==negation-removal== 64516 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #17403: origin
                    (not_at_a_p8)

                    ; #39385: origin
                    (at_a_p2)

                    ; #29356: <==negation-removal== 17403 (pos)
                    (not (at_a_p8))

                    ; #51055: <==negation-removal== 39385 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #17403: origin
                    (not_at_a_p8)

                    ; #86737: origin
                    (at_a_p3)

                    ; #29356: <==negation-removal== 17403 (pos)
                    (not (at_a_p8))

                    ; #41846: <==negation-removal== 86737 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #12800: origin
                    (at_a_p4)

                    ; #17403: origin
                    (not_at_a_p8)

                    ; #29356: <==negation-removal== 17403 (pos)
                    (not (at_a_p8))

                    ; #81443: <==negation-removal== 12800 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #17403: origin
                    (not_at_a_p8)

                    ; #75251: origin
                    (at_a_p5)

                    ; #29356: <==negation-removal== 17403 (pos)
                    (not (at_a_p8))

                    ; #36172: <==negation-removal== 75251 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #17403: origin
                    (not_at_a_p8)

                    ; #52561: origin
                    (at_a_p6)

                    ; #29356: <==negation-removal== 17403 (pos)
                    (not (at_a_p8))

                    ; #96302: <==negation-removal== 52561 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #17403: origin
                    (not_at_a_p8)

                    ; #28200: origin
                    (at_a_p7)

                    ; #29356: <==negation-removal== 17403 (pos)
                    (not (at_a_p8))

                    ; #84130: <==negation-removal== 28200 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #17403: origin
                    (not_at_a_p8)

                    ; #29356: origin
                    (at_a_p8)

                    ; #17403: <==negation-removal== 29356 (pos)
                    (not (not_at_a_p8))

                    ; #29356: <==negation-removal== 17403 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #17403: origin
                    (not_at_a_p8)

                    ; #31110: origin
                    (at_a_p9)

                    ; #29356: <==negation-removal== 17403 (pos)
                    (not (at_a_p8))

                    ; #83427: <==negation-removal== 31110 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #19169: origin
                    (at_a_p1)

                    ; #83427: origin
                    (not_at_a_p9)

                    ; #31110: <==negation-removal== 83427 (pos)
                    (not (at_a_p9))

                    ; #69598: <==negation-removal== 19169 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9))
        :effect (and
                    ; #61246: origin
                    (at_a_p10)

                    ; #83427: origin
                    (not_at_a_p9)

                    ; #24339: <==negation-removal== 61246 (pos)
                    (not (not_at_a_p10))

                    ; #31110: <==negation-removal== 83427 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9))
        :effect (and
                    ; #41349: origin
                    (at_a_p11)

                    ; #83427: origin
                    (not_at_a_p9)

                    ; #31110: <==negation-removal== 83427 (pos)
                    (not (at_a_p9))

                    ; #36118: <==negation-removal== 41349 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9))
        :effect (and
                    ; #64516: origin
                    (at_a_p12)

                    ; #83427: origin
                    (not_at_a_p9)

                    ; #31110: <==negation-removal== 83427 (pos)
                    (not (at_a_p9))

                    ; #35479: <==negation-removal== 64516 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #39385: origin
                    (at_a_p2)

                    ; #83427: origin
                    (not_at_a_p9)

                    ; #31110: <==negation-removal== 83427 (pos)
                    (not (at_a_p9))

                    ; #51055: <==negation-removal== 39385 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #83427: origin
                    (not_at_a_p9)

                    ; #86737: origin
                    (at_a_p3)

                    ; #31110: <==negation-removal== 83427 (pos)
                    (not (at_a_p9))

                    ; #41846: <==negation-removal== 86737 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #12800: origin
                    (at_a_p4)

                    ; #83427: origin
                    (not_at_a_p9)

                    ; #31110: <==negation-removal== 83427 (pos)
                    (not (at_a_p9))

                    ; #81443: <==negation-removal== 12800 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #75251: origin
                    (at_a_p5)

                    ; #83427: origin
                    (not_at_a_p9)

                    ; #31110: <==negation-removal== 83427 (pos)
                    (not (at_a_p9))

                    ; #36172: <==negation-removal== 75251 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #52561: origin
                    (at_a_p6)

                    ; #83427: origin
                    (not_at_a_p9)

                    ; #31110: <==negation-removal== 83427 (pos)
                    (not (at_a_p9))

                    ; #96302: <==negation-removal== 52561 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #28200: origin
                    (at_a_p7)

                    ; #83427: origin
                    (not_at_a_p9)

                    ; #31110: <==negation-removal== 83427 (pos)
                    (not (at_a_p9))

                    ; #84130: <==negation-removal== 28200 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #29356: origin
                    (at_a_p8)

                    ; #83427: origin
                    (not_at_a_p9)

                    ; #17403: <==negation-removal== 29356 (pos)
                    (not (not_at_a_p8))

                    ; #31110: <==negation-removal== 83427 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #31110: origin
                    (at_a_p9)

                    ; #83427: origin
                    (not_at_a_p9)

                    ; #31110: <==negation-removal== 83427 (pos)
                    (not (at_a_p9))

                    ; #83427: <==negation-removal== 31110 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10))
        :effect (and
                    ; #22905: origin
                    (at_b_p1)

                    ; #63123: origin
                    (not_at_b_p10)

                    ; #35579: <==negation-removal== 22905 (pos)
                    (not (not_at_b_p1))

                    ; #51702: <==negation-removal== 63123 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10))
        :effect (and
                    ; #51702: origin
                    (at_b_p10)

                    ; #63123: origin
                    (not_at_b_p10)

                    ; #51702: <==negation-removal== 63123 (pos)
                    (not (at_b_p10))

                    ; #63123: <==negation-removal== 51702 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #63123: origin
                    (not_at_b_p10)

                    ; #85829: origin
                    (at_b_p11)

                    ; #51702: <==negation-removal== 63123 (pos)
                    (not (at_b_p10))

                    ; #65583: <==negation-removal== 85829 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_b_p10))
        :effect (and
                    ; #47755: origin
                    (at_b_p12)

                    ; #63123: origin
                    (not_at_b_p10)

                    ; #51702: <==negation-removal== 63123 (pos)
                    (not (at_b_p10))

                    ; #87466: <==negation-removal== 47755 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #32580: origin
                    (at_b_p2)

                    ; #63123: origin
                    (not_at_b_p10)

                    ; #42642: <==negation-removal== 32580 (pos)
                    (not (not_at_b_p2))

                    ; #51702: <==negation-removal== 63123 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #25807: origin
                    (at_b_p3)

                    ; #63123: origin
                    (not_at_b_p10)

                    ; #51702: <==negation-removal== 63123 (pos)
                    (not (at_b_p10))

                    ; #65860: <==negation-removal== 25807 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_b_p10))
        :effect (and
                    ; #63123: origin
                    (not_at_b_p10)

                    ; #68282: origin
                    (at_b_p4)

                    ; #43677: <==negation-removal== 68282 (pos)
                    (not (not_at_b_p4))

                    ; #51702: <==negation-removal== 63123 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_b_p10))
        :effect (and
                    ; #38653: origin
                    (at_b_p5)

                    ; #63123: origin
                    (not_at_b_p10)

                    ; #51702: <==negation-removal== 63123 (pos)
                    (not (at_b_p10))

                    ; #84624: <==negation-removal== 38653 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #18446: origin
                    (at_b_p6)

                    ; #63123: origin
                    (not_at_b_p10)

                    ; #23408: <==negation-removal== 18446 (pos)
                    (not (not_at_b_p6))

                    ; #51702: <==negation-removal== 63123 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #63123: origin
                    (not_at_b_p10)

                    ; #77104: origin
                    (at_b_p7)

                    ; #20555: <==negation-removal== 77104 (pos)
                    (not (not_at_b_p7))

                    ; #51702: <==negation-removal== 63123 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_b_p10))
        :effect (and
                    ; #63123: origin
                    (not_at_b_p10)

                    ; #73448: origin
                    (at_b_p8)

                    ; #51702: <==negation-removal== 63123 (pos)
                    (not (at_b_p10))

                    ; #77272: <==negation-removal== 73448 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_b_p10))
        :effect (and
                    ; #14092: origin
                    (at_b_p9)

                    ; #63123: origin
                    (not_at_b_p10)

                    ; #15951: <==negation-removal== 14092 (pos)
                    (not (not_at_b_p9))

                    ; #51702: <==negation-removal== 63123 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (at_b_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #22905: origin
                    (at_b_p1)

                    ; #65583: origin
                    (not_at_b_p11)

                    ; #35579: <==negation-removal== 22905 (pos)
                    (not (not_at_b_p1))

                    ; #85829: <==negation-removal== 65583 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #51702: origin
                    (at_b_p10)

                    ; #65583: origin
                    (not_at_b_p11)

                    ; #63123: <==negation-removal== 51702 (pos)
                    (not (not_at_b_p10))

                    ; #85829: <==negation-removal== 65583 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #65583: origin
                    (not_at_b_p11)

                    ; #85829: origin
                    (at_b_p11)

                    ; #65583: <==negation-removal== 85829 (pos)
                    (not (not_at_b_p11))

                    ; #85829: <==negation-removal== 65583 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (at_b_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #47755: origin
                    (at_b_p12)

                    ; #65583: origin
                    (not_at_b_p11)

                    ; #85829: <==negation-removal== 65583 (pos)
                    (not (at_b_p11))

                    ; #87466: <==negation-removal== 47755 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #32580: origin
                    (at_b_p2)

                    ; #65583: origin
                    (not_at_b_p11)

                    ; #42642: <==negation-removal== 32580 (pos)
                    (not (not_at_b_p2))

                    ; #85829: <==negation-removal== 65583 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #25807: origin
                    (at_b_p3)

                    ; #65583: origin
                    (not_at_b_p11)

                    ; #65860: <==negation-removal== 25807 (pos)
                    (not (not_at_b_p3))

                    ; #85829: <==negation-removal== 65583 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p4
        :precondition (and (at_b_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #65583: origin
                    (not_at_b_p11)

                    ; #68282: origin
                    (at_b_p4)

                    ; #43677: <==negation-removal== 68282 (pos)
                    (not (not_at_b_p4))

                    ; #85829: <==negation-removal== 65583 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #38653: origin
                    (at_b_p5)

                    ; #65583: origin
                    (not_at_b_p11)

                    ; #84624: <==negation-removal== 38653 (pos)
                    (not (not_at_b_p5))

                    ; #85829: <==negation-removal== 65583 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (at_b_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #18446: origin
                    (at_b_p6)

                    ; #65583: origin
                    (not_at_b_p11)

                    ; #23408: <==negation-removal== 18446 (pos)
                    (not (not_at_b_p6))

                    ; #85829: <==negation-removal== 65583 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #65583: origin
                    (not_at_b_p11)

                    ; #77104: origin
                    (at_b_p7)

                    ; #20555: <==negation-removal== 77104 (pos)
                    (not (not_at_b_p7))

                    ; #85829: <==negation-removal== 65583 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p8
        :precondition (and (at_b_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #65583: origin
                    (not_at_b_p11)

                    ; #73448: origin
                    (at_b_p8)

                    ; #77272: <==negation-removal== 73448 (pos)
                    (not (not_at_b_p8))

                    ; #85829: <==negation-removal== 65583 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #14092: origin
                    (at_b_p9)

                    ; #65583: origin
                    (not_at_b_p11)

                    ; #15951: <==negation-removal== 14092 (pos)
                    (not (not_at_b_p9))

                    ; #85829: <==negation-removal== 65583 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #22905: origin
                    (at_b_p1)

                    ; #87466: origin
                    (not_at_b_p12)

                    ; #35579: <==negation-removal== 22905 (pos)
                    (not (not_at_b_p1))

                    ; #47755: <==negation-removal== 87466 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #51702: origin
                    (at_b_p10)

                    ; #87466: origin
                    (not_at_b_p12)

                    ; #47755: <==negation-removal== 87466 (pos)
                    (not (at_b_p12))

                    ; #63123: <==negation-removal== 51702 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_b_p12))
        :effect (and
                    ; #85829: origin
                    (at_b_p11)

                    ; #87466: origin
                    (not_at_b_p12)

                    ; #47755: <==negation-removal== 87466 (pos)
                    (not (at_b_p12))

                    ; #65583: <==negation-removal== 85829 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_b_p12))
        :effect (and
                    ; #47755: origin
                    (at_b_p12)

                    ; #87466: origin
                    (not_at_b_p12)

                    ; #47755: <==negation-removal== 87466 (pos)
                    (not (at_b_p12))

                    ; #87466: <==negation-removal== 47755 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12))
        :effect (and
                    ; #32580: origin
                    (at_b_p2)

                    ; #87466: origin
                    (not_at_b_p12)

                    ; #42642: <==negation-removal== 32580 (pos)
                    (not (not_at_b_p2))

                    ; #47755: <==negation-removal== 87466 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #25807: origin
                    (at_b_p3)

                    ; #87466: origin
                    (not_at_b_p12)

                    ; #47755: <==negation-removal== 87466 (pos)
                    (not (at_b_p12))

                    ; #65860: <==negation-removal== 25807 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #68282: origin
                    (at_b_p4)

                    ; #87466: origin
                    (not_at_b_p12)

                    ; #43677: <==negation-removal== 68282 (pos)
                    (not (not_at_b_p4))

                    ; #47755: <==negation-removal== 87466 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12))
        :effect (and
                    ; #38653: origin
                    (at_b_p5)

                    ; #87466: origin
                    (not_at_b_p12)

                    ; #47755: <==negation-removal== 87466 (pos)
                    (not (at_b_p12))

                    ; #84624: <==negation-removal== 38653 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #18446: origin
                    (at_b_p6)

                    ; #87466: origin
                    (not_at_b_p12)

                    ; #23408: <==negation-removal== 18446 (pos)
                    (not (not_at_b_p6))

                    ; #47755: <==negation-removal== 87466 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_b_p12))
        :effect (and
                    ; #77104: origin
                    (at_b_p7)

                    ; #87466: origin
                    (not_at_b_p12)

                    ; #20555: <==negation-removal== 77104 (pos)
                    (not (not_at_b_p7))

                    ; #47755: <==negation-removal== 87466 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #73448: origin
                    (at_b_p8)

                    ; #87466: origin
                    (not_at_b_p12)

                    ; #47755: <==negation-removal== 87466 (pos)
                    (not (at_b_p12))

                    ; #77272: <==negation-removal== 73448 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #14092: origin
                    (at_b_p9)

                    ; #87466: origin
                    (not_at_b_p12)

                    ; #15951: <==negation-removal== 14092 (pos)
                    (not (not_at_b_p9))

                    ; #47755: <==negation-removal== 87466 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #22905: origin
                    (at_b_p1)

                    ; #35579: origin
                    (not_at_b_p1)

                    ; #22905: <==negation-removal== 35579 (pos)
                    (not (at_b_p1))

                    ; #35579: <==negation-removal== 22905 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (at_b_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #35579: origin
                    (not_at_b_p1)

                    ; #51702: origin
                    (at_b_p10)

                    ; #22905: <==negation-removal== 35579 (pos)
                    (not (at_b_p1))

                    ; #63123: <==negation-removal== 51702 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #35579: origin
                    (not_at_b_p1)

                    ; #85829: origin
                    (at_b_p11)

                    ; #22905: <==negation-removal== 35579 (pos)
                    (not (at_b_p1))

                    ; #65583: <==negation-removal== 85829 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #35579: origin
                    (not_at_b_p1)

                    ; #47755: origin
                    (at_b_p12)

                    ; #22905: <==negation-removal== 35579 (pos)
                    (not (at_b_p1))

                    ; #87466: <==negation-removal== 47755 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #32580: origin
                    (at_b_p2)

                    ; #35579: origin
                    (not_at_b_p1)

                    ; #22905: <==negation-removal== 35579 (pos)
                    (not (at_b_p1))

                    ; #42642: <==negation-removal== 32580 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #25807: origin
                    (at_b_p3)

                    ; #35579: origin
                    (not_at_b_p1)

                    ; #22905: <==negation-removal== 35579 (pos)
                    (not (at_b_p1))

                    ; #65860: <==negation-removal== 25807 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #35579: origin
                    (not_at_b_p1)

                    ; #68282: origin
                    (at_b_p4)

                    ; #22905: <==negation-removal== 35579 (pos)
                    (not (at_b_p1))

                    ; #43677: <==negation-removal== 68282 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #35579: origin
                    (not_at_b_p1)

                    ; #38653: origin
                    (at_b_p5)

                    ; #22905: <==negation-removal== 35579 (pos)
                    (not (at_b_p1))

                    ; #84624: <==negation-removal== 38653 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #18446: origin
                    (at_b_p6)

                    ; #35579: origin
                    (not_at_b_p1)

                    ; #22905: <==negation-removal== 35579 (pos)
                    (not (at_b_p1))

                    ; #23408: <==negation-removal== 18446 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #35579: origin
                    (not_at_b_p1)

                    ; #77104: origin
                    (at_b_p7)

                    ; #20555: <==negation-removal== 77104 (pos)
                    (not (not_at_b_p7))

                    ; #22905: <==negation-removal== 35579 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #35579: origin
                    (not_at_b_p1)

                    ; #73448: origin
                    (at_b_p8)

                    ; #22905: <==negation-removal== 35579 (pos)
                    (not (at_b_p1))

                    ; #77272: <==negation-removal== 73448 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #14092: origin
                    (at_b_p9)

                    ; #35579: origin
                    (not_at_b_p1)

                    ; #15951: <==negation-removal== 14092 (pos)
                    (not (not_at_b_p9))

                    ; #22905: <==negation-removal== 35579 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #22905: origin
                    (at_b_p1)

                    ; #42642: origin
                    (not_at_b_p2)

                    ; #32580: <==negation-removal== 42642 (pos)
                    (not (at_b_p2))

                    ; #35579: <==negation-removal== 22905 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #42642: origin
                    (not_at_b_p2)

                    ; #51702: origin
                    (at_b_p10)

                    ; #32580: <==negation-removal== 42642 (pos)
                    (not (at_b_p2))

                    ; #63123: <==negation-removal== 51702 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2))
        :effect (and
                    ; #42642: origin
                    (not_at_b_p2)

                    ; #85829: origin
                    (at_b_p11)

                    ; #32580: <==negation-removal== 42642 (pos)
                    (not (at_b_p2))

                    ; #65583: <==negation-removal== 85829 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2))
        :effect (and
                    ; #42642: origin
                    (not_at_b_p2)

                    ; #47755: origin
                    (at_b_p12)

                    ; #32580: <==negation-removal== 42642 (pos)
                    (not (at_b_p2))

                    ; #87466: <==negation-removal== 47755 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #32580: origin
                    (at_b_p2)

                    ; #42642: origin
                    (not_at_b_p2)

                    ; #32580: <==negation-removal== 42642 (pos)
                    (not (at_b_p2))

                    ; #42642: <==negation-removal== 32580 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #25807: origin
                    (at_b_p3)

                    ; #42642: origin
                    (not_at_b_p2)

                    ; #32580: <==negation-removal== 42642 (pos)
                    (not (at_b_p2))

                    ; #65860: <==negation-removal== 25807 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #42642: origin
                    (not_at_b_p2)

                    ; #68282: origin
                    (at_b_p4)

                    ; #32580: <==negation-removal== 42642 (pos)
                    (not (at_b_p2))

                    ; #43677: <==negation-removal== 68282 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #38653: origin
                    (at_b_p5)

                    ; #42642: origin
                    (not_at_b_p2)

                    ; #32580: <==negation-removal== 42642 (pos)
                    (not (at_b_p2))

                    ; #84624: <==negation-removal== 38653 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #18446: origin
                    (at_b_p6)

                    ; #42642: origin
                    (not_at_b_p2)

                    ; #23408: <==negation-removal== 18446 (pos)
                    (not (not_at_b_p6))

                    ; #32580: <==negation-removal== 42642 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #42642: origin
                    (not_at_b_p2)

                    ; #77104: origin
                    (at_b_p7)

                    ; #20555: <==negation-removal== 77104 (pos)
                    (not (not_at_b_p7))

                    ; #32580: <==negation-removal== 42642 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #42642: origin
                    (not_at_b_p2)

                    ; #73448: origin
                    (at_b_p8)

                    ; #32580: <==negation-removal== 42642 (pos)
                    (not (at_b_p2))

                    ; #77272: <==negation-removal== 73448 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #14092: origin
                    (at_b_p9)

                    ; #42642: origin
                    (not_at_b_p2)

                    ; #15951: <==negation-removal== 14092 (pos)
                    (not (not_at_b_p9))

                    ; #32580: <==negation-removal== 42642 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #22905: origin
                    (at_b_p1)

                    ; #65860: origin
                    (not_at_b_p3)

                    ; #25807: <==negation-removal== 65860 (pos)
                    (not (at_b_p3))

                    ; #35579: <==negation-removal== 22905 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #51702: origin
                    (at_b_p10)

                    ; #65860: origin
                    (not_at_b_p3)

                    ; #25807: <==negation-removal== 65860 (pos)
                    (not (at_b_p3))

                    ; #63123: <==negation-removal== 51702 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3))
        :effect (and
                    ; #65860: origin
                    (not_at_b_p3)

                    ; #85829: origin
                    (at_b_p11)

                    ; #25807: <==negation-removal== 65860 (pos)
                    (not (at_b_p3))

                    ; #65583: <==negation-removal== 85829 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #47755: origin
                    (at_b_p12)

                    ; #65860: origin
                    (not_at_b_p3)

                    ; #25807: <==negation-removal== 65860 (pos)
                    (not (at_b_p3))

                    ; #87466: <==negation-removal== 47755 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #32580: origin
                    (at_b_p2)

                    ; #65860: origin
                    (not_at_b_p3)

                    ; #25807: <==negation-removal== 65860 (pos)
                    (not (at_b_p3))

                    ; #42642: <==negation-removal== 32580 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #25807: origin
                    (at_b_p3)

                    ; #65860: origin
                    (not_at_b_p3)

                    ; #25807: <==negation-removal== 65860 (pos)
                    (not (at_b_p3))

                    ; #65860: <==negation-removal== 25807 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #65860: origin
                    (not_at_b_p3)

                    ; #68282: origin
                    (at_b_p4)

                    ; #25807: <==negation-removal== 65860 (pos)
                    (not (at_b_p3))

                    ; #43677: <==negation-removal== 68282 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #38653: origin
                    (at_b_p5)

                    ; #65860: origin
                    (not_at_b_p3)

                    ; #25807: <==negation-removal== 65860 (pos)
                    (not (at_b_p3))

                    ; #84624: <==negation-removal== 38653 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #18446: origin
                    (at_b_p6)

                    ; #65860: origin
                    (not_at_b_p3)

                    ; #23408: <==negation-removal== 18446 (pos)
                    (not (not_at_b_p6))

                    ; #25807: <==negation-removal== 65860 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #65860: origin
                    (not_at_b_p3)

                    ; #77104: origin
                    (at_b_p7)

                    ; #20555: <==negation-removal== 77104 (pos)
                    (not (not_at_b_p7))

                    ; #25807: <==negation-removal== 65860 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #65860: origin
                    (not_at_b_p3)

                    ; #73448: origin
                    (at_b_p8)

                    ; #25807: <==negation-removal== 65860 (pos)
                    (not (at_b_p3))

                    ; #77272: <==negation-removal== 73448 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #14092: origin
                    (at_b_p9)

                    ; #65860: origin
                    (not_at_b_p3)

                    ; #15951: <==negation-removal== 14092 (pos)
                    (not (not_at_b_p9))

                    ; #25807: <==negation-removal== 65860 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #22905: origin
                    (at_b_p1)

                    ; #43677: origin
                    (not_at_b_p4)

                    ; #35579: <==negation-removal== 22905 (pos)
                    (not (not_at_b_p1))

                    ; #68282: <==negation-removal== 43677 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4))
        :effect (and
                    ; #43677: origin
                    (not_at_b_p4)

                    ; #51702: origin
                    (at_b_p10)

                    ; #63123: <==negation-removal== 51702 (pos)
                    (not (not_at_b_p10))

                    ; #68282: <==negation-removal== 43677 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4))
        :effect (and
                    ; #43677: origin
                    (not_at_b_p4)

                    ; #85829: origin
                    (at_b_p11)

                    ; #65583: <==negation-removal== 85829 (pos)
                    (not (not_at_b_p11))

                    ; #68282: <==negation-removal== 43677 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4))
        :effect (and
                    ; #43677: origin
                    (not_at_b_p4)

                    ; #47755: origin
                    (at_b_p12)

                    ; #68282: <==negation-removal== 43677 (pos)
                    (not (at_b_p4))

                    ; #87466: <==negation-removal== 47755 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #32580: origin
                    (at_b_p2)

                    ; #43677: origin
                    (not_at_b_p4)

                    ; #42642: <==negation-removal== 32580 (pos)
                    (not (not_at_b_p2))

                    ; #68282: <==negation-removal== 43677 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #25807: origin
                    (at_b_p3)

                    ; #43677: origin
                    (not_at_b_p4)

                    ; #65860: <==negation-removal== 25807 (pos)
                    (not (not_at_b_p3))

                    ; #68282: <==negation-removal== 43677 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #43677: origin
                    (not_at_b_p4)

                    ; #68282: origin
                    (at_b_p4)

                    ; #43677: <==negation-removal== 68282 (pos)
                    (not (not_at_b_p4))

                    ; #68282: <==negation-removal== 43677 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #38653: origin
                    (at_b_p5)

                    ; #43677: origin
                    (not_at_b_p4)

                    ; #68282: <==negation-removal== 43677 (pos)
                    (not (at_b_p4))

                    ; #84624: <==negation-removal== 38653 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #18446: origin
                    (at_b_p6)

                    ; #43677: origin
                    (not_at_b_p4)

                    ; #23408: <==negation-removal== 18446 (pos)
                    (not (not_at_b_p6))

                    ; #68282: <==negation-removal== 43677 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #43677: origin
                    (not_at_b_p4)

                    ; #77104: origin
                    (at_b_p7)

                    ; #20555: <==negation-removal== 77104 (pos)
                    (not (not_at_b_p7))

                    ; #68282: <==negation-removal== 43677 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #43677: origin
                    (not_at_b_p4)

                    ; #73448: origin
                    (at_b_p8)

                    ; #68282: <==negation-removal== 43677 (pos)
                    (not (at_b_p4))

                    ; #77272: <==negation-removal== 73448 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #14092: origin
                    (at_b_p9)

                    ; #43677: origin
                    (not_at_b_p4)

                    ; #15951: <==negation-removal== 14092 (pos)
                    (not (not_at_b_p9))

                    ; #68282: <==negation-removal== 43677 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #22905: origin
                    (at_b_p1)

                    ; #84624: origin
                    (not_at_b_p5)

                    ; #35579: <==negation-removal== 22905 (pos)
                    (not (not_at_b_p1))

                    ; #38653: <==negation-removal== 84624 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #51702: origin
                    (at_b_p10)

                    ; #84624: origin
                    (not_at_b_p5)

                    ; #38653: <==negation-removal== 84624 (pos)
                    (not (at_b_p5))

                    ; #63123: <==negation-removal== 51702 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #84624: origin
                    (not_at_b_p5)

                    ; #85829: origin
                    (at_b_p11)

                    ; #38653: <==negation-removal== 84624 (pos)
                    (not (at_b_p5))

                    ; #65583: <==negation-removal== 85829 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #47755: origin
                    (at_b_p12)

                    ; #84624: origin
                    (not_at_b_p5)

                    ; #38653: <==negation-removal== 84624 (pos)
                    (not (at_b_p5))

                    ; #87466: <==negation-removal== 47755 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #32580: origin
                    (at_b_p2)

                    ; #84624: origin
                    (not_at_b_p5)

                    ; #38653: <==negation-removal== 84624 (pos)
                    (not (at_b_p5))

                    ; #42642: <==negation-removal== 32580 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #25807: origin
                    (at_b_p3)

                    ; #84624: origin
                    (not_at_b_p5)

                    ; #38653: <==negation-removal== 84624 (pos)
                    (not (at_b_p5))

                    ; #65860: <==negation-removal== 25807 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #68282: origin
                    (at_b_p4)

                    ; #84624: origin
                    (not_at_b_p5)

                    ; #38653: <==negation-removal== 84624 (pos)
                    (not (at_b_p5))

                    ; #43677: <==negation-removal== 68282 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #38653: origin
                    (at_b_p5)

                    ; #84624: origin
                    (not_at_b_p5)

                    ; #38653: <==negation-removal== 84624 (pos)
                    (not (at_b_p5))

                    ; #84624: <==negation-removal== 38653 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #18446: origin
                    (at_b_p6)

                    ; #84624: origin
                    (not_at_b_p5)

                    ; #23408: <==negation-removal== 18446 (pos)
                    (not (not_at_b_p6))

                    ; #38653: <==negation-removal== 84624 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #77104: origin
                    (at_b_p7)

                    ; #84624: origin
                    (not_at_b_p5)

                    ; #20555: <==negation-removal== 77104 (pos)
                    (not (not_at_b_p7))

                    ; #38653: <==negation-removal== 84624 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #73448: origin
                    (at_b_p8)

                    ; #84624: origin
                    (not_at_b_p5)

                    ; #38653: <==negation-removal== 84624 (pos)
                    (not (at_b_p5))

                    ; #77272: <==negation-removal== 73448 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #14092: origin
                    (at_b_p9)

                    ; #84624: origin
                    (not_at_b_p5)

                    ; #15951: <==negation-removal== 14092 (pos)
                    (not (not_at_b_p9))

                    ; #38653: <==negation-removal== 84624 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #22905: origin
                    (at_b_p1)

                    ; #23408: origin
                    (not_at_b_p6)

                    ; #18446: <==negation-removal== 23408 (pos)
                    (not (at_b_p6))

                    ; #35579: <==negation-removal== 22905 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p10
        :precondition (and (at_b_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #23408: origin
                    (not_at_b_p6)

                    ; #51702: origin
                    (at_b_p10)

                    ; #18446: <==negation-removal== 23408 (pos)
                    (not (at_b_p6))

                    ; #63123: <==negation-removal== 51702 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p6_p11
        :precondition (and (at_b_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #23408: origin
                    (not_at_b_p6)

                    ; #85829: origin
                    (at_b_p11)

                    ; #18446: <==negation-removal== 23408 (pos)
                    (not (at_b_p6))

                    ; #65583: <==negation-removal== 85829 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p6_p12
        :precondition (and (at_b_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #23408: origin
                    (not_at_b_p6)

                    ; #47755: origin
                    (at_b_p12)

                    ; #18446: <==negation-removal== 23408 (pos)
                    (not (at_b_p6))

                    ; #87466: <==negation-removal== 47755 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #23408: origin
                    (not_at_b_p6)

                    ; #32580: origin
                    (at_b_p2)

                    ; #18446: <==negation-removal== 23408 (pos)
                    (not (at_b_p6))

                    ; #42642: <==negation-removal== 32580 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #23408: origin
                    (not_at_b_p6)

                    ; #25807: origin
                    (at_b_p3)

                    ; #18446: <==negation-removal== 23408 (pos)
                    (not (at_b_p6))

                    ; #65860: <==negation-removal== 25807 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #23408: origin
                    (not_at_b_p6)

                    ; #68282: origin
                    (at_b_p4)

                    ; #18446: <==negation-removal== 23408 (pos)
                    (not (at_b_p6))

                    ; #43677: <==negation-removal== 68282 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #23408: origin
                    (not_at_b_p6)

                    ; #38653: origin
                    (at_b_p5)

                    ; #18446: <==negation-removal== 23408 (pos)
                    (not (at_b_p6))

                    ; #84624: <==negation-removal== 38653 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #18446: origin
                    (at_b_p6)

                    ; #23408: origin
                    (not_at_b_p6)

                    ; #18446: <==negation-removal== 23408 (pos)
                    (not (at_b_p6))

                    ; #23408: <==negation-removal== 18446 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #23408: origin
                    (not_at_b_p6)

                    ; #77104: origin
                    (at_b_p7)

                    ; #18446: <==negation-removal== 23408 (pos)
                    (not (at_b_p6))

                    ; #20555: <==negation-removal== 77104 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #23408: origin
                    (not_at_b_p6)

                    ; #73448: origin
                    (at_b_p8)

                    ; #18446: <==negation-removal== 23408 (pos)
                    (not (at_b_p6))

                    ; #77272: <==negation-removal== 73448 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #14092: origin
                    (at_b_p9)

                    ; #23408: origin
                    (not_at_b_p6)

                    ; #15951: <==negation-removal== 14092 (pos)
                    (not (not_at_b_p9))

                    ; #18446: <==negation-removal== 23408 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #20555: origin
                    (not_at_b_p7)

                    ; #22905: origin
                    (at_b_p1)

                    ; #35579: <==negation-removal== 22905 (pos)
                    (not (not_at_b_p1))

                    ; #77104: <==negation-removal== 20555 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #20555: origin
                    (not_at_b_p7)

                    ; #51702: origin
                    (at_b_p10)

                    ; #63123: <==negation-removal== 51702 (pos)
                    (not (not_at_b_p10))

                    ; #77104: <==negation-removal== 20555 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #20555: origin
                    (not_at_b_p7)

                    ; #85829: origin
                    (at_b_p11)

                    ; #65583: <==negation-removal== 85829 (pos)
                    (not (not_at_b_p11))

                    ; #77104: <==negation-removal== 20555 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (at_b_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #20555: origin
                    (not_at_b_p7)

                    ; #47755: origin
                    (at_b_p12)

                    ; #77104: <==negation-removal== 20555 (pos)
                    (not (at_b_p7))

                    ; #87466: <==negation-removal== 47755 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #20555: origin
                    (not_at_b_p7)

                    ; #32580: origin
                    (at_b_p2)

                    ; #42642: <==negation-removal== 32580 (pos)
                    (not (not_at_b_p2))

                    ; #77104: <==negation-removal== 20555 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #20555: origin
                    (not_at_b_p7)

                    ; #25807: origin
                    (at_b_p3)

                    ; #65860: <==negation-removal== 25807 (pos)
                    (not (not_at_b_p3))

                    ; #77104: <==negation-removal== 20555 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #20555: origin
                    (not_at_b_p7)

                    ; #68282: origin
                    (at_b_p4)

                    ; #43677: <==negation-removal== 68282 (pos)
                    (not (not_at_b_p4))

                    ; #77104: <==negation-removal== 20555 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #20555: origin
                    (not_at_b_p7)

                    ; #38653: origin
                    (at_b_p5)

                    ; #77104: <==negation-removal== 20555 (pos)
                    (not (at_b_p7))

                    ; #84624: <==negation-removal== 38653 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #18446: origin
                    (at_b_p6)

                    ; #20555: origin
                    (not_at_b_p7)

                    ; #23408: <==negation-removal== 18446 (pos)
                    (not (not_at_b_p6))

                    ; #77104: <==negation-removal== 20555 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #20555: origin
                    (not_at_b_p7)

                    ; #77104: origin
                    (at_b_p7)

                    ; #20555: <==negation-removal== 77104 (pos)
                    (not (not_at_b_p7))

                    ; #77104: <==negation-removal== 20555 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #20555: origin
                    (not_at_b_p7)

                    ; #73448: origin
                    (at_b_p8)

                    ; #77104: <==negation-removal== 20555 (pos)
                    (not (at_b_p7))

                    ; #77272: <==negation-removal== 73448 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #14092: origin
                    (at_b_p9)

                    ; #20555: origin
                    (not_at_b_p7)

                    ; #15951: <==negation-removal== 14092 (pos)
                    (not (not_at_b_p9))

                    ; #77104: <==negation-removal== 20555 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #22905: origin
                    (at_b_p1)

                    ; #77272: origin
                    (not_at_b_p8)

                    ; #35579: <==negation-removal== 22905 (pos)
                    (not (not_at_b_p1))

                    ; #73448: <==negation-removal== 77272 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8))
        :effect (and
                    ; #51702: origin
                    (at_b_p10)

                    ; #77272: origin
                    (not_at_b_p8)

                    ; #63123: <==negation-removal== 51702 (pos)
                    (not (not_at_b_p10))

                    ; #73448: <==negation-removal== 77272 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8))
        :effect (and
                    ; #77272: origin
                    (not_at_b_p8)

                    ; #85829: origin
                    (at_b_p11)

                    ; #65583: <==negation-removal== 85829 (pos)
                    (not (not_at_b_p11))

                    ; #73448: <==negation-removal== 77272 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8))
        :effect (and
                    ; #47755: origin
                    (at_b_p12)

                    ; #77272: origin
                    (not_at_b_p8)

                    ; #73448: <==negation-removal== 77272 (pos)
                    (not (at_b_p8))

                    ; #87466: <==negation-removal== 47755 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #32580: origin
                    (at_b_p2)

                    ; #77272: origin
                    (not_at_b_p8)

                    ; #42642: <==negation-removal== 32580 (pos)
                    (not (not_at_b_p2))

                    ; #73448: <==negation-removal== 77272 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #25807: origin
                    (at_b_p3)

                    ; #77272: origin
                    (not_at_b_p8)

                    ; #65860: <==negation-removal== 25807 (pos)
                    (not (not_at_b_p3))

                    ; #73448: <==negation-removal== 77272 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #68282: origin
                    (at_b_p4)

                    ; #77272: origin
                    (not_at_b_p8)

                    ; #43677: <==negation-removal== 68282 (pos)
                    (not (not_at_b_p4))

                    ; #73448: <==negation-removal== 77272 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #38653: origin
                    (at_b_p5)

                    ; #77272: origin
                    (not_at_b_p8)

                    ; #73448: <==negation-removal== 77272 (pos)
                    (not (at_b_p8))

                    ; #84624: <==negation-removal== 38653 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #18446: origin
                    (at_b_p6)

                    ; #77272: origin
                    (not_at_b_p8)

                    ; #23408: <==negation-removal== 18446 (pos)
                    (not (not_at_b_p6))

                    ; #73448: <==negation-removal== 77272 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #77104: origin
                    (at_b_p7)

                    ; #77272: origin
                    (not_at_b_p8)

                    ; #20555: <==negation-removal== 77104 (pos)
                    (not (not_at_b_p7))

                    ; #73448: <==negation-removal== 77272 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #73448: origin
                    (at_b_p8)

                    ; #77272: origin
                    (not_at_b_p8)

                    ; #73448: <==negation-removal== 77272 (pos)
                    (not (at_b_p8))

                    ; #77272: <==negation-removal== 73448 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #14092: origin
                    (at_b_p9)

                    ; #77272: origin
                    (not_at_b_p8)

                    ; #15951: <==negation-removal== 14092 (pos)
                    (not (not_at_b_p9))

                    ; #73448: <==negation-removal== 77272 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #15951: origin
                    (not_at_b_p9)

                    ; #22905: origin
                    (at_b_p1)

                    ; #14092: <==negation-removal== 15951 (pos)
                    (not (at_b_p9))

                    ; #35579: <==negation-removal== 22905 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9))
        :effect (and
                    ; #15951: origin
                    (not_at_b_p9)

                    ; #51702: origin
                    (at_b_p10)

                    ; #14092: <==negation-removal== 15951 (pos)
                    (not (at_b_p9))

                    ; #63123: <==negation-removal== 51702 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9))
        :effect (and
                    ; #15951: origin
                    (not_at_b_p9)

                    ; #85829: origin
                    (at_b_p11)

                    ; #14092: <==negation-removal== 15951 (pos)
                    (not (at_b_p9))

                    ; #65583: <==negation-removal== 85829 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9))
        :effect (and
                    ; #15951: origin
                    (not_at_b_p9)

                    ; #47755: origin
                    (at_b_p12)

                    ; #14092: <==negation-removal== 15951 (pos)
                    (not (at_b_p9))

                    ; #87466: <==negation-removal== 47755 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #15951: origin
                    (not_at_b_p9)

                    ; #32580: origin
                    (at_b_p2)

                    ; #14092: <==negation-removal== 15951 (pos)
                    (not (at_b_p9))

                    ; #42642: <==negation-removal== 32580 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #15951: origin
                    (not_at_b_p9)

                    ; #25807: origin
                    (at_b_p3)

                    ; #14092: <==negation-removal== 15951 (pos)
                    (not (at_b_p9))

                    ; #65860: <==negation-removal== 25807 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #15951: origin
                    (not_at_b_p9)

                    ; #68282: origin
                    (at_b_p4)

                    ; #14092: <==negation-removal== 15951 (pos)
                    (not (at_b_p9))

                    ; #43677: <==negation-removal== 68282 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #15951: origin
                    (not_at_b_p9)

                    ; #38653: origin
                    (at_b_p5)

                    ; #14092: <==negation-removal== 15951 (pos)
                    (not (at_b_p9))

                    ; #84624: <==negation-removal== 38653 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #15951: origin
                    (not_at_b_p9)

                    ; #18446: origin
                    (at_b_p6)

                    ; #14092: <==negation-removal== 15951 (pos)
                    (not (at_b_p9))

                    ; #23408: <==negation-removal== 18446 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #15951: origin
                    (not_at_b_p9)

                    ; #77104: origin
                    (at_b_p7)

                    ; #14092: <==negation-removal== 15951 (pos)
                    (not (at_b_p9))

                    ; #20555: <==negation-removal== 77104 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #15951: origin
                    (not_at_b_p9)

                    ; #73448: origin
                    (at_b_p8)

                    ; #14092: <==negation-removal== 15951 (pos)
                    (not (at_b_p9))

                    ; #77272: <==negation-removal== 73448 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #14092: origin
                    (at_b_p9)

                    ; #15951: origin
                    (not_at_b_p9)

                    ; #14092: <==negation-removal== 15951 (pos)
                    (not (at_b_p9))

                    ; #15951: <==negation-removal== 14092 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #68777: origin
                    (at_c_p1)

                    ; #71012: origin
                    (not_at_c_p10)

                    ; #84269: <==negation-removal== 71012 (pos)
                    (not (at_c_p10))

                    ; #87600: <==negation-removal== 68777 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #71012: origin
                    (not_at_c_p10)

                    ; #84269: origin
                    (at_c_p10)

                    ; #71012: <==negation-removal== 84269 (pos)
                    (not (not_at_c_p10))

                    ; #84269: <==negation-removal== 71012 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #45134: origin
                    (at_c_p11)

                    ; #71012: origin
                    (not_at_c_p10)

                    ; #58082: <==negation-removal== 45134 (pos)
                    (not (not_at_c_p11))

                    ; #84269: <==negation-removal== 71012 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #16027: origin
                    (at_c_p12)

                    ; #71012: origin
                    (not_at_c_p10)

                    ; #72277: <==negation-removal== 16027 (pos)
                    (not (not_at_c_p12))

                    ; #84269: <==negation-removal== 71012 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #62980: origin
                    (at_c_p2)

                    ; #71012: origin
                    (not_at_c_p10)

                    ; #32996: <==negation-removal== 62980 (pos)
                    (not (not_at_c_p2))

                    ; #84269: <==negation-removal== 71012 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #10929: origin
                    (at_c_p3)

                    ; #71012: origin
                    (not_at_c_p10)

                    ; #84269: <==negation-removal== 71012 (pos)
                    (not (at_c_p10))

                    ; #91754: <==negation-removal== 10929 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #62582: origin
                    (at_c_p4)

                    ; #71012: origin
                    (not_at_c_p10)

                    ; #83558: <==negation-removal== 62582 (pos)
                    (not (not_at_c_p4))

                    ; #84269: <==negation-removal== 71012 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #69304: origin
                    (at_c_p5)

                    ; #71012: origin
                    (not_at_c_p10)

                    ; #84269: <==negation-removal== 71012 (pos)
                    (not (at_c_p10))

                    ; #92173: <==negation-removal== 69304 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #71012: origin
                    (not_at_c_p10)

                    ; #80283: origin
                    (at_c_p6)

                    ; #43353: <==negation-removal== 80283 (pos)
                    (not (not_at_c_p6))

                    ; #84269: <==negation-removal== 71012 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #63094: origin
                    (at_c_p7)

                    ; #71012: origin
                    (not_at_c_p10)

                    ; #76197: <==negation-removal== 63094 (pos)
                    (not (not_at_c_p7))

                    ; #84269: <==negation-removal== 71012 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #71012: origin
                    (not_at_c_p10)

                    ; #79273: origin
                    (at_c_p8)

                    ; #78541: <==negation-removal== 79273 (pos)
                    (not (not_at_c_p8))

                    ; #84269: <==negation-removal== 71012 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #42283: origin
                    (at_c_p9)

                    ; #71012: origin
                    (not_at_c_p10)

                    ; #30513: <==negation-removal== 42283 (pos)
                    (not (not_at_c_p9))

                    ; #84269: <==negation-removal== 71012 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (at_c_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #58082: origin
                    (not_at_c_p11)

                    ; #68777: origin
                    (at_c_p1)

                    ; #45134: <==negation-removal== 58082 (pos)
                    (not (at_c_p11))

                    ; #87600: <==negation-removal== 68777 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #58082: origin
                    (not_at_c_p11)

                    ; #84269: origin
                    (at_c_p10)

                    ; #45134: <==negation-removal== 58082 (pos)
                    (not (at_c_p11))

                    ; #71012: <==negation-removal== 84269 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #45134: origin
                    (at_c_p11)

                    ; #58082: origin
                    (not_at_c_p11)

                    ; #45134: <==negation-removal== 58082 (pos)
                    (not (at_c_p11))

                    ; #58082: <==negation-removal== 45134 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11))
        :effect (and
                    ; #16027: origin
                    (at_c_p12)

                    ; #58082: origin
                    (not_at_c_p11)

                    ; #45134: <==negation-removal== 58082 (pos)
                    (not (at_c_p11))

                    ; #72277: <==negation-removal== 16027 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (at_c_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #58082: origin
                    (not_at_c_p11)

                    ; #62980: origin
                    (at_c_p2)

                    ; #32996: <==negation-removal== 62980 (pos)
                    (not (not_at_c_p2))

                    ; #45134: <==negation-removal== 58082 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #10929: origin
                    (at_c_p3)

                    ; #58082: origin
                    (not_at_c_p11)

                    ; #45134: <==negation-removal== 58082 (pos)
                    (not (at_c_p11))

                    ; #91754: <==negation-removal== 10929 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #58082: origin
                    (not_at_c_p11)

                    ; #62582: origin
                    (at_c_p4)

                    ; #45134: <==negation-removal== 58082 (pos)
                    (not (at_c_p11))

                    ; #83558: <==negation-removal== 62582 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #58082: origin
                    (not_at_c_p11)

                    ; #69304: origin
                    (at_c_p5)

                    ; #45134: <==negation-removal== 58082 (pos)
                    (not (at_c_p11))

                    ; #92173: <==negation-removal== 69304 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #58082: origin
                    (not_at_c_p11)

                    ; #80283: origin
                    (at_c_p6)

                    ; #43353: <==negation-removal== 80283 (pos)
                    (not (not_at_c_p6))

                    ; #45134: <==negation-removal== 58082 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #58082: origin
                    (not_at_c_p11)

                    ; #63094: origin
                    (at_c_p7)

                    ; #45134: <==negation-removal== 58082 (pos)
                    (not (at_c_p11))

                    ; #76197: <==negation-removal== 63094 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #58082: origin
                    (not_at_c_p11)

                    ; #79273: origin
                    (at_c_p8)

                    ; #45134: <==negation-removal== 58082 (pos)
                    (not (at_c_p11))

                    ; #78541: <==negation-removal== 79273 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #42283: origin
                    (at_c_p9)

                    ; #58082: origin
                    (not_at_c_p11)

                    ; #30513: <==negation-removal== 42283 (pos)
                    (not (not_at_c_p9))

                    ; #45134: <==negation-removal== 58082 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #68777: origin
                    (at_c_p1)

                    ; #72277: origin
                    (not_at_c_p12)

                    ; #16027: <==negation-removal== 72277 (pos)
                    (not (at_c_p12))

                    ; #87600: <==negation-removal== 68777 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12))
        :effect (and
                    ; #72277: origin
                    (not_at_c_p12)

                    ; #84269: origin
                    (at_c_p10)

                    ; #16027: <==negation-removal== 72277 (pos)
                    (not (at_c_p12))

                    ; #71012: <==negation-removal== 84269 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_c_p12))
        :effect (and
                    ; #45134: origin
                    (at_c_p11)

                    ; #72277: origin
                    (not_at_c_p12)

                    ; #16027: <==negation-removal== 72277 (pos)
                    (not (at_c_p12))

                    ; #58082: <==negation-removal== 45134 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12))
        :effect (and
                    ; #16027: origin
                    (at_c_p12)

                    ; #72277: origin
                    (not_at_c_p12)

                    ; #16027: <==negation-removal== 72277 (pos)
                    (not (at_c_p12))

                    ; #72277: <==negation-removal== 16027 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12))
        :effect (and
                    ; #62980: origin
                    (at_c_p2)

                    ; #72277: origin
                    (not_at_c_p12)

                    ; #16027: <==negation-removal== 72277 (pos)
                    (not (at_c_p12))

                    ; #32996: <==negation-removal== 62980 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #10929: origin
                    (at_c_p3)

                    ; #72277: origin
                    (not_at_c_p12)

                    ; #16027: <==negation-removal== 72277 (pos)
                    (not (at_c_p12))

                    ; #91754: <==negation-removal== 10929 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12))
        :effect (and
                    ; #62582: origin
                    (at_c_p4)

                    ; #72277: origin
                    (not_at_c_p12)

                    ; #16027: <==negation-removal== 72277 (pos)
                    (not (at_c_p12))

                    ; #83558: <==negation-removal== 62582 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12))
        :effect (and
                    ; #69304: origin
                    (at_c_p5)

                    ; #72277: origin
                    (not_at_c_p12)

                    ; #16027: <==negation-removal== 72277 (pos)
                    (not (at_c_p12))

                    ; #92173: <==negation-removal== 69304 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12))
        :effect (and
                    ; #72277: origin
                    (not_at_c_p12)

                    ; #80283: origin
                    (at_c_p6)

                    ; #16027: <==negation-removal== 72277 (pos)
                    (not (at_c_p12))

                    ; #43353: <==negation-removal== 80283 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12))
        :effect (and
                    ; #63094: origin
                    (at_c_p7)

                    ; #72277: origin
                    (not_at_c_p12)

                    ; #16027: <==negation-removal== 72277 (pos)
                    (not (at_c_p12))

                    ; #76197: <==negation-removal== 63094 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12))
        :effect (and
                    ; #72277: origin
                    (not_at_c_p12)

                    ; #79273: origin
                    (at_c_p8)

                    ; #16027: <==negation-removal== 72277 (pos)
                    (not (at_c_p12))

                    ; #78541: <==negation-removal== 79273 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12))
        :effect (and
                    ; #42283: origin
                    (at_c_p9)

                    ; #72277: origin
                    (not_at_c_p12)

                    ; #16027: <==negation-removal== 72277 (pos)
                    (not (at_c_p12))

                    ; #30513: <==negation-removal== 42283 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #68777: origin
                    (at_c_p1)

                    ; #87600: origin
                    (not_at_c_p1)

                    ; #68777: <==negation-removal== 87600 (pos)
                    (not (at_c_p1))

                    ; #87600: <==negation-removal== 68777 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #84269: origin
                    (at_c_p10)

                    ; #87600: origin
                    (not_at_c_p1)

                    ; #68777: <==negation-removal== 87600 (pos)
                    (not (at_c_p1))

                    ; #71012: <==negation-removal== 84269 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #45134: origin
                    (at_c_p11)

                    ; #87600: origin
                    (not_at_c_p1)

                    ; #58082: <==negation-removal== 45134 (pos)
                    (not (not_at_c_p11))

                    ; #68777: <==negation-removal== 87600 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #16027: origin
                    (at_c_p12)

                    ; #87600: origin
                    (not_at_c_p1)

                    ; #68777: <==negation-removal== 87600 (pos)
                    (not (at_c_p1))

                    ; #72277: <==negation-removal== 16027 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #62980: origin
                    (at_c_p2)

                    ; #87600: origin
                    (not_at_c_p1)

                    ; #32996: <==negation-removal== 62980 (pos)
                    (not (not_at_c_p2))

                    ; #68777: <==negation-removal== 87600 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #10929: origin
                    (at_c_p3)

                    ; #87600: origin
                    (not_at_c_p1)

                    ; #68777: <==negation-removal== 87600 (pos)
                    (not (at_c_p1))

                    ; #91754: <==negation-removal== 10929 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #62582: origin
                    (at_c_p4)

                    ; #87600: origin
                    (not_at_c_p1)

                    ; #68777: <==negation-removal== 87600 (pos)
                    (not (at_c_p1))

                    ; #83558: <==negation-removal== 62582 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #69304: origin
                    (at_c_p5)

                    ; #87600: origin
                    (not_at_c_p1)

                    ; #68777: <==negation-removal== 87600 (pos)
                    (not (at_c_p1))

                    ; #92173: <==negation-removal== 69304 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #80283: origin
                    (at_c_p6)

                    ; #87600: origin
                    (not_at_c_p1)

                    ; #43353: <==negation-removal== 80283 (pos)
                    (not (not_at_c_p6))

                    ; #68777: <==negation-removal== 87600 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #63094: origin
                    (at_c_p7)

                    ; #87600: origin
                    (not_at_c_p1)

                    ; #68777: <==negation-removal== 87600 (pos)
                    (not (at_c_p1))

                    ; #76197: <==negation-removal== 63094 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #79273: origin
                    (at_c_p8)

                    ; #87600: origin
                    (not_at_c_p1)

                    ; #68777: <==negation-removal== 87600 (pos)
                    (not (at_c_p1))

                    ; #78541: <==negation-removal== 79273 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #42283: origin
                    (at_c_p9)

                    ; #87600: origin
                    (not_at_c_p1)

                    ; #30513: <==negation-removal== 42283 (pos)
                    (not (not_at_c_p9))

                    ; #68777: <==negation-removal== 87600 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #32996: origin
                    (not_at_c_p2)

                    ; #68777: origin
                    (at_c_p1)

                    ; #62980: <==negation-removal== 32996 (pos)
                    (not (at_c_p2))

                    ; #87600: <==negation-removal== 68777 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #32996: origin
                    (not_at_c_p2)

                    ; #84269: origin
                    (at_c_p10)

                    ; #62980: <==negation-removal== 32996 (pos)
                    (not (at_c_p2))

                    ; #71012: <==negation-removal== 84269 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (at_c_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #32996: origin
                    (not_at_c_p2)

                    ; #45134: origin
                    (at_c_p11)

                    ; #58082: <==negation-removal== 45134 (pos)
                    (not (not_at_c_p11))

                    ; #62980: <==negation-removal== 32996 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #16027: origin
                    (at_c_p12)

                    ; #32996: origin
                    (not_at_c_p2)

                    ; #62980: <==negation-removal== 32996 (pos)
                    (not (at_c_p2))

                    ; #72277: <==negation-removal== 16027 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #32996: origin
                    (not_at_c_p2)

                    ; #62980: origin
                    (at_c_p2)

                    ; #32996: <==negation-removal== 62980 (pos)
                    (not (not_at_c_p2))

                    ; #62980: <==negation-removal== 32996 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #10929: origin
                    (at_c_p3)

                    ; #32996: origin
                    (not_at_c_p2)

                    ; #62980: <==negation-removal== 32996 (pos)
                    (not (at_c_p2))

                    ; #91754: <==negation-removal== 10929 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #32996: origin
                    (not_at_c_p2)

                    ; #62582: origin
                    (at_c_p4)

                    ; #62980: <==negation-removal== 32996 (pos)
                    (not (at_c_p2))

                    ; #83558: <==negation-removal== 62582 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #32996: origin
                    (not_at_c_p2)

                    ; #69304: origin
                    (at_c_p5)

                    ; #62980: <==negation-removal== 32996 (pos)
                    (not (at_c_p2))

                    ; #92173: <==negation-removal== 69304 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #32996: origin
                    (not_at_c_p2)

                    ; #80283: origin
                    (at_c_p6)

                    ; #43353: <==negation-removal== 80283 (pos)
                    (not (not_at_c_p6))

                    ; #62980: <==negation-removal== 32996 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #32996: origin
                    (not_at_c_p2)

                    ; #63094: origin
                    (at_c_p7)

                    ; #62980: <==negation-removal== 32996 (pos)
                    (not (at_c_p2))

                    ; #76197: <==negation-removal== 63094 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #32996: origin
                    (not_at_c_p2)

                    ; #79273: origin
                    (at_c_p8)

                    ; #62980: <==negation-removal== 32996 (pos)
                    (not (at_c_p2))

                    ; #78541: <==negation-removal== 79273 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #32996: origin
                    (not_at_c_p2)

                    ; #42283: origin
                    (at_c_p9)

                    ; #30513: <==negation-removal== 42283 (pos)
                    (not (not_at_c_p9))

                    ; #62980: <==negation-removal== 32996 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #68777: origin
                    (at_c_p1)

                    ; #91754: origin
                    (not_at_c_p3)

                    ; #10929: <==negation-removal== 91754 (pos)
                    (not (at_c_p3))

                    ; #87600: <==negation-removal== 68777 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #84269: origin
                    (at_c_p10)

                    ; #91754: origin
                    (not_at_c_p3)

                    ; #10929: <==negation-removal== 91754 (pos)
                    (not (at_c_p3))

                    ; #71012: <==negation-removal== 84269 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3))
        :effect (and
                    ; #45134: origin
                    (at_c_p11)

                    ; #91754: origin
                    (not_at_c_p3)

                    ; #10929: <==negation-removal== 91754 (pos)
                    (not (at_c_p3))

                    ; #58082: <==negation-removal== 45134 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #16027: origin
                    (at_c_p12)

                    ; #91754: origin
                    (not_at_c_p3)

                    ; #10929: <==negation-removal== 91754 (pos)
                    (not (at_c_p3))

                    ; #72277: <==negation-removal== 16027 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #62980: origin
                    (at_c_p2)

                    ; #91754: origin
                    (not_at_c_p3)

                    ; #10929: <==negation-removal== 91754 (pos)
                    (not (at_c_p3))

                    ; #32996: <==negation-removal== 62980 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #10929: origin
                    (at_c_p3)

                    ; #91754: origin
                    (not_at_c_p3)

                    ; #10929: <==negation-removal== 91754 (pos)
                    (not (at_c_p3))

                    ; #91754: <==negation-removal== 10929 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #62582: origin
                    (at_c_p4)

                    ; #91754: origin
                    (not_at_c_p3)

                    ; #10929: <==negation-removal== 91754 (pos)
                    (not (at_c_p3))

                    ; #83558: <==negation-removal== 62582 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #69304: origin
                    (at_c_p5)

                    ; #91754: origin
                    (not_at_c_p3)

                    ; #10929: <==negation-removal== 91754 (pos)
                    (not (at_c_p3))

                    ; #92173: <==negation-removal== 69304 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #80283: origin
                    (at_c_p6)

                    ; #91754: origin
                    (not_at_c_p3)

                    ; #10929: <==negation-removal== 91754 (pos)
                    (not (at_c_p3))

                    ; #43353: <==negation-removal== 80283 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #63094: origin
                    (at_c_p7)

                    ; #91754: origin
                    (not_at_c_p3)

                    ; #10929: <==negation-removal== 91754 (pos)
                    (not (at_c_p3))

                    ; #76197: <==negation-removal== 63094 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #79273: origin
                    (at_c_p8)

                    ; #91754: origin
                    (not_at_c_p3)

                    ; #10929: <==negation-removal== 91754 (pos)
                    (not (at_c_p3))

                    ; #78541: <==negation-removal== 79273 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #42283: origin
                    (at_c_p9)

                    ; #91754: origin
                    (not_at_c_p3)

                    ; #10929: <==negation-removal== 91754 (pos)
                    (not (at_c_p3))

                    ; #30513: <==negation-removal== 42283 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #68777: origin
                    (at_c_p1)

                    ; #83558: origin
                    (not_at_c_p4)

                    ; #62582: <==negation-removal== 83558 (pos)
                    (not (at_c_p4))

                    ; #87600: <==negation-removal== 68777 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #83558: origin
                    (not_at_c_p4)

                    ; #84269: origin
                    (at_c_p10)

                    ; #62582: <==negation-removal== 83558 (pos)
                    (not (at_c_p4))

                    ; #71012: <==negation-removal== 84269 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #45134: origin
                    (at_c_p11)

                    ; #83558: origin
                    (not_at_c_p4)

                    ; #58082: <==negation-removal== 45134 (pos)
                    (not (not_at_c_p11))

                    ; #62582: <==negation-removal== 83558 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_c_p4))
        :effect (and
                    ; #16027: origin
                    (at_c_p12)

                    ; #83558: origin
                    (not_at_c_p4)

                    ; #62582: <==negation-removal== 83558 (pos)
                    (not (at_c_p4))

                    ; #72277: <==negation-removal== 16027 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #62980: origin
                    (at_c_p2)

                    ; #83558: origin
                    (not_at_c_p4)

                    ; #32996: <==negation-removal== 62980 (pos)
                    (not (not_at_c_p2))

                    ; #62582: <==negation-removal== 83558 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #10929: origin
                    (at_c_p3)

                    ; #83558: origin
                    (not_at_c_p4)

                    ; #62582: <==negation-removal== 83558 (pos)
                    (not (at_c_p4))

                    ; #91754: <==negation-removal== 10929 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #62582: origin
                    (at_c_p4)

                    ; #83558: origin
                    (not_at_c_p4)

                    ; #62582: <==negation-removal== 83558 (pos)
                    (not (at_c_p4))

                    ; #83558: <==negation-removal== 62582 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #69304: origin
                    (at_c_p5)

                    ; #83558: origin
                    (not_at_c_p4)

                    ; #62582: <==negation-removal== 83558 (pos)
                    (not (at_c_p4))

                    ; #92173: <==negation-removal== 69304 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #80283: origin
                    (at_c_p6)

                    ; #83558: origin
                    (not_at_c_p4)

                    ; #43353: <==negation-removal== 80283 (pos)
                    (not (not_at_c_p6))

                    ; #62582: <==negation-removal== 83558 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #63094: origin
                    (at_c_p7)

                    ; #83558: origin
                    (not_at_c_p4)

                    ; #62582: <==negation-removal== 83558 (pos)
                    (not (at_c_p4))

                    ; #76197: <==negation-removal== 63094 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #79273: origin
                    (at_c_p8)

                    ; #83558: origin
                    (not_at_c_p4)

                    ; #62582: <==negation-removal== 83558 (pos)
                    (not (at_c_p4))

                    ; #78541: <==negation-removal== 79273 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #42283: origin
                    (at_c_p9)

                    ; #83558: origin
                    (not_at_c_p4)

                    ; #30513: <==negation-removal== 42283 (pos)
                    (not (not_at_c_p9))

                    ; #62582: <==negation-removal== 83558 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #68777: origin
                    (at_c_p1)

                    ; #92173: origin
                    (not_at_c_p5)

                    ; #69304: <==negation-removal== 92173 (pos)
                    (not (at_c_p5))

                    ; #87600: <==negation-removal== 68777 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #84269: origin
                    (at_c_p10)

                    ; #92173: origin
                    (not_at_c_p5)

                    ; #69304: <==negation-removal== 92173 (pos)
                    (not (at_c_p5))

                    ; #71012: <==negation-removal== 84269 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #45134: origin
                    (at_c_p11)

                    ; #92173: origin
                    (not_at_c_p5)

                    ; #58082: <==negation-removal== 45134 (pos)
                    (not (not_at_c_p11))

                    ; #69304: <==negation-removal== 92173 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #16027: origin
                    (at_c_p12)

                    ; #92173: origin
                    (not_at_c_p5)

                    ; #69304: <==negation-removal== 92173 (pos)
                    (not (at_c_p5))

                    ; #72277: <==negation-removal== 16027 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #62980: origin
                    (at_c_p2)

                    ; #92173: origin
                    (not_at_c_p5)

                    ; #32996: <==negation-removal== 62980 (pos)
                    (not (not_at_c_p2))

                    ; #69304: <==negation-removal== 92173 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #10929: origin
                    (at_c_p3)

                    ; #92173: origin
                    (not_at_c_p5)

                    ; #69304: <==negation-removal== 92173 (pos)
                    (not (at_c_p5))

                    ; #91754: <==negation-removal== 10929 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #62582: origin
                    (at_c_p4)

                    ; #92173: origin
                    (not_at_c_p5)

                    ; #69304: <==negation-removal== 92173 (pos)
                    (not (at_c_p5))

                    ; #83558: <==negation-removal== 62582 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #69304: origin
                    (at_c_p5)

                    ; #92173: origin
                    (not_at_c_p5)

                    ; #69304: <==negation-removal== 92173 (pos)
                    (not (at_c_p5))

                    ; #92173: <==negation-removal== 69304 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #80283: origin
                    (at_c_p6)

                    ; #92173: origin
                    (not_at_c_p5)

                    ; #43353: <==negation-removal== 80283 (pos)
                    (not (not_at_c_p6))

                    ; #69304: <==negation-removal== 92173 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #63094: origin
                    (at_c_p7)

                    ; #92173: origin
                    (not_at_c_p5)

                    ; #69304: <==negation-removal== 92173 (pos)
                    (not (at_c_p5))

                    ; #76197: <==negation-removal== 63094 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #79273: origin
                    (at_c_p8)

                    ; #92173: origin
                    (not_at_c_p5)

                    ; #69304: <==negation-removal== 92173 (pos)
                    (not (at_c_p5))

                    ; #78541: <==negation-removal== 79273 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #42283: origin
                    (at_c_p9)

                    ; #92173: origin
                    (not_at_c_p5)

                    ; #30513: <==negation-removal== 42283 (pos)
                    (not (not_at_c_p9))

                    ; #69304: <==negation-removal== 92173 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #43353: origin
                    (not_at_c_p6)

                    ; #68777: origin
                    (at_c_p1)

                    ; #80283: <==negation-removal== 43353 (pos)
                    (not (at_c_p6))

                    ; #87600: <==negation-removal== 68777 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6))
        :effect (and
                    ; #43353: origin
                    (not_at_c_p6)

                    ; #84269: origin
                    (at_c_p10)

                    ; #71012: <==negation-removal== 84269 (pos)
                    (not (not_at_c_p10))

                    ; #80283: <==negation-removal== 43353 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #43353: origin
                    (not_at_c_p6)

                    ; #45134: origin
                    (at_c_p11)

                    ; #58082: <==negation-removal== 45134 (pos)
                    (not (not_at_c_p11))

                    ; #80283: <==negation-removal== 43353 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #16027: origin
                    (at_c_p12)

                    ; #43353: origin
                    (not_at_c_p6)

                    ; #72277: <==negation-removal== 16027 (pos)
                    (not (not_at_c_p12))

                    ; #80283: <==negation-removal== 43353 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #43353: origin
                    (not_at_c_p6)

                    ; #62980: origin
                    (at_c_p2)

                    ; #32996: <==negation-removal== 62980 (pos)
                    (not (not_at_c_p2))

                    ; #80283: <==negation-removal== 43353 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #10929: origin
                    (at_c_p3)

                    ; #43353: origin
                    (not_at_c_p6)

                    ; #80283: <==negation-removal== 43353 (pos)
                    (not (at_c_p6))

                    ; #91754: <==negation-removal== 10929 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #43353: origin
                    (not_at_c_p6)

                    ; #62582: origin
                    (at_c_p4)

                    ; #80283: <==negation-removal== 43353 (pos)
                    (not (at_c_p6))

                    ; #83558: <==negation-removal== 62582 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #43353: origin
                    (not_at_c_p6)

                    ; #69304: origin
                    (at_c_p5)

                    ; #80283: <==negation-removal== 43353 (pos)
                    (not (at_c_p6))

                    ; #92173: <==negation-removal== 69304 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #43353: origin
                    (not_at_c_p6)

                    ; #80283: origin
                    (at_c_p6)

                    ; #43353: <==negation-removal== 80283 (pos)
                    (not (not_at_c_p6))

                    ; #80283: <==negation-removal== 43353 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #43353: origin
                    (not_at_c_p6)

                    ; #63094: origin
                    (at_c_p7)

                    ; #76197: <==negation-removal== 63094 (pos)
                    (not (not_at_c_p7))

                    ; #80283: <==negation-removal== 43353 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #43353: origin
                    (not_at_c_p6)

                    ; #79273: origin
                    (at_c_p8)

                    ; #78541: <==negation-removal== 79273 (pos)
                    (not (not_at_c_p8))

                    ; #80283: <==negation-removal== 43353 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #42283: origin
                    (at_c_p9)

                    ; #43353: origin
                    (not_at_c_p6)

                    ; #30513: <==negation-removal== 42283 (pos)
                    (not (not_at_c_p9))

                    ; #80283: <==negation-removal== 43353 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #68777: origin
                    (at_c_p1)

                    ; #76197: origin
                    (not_at_c_p7)

                    ; #63094: <==negation-removal== 76197 (pos)
                    (not (at_c_p7))

                    ; #87600: <==negation-removal== 68777 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (at_c_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #76197: origin
                    (not_at_c_p7)

                    ; #84269: origin
                    (at_c_p10)

                    ; #63094: <==negation-removal== 76197 (pos)
                    (not (at_c_p7))

                    ; #71012: <==negation-removal== 84269 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #45134: origin
                    (at_c_p11)

                    ; #76197: origin
                    (not_at_c_p7)

                    ; #58082: <==negation-removal== 45134 (pos)
                    (not (not_at_c_p11))

                    ; #63094: <==negation-removal== 76197 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #16027: origin
                    (at_c_p12)

                    ; #76197: origin
                    (not_at_c_p7)

                    ; #63094: <==negation-removal== 76197 (pos)
                    (not (at_c_p7))

                    ; #72277: <==negation-removal== 16027 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #62980: origin
                    (at_c_p2)

                    ; #76197: origin
                    (not_at_c_p7)

                    ; #32996: <==negation-removal== 62980 (pos)
                    (not (not_at_c_p2))

                    ; #63094: <==negation-removal== 76197 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #10929: origin
                    (at_c_p3)

                    ; #76197: origin
                    (not_at_c_p7)

                    ; #63094: <==negation-removal== 76197 (pos)
                    (not (at_c_p7))

                    ; #91754: <==negation-removal== 10929 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #62582: origin
                    (at_c_p4)

                    ; #76197: origin
                    (not_at_c_p7)

                    ; #63094: <==negation-removal== 76197 (pos)
                    (not (at_c_p7))

                    ; #83558: <==negation-removal== 62582 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #69304: origin
                    (at_c_p5)

                    ; #76197: origin
                    (not_at_c_p7)

                    ; #63094: <==negation-removal== 76197 (pos)
                    (not (at_c_p7))

                    ; #92173: <==negation-removal== 69304 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #76197: origin
                    (not_at_c_p7)

                    ; #80283: origin
                    (at_c_p6)

                    ; #43353: <==negation-removal== 80283 (pos)
                    (not (not_at_c_p6))

                    ; #63094: <==negation-removal== 76197 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #63094: origin
                    (at_c_p7)

                    ; #76197: origin
                    (not_at_c_p7)

                    ; #63094: <==negation-removal== 76197 (pos)
                    (not (at_c_p7))

                    ; #76197: <==negation-removal== 63094 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #76197: origin
                    (not_at_c_p7)

                    ; #79273: origin
                    (at_c_p8)

                    ; #63094: <==negation-removal== 76197 (pos)
                    (not (at_c_p7))

                    ; #78541: <==negation-removal== 79273 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #42283: origin
                    (at_c_p9)

                    ; #76197: origin
                    (not_at_c_p7)

                    ; #30513: <==negation-removal== 42283 (pos)
                    (not (not_at_c_p9))

                    ; #63094: <==negation-removal== 76197 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #68777: origin
                    (at_c_p1)

                    ; #78541: origin
                    (not_at_c_p8)

                    ; #79273: <==negation-removal== 78541 (pos)
                    (not (at_c_p8))

                    ; #87600: <==negation-removal== 68777 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8))
        :effect (and
                    ; #78541: origin
                    (not_at_c_p8)

                    ; #84269: origin
                    (at_c_p10)

                    ; #71012: <==negation-removal== 84269 (pos)
                    (not (not_at_c_p10))

                    ; #79273: <==negation-removal== 78541 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8))
        :effect (and
                    ; #45134: origin
                    (at_c_p11)

                    ; #78541: origin
                    (not_at_c_p8)

                    ; #58082: <==negation-removal== 45134 (pos)
                    (not (not_at_c_p11))

                    ; #79273: <==negation-removal== 78541 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_c_p8))
        :effect (and
                    ; #16027: origin
                    (at_c_p12)

                    ; #78541: origin
                    (not_at_c_p8)

                    ; #72277: <==negation-removal== 16027 (pos)
                    (not (not_at_c_p12))

                    ; #79273: <==negation-removal== 78541 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #62980: origin
                    (at_c_p2)

                    ; #78541: origin
                    (not_at_c_p8)

                    ; #32996: <==negation-removal== 62980 (pos)
                    (not (not_at_c_p2))

                    ; #79273: <==negation-removal== 78541 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #10929: origin
                    (at_c_p3)

                    ; #78541: origin
                    (not_at_c_p8)

                    ; #79273: <==negation-removal== 78541 (pos)
                    (not (at_c_p8))

                    ; #91754: <==negation-removal== 10929 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #62582: origin
                    (at_c_p4)

                    ; #78541: origin
                    (not_at_c_p8)

                    ; #79273: <==negation-removal== 78541 (pos)
                    (not (at_c_p8))

                    ; #83558: <==negation-removal== 62582 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #69304: origin
                    (at_c_p5)

                    ; #78541: origin
                    (not_at_c_p8)

                    ; #79273: <==negation-removal== 78541 (pos)
                    (not (at_c_p8))

                    ; #92173: <==negation-removal== 69304 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #78541: origin
                    (not_at_c_p8)

                    ; #80283: origin
                    (at_c_p6)

                    ; #43353: <==negation-removal== 80283 (pos)
                    (not (not_at_c_p6))

                    ; #79273: <==negation-removal== 78541 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #63094: origin
                    (at_c_p7)

                    ; #78541: origin
                    (not_at_c_p8)

                    ; #76197: <==negation-removal== 63094 (pos)
                    (not (not_at_c_p7))

                    ; #79273: <==negation-removal== 78541 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #78541: origin
                    (not_at_c_p8)

                    ; #79273: origin
                    (at_c_p8)

                    ; #78541: <==negation-removal== 79273 (pos)
                    (not (not_at_c_p8))

                    ; #79273: <==negation-removal== 78541 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #42283: origin
                    (at_c_p9)

                    ; #78541: origin
                    (not_at_c_p8)

                    ; #30513: <==negation-removal== 42283 (pos)
                    (not (not_at_c_p9))

                    ; #79273: <==negation-removal== 78541 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #30513: origin
                    (not_at_c_p9)

                    ; #68777: origin
                    (at_c_p1)

                    ; #42283: <==negation-removal== 30513 (pos)
                    (not (at_c_p9))

                    ; #87600: <==negation-removal== 68777 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9))
        :effect (and
                    ; #30513: origin
                    (not_at_c_p9)

                    ; #84269: origin
                    (at_c_p10)

                    ; #42283: <==negation-removal== 30513 (pos)
                    (not (at_c_p9))

                    ; #71012: <==negation-removal== 84269 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p9_p11
        :precondition (and (at_c_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #30513: origin
                    (not_at_c_p9)

                    ; #45134: origin
                    (at_c_p11)

                    ; #42283: <==negation-removal== 30513 (pos)
                    (not (at_c_p9))

                    ; #58082: <==negation-removal== 45134 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_c_p9))
        :effect (and
                    ; #16027: origin
                    (at_c_p12)

                    ; #30513: origin
                    (not_at_c_p9)

                    ; #42283: <==negation-removal== 30513 (pos)
                    (not (at_c_p9))

                    ; #72277: <==negation-removal== 16027 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #30513: origin
                    (not_at_c_p9)

                    ; #62980: origin
                    (at_c_p2)

                    ; #32996: <==negation-removal== 62980 (pos)
                    (not (not_at_c_p2))

                    ; #42283: <==negation-removal== 30513 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #10929: origin
                    (at_c_p3)

                    ; #30513: origin
                    (not_at_c_p9)

                    ; #42283: <==negation-removal== 30513 (pos)
                    (not (at_c_p9))

                    ; #91754: <==negation-removal== 10929 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #30513: origin
                    (not_at_c_p9)

                    ; #62582: origin
                    (at_c_p4)

                    ; #42283: <==negation-removal== 30513 (pos)
                    (not (at_c_p9))

                    ; #83558: <==negation-removal== 62582 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #30513: origin
                    (not_at_c_p9)

                    ; #69304: origin
                    (at_c_p5)

                    ; #42283: <==negation-removal== 30513 (pos)
                    (not (at_c_p9))

                    ; #92173: <==negation-removal== 69304 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #30513: origin
                    (not_at_c_p9)

                    ; #80283: origin
                    (at_c_p6)

                    ; #42283: <==negation-removal== 30513 (pos)
                    (not (at_c_p9))

                    ; #43353: <==negation-removal== 80283 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #30513: origin
                    (not_at_c_p9)

                    ; #63094: origin
                    (at_c_p7)

                    ; #42283: <==negation-removal== 30513 (pos)
                    (not (at_c_p9))

                    ; #76197: <==negation-removal== 63094 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #30513: origin
                    (not_at_c_p9)

                    ; #79273: origin
                    (at_c_p8)

                    ; #42283: <==negation-removal== 30513 (pos)
                    (not (at_c_p9))

                    ; #78541: <==negation-removal== 79273 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #30513: origin
                    (not_at_c_p9)

                    ; #42283: origin
                    (at_c_p9)

                    ; #30513: <==negation-removal== 42283 (pos)
                    (not (not_at_c_p9))

                    ; #42283: <==negation-removal== 30513 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #16255: <==commonly_known== 25048 (neg)
                    (Pc_checked_p10)

                    ; #20838: <==commonly_known== 82603 (pos)
                    (Bc_checked_p10)

                    ; #23715: <==commonly_known== 82603 (pos)
                    (Bb_checked_p10)

                    ; #29837: <==commonly_known== 82603 (pos)
                    (Ba_checked_p10)

                    ; #30707: <==commonly_known== 25048 (neg)
                    (Pa_checked_p10)

                    ; #44346: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #72385: <==closure== 44346 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #76853: <==closure== 80722 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #80722: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #82603: origin
                    (checked_p10)

                    ; #90097: <==commonly_known== 25048 (neg)
                    (Pb_checked_p10)

                    ; #15141: <==negation-removal== 20838 (pos)
                    (not (Pc_not_checked_p10))

                    ; #19389: <==negation-removal== 90097 (pos)
                    (not (Bb_not_checked_p10))

                    ; #25048: <==negation-removal== 82603 (pos)
                    (not (not_checked_p10))

                    ; #33211: <==negation-removal== 29837 (pos)
                    (not (Pa_not_checked_p10))

                    ; #33704: <==negation-removal== 44346 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #35907: <==negation-removal== 72385 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #42616: <==negation-removal== 30707 (pos)
                    (not (Ba_not_checked_p10))

                    ; #51269: <==negation-removal== 16255 (pos)
                    (not (Bc_not_checked_p10))

                    ; #56227: <==negation-removal== 80722 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #64934: <==uncertain_firing== 76853 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #75159: <==negation-removal== 23715 (pos)
                    (not (Pb_not_checked_p10))

                    ; #78645: <==uncertain_firing== 80722 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #79926: <==uncertain_firing== 44346 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #81768: <==negation-removal== 76853 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #91490: <==uncertain_firing== 72385 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #12360: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #22047: origin
                    (checked_p11)

                    ; #38074: <==closure== 89735 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #47165: <==commonly_known== 22047 (pos)
                    (Bc_checked_p11)

                    ; #48539: <==commonly_known== 61766 (neg)
                    (Pc_checked_p11)

                    ; #55777: <==closure== 12360 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #56052: <==commonly_known== 61766 (neg)
                    (Pa_checked_p11)

                    ; #69708: <==commonly_known== 61766 (neg)
                    (Pb_checked_p11)

                    ; #82300: <==commonly_known== 22047 (pos)
                    (Ba_checked_p11)

                    ; #89735: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #97204: <==commonly_known== 22047 (pos)
                    (Bb_checked_p11)

                    ; #16517: <==negation-removal== 55777 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #21120: <==negation-removal== 56052 (pos)
                    (not (Ba_not_checked_p11))

                    ; #24333: <==negation-removal== 47165 (pos)
                    (not (Pc_not_checked_p11))

                    ; #36872: <==negation-removal== 69708 (pos)
                    (not (Bb_not_checked_p11))

                    ; #37206: <==negation-removal== 38074 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #45826: <==negation-removal== 97204 (pos)
                    (not (Pb_not_checked_p11))

                    ; #49634: <==uncertain_firing== 12360 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #50967: <==uncertain_firing== 55777 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #61766: <==negation-removal== 22047 (pos)
                    (not (not_checked_p11))

                    ; #63156: <==negation-removal== 89735 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #74976: <==uncertain_firing== 89735 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #84915: <==negation-removal== 82300 (pos)
                    (not (Pa_not_checked_p11))

                    ; #86278: <==uncertain_firing== 38074 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #89250: <==negation-removal== 48539 (pos)
                    (not (Bc_not_checked_p11))

                    ; #92665: <==negation-removal== 12360 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #56322: <==closure== 66094 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #63506: <==closure== 73418 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #66094: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #68121: <==commonly_known== 73285 (pos)
                    (Bb_checked_p12)

                    ; #72010: <==commonly_known== 68523 (neg)
                    (Pa_checked_p12)

                    ; #73285: origin
                    (checked_p12)

                    ; #73418: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #74049: <==commonly_known== 68523 (neg)
                    (Pc_checked_p12)

                    ; #75757: <==commonly_known== 73285 (pos)
                    (Bc_checked_p12)

                    ; #79016: <==commonly_known== 68523 (neg)
                    (Pb_checked_p12)

                    ; #83674: <==commonly_known== 73285 (pos)
                    (Ba_checked_p12)

                    ; #12375: <==uncertain_firing== 66094 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #33039: <==negation-removal== 68121 (pos)
                    (not (Pb_not_checked_p12))

                    ; #34595: <==uncertain_firing== 56322 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #42466: <==negation-removal== 66094 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #46087: <==negation-removal== 79016 (pos)
                    (not (Bb_not_checked_p12))

                    ; #49580: <==negation-removal== 74049 (pos)
                    (not (Bc_not_checked_p12))

                    ; #50413: <==negation-removal== 72010 (pos)
                    (not (Ba_not_checked_p12))

                    ; #53376: <==negation-removal== 83674 (pos)
                    (not (Pa_not_checked_p12))

                    ; #55239: <==uncertain_firing== 73418 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #55826: <==negation-removal== 63506 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #68523: <==negation-removal== 73285 (pos)
                    (not (not_checked_p12))

                    ; #75023: <==negation-removal== 75757 (pos)
                    (not (Pc_not_checked_p12))

                    ; #77835: <==negation-removal== 73418 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #84178: <==uncertain_firing== 63506 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #90363: <==negation-removal== 56322 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #30915: origin
                    (checked_p1)

                    ; #35390: <==commonly_known== 30915 (pos)
                    (Bb_checked_p1)

                    ; #38268: <==commonly_known== 42583 (neg)
                    (Pa_checked_p1)

                    ; #49629: <==closure== 69801 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #57365: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #61437: <==closure== 57365 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #63583: <==commonly_known== 30915 (pos)
                    (Ba_checked_p1)

                    ; #69801: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #76771: <==commonly_known== 30915 (pos)
                    (Bc_checked_p1)

                    ; #83690: <==commonly_known== 42583 (neg)
                    (Pb_checked_p1)

                    ; #97876: <==commonly_known== 42583 (neg)
                    (Pc_checked_p1)

                    ; #19733: <==negation-removal== 49629 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #28164: <==negation-removal== 69801 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #29808: <==negation-removal== 97876 (pos)
                    (not (Bc_not_checked_p1))

                    ; #30176: <==uncertain_firing== 69801 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #31770: <==negation-removal== 76771 (pos)
                    (not (Pc_not_checked_p1))

                    ; #35931: <==negation-removal== 61437 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #42583: <==negation-removal== 30915 (pos)
                    (not (not_checked_p1))

                    ; #43028: <==negation-removal== 35390 (pos)
                    (not (Pb_not_checked_p1))

                    ; #62893: <==uncertain_firing== 61437 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #63249: <==negation-removal== 38268 (pos)
                    (not (Ba_not_checked_p1))

                    ; #68037: <==uncertain_firing== 57365 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #71647: <==negation-removal== 63583 (pos)
                    (not (Pa_not_checked_p1))

                    ; #81451: <==negation-removal== 57365 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #85595: <==uncertain_firing== 49629 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #85953: <==negation-removal== 83690 (pos)
                    (not (Bb_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11134: <==commonly_known== 82643 (pos)
                    (Ba_checked_p2)

                    ; #13985: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #32594: <==commonly_known== 82643 (pos)
                    (Bb_checked_p2)

                    ; #39498: <==commonly_known== 82643 (pos)
                    (Bc_checked_p2)

                    ; #49492: <==commonly_known== 47063 (neg)
                    (Pb_checked_p2)

                    ; #64799: <==closure== 13985 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #65821: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #77316: <==closure== 65821 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #82643: origin
                    (checked_p2)

                    ; #86993: <==commonly_known== 47063 (neg)
                    (Pc_checked_p2)

                    ; #91991: <==commonly_known== 47063 (neg)
                    (Pa_checked_p2)

                    ; #14688: <==negation-removal== 39498 (pos)
                    (not (Pc_not_checked_p2))

                    ; #25760: <==negation-removal== 11134 (pos)
                    (not (Pa_not_checked_p2))

                    ; #31000: <==negation-removal== 32594 (pos)
                    (not (Pb_not_checked_p2))

                    ; #42400: <==negation-removal== 13985 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #43504: <==negation-removal== 91991 (pos)
                    (not (Ba_not_checked_p2))

                    ; #44554: <==uncertain_firing== 13985 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #47063: <==negation-removal== 82643 (pos)
                    (not (not_checked_p2))

                    ; #50496: <==negation-removal== 65821 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #57489: <==negation-removal== 49492 (pos)
                    (not (Bb_not_checked_p2))

                    ; #62503: <==uncertain_firing== 64799 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #77220: <==uncertain_firing== 77316 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #79547: <==uncertain_firing== 65821 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #83529: <==negation-removal== 77316 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #88496: <==negation-removal== 86993 (pos)
                    (not (Bc_not_checked_p2))

                    ; #92037: <==negation-removal== 64799 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #20995: <==closure== 68090 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #21508: <==commonly_known== 41655 (neg)
                    (Pa_checked_p3)

                    ; #30708: <==commonly_known== 34297 (pos)
                    (Bb_checked_p3)

                    ; #34297: origin
                    (checked_p3)

                    ; #40206: <==commonly_known== 34297 (pos)
                    (Ba_checked_p3)

                    ; #48401: <==commonly_known== 41655 (neg)
                    (Pb_checked_p3)

                    ; #51232: <==commonly_known== 41655 (neg)
                    (Pc_checked_p3)

                    ; #59648: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #68090: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #81008: <==closure== 59648 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #87849: <==commonly_known== 34297 (pos)
                    (Bc_checked_p3)

                    ; #21860: <==negation-removal== 81008 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #21989: <==negation-removal== 68090 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #26624: <==negation-removal== 59648 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #31631: <==uncertain_firing== 68090 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #33911: <==negation-removal== 51232 (pos)
                    (not (Bc_not_checked_p3))

                    ; #41655: <==negation-removal== 34297 (pos)
                    (not (not_checked_p3))

                    ; #45754: <==negation-removal== 30708 (pos)
                    (not (Pb_not_checked_p3))

                    ; #47521: <==uncertain_firing== 20995 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #48103: <==negation-removal== 21508 (pos)
                    (not (Ba_not_checked_p3))

                    ; #61134: <==uncertain_firing== 81008 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #61783: <==negation-removal== 20995 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #64667: <==negation-removal== 40206 (pos)
                    (not (Pa_not_checked_p3))

                    ; #71448: <==negation-removal== 87849 (pos)
                    (not (Pc_not_checked_p3))

                    ; #83730: <==uncertain_firing== 59648 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #90116: <==negation-removal== 48401 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10126: <==commonly_known== 78850 (pos)
                    (Bc_checked_p4)

                    ; #18143: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #25239: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #27618: <==commonly_known== 78850 (pos)
                    (Ba_checked_p4)

                    ; #40001: <==closure== 18143 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #44921: <==commonly_known== 33964 (neg)
                    (Pb_checked_p4)

                    ; #45798: <==commonly_known== 33964 (neg)
                    (Pc_checked_p4)

                    ; #69517: <==commonly_known== 33964 (neg)
                    (Pa_checked_p4)

                    ; #78850: origin
                    (checked_p4)

                    ; #84004: <==closure== 25239 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #97205: <==commonly_known== 78850 (pos)
                    (Bb_checked_p4)

                    ; #12174: <==negation-removal== 40001 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #21184: <==uncertain_firing== 18143 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #21372: <==negation-removal== 45798 (pos)
                    (not (Bc_not_checked_p4))

                    ; #27441: <==uncertain_firing== 40001 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #33964: <==negation-removal== 78850 (pos)
                    (not (not_checked_p4))

                    ; #44399: <==negation-removal== 27618 (pos)
                    (not (Pa_not_checked_p4))

                    ; #45942: <==negation-removal== 25239 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #53076: <==negation-removal== 84004 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #62996: <==negation-removal== 97205 (pos)
                    (not (Pb_not_checked_p4))

                    ; #67828: <==negation-removal== 10126 (pos)
                    (not (Pc_not_checked_p4))

                    ; #72313: <==negation-removal== 18143 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #84294: <==uncertain_firing== 25239 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #84460: <==negation-removal== 44921 (pos)
                    (not (Bb_not_checked_p4))

                    ; #86646: <==uncertain_firing== 84004 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #90859: <==negation-removal== 69517 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12929: <==commonly_known== 65426 (pos)
                    (Bb_checked_p5)

                    ; #19190: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #34022: <==commonly_known== 26106 (neg)
                    (Pb_checked_p5)

                    ; #42095: <==commonly_known== 26106 (neg)
                    (Pc_checked_p5)

                    ; #55469: <==closure== 90412 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #63352: <==commonly_known== 65426 (pos)
                    (Ba_checked_p5)

                    ; #65426: origin
                    (checked_p5)

                    ; #74025: <==commonly_known== 26106 (neg)
                    (Pa_checked_p5)

                    ; #74475: <==closure== 19190 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #82911: <==commonly_known== 65426 (pos)
                    (Bc_checked_p5)

                    ; #90412: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #17797: <==uncertain_firing== 55469 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #25304: <==negation-removal== 74475 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #26106: <==negation-removal== 65426 (pos)
                    (not (not_checked_p5))

                    ; #31763: <==negation-removal== 19190 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #33165: <==negation-removal== 12929 (pos)
                    (not (Pb_not_checked_p5))

                    ; #44211: <==uncertain_firing== 90412 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #44508: <==negation-removal== 74025 (pos)
                    (not (Ba_not_checked_p5))

                    ; #55458: <==negation-removal== 42095 (pos)
                    (not (Bc_not_checked_p5))

                    ; #57495: <==negation-removal== 55469 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #62341: <==negation-removal== 34022 (pos)
                    (not (Bb_not_checked_p5))

                    ; #73362: <==negation-removal== 82911 (pos)
                    (not (Pc_not_checked_p5))

                    ; #79166: <==uncertain_firing== 74475 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #82766: <==negation-removal== 63352 (pos)
                    (not (Pa_not_checked_p5))

                    ; #88638: <==negation-removal== 90412 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #96283: <==uncertain_firing== 19190 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #14006: origin
                    (checked_p6)

                    ; #20021: <==commonly_known== 14006 (pos)
                    (Bc_checked_p6)

                    ; #22814: <==closure== 38515 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #23031: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #27245: <==commonly_known== 14006 (pos)
                    (Ba_checked_p6)

                    ; #38515: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #50186: <==commonly_known== 71173 (neg)
                    (Pc_checked_p6)

                    ; #54285: <==closure== 23031 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #60250: <==commonly_known== 14006 (pos)
                    (Bb_checked_p6)

                    ; #63987: <==commonly_known== 71173 (neg)
                    (Pa_checked_p6)

                    ; #66693: <==commonly_known== 71173 (neg)
                    (Pb_checked_p6)

                    ; #12157: <==negation-removal== 66693 (pos)
                    (not (Bb_not_checked_p6))

                    ; #13391: <==negation-removal== 20021 (pos)
                    (not (Pc_not_checked_p6))

                    ; #15257: <==negation-removal== 38515 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #30014: <==negation-removal== 22814 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #39369: <==negation-removal== 60250 (pos)
                    (not (Pb_not_checked_p6))

                    ; #52161: <==negation-removal== 27245 (pos)
                    (not (Pa_not_checked_p6))

                    ; #59262: <==negation-removal== 63987 (pos)
                    (not (Ba_not_checked_p6))

                    ; #67123: <==negation-removal== 23031 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #70310: <==uncertain_firing== 38515 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #71173: <==negation-removal== 14006 (pos)
                    (not (not_checked_p6))

                    ; #78723: <==uncertain_firing== 54285 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #88896: <==uncertain_firing== 23031 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #89167: <==negation-removal== 54285 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #91274: <==uncertain_firing== 22814 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #91596: <==negation-removal== 50186 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #14886: <==closure== 57529 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #22266: <==commonly_known== 28683 (pos)
                    (Bc_checked_p7)

                    ; #25413: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #27976: <==commonly_known== 70904 (neg)
                    (Pc_checked_p7)

                    ; #28683: origin
                    (checked_p7)

                    ; #32947: <==commonly_known== 70904 (neg)
                    (Pa_checked_p7)

                    ; #37197: <==commonly_known== 28683 (pos)
                    (Bb_checked_p7)

                    ; #57529: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #61034: <==commonly_known== 28683 (pos)
                    (Ba_checked_p7)

                    ; #75885: <==closure== 25413 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #87820: <==commonly_known== 70904 (neg)
                    (Pb_checked_p7)

                    ; #14148: <==negation-removal== 22266 (pos)
                    (not (Pc_not_checked_p7))

                    ; #20769: <==negation-removal== 32947 (pos)
                    (not (Ba_not_checked_p7))

                    ; #36029: <==negation-removal== 25413 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #38946: <==negation-removal== 57529 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #44323: <==uncertain_firing== 25413 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #54783: <==negation-removal== 61034 (pos)
                    (not (Pa_not_checked_p7))

                    ; #54856: <==negation-removal== 14886 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #65578: <==negation-removal== 37197 (pos)
                    (not (Pb_not_checked_p7))

                    ; #69455: <==uncertain_firing== 57529 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #70904: <==negation-removal== 28683 (pos)
                    (not (not_checked_p7))

                    ; #80965: <==uncertain_firing== 14886 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #82597: <==negation-removal== 75885 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #82679: <==negation-removal== 27976 (pos)
                    (not (Bc_not_checked_p7))

                    ; #84362: <==negation-removal== 87820 (pos)
                    (not (Bb_not_checked_p7))

                    ; #88635: <==uncertain_firing== 75885 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11740: <==commonly_known== 67330 (neg)
                    (Pb_checked_p8)

                    ; #14173: <==commonly_known== 63798 (pos)
                    (Bb_checked_p8)

                    ; #35570: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #35742: <==commonly_known== 67330 (neg)
                    (Pc_checked_p8)

                    ; #38735: <==closure== 35570 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #47581: <==commonly_known== 67330 (neg)
                    (Pa_checked_p8)

                    ; #53184: <==commonly_known== 63798 (pos)
                    (Ba_checked_p8)

                    ; #59317: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #63798: origin
                    (checked_p8)

                    ; #64558: <==commonly_known== 63798 (pos)
                    (Bc_checked_p8)

                    ; #72424: <==closure== 59317 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #10737: <==uncertain_firing== 72424 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #22263: <==negation-removal== 11740 (pos)
                    (not (Bb_not_checked_p8))

                    ; #23669: <==negation-removal== 14173 (pos)
                    (not (Pb_not_checked_p8))

                    ; #29841: <==negation-removal== 47581 (pos)
                    (not (Ba_not_checked_p8))

                    ; #30429: <==negation-removal== 38735 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #40798: <==uncertain_firing== 35570 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #40803: <==uncertain_firing== 59317 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #44858: <==uncertain_firing== 38735 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #45634: <==negation-removal== 35570 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #52650: <==negation-removal== 53184 (pos)
                    (not (Pa_not_checked_p8))

                    ; #52902: <==negation-removal== 64558 (pos)
                    (not (Pc_not_checked_p8))

                    ; #66077: <==negation-removal== 59317 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #67330: <==negation-removal== 63798 (pos)
                    (not (not_checked_p8))

                    ; #79230: <==negation-removal== 72424 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #80611: <==negation-removal== 35742 (pos)
                    (not (Bc_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10532: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #22702: <==commonly_known== 72664 (pos)
                    (Ba_checked_p9)

                    ; #31916: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #35715: <==closure== 31916 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #47555: <==commonly_known== 70895 (neg)
                    (Pa_checked_p9)

                    ; #61412: <==commonly_known== 70895 (neg)
                    (Pb_checked_p9)

                    ; #61501: <==commonly_known== 70895 (neg)
                    (Pc_checked_p9)

                    ; #72664: origin
                    (checked_p9)

                    ; #76074: <==commonly_known== 72664 (pos)
                    (Bb_checked_p9)

                    ; #82278: <==commonly_known== 72664 (pos)
                    (Bc_checked_p9)

                    ; #84303: <==closure== 10532 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #20225: <==negation-removal== 84303 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #23751: <==negation-removal== 61412 (pos)
                    (not (Bb_not_checked_p9))

                    ; #28137: <==negation-removal== 47555 (pos)
                    (not (Ba_not_checked_p9))

                    ; #29145: <==negation-removal== 31916 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #38681: <==uncertain_firing== 84303 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #39300: <==negation-removal== 61501 (pos)
                    (not (Bc_not_checked_p9))

                    ; #40457: <==negation-removal== 82278 (pos)
                    (not (Pc_not_checked_p9))

                    ; #44629: <==uncertain_firing== 35715 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #62097: <==negation-removal== 10532 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #62646: <==negation-removal== 76074 (pos)
                    (not (Pb_not_checked_p9))

                    ; #62969: <==uncertain_firing== 31916 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #70895: <==negation-removal== 72664 (pos)
                    (not (not_checked_p9))

                    ; #77918: <==negation-removal== 22702 (pos)
                    (not (Pa_not_checked_p9))

                    ; #78506: <==negation-removal== 35715 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #78995: <==uncertain_firing== 10532 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #15749: <==closure== 38602 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #16255: <==commonly_known== 25048 (neg)
                    (Pc_checked_p10)

                    ; #20838: <==commonly_known== 82603 (pos)
                    (Bc_checked_p10)

                    ; #23715: <==commonly_known== 82603 (pos)
                    (Bb_checked_p10)

                    ; #29837: <==commonly_known== 82603 (pos)
                    (Ba_checked_p10)

                    ; #30707: <==commonly_known== 25048 (neg)
                    (Pa_checked_p10)

                    ; #38602: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #42633: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #48774: <==closure== 42633 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #82603: origin
                    (checked_p10)

                    ; #90097: <==commonly_known== 25048 (neg)
                    (Pb_checked_p10)

                    ; #15141: <==negation-removal== 20838 (pos)
                    (not (Pc_not_checked_p10))

                    ; #16912: <==uncertain_firing== 48774 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #17262: <==negation-removal== 38602 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #19389: <==negation-removal== 90097 (pos)
                    (not (Bb_not_checked_p10))

                    ; #23778: <==uncertain_firing== 38602 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #24773: <==uncertain_firing== 42633 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #25048: <==negation-removal== 82603 (pos)
                    (not (not_checked_p10))

                    ; #27204: <==negation-removal== 48774 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #33211: <==negation-removal== 29837 (pos)
                    (not (Pa_not_checked_p10))

                    ; #42616: <==negation-removal== 30707 (pos)
                    (not (Ba_not_checked_p10))

                    ; #51269: <==negation-removal== 16255 (pos)
                    (not (Bc_not_checked_p10))

                    ; #55659: <==uncertain_firing== 15749 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #75159: <==negation-removal== 23715 (pos)
                    (not (Pb_not_checked_p10))

                    ; #80699: <==negation-removal== 15749 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #84349: <==negation-removal== 42633 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #19402: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #22047: origin
                    (checked_p11)

                    ; #47165: <==commonly_known== 22047 (pos)
                    (Bc_checked_p11)

                    ; #48539: <==commonly_known== 61766 (neg)
                    (Pc_checked_p11)

                    ; #56052: <==commonly_known== 61766 (neg)
                    (Pa_checked_p11)

                    ; #66258: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #69708: <==commonly_known== 61766 (neg)
                    (Pb_checked_p11)

                    ; #73104: <==closure== 66258 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #82300: <==commonly_known== 22047 (pos)
                    (Ba_checked_p11)

                    ; #85868: <==closure== 19402 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #97204: <==commonly_known== 22047 (pos)
                    (Bb_checked_p11)

                    ; #17529: <==uncertain_firing== 73104 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #21120: <==negation-removal== 56052 (pos)
                    (not (Ba_not_checked_p11))

                    ; #22151: <==negation-removal== 85868 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #24333: <==negation-removal== 47165 (pos)
                    (not (Pc_not_checked_p11))

                    ; #36872: <==negation-removal== 69708 (pos)
                    (not (Bb_not_checked_p11))

                    ; #45826: <==negation-removal== 97204 (pos)
                    (not (Pb_not_checked_p11))

                    ; #55428: <==negation-removal== 73104 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #61074: <==uncertain_firing== 19402 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #61766: <==negation-removal== 22047 (pos)
                    (not (not_checked_p11))

                    ; #68285: <==negation-removal== 66258 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #69965: <==uncertain_firing== 85868 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #75436: <==negation-removal== 19402 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #84915: <==negation-removal== 82300 (pos)
                    (not (Pa_not_checked_p11))

                    ; #86994: <==uncertain_firing== 66258 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #89250: <==negation-removal== 48539 (pos)
                    (not (Bc_not_checked_p11))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #19821: <==closure== 90940 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #56234: <==closure== 63809 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #63809: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #68121: <==commonly_known== 73285 (pos)
                    (Bb_checked_p12)

                    ; #72010: <==commonly_known== 68523 (neg)
                    (Pa_checked_p12)

                    ; #73285: origin
                    (checked_p12)

                    ; #74049: <==commonly_known== 68523 (neg)
                    (Pc_checked_p12)

                    ; #75757: <==commonly_known== 73285 (pos)
                    (Bc_checked_p12)

                    ; #79016: <==commonly_known== 68523 (neg)
                    (Pb_checked_p12)

                    ; #83674: <==commonly_known== 73285 (pos)
                    (Ba_checked_p12)

                    ; #90940: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #12078: <==negation-removal== 56234 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #12402: <==uncertain_firing== 19821 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #30977: <==negation-removal== 63809 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #33039: <==negation-removal== 68121 (pos)
                    (not (Pb_not_checked_p12))

                    ; #46087: <==negation-removal== 79016 (pos)
                    (not (Bb_not_checked_p12))

                    ; #49580: <==negation-removal== 74049 (pos)
                    (not (Bc_not_checked_p12))

                    ; #50413: <==negation-removal== 72010 (pos)
                    (not (Ba_not_checked_p12))

                    ; #53376: <==negation-removal== 83674 (pos)
                    (not (Pa_not_checked_p12))

                    ; #58202: <==negation-removal== 90940 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #59474: <==uncertain_firing== 63809 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #68523: <==negation-removal== 73285 (pos)
                    (not (not_checked_p12))

                    ; #75023: <==negation-removal== 75757 (pos)
                    (not (Pc_not_checked_p12))

                    ; #86549: <==uncertain_firing== 90940 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #88198: <==uncertain_firing== 56234 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #89034: <==negation-removal== 19821 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #13879: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #17066: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #18768: <==closure== 13879 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #23803: <==closure== 17066 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #30915: origin
                    (checked_p1)

                    ; #35390: <==commonly_known== 30915 (pos)
                    (Bb_checked_p1)

                    ; #38268: <==commonly_known== 42583 (neg)
                    (Pa_checked_p1)

                    ; #63583: <==commonly_known== 30915 (pos)
                    (Ba_checked_p1)

                    ; #76771: <==commonly_known== 30915 (pos)
                    (Bc_checked_p1)

                    ; #83690: <==commonly_known== 42583 (neg)
                    (Pb_checked_p1)

                    ; #97876: <==commonly_known== 42583 (neg)
                    (Pc_checked_p1)

                    ; #11485: <==uncertain_firing== 23803 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #29808: <==negation-removal== 97876 (pos)
                    (not (Bc_not_checked_p1))

                    ; #31770: <==negation-removal== 76771 (pos)
                    (not (Pc_not_checked_p1))

                    ; #32682: <==negation-removal== 13879 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #39333: <==negation-removal== 23803 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #42583: <==negation-removal== 30915 (pos)
                    (not (not_checked_p1))

                    ; #43028: <==negation-removal== 35390 (pos)
                    (not (Pb_not_checked_p1))

                    ; #54660: <==uncertain_firing== 13879 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #60406: <==negation-removal== 18768 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #63249: <==negation-removal== 38268 (pos)
                    (not (Ba_not_checked_p1))

                    ; #64858: <==uncertain_firing== 18768 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #69997: <==negation-removal== 17066 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #71647: <==negation-removal== 63583 (pos)
                    (not (Pa_not_checked_p1))

                    ; #85953: <==negation-removal== 83690 (pos)
                    (not (Bb_not_checked_p1))

                    ; #86234: <==uncertain_firing== 17066 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11134: <==commonly_known== 82643 (pos)
                    (Ba_checked_p2)

                    ; #23262: <==closure== 26814 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #26814: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #32594: <==commonly_known== 82643 (pos)
                    (Bb_checked_p2)

                    ; #39498: <==commonly_known== 82643 (pos)
                    (Bc_checked_p2)

                    ; #49492: <==commonly_known== 47063 (neg)
                    (Pb_checked_p2)

                    ; #62003: <==closure== 62453 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #62453: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #82643: origin
                    (checked_p2)

                    ; #86993: <==commonly_known== 47063 (neg)
                    (Pc_checked_p2)

                    ; #91991: <==commonly_known== 47063 (neg)
                    (Pa_checked_p2)

                    ; #14688: <==negation-removal== 39498 (pos)
                    (not (Pc_not_checked_p2))

                    ; #22985: <==negation-removal== 62003 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #24335: <==uncertain_firing== 62003 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #25760: <==negation-removal== 11134 (pos)
                    (not (Pa_not_checked_p2))

                    ; #27379: <==uncertain_firing== 23262 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #31000: <==negation-removal== 32594 (pos)
                    (not (Pb_not_checked_p2))

                    ; #42273: <==negation-removal== 23262 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #43504: <==negation-removal== 91991 (pos)
                    (not (Ba_not_checked_p2))

                    ; #47063: <==negation-removal== 82643 (pos)
                    (not (not_checked_p2))

                    ; #57180: <==uncertain_firing== 26814 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #57489: <==negation-removal== 49492 (pos)
                    (not (Bb_not_checked_p2))

                    ; #67660: <==negation-removal== 26814 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #88496: <==negation-removal== 86993 (pos)
                    (not (Bc_not_checked_p2))

                    ; #90176: <==negation-removal== 62453 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #90763: <==uncertain_firing== 62453 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #21508: <==commonly_known== 41655 (neg)
                    (Pa_checked_p3)

                    ; #25595: <==closure== 47742 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #30708: <==commonly_known== 34297 (pos)
                    (Bb_checked_p3)

                    ; #34297: origin
                    (checked_p3)

                    ; #40206: <==commonly_known== 34297 (pos)
                    (Ba_checked_p3)

                    ; #47742: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #48401: <==commonly_known== 41655 (neg)
                    (Pb_checked_p3)

                    ; #51232: <==commonly_known== 41655 (neg)
                    (Pc_checked_p3)

                    ; #68139: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #80892: <==closure== 68139 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #87849: <==commonly_known== 34297 (pos)
                    (Bc_checked_p3)

                    ; #33911: <==negation-removal== 51232 (pos)
                    (not (Bc_not_checked_p3))

                    ; #34567: <==uncertain_firing== 47742 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #41093: <==negation-removal== 25595 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #41655: <==negation-removal== 34297 (pos)
                    (not (not_checked_p3))

                    ; #45754: <==negation-removal== 30708 (pos)
                    (not (Pb_not_checked_p3))

                    ; #47697: <==negation-removal== 68139 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #48103: <==negation-removal== 21508 (pos)
                    (not (Ba_not_checked_p3))

                    ; #64667: <==negation-removal== 40206 (pos)
                    (not (Pa_not_checked_p3))

                    ; #71448: <==negation-removal== 87849 (pos)
                    (not (Pc_not_checked_p3))

                    ; #76959: <==negation-removal== 47742 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #77791: <==uncertain_firing== 68139 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #79560: <==uncertain_firing== 25595 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #84233: <==negation-removal== 80892 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #87367: <==uncertain_firing== 80892 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #90116: <==negation-removal== 48401 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10126: <==commonly_known== 78850 (pos)
                    (Bc_checked_p4)

                    ; #27618: <==commonly_known== 78850 (pos)
                    (Ba_checked_p4)

                    ; #39028: <==closure== 58278 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #44921: <==commonly_known== 33964 (neg)
                    (Pb_checked_p4)

                    ; #45798: <==commonly_known== 33964 (neg)
                    (Pc_checked_p4)

                    ; #58278: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #65803: <==closure== 85450 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #69517: <==commonly_known== 33964 (neg)
                    (Pa_checked_p4)

                    ; #78850: origin
                    (checked_p4)

                    ; #85450: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #97205: <==commonly_known== 78850 (pos)
                    (Bb_checked_p4)

                    ; #16961: <==uncertain_firing== 58278 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #21108: <==negation-removal== 65803 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #21372: <==negation-removal== 45798 (pos)
                    (not (Bc_not_checked_p4))

                    ; #22976: <==negation-removal== 58278 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #29624: <==uncertain_firing== 85450 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #33964: <==negation-removal== 78850 (pos)
                    (not (not_checked_p4))

                    ; #44399: <==negation-removal== 27618 (pos)
                    (not (Pa_not_checked_p4))

                    ; #57632: <==negation-removal== 85450 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #62996: <==negation-removal== 97205 (pos)
                    (not (Pb_not_checked_p4))

                    ; #65383: <==uncertain_firing== 39028 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #67551: <==uncertain_firing== 65803 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #67828: <==negation-removal== 10126 (pos)
                    (not (Pc_not_checked_p4))

                    ; #80469: <==negation-removal== 39028 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #84460: <==negation-removal== 44921 (pos)
                    (not (Bb_not_checked_p4))

                    ; #90859: <==negation-removal== 69517 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12929: <==commonly_known== 65426 (pos)
                    (Bb_checked_p5)

                    ; #34022: <==commonly_known== 26106 (neg)
                    (Pb_checked_p5)

                    ; #38547: <==closure== 64767 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #42095: <==commonly_known== 26106 (neg)
                    (Pc_checked_p5)

                    ; #63352: <==commonly_known== 65426 (pos)
                    (Ba_checked_p5)

                    ; #64767: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #65426: origin
                    (checked_p5)

                    ; #74025: <==commonly_known== 26106 (neg)
                    (Pa_checked_p5)

                    ; #82911: <==commonly_known== 65426 (pos)
                    (Bc_checked_p5)

                    ; #85479: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #89820: <==closure== 85479 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #16102: <==uncertain_firing== 85479 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #18269: <==negation-removal== 64767 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #20280: <==uncertain_firing== 38547 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #22865: <==negation-removal== 89820 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #26106: <==negation-removal== 65426 (pos)
                    (not (not_checked_p5))

                    ; #32198: <==uncertain_firing== 89820 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #33165: <==negation-removal== 12929 (pos)
                    (not (Pb_not_checked_p5))

                    ; #44508: <==negation-removal== 74025 (pos)
                    (not (Ba_not_checked_p5))

                    ; #50086: <==negation-removal== 38547 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #55458: <==negation-removal== 42095 (pos)
                    (not (Bc_not_checked_p5))

                    ; #62341: <==negation-removal== 34022 (pos)
                    (not (Bb_not_checked_p5))

                    ; #72202: <==uncertain_firing== 64767 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #73362: <==negation-removal== 82911 (pos)
                    (not (Pc_not_checked_p5))

                    ; #82766: <==negation-removal== 63352 (pos)
                    (not (Pa_not_checked_p5))

                    ; #85819: <==negation-removal== 85479 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #14006: origin
                    (checked_p6)

                    ; #20021: <==commonly_known== 14006 (pos)
                    (Bc_checked_p6)

                    ; #27245: <==commonly_known== 14006 (pos)
                    (Ba_checked_p6)

                    ; #50186: <==commonly_known== 71173 (neg)
                    (Pc_checked_p6)

                    ; #60250: <==commonly_known== 14006 (pos)
                    (Bb_checked_p6)

                    ; #63987: <==commonly_known== 71173 (neg)
                    (Pa_checked_p6)

                    ; #66184: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #66693: <==commonly_known== 71173 (neg)
                    (Pb_checked_p6)

                    ; #84775: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #84835: <==closure== 66184 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #97623: <==closure== 84775 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #12157: <==negation-removal== 66693 (pos)
                    (not (Bb_not_checked_p6))

                    ; #13391: <==negation-removal== 20021 (pos)
                    (not (Pc_not_checked_p6))

                    ; #15589: <==negation-removal== 97623 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #22429: <==negation-removal== 66184 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #27913: <==uncertain_firing== 84775 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #28407: <==uncertain_firing== 97623 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #39369: <==negation-removal== 60250 (pos)
                    (not (Pb_not_checked_p6))

                    ; #39973: <==uncertain_firing== 84835 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #52161: <==negation-removal== 27245 (pos)
                    (not (Pa_not_checked_p6))

                    ; #59262: <==negation-removal== 63987 (pos)
                    (not (Ba_not_checked_p6))

                    ; #71173: <==negation-removal== 14006 (pos)
                    (not (not_checked_p6))

                    ; #72078: <==uncertain_firing== 66184 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #74137: <==negation-removal== 84775 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #88619: <==negation-removal== 84835 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #91596: <==negation-removal== 50186 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #13968: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #22266: <==commonly_known== 28683 (pos)
                    (Bc_checked_p7)

                    ; #27976: <==commonly_known== 70904 (neg)
                    (Pc_checked_p7)

                    ; #28683: origin
                    (checked_p7)

                    ; #30781: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #32947: <==commonly_known== 70904 (neg)
                    (Pa_checked_p7)

                    ; #37197: <==commonly_known== 28683 (pos)
                    (Bb_checked_p7)

                    ; #41020: <==closure== 30781 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #61034: <==commonly_known== 28683 (pos)
                    (Ba_checked_p7)

                    ; #65035: <==closure== 13968 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #87820: <==commonly_known== 70904 (neg)
                    (Pb_checked_p7)

                    ; #13993: <==negation-removal== 41020 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #14148: <==negation-removal== 22266 (pos)
                    (not (Pc_not_checked_p7))

                    ; #20769: <==negation-removal== 32947 (pos)
                    (not (Ba_not_checked_p7))

                    ; #22300: <==uncertain_firing== 13968 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #32307: <==negation-removal== 13968 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #41202: <==uncertain_firing== 41020 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #41448: <==uncertain_firing== 30781 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #45617: <==uncertain_firing== 65035 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #54783: <==negation-removal== 61034 (pos)
                    (not (Pa_not_checked_p7))

                    ; #65578: <==negation-removal== 37197 (pos)
                    (not (Pb_not_checked_p7))

                    ; #67450: <==negation-removal== 65035 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #70904: <==negation-removal== 28683 (pos)
                    (not (not_checked_p7))

                    ; #82679: <==negation-removal== 27976 (pos)
                    (not (Bc_not_checked_p7))

                    ; #84362: <==negation-removal== 87820 (pos)
                    (not (Bb_not_checked_p7))

                    ; #86787: <==negation-removal== 30781 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11740: <==commonly_known== 67330 (neg)
                    (Pb_checked_p8)

                    ; #14173: <==commonly_known== 63798 (pos)
                    (Bb_checked_p8)

                    ; #35742: <==commonly_known== 67330 (neg)
                    (Pc_checked_p8)

                    ; #47581: <==commonly_known== 67330 (neg)
                    (Pa_checked_p8)

                    ; #49932: <==closure== 88068 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #53184: <==commonly_known== 63798 (pos)
                    (Ba_checked_p8)

                    ; #57617: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #63798: origin
                    (checked_p8)

                    ; #64558: <==commonly_known== 63798 (pos)
                    (Bc_checked_p8)

                    ; #87912: <==closure== 57617 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #88068: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #12625: <==negation-removal== 49932 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #18371: <==negation-removal== 88068 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #22263: <==negation-removal== 11740 (pos)
                    (not (Bb_not_checked_p8))

                    ; #23669: <==negation-removal== 14173 (pos)
                    (not (Pb_not_checked_p8))

                    ; #24997: <==uncertain_firing== 57617 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #29841: <==negation-removal== 47581 (pos)
                    (not (Ba_not_checked_p8))

                    ; #33470: <==uncertain_firing== 87912 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #42378: <==negation-removal== 57617 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #45907: <==uncertain_firing== 88068 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #52650: <==negation-removal== 53184 (pos)
                    (not (Pa_not_checked_p8))

                    ; #52902: <==negation-removal== 64558 (pos)
                    (not (Pc_not_checked_p8))

                    ; #60524: <==negation-removal== 87912 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #66065: <==uncertain_firing== 49932 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #67330: <==negation-removal== 63798 (pos)
                    (not (not_checked_p8))

                    ; #80611: <==negation-removal== 35742 (pos)
                    (not (Bc_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #19435: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #22702: <==commonly_known== 72664 (pos)
                    (Ba_checked_p9)

                    ; #47555: <==commonly_known== 70895 (neg)
                    (Pa_checked_p9)

                    ; #54227: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #61412: <==commonly_known== 70895 (neg)
                    (Pb_checked_p9)

                    ; #61501: <==commonly_known== 70895 (neg)
                    (Pc_checked_p9)

                    ; #72058: <==closure== 19435 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #72664: origin
                    (checked_p9)

                    ; #73660: <==closure== 54227 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #76074: <==commonly_known== 72664 (pos)
                    (Bb_checked_p9)

                    ; #82278: <==commonly_known== 72664 (pos)
                    (Bc_checked_p9)

                    ; #23751: <==negation-removal== 61412 (pos)
                    (not (Bb_not_checked_p9))

                    ; #24434: <==negation-removal== 19435 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #28137: <==negation-removal== 47555 (pos)
                    (not (Ba_not_checked_p9))

                    ; #39300: <==negation-removal== 61501 (pos)
                    (not (Bc_not_checked_p9))

                    ; #39905: <==negation-removal== 73660 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #40457: <==negation-removal== 82278 (pos)
                    (not (Pc_not_checked_p9))

                    ; #46916: <==uncertain_firing== 19435 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #50321: <==uncertain_firing== 73660 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #52749: <==uncertain_firing== 54227 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #62522: <==uncertain_firing== 72058 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #62646: <==negation-removal== 76074 (pos)
                    (not (Pb_not_checked_p9))

                    ; #70895: <==negation-removal== 72664 (pos)
                    (not (not_checked_p9))

                    ; #76609: <==negation-removal== 72058 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #77918: <==negation-removal== 22702 (pos)
                    (not (Pa_not_checked_p9))

                    ; #83848: <==negation-removal== 54227 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #16255: <==commonly_known== 25048 (neg)
                    (Pc_checked_p10)

                    ; #20838: <==commonly_known== 82603 (pos)
                    (Bc_checked_p10)

                    ; #23715: <==commonly_known== 82603 (pos)
                    (Bb_checked_p10)

                    ; #29837: <==commonly_known== 82603 (pos)
                    (Ba_checked_p10)

                    ; #30707: <==commonly_known== 25048 (neg)
                    (Pa_checked_p10)

                    ; #49605: <==closure== 85259 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #82603: origin
                    (checked_p10)

                    ; #85259: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #89630: <==closure== 90546 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #90097: <==commonly_known== 25048 (neg)
                    (Pb_checked_p10)

                    ; #90546: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #13242: <==uncertain_firing== 90546 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #15141: <==negation-removal== 20838 (pos)
                    (not (Pc_not_checked_p10))

                    ; #19389: <==negation-removal== 90097 (pos)
                    (not (Bb_not_checked_p10))

                    ; #25048: <==negation-removal== 82603 (pos)
                    (not (not_checked_p10))

                    ; #25642: <==negation-removal== 90546 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #33137: <==uncertain_firing== 49605 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #33211: <==negation-removal== 29837 (pos)
                    (not (Pa_not_checked_p10))

                    ; #34951: <==negation-removal== 85259 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #42616: <==negation-removal== 30707 (pos)
                    (not (Ba_not_checked_p10))

                    ; #51269: <==negation-removal== 16255 (pos)
                    (not (Bc_not_checked_p10))

                    ; #75159: <==negation-removal== 23715 (pos)
                    (not (Pb_not_checked_p10))

                    ; #76897: <==negation-removal== 89630 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #78049: <==uncertain_firing== 85259 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #78574: <==negation-removal== 49605 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #82823: <==uncertain_firing== 89630 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #20147: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #22047: origin
                    (checked_p11)

                    ; #24071: <==closure== 28575 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #28575: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #47165: <==commonly_known== 22047 (pos)
                    (Bc_checked_p11)

                    ; #48539: <==commonly_known== 61766 (neg)
                    (Pc_checked_p11)

                    ; #50580: <==closure== 20147 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #56052: <==commonly_known== 61766 (neg)
                    (Pa_checked_p11)

                    ; #69708: <==commonly_known== 61766 (neg)
                    (Pb_checked_p11)

                    ; #82300: <==commonly_known== 22047 (pos)
                    (Ba_checked_p11)

                    ; #97204: <==commonly_known== 22047 (pos)
                    (Bb_checked_p11)

                    ; #14884: <==negation-removal== 50580 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #18710: <==uncertain_firing== 20147 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #19334: <==negation-removal== 24071 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #21120: <==negation-removal== 56052 (pos)
                    (not (Ba_not_checked_p11))

                    ; #24333: <==negation-removal== 47165 (pos)
                    (not (Pc_not_checked_p11))

                    ; #33317: <==uncertain_firing== 50580 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #36872: <==negation-removal== 69708 (pos)
                    (not (Bb_not_checked_p11))

                    ; #45826: <==negation-removal== 97204 (pos)
                    (not (Pb_not_checked_p11))

                    ; #48448: <==uncertain_firing== 28575 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #48619: <==uncertain_firing== 24071 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #61564: <==negation-removal== 28575 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #61766: <==negation-removal== 22047 (pos)
                    (not (not_checked_p11))

                    ; #78501: <==negation-removal== 20147 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #84915: <==negation-removal== 82300 (pos)
                    (not (Pa_not_checked_p11))

                    ; #89250: <==negation-removal== 48539 (pos)
                    (not (Bc_not_checked_p11))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #17846: <==closure== 28973 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #26104: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #28973: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #68121: <==commonly_known== 73285 (pos)
                    (Bb_checked_p12)

                    ; #72010: <==commonly_known== 68523 (neg)
                    (Pa_checked_p12)

                    ; #73285: origin
                    (checked_p12)

                    ; #74049: <==commonly_known== 68523 (neg)
                    (Pc_checked_p12)

                    ; #75757: <==commonly_known== 73285 (pos)
                    (Bc_checked_p12)

                    ; #79016: <==commonly_known== 68523 (neg)
                    (Pb_checked_p12)

                    ; #83674: <==commonly_known== 73285 (pos)
                    (Ba_checked_p12)

                    ; #88448: <==closure== 26104 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #10955: <==negation-removal== 28973 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #15476: <==negation-removal== 17846 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #15913: <==uncertain_firing== 28973 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #25216: <==negation-removal== 88448 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #33039: <==negation-removal== 68121 (pos)
                    (not (Pb_not_checked_p12))

                    ; #42146: <==uncertain_firing== 17846 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #46087: <==negation-removal== 79016 (pos)
                    (not (Bb_not_checked_p12))

                    ; #49580: <==negation-removal== 74049 (pos)
                    (not (Bc_not_checked_p12))

                    ; #50413: <==negation-removal== 72010 (pos)
                    (not (Ba_not_checked_p12))

                    ; #53376: <==negation-removal== 83674 (pos)
                    (not (Pa_not_checked_p12))

                    ; #54845: <==negation-removal== 26104 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #68523: <==negation-removal== 73285 (pos)
                    (not (not_checked_p12))

                    ; #72400: <==uncertain_firing== 26104 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #75023: <==negation-removal== 75757 (pos)
                    (not (Pc_not_checked_p12))

                    ; #75431: <==uncertain_firing== 88448 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #30915: origin
                    (checked_p1)

                    ; #32695: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #35390: <==commonly_known== 30915 (pos)
                    (Bb_checked_p1)

                    ; #38268: <==commonly_known== 42583 (neg)
                    (Pa_checked_p1)

                    ; #59164: <==closure== 74083 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #63583: <==commonly_known== 30915 (pos)
                    (Ba_checked_p1)

                    ; #69681: <==closure== 32695 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #74083: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #76771: <==commonly_known== 30915 (pos)
                    (Bc_checked_p1)

                    ; #83690: <==commonly_known== 42583 (neg)
                    (Pb_checked_p1)

                    ; #97876: <==commonly_known== 42583 (neg)
                    (Pc_checked_p1)

                    ; #10108: <==uncertain_firing== 69681 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #21246: <==negation-removal== 74083 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #21339: <==negation-removal== 69681 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #23148: <==uncertain_firing== 59164 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #25063: <==uncertain_firing== 74083 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #27208: <==uncertain_firing== 32695 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #29808: <==negation-removal== 97876 (pos)
                    (not (Bc_not_checked_p1))

                    ; #31770: <==negation-removal== 76771 (pos)
                    (not (Pc_not_checked_p1))

                    ; #42583: <==negation-removal== 30915 (pos)
                    (not (not_checked_p1))

                    ; #43028: <==negation-removal== 35390 (pos)
                    (not (Pb_not_checked_p1))

                    ; #63150: <==negation-removal== 59164 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #63249: <==negation-removal== 38268 (pos)
                    (not (Ba_not_checked_p1))

                    ; #71647: <==negation-removal== 63583 (pos)
                    (not (Pa_not_checked_p1))

                    ; #85953: <==negation-removal== 83690 (pos)
                    (not (Bb_not_checked_p1))

                    ; #95043: <==negation-removal== 32695 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11134: <==commonly_known== 82643 (pos)
                    (Ba_checked_p2)

                    ; #19499: <==closure== 56745 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #21598: <==closure== 60626 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #32594: <==commonly_known== 82643 (pos)
                    (Bb_checked_p2)

                    ; #39498: <==commonly_known== 82643 (pos)
                    (Bc_checked_p2)

                    ; #49492: <==commonly_known== 47063 (neg)
                    (Pb_checked_p2)

                    ; #56745: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #60626: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #82643: origin
                    (checked_p2)

                    ; #86993: <==commonly_known== 47063 (neg)
                    (Pc_checked_p2)

                    ; #91991: <==commonly_known== 47063 (neg)
                    (Pa_checked_p2)

                    ; #14688: <==negation-removal== 39498 (pos)
                    (not (Pc_not_checked_p2))

                    ; #25760: <==negation-removal== 11134 (pos)
                    (not (Pa_not_checked_p2))

                    ; #30743: <==uncertain_firing== 21598 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #31000: <==negation-removal== 32594 (pos)
                    (not (Pb_not_checked_p2))

                    ; #31292: <==uncertain_firing== 19499 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #42101: <==negation-removal== 56745 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #43504: <==negation-removal== 91991 (pos)
                    (not (Ba_not_checked_p2))

                    ; #46113: <==negation-removal== 19499 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #47063: <==negation-removal== 82643 (pos)
                    (not (not_checked_p2))

                    ; #57489: <==negation-removal== 49492 (pos)
                    (not (Bb_not_checked_p2))

                    ; #77699: <==uncertain_firing== 56745 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #80284: <==uncertain_firing== 60626 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #82202: <==negation-removal== 21598 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #84456: <==negation-removal== 60626 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #88496: <==negation-removal== 86993 (pos)
                    (not (Bc_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #16686: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #21508: <==commonly_known== 41655 (neg)
                    (Pa_checked_p3)

                    ; #30708: <==commonly_known== 34297 (pos)
                    (Bb_checked_p3)

                    ; #34297: origin
                    (checked_p3)

                    ; #40206: <==commonly_known== 34297 (pos)
                    (Ba_checked_p3)

                    ; #42338: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #48401: <==commonly_known== 41655 (neg)
                    (Pb_checked_p3)

                    ; #51232: <==commonly_known== 41655 (neg)
                    (Pc_checked_p3)

                    ; #57459: <==closure== 16686 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #66196: <==closure== 42338 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #87849: <==commonly_known== 34297 (pos)
                    (Bc_checked_p3)

                    ; #22580: <==uncertain_firing== 57459 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #22667: <==negation-removal== 57459 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #33911: <==negation-removal== 51232 (pos)
                    (not (Bc_not_checked_p3))

                    ; #35946: <==negation-removal== 42338 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #41655: <==negation-removal== 34297 (pos)
                    (not (not_checked_p3))

                    ; #45754: <==negation-removal== 30708 (pos)
                    (not (Pb_not_checked_p3))

                    ; #46579: <==negation-removal== 16686 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #48103: <==negation-removal== 21508 (pos)
                    (not (Ba_not_checked_p3))

                    ; #64667: <==negation-removal== 40206 (pos)
                    (not (Pa_not_checked_p3))

                    ; #71448: <==negation-removal== 87849 (pos)
                    (not (Pc_not_checked_p3))

                    ; #73872: <==uncertain_firing== 16686 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #77148: <==uncertain_firing== 42338 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #82375: <==uncertain_firing== 66196 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #87334: <==negation-removal== 66196 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #90116: <==negation-removal== 48401 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10126: <==commonly_known== 78850 (pos)
                    (Bc_checked_p4)

                    ; #27618: <==commonly_known== 78850 (pos)
                    (Ba_checked_p4)

                    ; #35252: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #37536: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #44921: <==commonly_known== 33964 (neg)
                    (Pb_checked_p4)

                    ; #45798: <==commonly_known== 33964 (neg)
                    (Pc_checked_p4)

                    ; #69517: <==commonly_known== 33964 (neg)
                    (Pa_checked_p4)

                    ; #73823: <==closure== 35252 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #78850: origin
                    (checked_p4)

                    ; #85060: <==closure== 37536 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #97205: <==commonly_known== 78850 (pos)
                    (Bb_checked_p4)

                    ; #21372: <==negation-removal== 45798 (pos)
                    (not (Bc_not_checked_p4))

                    ; #26080: <==uncertain_firing== 85060 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #33964: <==negation-removal== 78850 (pos)
                    (not (not_checked_p4))

                    ; #38765: <==negation-removal== 35252 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #44399: <==negation-removal== 27618 (pos)
                    (not (Pa_not_checked_p4))

                    ; #50620: <==negation-removal== 73823 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #52275: <==uncertain_firing== 37536 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #54914: <==uncertain_firing== 73823 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #61460: <==negation-removal== 37536 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #62996: <==negation-removal== 97205 (pos)
                    (not (Pb_not_checked_p4))

                    ; #66623: <==uncertain_firing== 35252 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #67828: <==negation-removal== 10126 (pos)
                    (not (Pc_not_checked_p4))

                    ; #79046: <==negation-removal== 85060 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #84460: <==negation-removal== 44921 (pos)
                    (not (Bb_not_checked_p4))

                    ; #90859: <==negation-removal== 69517 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12929: <==commonly_known== 65426 (pos)
                    (Bb_checked_p5)

                    ; #15984: <==closure== 48987 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #34022: <==commonly_known== 26106 (neg)
                    (Pb_checked_p5)

                    ; #38356: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #42095: <==commonly_known== 26106 (neg)
                    (Pc_checked_p5)

                    ; #48987: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #63352: <==commonly_known== 65426 (pos)
                    (Ba_checked_p5)

                    ; #65426: origin
                    (checked_p5)

                    ; #74025: <==commonly_known== 26106 (neg)
                    (Pa_checked_p5)

                    ; #82911: <==commonly_known== 65426 (pos)
                    (Bc_checked_p5)

                    ; #89819: <==closure== 38356 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #18235: <==negation-removal== 15984 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #25354: <==negation-removal== 89819 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #26106: <==negation-removal== 65426 (pos)
                    (not (not_checked_p5))

                    ; #32407: <==uncertain_firing== 89819 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #33165: <==negation-removal== 12929 (pos)
                    (not (Pb_not_checked_p5))

                    ; #44508: <==negation-removal== 74025 (pos)
                    (not (Ba_not_checked_p5))

                    ; #55458: <==negation-removal== 42095 (pos)
                    (not (Bc_not_checked_p5))

                    ; #62341: <==negation-removal== 34022 (pos)
                    (not (Bb_not_checked_p5))

                    ; #65045: <==negation-removal== 48987 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #68136: <==negation-removal== 38356 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #71424: <==uncertain_firing== 15984 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #73362: <==negation-removal== 82911 (pos)
                    (not (Pc_not_checked_p5))

                    ; #82766: <==negation-removal== 63352 (pos)
                    (not (Pa_not_checked_p5))

                    ; #84585: <==uncertain_firing== 38356 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #91135: <==uncertain_firing== 48987 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #14006: origin
                    (checked_p6)

                    ; #20021: <==commonly_known== 14006 (pos)
                    (Bc_checked_p6)

                    ; #20709: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #27245: <==commonly_known== 14006 (pos)
                    (Ba_checked_p6)

                    ; #50186: <==commonly_known== 71173 (neg)
                    (Pc_checked_p6)

                    ; #50383: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #60250: <==commonly_known== 14006 (pos)
                    (Bb_checked_p6)

                    ; #63987: <==commonly_known== 71173 (neg)
                    (Pa_checked_p6)

                    ; #66693: <==commonly_known== 71173 (neg)
                    (Pb_checked_p6)

                    ; #77240: <==closure== 50383 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #81058: <==closure== 20709 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #10188: <==uncertain_firing== 20709 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #12157: <==negation-removal== 66693 (pos)
                    (not (Bb_not_checked_p6))

                    ; #13391: <==negation-removal== 20021 (pos)
                    (not (Pc_not_checked_p6))

                    ; #17479: <==negation-removal== 81058 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #17771: <==negation-removal== 20709 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #35984: <==uncertain_firing== 77240 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #39369: <==negation-removal== 60250 (pos)
                    (not (Pb_not_checked_p6))

                    ; #39707: <==negation-removal== 50383 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #52161: <==negation-removal== 27245 (pos)
                    (not (Pa_not_checked_p6))

                    ; #57630: <==uncertain_firing== 81058 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #59262: <==negation-removal== 63987 (pos)
                    (not (Ba_not_checked_p6))

                    ; #68883: <==uncertain_firing== 50383 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #71173: <==negation-removal== 14006 (pos)
                    (not (not_checked_p6))

                    ; #73455: <==negation-removal== 77240 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #91596: <==negation-removal== 50186 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #17241: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #22266: <==commonly_known== 28683 (pos)
                    (Bc_checked_p7)

                    ; #27976: <==commonly_known== 70904 (neg)
                    (Pc_checked_p7)

                    ; #28683: origin
                    (checked_p7)

                    ; #32947: <==commonly_known== 70904 (neg)
                    (Pa_checked_p7)

                    ; #34124: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #35190: <==closure== 17241 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #36732: <==closure== 34124 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #37197: <==commonly_known== 28683 (pos)
                    (Bb_checked_p7)

                    ; #61034: <==commonly_known== 28683 (pos)
                    (Ba_checked_p7)

                    ; #87820: <==commonly_known== 70904 (neg)
                    (Pb_checked_p7)

                    ; #14148: <==negation-removal== 22266 (pos)
                    (not (Pc_not_checked_p7))

                    ; #20769: <==negation-removal== 32947 (pos)
                    (not (Ba_not_checked_p7))

                    ; #45377: <==negation-removal== 34124 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #54783: <==negation-removal== 61034 (pos)
                    (not (Pa_not_checked_p7))

                    ; #58739: <==negation-removal== 35190 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #60343: <==uncertain_firing== 36732 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #64263: <==uncertain_firing== 34124 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #65578: <==negation-removal== 37197 (pos)
                    (not (Pb_not_checked_p7))

                    ; #69417: <==negation-removal== 36732 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #70904: <==negation-removal== 28683 (pos)
                    (not (not_checked_p7))

                    ; #71709: <==uncertain_firing== 17241 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #81812: <==uncertain_firing== 35190 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #82679: <==negation-removal== 27976 (pos)
                    (not (Bc_not_checked_p7))

                    ; #84362: <==negation-removal== 87820 (pos)
                    (not (Bb_not_checked_p7))

                    ; #84811: <==negation-removal== 17241 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11740: <==commonly_known== 67330 (neg)
                    (Pb_checked_p8)

                    ; #14173: <==commonly_known== 63798 (pos)
                    (Bb_checked_p8)

                    ; #22328: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #35742: <==commonly_known== 67330 (neg)
                    (Pc_checked_p8)

                    ; #47581: <==commonly_known== 67330 (neg)
                    (Pa_checked_p8)

                    ; #48927: <==closure== 22328 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #53184: <==commonly_known== 63798 (pos)
                    (Ba_checked_p8)

                    ; #63798: origin
                    (checked_p8)

                    ; #64558: <==commonly_known== 63798 (pos)
                    (Bc_checked_p8)

                    ; #64939: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #68232: <==closure== 64939 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #19094: <==negation-removal== 68232 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #22263: <==negation-removal== 11740 (pos)
                    (not (Bb_not_checked_p8))

                    ; #23669: <==negation-removal== 14173 (pos)
                    (not (Pb_not_checked_p8))

                    ; #29841: <==negation-removal== 47581 (pos)
                    (not (Ba_not_checked_p8))

                    ; #47165: <==negation-removal== 22328 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #52650: <==negation-removal== 53184 (pos)
                    (not (Pa_not_checked_p8))

                    ; #52902: <==negation-removal== 64558 (pos)
                    (not (Pc_not_checked_p8))

                    ; #54721: <==uncertain_firing== 68232 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #64433: <==uncertain_firing== 22328 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #67330: <==negation-removal== 63798 (pos)
                    (not (not_checked_p8))

                    ; #78023: <==negation-removal== 64939 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #80611: <==negation-removal== 35742 (pos)
                    (not (Bc_not_checked_p8))

                    ; #81833: <==negation-removal== 48927 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #88842: <==uncertain_firing== 48927 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #91947: <==uncertain_firing== 64939 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #16901: <==closure== 85283 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #22702: <==commonly_known== 72664 (pos)
                    (Ba_checked_p9)

                    ; #35438: <==closure== 52040 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #47555: <==commonly_known== 70895 (neg)
                    (Pa_checked_p9)

                    ; #52040: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #61412: <==commonly_known== 70895 (neg)
                    (Pb_checked_p9)

                    ; #61501: <==commonly_known== 70895 (neg)
                    (Pc_checked_p9)

                    ; #72664: origin
                    (checked_p9)

                    ; #76074: <==commonly_known== 72664 (pos)
                    (Bb_checked_p9)

                    ; #82278: <==commonly_known== 72664 (pos)
                    (Bc_checked_p9)

                    ; #85283: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #11744: <==negation-removal== 52040 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #12179: <==uncertain_firing== 35438 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #23751: <==negation-removal== 61412 (pos)
                    (not (Bb_not_checked_p9))

                    ; #28137: <==negation-removal== 47555 (pos)
                    (not (Ba_not_checked_p9))

                    ; #39300: <==negation-removal== 61501 (pos)
                    (not (Bc_not_checked_p9))

                    ; #40457: <==negation-removal== 82278 (pos)
                    (not (Pc_not_checked_p9))

                    ; #43293: <==negation-removal== 16901 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #46991: <==negation-removal== 35438 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #60774: <==uncertain_firing== 85283 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #61166: <==uncertain_firing== 52040 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #62646: <==negation-removal== 76074 (pos)
                    (not (Pb_not_checked_p9))

                    ; #70895: <==negation-removal== 72664 (pos)
                    (not (not_checked_p9))

                    ; #77918: <==negation-removal== 22702 (pos)
                    (not (Pa_not_checked_p9))

                    ; #78374: <==uncertain_firing== 16901 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #82654: <==negation-removal== 85283 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))))

)