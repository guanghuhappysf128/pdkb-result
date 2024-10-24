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
                    ; #13665: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #18143: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #43828: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #60178: <==closure== 43828 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #84162: <==closure== 13665 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #85439: <==closure== 18143 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #12359: <==negation-removal== 43828 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #13402: <==uncertain_firing== 13665 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #30267: <==uncertain_firing== 18143 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #37492: <==uncertain_firing== 84162 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #38669: <==uncertain_firing== 43828 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #39938: <==negation-removal== 18143 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #46339: <==negation-removal== 84162 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #49836: <==uncertain_firing== 60178 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #56046: <==negation-removal== 13665 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #63949: <==negation-removal== 85439 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #86165: <==uncertain_firing== 85439 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #87424: <==negation-removal== 60178 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))))

    (:action badcomm_p10_b_s
        :precondition (and (Pb_survivorat_s_p10)
                           (at_b_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #13665: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #18143: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #43828: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #60178: <==closure== 43828 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #84162: <==closure== 13665 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #85439: <==closure== 18143 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #12359: <==negation-removal== 43828 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #13402: <==uncertain_firing== 13665 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #30267: <==uncertain_firing== 18143 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #37492: <==uncertain_firing== 84162 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #38669: <==uncertain_firing== 43828 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #39938: <==negation-removal== 18143 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #46339: <==negation-removal== 84162 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #49836: <==uncertain_firing== 60178 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #56046: <==negation-removal== 13665 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #63949: <==negation-removal== 85439 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #86165: <==uncertain_firing== 85439 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #87424: <==negation-removal== 60178 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))))

    (:action badcomm_p10_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #13665: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #18143: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #43828: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #60178: <==closure== 43828 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #84162: <==closure== 13665 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #85439: <==closure== 18143 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #12359: <==negation-removal== 43828 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #13402: <==uncertain_firing== 13665 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #30267: <==uncertain_firing== 18143 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #37492: <==uncertain_firing== 84162 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #38669: <==uncertain_firing== 43828 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #39938: <==negation-removal== 18143 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #46339: <==negation-removal== 84162 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #49836: <==uncertain_firing== 60178 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #56046: <==negation-removal== 13665 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #63949: <==negation-removal== 85439 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #86165: <==uncertain_firing== 85439 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #87424: <==negation-removal== 60178 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))))

    (:action badcomm_p11_a_s
        :precondition (and (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #26931: <==closure== 78788 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #46411: <==closure== 86914 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #61802: <==closure== 90286 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #78788: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #86914: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #90286: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #11398: <==uncertain_firing== 61802 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #27458: <==negation-removal== 86914 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #30227: <==negation-removal== 46411 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #35859: <==negation-removal== 78788 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #43277: <==uncertain_firing== 90286 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #52762: <==negation-removal== 61802 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #54485: <==uncertain_firing== 86914 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #58161: <==uncertain_firing== 78788 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #63774: <==negation-removal== 26931 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #82196: <==uncertain_firing== 46411 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #83929: <==negation-removal== 90286 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #84889: <==uncertain_firing== 26931 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))))

    (:action badcomm_p11_b_s
        :precondition (and (at_b_p11)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #26931: <==closure== 78788 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #46411: <==closure== 86914 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #61802: <==closure== 90286 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #78788: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #86914: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #90286: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #11398: <==uncertain_firing== 61802 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #27458: <==negation-removal== 86914 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #30227: <==negation-removal== 46411 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #35859: <==negation-removal== 78788 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #43277: <==uncertain_firing== 90286 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #52762: <==negation-removal== 61802 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #54485: <==uncertain_firing== 86914 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #58161: <==uncertain_firing== 78788 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #63774: <==negation-removal== 26931 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #82196: <==uncertain_firing== 46411 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #83929: <==negation-removal== 90286 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #84889: <==uncertain_firing== 26931 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))))

    (:action badcomm_p11_c_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #26931: <==closure== 78788 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #46411: <==closure== 86914 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #61802: <==closure== 90286 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #78788: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #86914: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #90286: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #11398: <==uncertain_firing== 61802 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #27458: <==negation-removal== 86914 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #30227: <==negation-removal== 46411 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #35859: <==negation-removal== 78788 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #43277: <==uncertain_firing== 90286 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #52762: <==negation-removal== 61802 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #54485: <==uncertain_firing== 86914 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #58161: <==uncertain_firing== 78788 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #63774: <==negation-removal== 26931 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #82196: <==uncertain_firing== 46411 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #83929: <==negation-removal== 90286 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #84889: <==uncertain_firing== 26931 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))))

    (:action badcomm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #17932: <==closure== 84886 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #36805: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #46808: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #80695: <==closure== 36805 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #84886: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #89054: <==closure== 46808 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #14653: <==uncertain_firing== 80695 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #20111: <==negation-removal== 17932 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #22760: <==negation-removal== 46808 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #27022: <==negation-removal== 36805 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #28316: <==uncertain_firing== 36805 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #34497: <==negation-removal== 80695 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #41532: <==negation-removal== 84886 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #43415: <==uncertain_firing== 89054 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #53479: <==uncertain_firing== 17932 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #65814: <==negation-removal== 89054 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #84043: <==uncertain_firing== 46808 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #90337: <==uncertain_firing== 84886 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))))

    (:action badcomm_p12_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #17932: <==closure== 84886 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #36805: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #46808: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #80695: <==closure== 36805 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #84886: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #89054: <==closure== 46808 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #14653: <==uncertain_firing== 80695 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #20111: <==negation-removal== 17932 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #22760: <==negation-removal== 46808 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #27022: <==negation-removal== 36805 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #28316: <==uncertain_firing== 36805 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #34497: <==negation-removal== 80695 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #41532: <==negation-removal== 84886 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #43415: <==uncertain_firing== 89054 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #53479: <==uncertain_firing== 17932 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #65814: <==negation-removal== 89054 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #84043: <==uncertain_firing== 46808 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #90337: <==uncertain_firing== 84886 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))))

    (:action badcomm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #17932: <==closure== 84886 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #36805: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #46808: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #80695: <==closure== 36805 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #84886: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #89054: <==closure== 46808 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #14653: <==uncertain_firing== 80695 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #20111: <==negation-removal== 17932 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #22760: <==negation-removal== 46808 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #27022: <==negation-removal== 36805 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #28316: <==uncertain_firing== 36805 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #34497: <==negation-removal== 80695 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #41532: <==negation-removal== 84886 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #43415: <==uncertain_firing== 89054 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #53479: <==uncertain_firing== 17932 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #65814: <==negation-removal== 89054 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #84043: <==uncertain_firing== 46808 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #90337: <==uncertain_firing== 84886 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))))

    (:action badcomm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #14551: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #29620: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #64076: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #65784: <==closure== 14551 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #79951: <==closure== 29620 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #83870: <==closure== 64076 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #13331: <==negation-removal== 64076 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #15696: <==negation-removal== 65784 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #22304: <==uncertain_firing== 64076 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #22999: <==negation-removal== 14551 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #29711: <==negation-removal== 79951 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #42418: <==uncertain_firing== 29620 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #42904: <==uncertain_firing== 65784 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #44675: <==negation-removal== 29620 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #63539: <==uncertain_firing== 83870 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #64358: <==uncertain_firing== 14551 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #84159: <==negation-removal== 83870 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #84500: <==uncertain_firing== 79951 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #14551: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #29620: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #64076: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #65784: <==closure== 14551 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #79951: <==closure== 29620 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #83870: <==closure== 64076 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #13331: <==negation-removal== 64076 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #15696: <==negation-removal== 65784 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #22304: <==uncertain_firing== 64076 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #22999: <==negation-removal== 14551 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #29711: <==negation-removal== 79951 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #42418: <==uncertain_firing== 29620 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #42904: <==uncertain_firing== 65784 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #44675: <==negation-removal== 29620 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #63539: <==uncertain_firing== 83870 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #64358: <==uncertain_firing== 14551 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #84159: <==negation-removal== 83870 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #84500: <==uncertain_firing== 79951 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #14551: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #29620: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #64076: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #65784: <==closure== 14551 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #79951: <==closure== 29620 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #83870: <==closure== 64076 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #13331: <==negation-removal== 64076 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #15696: <==negation-removal== 65784 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #22304: <==uncertain_firing== 64076 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #22999: <==negation-removal== 14551 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #29711: <==negation-removal== 79951 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #42418: <==uncertain_firing== 29620 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #42904: <==uncertain_firing== 65784 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #44675: <==negation-removal== 29620 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #63539: <==uncertain_firing== 83870 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #64358: <==uncertain_firing== 14551 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #84159: <==negation-removal== 83870 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #84500: <==uncertain_firing== 79951 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #12071: <==closure== 76748 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #52375: <==closure== 90590 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #58484: <==closure== 65499 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #65499: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #76748: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #90590: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #12760: <==negation-removal== 12071 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #22348: <==uncertain_firing== 90590 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #24666: <==negation-removal== 76748 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #28848: <==uncertain_firing== 52375 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #34979: <==negation-removal== 90590 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #39705: <==uncertain_firing== 76748 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #56903: <==negation-removal== 65499 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #63355: <==negation-removal== 58484 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #70254: <==uncertain_firing== 12071 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #70765: <==negation-removal== 52375 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #71893: <==uncertain_firing== 58484 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #90384: <==uncertain_firing== 65499 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #12071: <==closure== 76748 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #52375: <==closure== 90590 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #58484: <==closure== 65499 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #65499: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #76748: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #90590: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #12760: <==negation-removal== 12071 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #22348: <==uncertain_firing== 90590 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #24666: <==negation-removal== 76748 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #28848: <==uncertain_firing== 52375 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #34979: <==negation-removal== 90590 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #39705: <==uncertain_firing== 76748 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #56903: <==negation-removal== 65499 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #63355: <==negation-removal== 58484 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #70254: <==uncertain_firing== 12071 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #70765: <==negation-removal== 52375 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #71893: <==uncertain_firing== 58484 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #90384: <==uncertain_firing== 65499 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #12071: <==closure== 76748 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #52375: <==closure== 90590 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #58484: <==closure== 65499 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #65499: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #76748: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #90590: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #12760: <==negation-removal== 12071 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #22348: <==uncertain_firing== 90590 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #24666: <==negation-removal== 76748 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #28848: <==uncertain_firing== 52375 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #34979: <==negation-removal== 90590 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #39705: <==uncertain_firing== 76748 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #56903: <==negation-removal== 65499 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #63355: <==negation-removal== 58484 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #70254: <==uncertain_firing== 12071 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #70765: <==negation-removal== 52375 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #71893: <==uncertain_firing== 58484 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #90384: <==uncertain_firing== 65499 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #31890: <==closure== 50099 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #46731: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #50099: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #58967: <==closure== 46731 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #76543: <==closure== 77618 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #77618: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #16037: <==uncertain_firing== 31890 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #29588: <==uncertain_firing== 77618 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #34437: <==negation-removal== 31890 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #38070: <==negation-removal== 77618 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #40112: <==uncertain_firing== 46731 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #46943: <==uncertain_firing== 58967 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #71378: <==negation-removal== 76543 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #72662: <==negation-removal== 46731 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #73336: <==negation-removal== 58967 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #74005: <==negation-removal== 50099 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #79832: <==uncertain_firing== 76543 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #90452: <==uncertain_firing== 50099 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #31890: <==closure== 50099 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #46731: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #50099: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #58967: <==closure== 46731 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #76543: <==closure== 77618 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #77618: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #16037: <==uncertain_firing== 31890 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #29588: <==uncertain_firing== 77618 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #34437: <==negation-removal== 31890 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #38070: <==negation-removal== 77618 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #40112: <==uncertain_firing== 46731 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #46943: <==uncertain_firing== 58967 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #71378: <==negation-removal== 76543 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #72662: <==negation-removal== 46731 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #73336: <==negation-removal== 58967 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #74005: <==negation-removal== 50099 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #79832: <==uncertain_firing== 76543 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #90452: <==uncertain_firing== 50099 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #31890: <==closure== 50099 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #46731: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #50099: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #58967: <==closure== 46731 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #76543: <==closure== 77618 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #77618: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #16037: <==uncertain_firing== 31890 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #29588: <==uncertain_firing== 77618 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #34437: <==negation-removal== 31890 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #38070: <==negation-removal== 77618 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #40112: <==uncertain_firing== 46731 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #46943: <==uncertain_firing== 58967 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #71378: <==negation-removal== 76543 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #72662: <==negation-removal== 46731 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #73336: <==negation-removal== 58967 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #74005: <==negation-removal== 50099 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #79832: <==uncertain_firing== 76543 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #90452: <==uncertain_firing== 50099 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #46811: <==closure== 72926 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #51415: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #72926: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #73626: <==closure== 86026 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #86026: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #92418: <==closure== 51415 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #16401: <==uncertain_firing== 86026 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #16992: <==negation-removal== 73626 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #24858: <==negation-removal== 51415 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #25012: <==uncertain_firing== 73626 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #30313: <==negation-removal== 46811 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #37751: <==uncertain_firing== 46811 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #45636: <==uncertain_firing== 51415 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #54300: <==negation-removal== 72926 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #66403: <==negation-removal== 92418 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #69982: <==uncertain_firing== 92418 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #88575: <==uncertain_firing== 72926 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #89358: <==negation-removal== 86026 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #46811: <==closure== 72926 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #51415: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #72926: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #73626: <==closure== 86026 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #86026: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #92418: <==closure== 51415 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #16401: <==uncertain_firing== 86026 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #16992: <==negation-removal== 73626 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #24858: <==negation-removal== 51415 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #25012: <==uncertain_firing== 73626 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #30313: <==negation-removal== 46811 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #37751: <==uncertain_firing== 46811 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #45636: <==uncertain_firing== 51415 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #54300: <==negation-removal== 72926 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #66403: <==negation-removal== 92418 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #69982: <==uncertain_firing== 92418 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #88575: <==uncertain_firing== 72926 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #89358: <==negation-removal== 86026 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #46811: <==closure== 72926 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #51415: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #72926: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #73626: <==closure== 86026 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #86026: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #92418: <==closure== 51415 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #16401: <==uncertain_firing== 86026 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #16992: <==negation-removal== 73626 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #24858: <==negation-removal== 51415 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #25012: <==uncertain_firing== 73626 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #30313: <==negation-removal== 46811 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #37751: <==uncertain_firing== 46811 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #45636: <==uncertain_firing== 51415 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #54300: <==negation-removal== 72926 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #66403: <==negation-removal== 92418 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #69982: <==uncertain_firing== 92418 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #88575: <==uncertain_firing== 72926 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #89358: <==negation-removal== 86026 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #26245: <==closure== 51051 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #27465: <==closure== 56995 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #41288: <==closure== 59276 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #51051: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #56995: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #59276: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #13608: <==negation-removal== 59276 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #18441: <==negation-removal== 56995 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #24227: <==negation-removal== 51051 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #31647: <==uncertain_firing== 59276 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #35718: <==uncertain_firing== 56995 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #46197: <==negation-removal== 41288 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #54276: <==uncertain_firing== 41288 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #60546: <==negation-removal== 26245 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #69787: <==uncertain_firing== 27465 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #71181: <==negation-removal== 27465 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #82265: <==uncertain_firing== 51051 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #89480: <==uncertain_firing== 26245 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #26245: <==closure== 51051 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #27465: <==closure== 56995 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #41288: <==closure== 59276 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #51051: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #56995: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #59276: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #13608: <==negation-removal== 59276 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #18441: <==negation-removal== 56995 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #24227: <==negation-removal== 51051 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #31647: <==uncertain_firing== 59276 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #35718: <==uncertain_firing== 56995 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #46197: <==negation-removal== 41288 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #54276: <==uncertain_firing== 41288 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #60546: <==negation-removal== 26245 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #69787: <==uncertain_firing== 27465 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #71181: <==negation-removal== 27465 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #82265: <==uncertain_firing== 51051 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #89480: <==uncertain_firing== 26245 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #26245: <==closure== 51051 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #27465: <==closure== 56995 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #41288: <==closure== 59276 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #51051: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #56995: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #59276: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #13608: <==negation-removal== 59276 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #18441: <==negation-removal== 56995 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #24227: <==negation-removal== 51051 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #31647: <==uncertain_firing== 59276 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #35718: <==uncertain_firing== 56995 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #46197: <==negation-removal== 41288 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #54276: <==uncertain_firing== 41288 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #60546: <==negation-removal== 26245 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #69787: <==uncertain_firing== 27465 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #71181: <==negation-removal== 27465 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #82265: <==uncertain_firing== 51051 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #89480: <==uncertain_firing== 26245 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #19573: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #50754: <==closure== 19573 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #57726: <==closure== 58999 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #58999: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #59000: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #91635: <==closure== 59000 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #16130: <==uncertain_firing== 50754 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #22202: <==uncertain_firing== 19573 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #24851: <==uncertain_firing== 59000 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #28299: <==uncertain_firing== 57726 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #30514: <==negation-removal== 58999 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #38493: <==uncertain_firing== 91635 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #47426: <==negation-removal== 19573 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #52491: <==negation-removal== 57726 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #58658: <==negation-removal== 59000 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #62107: <==negation-removal== 91635 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #62891: <==negation-removal== 50754 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #67448: <==uncertain_firing== 58999 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #19573: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #50754: <==closure== 19573 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #57726: <==closure== 58999 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #58999: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #59000: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #91635: <==closure== 59000 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #16130: <==uncertain_firing== 50754 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #22202: <==uncertain_firing== 19573 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #24851: <==uncertain_firing== 59000 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #28299: <==uncertain_firing== 57726 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #30514: <==negation-removal== 58999 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #38493: <==uncertain_firing== 91635 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #47426: <==negation-removal== 19573 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #52491: <==negation-removal== 57726 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #58658: <==negation-removal== 59000 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #62107: <==negation-removal== 91635 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #62891: <==negation-removal== 50754 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #67448: <==uncertain_firing== 58999 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #19573: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #50754: <==closure== 19573 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #57726: <==closure== 58999 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #58999: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #59000: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #91635: <==closure== 59000 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #16130: <==uncertain_firing== 50754 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #22202: <==uncertain_firing== 19573 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #24851: <==uncertain_firing== 59000 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #28299: <==uncertain_firing== 57726 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #30514: <==negation-removal== 58999 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #38493: <==uncertain_firing== 91635 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #47426: <==negation-removal== 19573 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #52491: <==negation-removal== 57726 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #58658: <==negation-removal== 59000 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #62107: <==negation-removal== 91635 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #62891: <==negation-removal== 50754 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #67448: <==uncertain_firing== 58999 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #15526: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #35766: <==closure== 15526 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #43292: <==closure== 75661 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #43750: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #75661: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #75736: <==closure== 43750 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #20465: <==negation-removal== 75661 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #36928: <==uncertain_firing== 15526 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #44485: <==negation-removal== 43292 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #60190: <==uncertain_firing== 75736 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #69286: <==uncertain_firing== 43750 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #70774: <==negation-removal== 35766 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #77556: <==negation-removal== 75736 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #80218: <==negation-removal== 43750 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #81320: <==uncertain_firing== 43292 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #81355: <==uncertain_firing== 75661 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #89013: <==negation-removal== 15526 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #91946: <==uncertain_firing== 35766 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #15526: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #35766: <==closure== 15526 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #43292: <==closure== 75661 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #43750: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #75661: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #75736: <==closure== 43750 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #20465: <==negation-removal== 75661 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #36928: <==uncertain_firing== 15526 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #44485: <==negation-removal== 43292 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #60190: <==uncertain_firing== 75736 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #69286: <==uncertain_firing== 43750 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #70774: <==negation-removal== 35766 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #77556: <==negation-removal== 75736 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #80218: <==negation-removal== 43750 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #81320: <==uncertain_firing== 43292 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #81355: <==uncertain_firing== 75661 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #89013: <==negation-removal== 15526 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #91946: <==uncertain_firing== 35766 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #15526: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #35766: <==closure== 15526 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #43292: <==closure== 75661 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #43750: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #75661: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #75736: <==closure== 43750 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #20465: <==negation-removal== 75661 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #36928: <==uncertain_firing== 15526 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #44485: <==negation-removal== 43292 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #60190: <==uncertain_firing== 75736 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #69286: <==uncertain_firing== 43750 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #70774: <==negation-removal== 35766 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #77556: <==negation-removal== 75736 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #80218: <==negation-removal== 43750 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #81320: <==uncertain_firing== 43292 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #81355: <==uncertain_firing== 75661 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #89013: <==negation-removal== 15526 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #91946: <==uncertain_firing== 35766 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #20894: <==closure== 95989 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #23646: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #33509: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #56617: <==closure== 33509 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #65480: <==closure== 23646 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #95989: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #16713: <==negation-removal== 20894 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #23196: <==negation-removal== 33509 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #36157: <==negation-removal== 65480 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #61352: <==uncertain_firing== 65480 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #62480: <==negation-removal== 23646 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #64700: <==uncertain_firing== 23646 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #66820: <==uncertain_firing== 95989 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #69639: <==negation-removal== 56617 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #79178: <==uncertain_firing== 33509 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #81150: <==uncertain_firing== 56617 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #86288: <==negation-removal== 95989 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #91473: <==uncertain_firing== 20894 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #20894: <==closure== 95989 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #23646: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #33509: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #56617: <==closure== 33509 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #65480: <==closure== 23646 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #95989: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #16713: <==negation-removal== 20894 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #23196: <==negation-removal== 33509 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #36157: <==negation-removal== 65480 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #61352: <==uncertain_firing== 65480 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #62480: <==negation-removal== 23646 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #64700: <==uncertain_firing== 23646 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #66820: <==uncertain_firing== 95989 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #69639: <==negation-removal== 56617 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #79178: <==uncertain_firing== 33509 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #81150: <==uncertain_firing== 56617 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #86288: <==negation-removal== 95989 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #91473: <==uncertain_firing== 20894 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #20894: <==closure== 95989 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #23646: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #33509: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #56617: <==closure== 33509 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #65480: <==closure== 23646 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #95989: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #16713: <==negation-removal== 20894 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #23196: <==negation-removal== 33509 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #36157: <==negation-removal== 65480 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #61352: <==uncertain_firing== 65480 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #62480: <==negation-removal== 23646 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #64700: <==uncertain_firing== 23646 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #66820: <==uncertain_firing== 95989 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #69639: <==negation-removal== 56617 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #79178: <==uncertain_firing== 33509 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #81150: <==uncertain_firing== 56617 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #86288: <==negation-removal== 95989 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #91473: <==uncertain_firing== 20894 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #24164: <==closure== 45349 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #31369: <==closure== 69897 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #34899: <==closure== 83016 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #45349: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #69897: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #83016: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #14287: <==uncertain_firing== 83016 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #30514: <==uncertain_firing== 24164 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #30716: <==uncertain_firing== 34899 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #30952: <==uncertain_firing== 31369 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #33366: <==negation-removal== 24164 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #33659: <==negation-removal== 31369 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #34660: <==negation-removal== 45349 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #35706: <==negation-removal== 69897 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #50364: <==negation-removal== 34899 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #75134: <==uncertain_firing== 45349 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #78789: <==uncertain_firing== 69897 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #86679: <==negation-removal== 83016 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #24164: <==closure== 45349 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #31369: <==closure== 69897 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #34899: <==closure== 83016 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #45349: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #69897: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #83016: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #14287: <==uncertain_firing== 83016 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #30514: <==uncertain_firing== 24164 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #30716: <==uncertain_firing== 34899 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #30952: <==uncertain_firing== 31369 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #33366: <==negation-removal== 24164 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #33659: <==negation-removal== 31369 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #34660: <==negation-removal== 45349 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #35706: <==negation-removal== 69897 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #50364: <==negation-removal== 34899 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #75134: <==uncertain_firing== 45349 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #78789: <==uncertain_firing== 69897 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #86679: <==negation-removal== 83016 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #24164: <==closure== 45349 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #31369: <==closure== 69897 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #34899: <==closure== 83016 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #45349: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #69897: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #83016: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #14287: <==uncertain_firing== 83016 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #30514: <==uncertain_firing== 24164 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #30716: <==uncertain_firing== 34899 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #30952: <==uncertain_firing== 31369 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #33366: <==negation-removal== 24164 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #33659: <==negation-removal== 31369 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #34660: <==negation-removal== 45349 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #35706: <==negation-removal== 69897 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #50364: <==negation-removal== 34899 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #75134: <==uncertain_firing== 45349 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #78789: <==uncertain_firing== 69897 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #86679: <==negation-removal== 83016 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action comm_p10_a_s
        :precondition (and (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #12851: <==closure== 64314 (pos)
                    (Pc_survivorat_s_p10)

                    ; #46750: origin
                    (Ba_survivorat_s_p10)

                    ; #51676: <==closure== 46750 (pos)
                    (Pa_survivorat_s_p10)

                    ; #55299: origin
                    (Bb_survivorat_s_p10)

                    ; #64314: origin
                    (Bc_survivorat_s_p10)

                    ; #81399: <==closure== 55299 (pos)
                    (Pb_survivorat_s_p10)

                    ; #51378: <==negation-removal== 12851 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #53395: <==negation-removal== 46750 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #70621: <==negation-removal== 55299 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #83961: <==negation-removal== 51676 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #84304: <==negation-removal== 81399 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #91006: <==negation-removal== 64314 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (Pb_survivorat_s_p10)
                           (at_b_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #12851: <==closure== 64314 (pos)
                    (Pc_survivorat_s_p10)

                    ; #46750: origin
                    (Ba_survivorat_s_p10)

                    ; #51676: <==closure== 46750 (pos)
                    (Pa_survivorat_s_p10)

                    ; #55299: origin
                    (Bb_survivorat_s_p10)

                    ; #64314: origin
                    (Bc_survivorat_s_p10)

                    ; #81399: <==closure== 55299 (pos)
                    (Pb_survivorat_s_p10)

                    ; #51378: <==negation-removal== 12851 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #53395: <==negation-removal== 46750 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #70621: <==negation-removal== 55299 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #83961: <==negation-removal== 51676 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #84304: <==negation-removal== 81399 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #91006: <==negation-removal== 64314 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #12851: <==closure== 64314 (pos)
                    (Pc_survivorat_s_p10)

                    ; #46750: origin
                    (Ba_survivorat_s_p10)

                    ; #51676: <==closure== 46750 (pos)
                    (Pa_survivorat_s_p10)

                    ; #55299: origin
                    (Bb_survivorat_s_p10)

                    ; #64314: origin
                    (Bc_survivorat_s_p10)

                    ; #81399: <==closure== 55299 (pos)
                    (Pb_survivorat_s_p10)

                    ; #51378: <==negation-removal== 12851 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #53395: <==negation-removal== 46750 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #70621: <==negation-removal== 55299 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #83961: <==negation-removal== 51676 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #84304: <==negation-removal== 81399 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #91006: <==negation-removal== 64314 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #35932: origin
                    (Ba_survivorat_s_p11)

                    ; #38733: origin
                    (Bb_survivorat_s_p11)

                    ; #46416: <==closure== 46600 (pos)
                    (Pc_survivorat_s_p11)

                    ; #46600: origin
                    (Bc_survivorat_s_p11)

                    ; #47626: <==closure== 35932 (pos)
                    (Pa_survivorat_s_p11)

                    ; #77585: <==closure== 38733 (pos)
                    (Pb_survivorat_s_p11)

                    ; #15336: <==negation-removal== 47626 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #24746: <==negation-removal== 46600 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #37485: <==negation-removal== 77585 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #45854: <==negation-removal== 38733 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #88443: <==negation-removal== 35932 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #88835: <==negation-removal== 46416 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (at_b_p11)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #35932: origin
                    (Ba_survivorat_s_p11)

                    ; #38733: origin
                    (Bb_survivorat_s_p11)

                    ; #46416: <==closure== 46600 (pos)
                    (Pc_survivorat_s_p11)

                    ; #46600: origin
                    (Bc_survivorat_s_p11)

                    ; #47626: <==closure== 35932 (pos)
                    (Pa_survivorat_s_p11)

                    ; #77585: <==closure== 38733 (pos)
                    (Pb_survivorat_s_p11)

                    ; #15336: <==negation-removal== 47626 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #24746: <==negation-removal== 46600 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #37485: <==negation-removal== 77585 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #45854: <==negation-removal== 38733 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #88443: <==negation-removal== 35932 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #88835: <==negation-removal== 46416 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #35932: origin
                    (Ba_survivorat_s_p11)

                    ; #38733: origin
                    (Bb_survivorat_s_p11)

                    ; #46416: <==closure== 46600 (pos)
                    (Pc_survivorat_s_p11)

                    ; #46600: origin
                    (Bc_survivorat_s_p11)

                    ; #47626: <==closure== 35932 (pos)
                    (Pa_survivorat_s_p11)

                    ; #77585: <==closure== 38733 (pos)
                    (Pb_survivorat_s_p11)

                    ; #15336: <==negation-removal== 47626 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #24746: <==negation-removal== 46600 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #37485: <==negation-removal== 77585 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #45854: <==negation-removal== 38733 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #88443: <==negation-removal== 35932 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #88835: <==negation-removal== 46416 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #53390: <==closure== 67227 (pos)
                    (Pa_survivorat_s_p12)

                    ; #55470: <==closure== 68969 (pos)
                    (Pc_survivorat_s_p12)

                    ; #57088: <==closure== 64377 (pos)
                    (Pb_survivorat_s_p12)

                    ; #64377: origin
                    (Bb_survivorat_s_p12)

                    ; #67227: origin
                    (Ba_survivorat_s_p12)

                    ; #68969: origin
                    (Bc_survivorat_s_p12)

                    ; #10443: <==negation-removal== 57088 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #18420: <==negation-removal== 55470 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #22194: <==negation-removal== 64377 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #40028: <==negation-removal== 67227 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #72213: <==negation-removal== 68969 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #88746: <==negation-removal== 53390 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #53390: <==closure== 67227 (pos)
                    (Pa_survivorat_s_p12)

                    ; #55470: <==closure== 68969 (pos)
                    (Pc_survivorat_s_p12)

                    ; #57088: <==closure== 64377 (pos)
                    (Pb_survivorat_s_p12)

                    ; #64377: origin
                    (Bb_survivorat_s_p12)

                    ; #67227: origin
                    (Ba_survivorat_s_p12)

                    ; #68969: origin
                    (Bc_survivorat_s_p12)

                    ; #10443: <==negation-removal== 57088 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #18420: <==negation-removal== 55470 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #22194: <==negation-removal== 64377 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #40028: <==negation-removal== 67227 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #72213: <==negation-removal== 68969 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #88746: <==negation-removal== 53390 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #53390: <==closure== 67227 (pos)
                    (Pa_survivorat_s_p12)

                    ; #55470: <==closure== 68969 (pos)
                    (Pc_survivorat_s_p12)

                    ; #57088: <==closure== 64377 (pos)
                    (Pb_survivorat_s_p12)

                    ; #64377: origin
                    (Bb_survivorat_s_p12)

                    ; #67227: origin
                    (Ba_survivorat_s_p12)

                    ; #68969: origin
                    (Bc_survivorat_s_p12)

                    ; #10443: <==negation-removal== 57088 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #18420: <==negation-removal== 55470 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #22194: <==negation-removal== 64377 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #40028: <==negation-removal== 67227 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #72213: <==negation-removal== 68969 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #88746: <==negation-removal== 53390 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #21639: origin
                    (Ba_survivorat_s_p1)

                    ; #23123: <==closure== 21639 (pos)
                    (Pa_survivorat_s_p1)

                    ; #53772: origin
                    (Bc_survivorat_s_p1)

                    ; #71722: origin
                    (Bb_survivorat_s_p1)

                    ; #79320: <==closure== 71722 (pos)
                    (Pb_survivorat_s_p1)

                    ; #87939: <==closure== 53772 (pos)
                    (Pc_survivorat_s_p1)

                    ; #18639: <==negation-removal== 79320 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #25332: <==negation-removal== 21639 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #54051: <==negation-removal== 71722 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #54235: <==negation-removal== 23123 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #58047: <==negation-removal== 53772 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #59799: <==negation-removal== 87939 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #21639: origin
                    (Ba_survivorat_s_p1)

                    ; #23123: <==closure== 21639 (pos)
                    (Pa_survivorat_s_p1)

                    ; #53772: origin
                    (Bc_survivorat_s_p1)

                    ; #71722: origin
                    (Bb_survivorat_s_p1)

                    ; #79320: <==closure== 71722 (pos)
                    (Pb_survivorat_s_p1)

                    ; #87939: <==closure== 53772 (pos)
                    (Pc_survivorat_s_p1)

                    ; #18639: <==negation-removal== 79320 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #25332: <==negation-removal== 21639 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #54051: <==negation-removal== 71722 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #54235: <==negation-removal== 23123 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #58047: <==negation-removal== 53772 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #59799: <==negation-removal== 87939 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #21639: origin
                    (Ba_survivorat_s_p1)

                    ; #23123: <==closure== 21639 (pos)
                    (Pa_survivorat_s_p1)

                    ; #53772: origin
                    (Bc_survivorat_s_p1)

                    ; #71722: origin
                    (Bb_survivorat_s_p1)

                    ; #79320: <==closure== 71722 (pos)
                    (Pb_survivorat_s_p1)

                    ; #87939: <==closure== 53772 (pos)
                    (Pc_survivorat_s_p1)

                    ; #18639: <==negation-removal== 79320 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #25332: <==negation-removal== 21639 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #54051: <==negation-removal== 71722 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #54235: <==negation-removal== 23123 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #58047: <==negation-removal== 53772 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #59799: <==negation-removal== 87939 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #20860: origin
                    (Bb_survivorat_s_p2)

                    ; #40606: <==closure== 20860 (pos)
                    (Pb_survivorat_s_p2)

                    ; #55703: origin
                    (Ba_survivorat_s_p2)

                    ; #67915: <==closure== 84542 (pos)
                    (Pc_survivorat_s_p2)

                    ; #84542: origin
                    (Bc_survivorat_s_p2)

                    ; #91610: <==closure== 55703 (pos)
                    (Pa_survivorat_s_p2)

                    ; #17333: <==negation-removal== 55703 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #35287: <==negation-removal== 67915 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #38827: <==negation-removal== 20860 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #40735: <==negation-removal== 40606 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #55979: <==negation-removal== 91610 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #88531: <==negation-removal== 84542 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #20860: origin
                    (Bb_survivorat_s_p2)

                    ; #40606: <==closure== 20860 (pos)
                    (Pb_survivorat_s_p2)

                    ; #55703: origin
                    (Ba_survivorat_s_p2)

                    ; #67915: <==closure== 84542 (pos)
                    (Pc_survivorat_s_p2)

                    ; #84542: origin
                    (Bc_survivorat_s_p2)

                    ; #91610: <==closure== 55703 (pos)
                    (Pa_survivorat_s_p2)

                    ; #17333: <==negation-removal== 55703 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #35287: <==negation-removal== 67915 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #38827: <==negation-removal== 20860 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #40735: <==negation-removal== 40606 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #55979: <==negation-removal== 91610 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #88531: <==negation-removal== 84542 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #20860: origin
                    (Bb_survivorat_s_p2)

                    ; #40606: <==closure== 20860 (pos)
                    (Pb_survivorat_s_p2)

                    ; #55703: origin
                    (Ba_survivorat_s_p2)

                    ; #67915: <==closure== 84542 (pos)
                    (Pc_survivorat_s_p2)

                    ; #84542: origin
                    (Bc_survivorat_s_p2)

                    ; #91610: <==closure== 55703 (pos)
                    (Pa_survivorat_s_p2)

                    ; #17333: <==negation-removal== 55703 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #35287: <==negation-removal== 67915 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #38827: <==negation-removal== 20860 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #40735: <==negation-removal== 40606 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #55979: <==negation-removal== 91610 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #88531: <==negation-removal== 84542 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #35468: <==closure== 82553 (pos)
                    (Pa_survivorat_s_p3)

                    ; #46819: origin
                    (Bb_survivorat_s_p3)

                    ; #55315: origin
                    (Bc_survivorat_s_p3)

                    ; #79974: <==closure== 55315 (pos)
                    (Pc_survivorat_s_p3)

                    ; #82553: origin
                    (Ba_survivorat_s_p3)

                    ; #88911: <==closure== 46819 (pos)
                    (Pb_survivorat_s_p3)

                    ; #22733: <==negation-removal== 46819 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #37720: <==negation-removal== 55315 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #48112: <==negation-removal== 82553 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #62542: <==negation-removal== 79974 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #73466: <==negation-removal== 88911 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #79095: <==negation-removal== 35468 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #35468: <==closure== 82553 (pos)
                    (Pa_survivorat_s_p3)

                    ; #46819: origin
                    (Bb_survivorat_s_p3)

                    ; #55315: origin
                    (Bc_survivorat_s_p3)

                    ; #79974: <==closure== 55315 (pos)
                    (Pc_survivorat_s_p3)

                    ; #82553: origin
                    (Ba_survivorat_s_p3)

                    ; #88911: <==closure== 46819 (pos)
                    (Pb_survivorat_s_p3)

                    ; #22733: <==negation-removal== 46819 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #37720: <==negation-removal== 55315 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #48112: <==negation-removal== 82553 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #62542: <==negation-removal== 79974 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #73466: <==negation-removal== 88911 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #79095: <==negation-removal== 35468 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #35468: <==closure== 82553 (pos)
                    (Pa_survivorat_s_p3)

                    ; #46819: origin
                    (Bb_survivorat_s_p3)

                    ; #55315: origin
                    (Bc_survivorat_s_p3)

                    ; #79974: <==closure== 55315 (pos)
                    (Pc_survivorat_s_p3)

                    ; #82553: origin
                    (Ba_survivorat_s_p3)

                    ; #88911: <==closure== 46819 (pos)
                    (Pb_survivorat_s_p3)

                    ; #22733: <==negation-removal== 46819 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #37720: <==negation-removal== 55315 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #48112: <==negation-removal== 82553 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #62542: <==negation-removal== 79974 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #73466: <==negation-removal== 88911 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #79095: <==negation-removal== 35468 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #16412: origin
                    (Ba_survivorat_s_p4)

                    ; #38311: <==closure== 67562 (pos)
                    (Pb_survivorat_s_p4)

                    ; #48488: <==closure== 54997 (pos)
                    (Pc_survivorat_s_p4)

                    ; #54997: origin
                    (Bc_survivorat_s_p4)

                    ; #59396: <==closure== 16412 (pos)
                    (Pa_survivorat_s_p4)

                    ; #67562: origin
                    (Bb_survivorat_s_p4)

                    ; #22265: <==negation-removal== 16412 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #35170: <==negation-removal== 54997 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #40649: <==negation-removal== 38311 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #54078: <==negation-removal== 59396 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #75918: <==negation-removal== 67562 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #90359: <==negation-removal== 48488 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #16412: origin
                    (Ba_survivorat_s_p4)

                    ; #38311: <==closure== 67562 (pos)
                    (Pb_survivorat_s_p4)

                    ; #48488: <==closure== 54997 (pos)
                    (Pc_survivorat_s_p4)

                    ; #54997: origin
                    (Bc_survivorat_s_p4)

                    ; #59396: <==closure== 16412 (pos)
                    (Pa_survivorat_s_p4)

                    ; #67562: origin
                    (Bb_survivorat_s_p4)

                    ; #22265: <==negation-removal== 16412 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #35170: <==negation-removal== 54997 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #40649: <==negation-removal== 38311 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #54078: <==negation-removal== 59396 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #75918: <==negation-removal== 67562 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #90359: <==negation-removal== 48488 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #16412: origin
                    (Ba_survivorat_s_p4)

                    ; #38311: <==closure== 67562 (pos)
                    (Pb_survivorat_s_p4)

                    ; #48488: <==closure== 54997 (pos)
                    (Pc_survivorat_s_p4)

                    ; #54997: origin
                    (Bc_survivorat_s_p4)

                    ; #59396: <==closure== 16412 (pos)
                    (Pa_survivorat_s_p4)

                    ; #67562: origin
                    (Bb_survivorat_s_p4)

                    ; #22265: <==negation-removal== 16412 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #35170: <==negation-removal== 54997 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #40649: <==negation-removal== 38311 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #54078: <==negation-removal== 59396 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #75918: <==negation-removal== 67562 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #90359: <==negation-removal== 48488 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #14682: <==closure== 54435 (pos)
                    (Pa_survivorat_s_p5)

                    ; #16893: <==closure== 62779 (pos)
                    (Pb_survivorat_s_p5)

                    ; #20036: <==closure== 45160 (pos)
                    (Pc_survivorat_s_p5)

                    ; #45160: origin
                    (Bc_survivorat_s_p5)

                    ; #54435: origin
                    (Ba_survivorat_s_p5)

                    ; #62779: origin
                    (Bb_survivorat_s_p5)

                    ; #28735: <==negation-removal== 14682 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #55971: <==negation-removal== 45160 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #56582: <==negation-removal== 20036 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #57667: <==negation-removal== 62779 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #66558: <==negation-removal== 54435 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #79749: <==negation-removal== 16893 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #14682: <==closure== 54435 (pos)
                    (Pa_survivorat_s_p5)

                    ; #16893: <==closure== 62779 (pos)
                    (Pb_survivorat_s_p5)

                    ; #20036: <==closure== 45160 (pos)
                    (Pc_survivorat_s_p5)

                    ; #45160: origin
                    (Bc_survivorat_s_p5)

                    ; #54435: origin
                    (Ba_survivorat_s_p5)

                    ; #62779: origin
                    (Bb_survivorat_s_p5)

                    ; #28735: <==negation-removal== 14682 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #55971: <==negation-removal== 45160 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #56582: <==negation-removal== 20036 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #57667: <==negation-removal== 62779 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #66558: <==negation-removal== 54435 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #79749: <==negation-removal== 16893 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #14682: <==closure== 54435 (pos)
                    (Pa_survivorat_s_p5)

                    ; #16893: <==closure== 62779 (pos)
                    (Pb_survivorat_s_p5)

                    ; #20036: <==closure== 45160 (pos)
                    (Pc_survivorat_s_p5)

                    ; #45160: origin
                    (Bc_survivorat_s_p5)

                    ; #54435: origin
                    (Ba_survivorat_s_p5)

                    ; #62779: origin
                    (Bb_survivorat_s_p5)

                    ; #28735: <==negation-removal== 14682 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #55971: <==negation-removal== 45160 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #56582: <==negation-removal== 20036 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #57667: <==negation-removal== 62779 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #66558: <==negation-removal== 54435 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #79749: <==negation-removal== 16893 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #50011: origin
                    (Bb_survivorat_s_p6)

                    ; #62586: <==closure== 85456 (pos)
                    (Pc_survivorat_s_p6)

                    ; #63016: origin
                    (Ba_survivorat_s_p6)

                    ; #77800: <==closure== 50011 (pos)
                    (Pb_survivorat_s_p6)

                    ; #85456: origin
                    (Bc_survivorat_s_p6)

                    ; #89752: <==closure== 63016 (pos)
                    (Pa_survivorat_s_p6)

                    ; #21239: <==negation-removal== 77800 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #21498: <==negation-removal== 89752 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #43172: <==negation-removal== 63016 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #61813: <==negation-removal== 62586 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #65202: <==negation-removal== 50011 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #66490: <==negation-removal== 85456 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #50011: origin
                    (Bb_survivorat_s_p6)

                    ; #62586: <==closure== 85456 (pos)
                    (Pc_survivorat_s_p6)

                    ; #63016: origin
                    (Ba_survivorat_s_p6)

                    ; #77800: <==closure== 50011 (pos)
                    (Pb_survivorat_s_p6)

                    ; #85456: origin
                    (Bc_survivorat_s_p6)

                    ; #89752: <==closure== 63016 (pos)
                    (Pa_survivorat_s_p6)

                    ; #21239: <==negation-removal== 77800 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #21498: <==negation-removal== 89752 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #43172: <==negation-removal== 63016 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #61813: <==negation-removal== 62586 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #65202: <==negation-removal== 50011 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #66490: <==negation-removal== 85456 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #50011: origin
                    (Bb_survivorat_s_p6)

                    ; #62586: <==closure== 85456 (pos)
                    (Pc_survivorat_s_p6)

                    ; #63016: origin
                    (Ba_survivorat_s_p6)

                    ; #77800: <==closure== 50011 (pos)
                    (Pb_survivorat_s_p6)

                    ; #85456: origin
                    (Bc_survivorat_s_p6)

                    ; #89752: <==closure== 63016 (pos)
                    (Pa_survivorat_s_p6)

                    ; #21239: <==negation-removal== 77800 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #21498: <==negation-removal== 89752 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #43172: <==negation-removal== 63016 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #61813: <==negation-removal== 62586 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #65202: <==negation-removal== 50011 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #66490: <==negation-removal== 85456 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #26467: <==closure== 58306 (pos)
                    (Pb_survivorat_s_p7)

                    ; #27138: origin
                    (Bc_survivorat_s_p7)

                    ; #54011: origin
                    (Ba_survivorat_s_p7)

                    ; #56423: <==closure== 54011 (pos)
                    (Pa_survivorat_s_p7)

                    ; #58306: origin
                    (Bb_survivorat_s_p7)

                    ; #74634: <==closure== 27138 (pos)
                    (Pc_survivorat_s_p7)

                    ; #22102: <==negation-removal== 56423 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #44982: <==negation-removal== 58306 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #51589: <==negation-removal== 27138 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #60375: <==negation-removal== 54011 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #79501: <==negation-removal== 26467 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #85609: <==negation-removal== 74634 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #26467: <==closure== 58306 (pos)
                    (Pb_survivorat_s_p7)

                    ; #27138: origin
                    (Bc_survivorat_s_p7)

                    ; #54011: origin
                    (Ba_survivorat_s_p7)

                    ; #56423: <==closure== 54011 (pos)
                    (Pa_survivorat_s_p7)

                    ; #58306: origin
                    (Bb_survivorat_s_p7)

                    ; #74634: <==closure== 27138 (pos)
                    (Pc_survivorat_s_p7)

                    ; #22102: <==negation-removal== 56423 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #44982: <==negation-removal== 58306 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #51589: <==negation-removal== 27138 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #60375: <==negation-removal== 54011 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #79501: <==negation-removal== 26467 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #85609: <==negation-removal== 74634 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #26467: <==closure== 58306 (pos)
                    (Pb_survivorat_s_p7)

                    ; #27138: origin
                    (Bc_survivorat_s_p7)

                    ; #54011: origin
                    (Ba_survivorat_s_p7)

                    ; #56423: <==closure== 54011 (pos)
                    (Pa_survivorat_s_p7)

                    ; #58306: origin
                    (Bb_survivorat_s_p7)

                    ; #74634: <==closure== 27138 (pos)
                    (Pc_survivorat_s_p7)

                    ; #22102: <==negation-removal== 56423 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #44982: <==negation-removal== 58306 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #51589: <==negation-removal== 27138 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #60375: <==negation-removal== 54011 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #79501: <==negation-removal== 26467 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #85609: <==negation-removal== 74634 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #21005: <==closure== 77571 (pos)
                    (Pc_survivorat_s_p8)

                    ; #29418: <==closure== 35323 (pos)
                    (Pb_survivorat_s_p8)

                    ; #35323: origin
                    (Bb_survivorat_s_p8)

                    ; #44981: origin
                    (Ba_survivorat_s_p8)

                    ; #51200: <==closure== 44981 (pos)
                    (Pa_survivorat_s_p8)

                    ; #77571: origin
                    (Bc_survivorat_s_p8)

                    ; #16582: <==negation-removal== 77571 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #30576: <==negation-removal== 21005 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #32835: <==negation-removal== 29418 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #35324: <==negation-removal== 44981 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #45636: <==negation-removal== 35323 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #57793: <==negation-removal== 51200 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #21005: <==closure== 77571 (pos)
                    (Pc_survivorat_s_p8)

                    ; #29418: <==closure== 35323 (pos)
                    (Pb_survivorat_s_p8)

                    ; #35323: origin
                    (Bb_survivorat_s_p8)

                    ; #44981: origin
                    (Ba_survivorat_s_p8)

                    ; #51200: <==closure== 44981 (pos)
                    (Pa_survivorat_s_p8)

                    ; #77571: origin
                    (Bc_survivorat_s_p8)

                    ; #16582: <==negation-removal== 77571 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #30576: <==negation-removal== 21005 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #32835: <==negation-removal== 29418 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #35324: <==negation-removal== 44981 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #45636: <==negation-removal== 35323 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #57793: <==negation-removal== 51200 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #21005: <==closure== 77571 (pos)
                    (Pc_survivorat_s_p8)

                    ; #29418: <==closure== 35323 (pos)
                    (Pb_survivorat_s_p8)

                    ; #35323: origin
                    (Bb_survivorat_s_p8)

                    ; #44981: origin
                    (Ba_survivorat_s_p8)

                    ; #51200: <==closure== 44981 (pos)
                    (Pa_survivorat_s_p8)

                    ; #77571: origin
                    (Bc_survivorat_s_p8)

                    ; #16582: <==negation-removal== 77571 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #30576: <==negation-removal== 21005 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #32835: <==negation-removal== 29418 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #35324: <==negation-removal== 44981 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #45636: <==negation-removal== 35323 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #57793: <==negation-removal== 51200 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #14578: <==closure== 31410 (pos)
                    (Pa_survivorat_s_p9)

                    ; #31410: origin
                    (Ba_survivorat_s_p9)

                    ; #63614: <==closure== 82553 (pos)
                    (Pb_survivorat_s_p9)

                    ; #65827: origin
                    (Bc_survivorat_s_p9)

                    ; #76921: <==closure== 65827 (pos)
                    (Pc_survivorat_s_p9)

                    ; #82553: origin
                    (Bb_survivorat_s_p9)

                    ; #36950: <==negation-removal== 82553 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #56429: <==negation-removal== 76921 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #64745: <==negation-removal== 14578 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #73461: <==negation-removal== 63614 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #79849: <==negation-removal== 31410 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #91749: <==negation-removal== 65827 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #14578: <==closure== 31410 (pos)
                    (Pa_survivorat_s_p9)

                    ; #31410: origin
                    (Ba_survivorat_s_p9)

                    ; #63614: <==closure== 82553 (pos)
                    (Pb_survivorat_s_p9)

                    ; #65827: origin
                    (Bc_survivorat_s_p9)

                    ; #76921: <==closure== 65827 (pos)
                    (Pc_survivorat_s_p9)

                    ; #82553: origin
                    (Bb_survivorat_s_p9)

                    ; #36950: <==negation-removal== 82553 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #56429: <==negation-removal== 76921 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #64745: <==negation-removal== 14578 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #73461: <==negation-removal== 63614 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #79849: <==negation-removal== 31410 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #91749: <==negation-removal== 65827 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #14578: <==closure== 31410 (pos)
                    (Pa_survivorat_s_p9)

                    ; #31410: origin
                    (Ba_survivorat_s_p9)

                    ; #63614: <==closure== 82553 (pos)
                    (Pb_survivorat_s_p9)

                    ; #65827: origin
                    (Bc_survivorat_s_p9)

                    ; #76921: <==closure== 65827 (pos)
                    (Pc_survivorat_s_p9)

                    ; #82553: origin
                    (Bb_survivorat_s_p9)

                    ; #36950: <==negation-removal== 82553 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #56429: <==negation-removal== 76921 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #64745: <==negation-removal== 14578 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #73461: <==negation-removal== 63614 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #79849: <==negation-removal== 31410 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #91749: <==negation-removal== 65827 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (at_a_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #22304: origin
                    (at_a_p1)

                    ; #77055: origin
                    (not_at_a_p10)

                    ; #31293: <==negation-removal== 22304 (pos)
                    (not (not_at_a_p1))

                    ; #88249: <==negation-removal== 77055 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (at_a_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #77055: origin
                    (not_at_a_p10)

                    ; #88249: origin
                    (at_a_p10)

                    ; #77055: <==negation-removal== 88249 (pos)
                    (not (not_at_a_p10))

                    ; #88249: <==negation-removal== 77055 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #36951: origin
                    (at_a_p11)

                    ; #77055: origin
                    (not_at_a_p10)

                    ; #69983: <==negation-removal== 36951 (pos)
                    (not (not_at_a_p11))

                    ; #88249: <==negation-removal== 77055 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #66189: origin
                    (at_a_p12)

                    ; #77055: origin
                    (not_at_a_p10)

                    ; #42462: <==negation-removal== 66189 (pos)
                    (not (not_at_a_p12))

                    ; #88249: <==negation-removal== 77055 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #33270: origin
                    (at_a_p2)

                    ; #77055: origin
                    (not_at_a_p10)

                    ; #80863: <==negation-removal== 33270 (pos)
                    (not (not_at_a_p2))

                    ; #88249: <==negation-removal== 77055 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10))
        :effect (and
                    ; #13086: origin
                    (at_a_p3)

                    ; #77055: origin
                    (not_at_a_p10)

                    ; #50026: <==negation-removal== 13086 (pos)
                    (not (not_at_a_p3))

                    ; #88249: <==negation-removal== 77055 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10))
        :effect (and
                    ; #77055: origin
                    (not_at_a_p10)

                    ; #85960: origin
                    (at_a_p4)

                    ; #68869: <==negation-removal== 85960 (pos)
                    (not (not_at_a_p4))

                    ; #88249: <==negation-removal== 77055 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p5
        :precondition (and (at_a_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #71231: origin
                    (at_a_p5)

                    ; #77055: origin
                    (not_at_a_p10)

                    ; #82772: <==negation-removal== 71231 (pos)
                    (not (not_at_a_p5))

                    ; #88249: <==negation-removal== 77055 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10))
        :effect (and
                    ; #77055: origin
                    (not_at_a_p10)

                    ; #88930: origin
                    (at_a_p6)

                    ; #49099: <==negation-removal== 88930 (pos)
                    (not (not_at_a_p6))

                    ; #88249: <==negation-removal== 77055 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #14496: origin
                    (at_a_p7)

                    ; #77055: origin
                    (not_at_a_p10)

                    ; #21324: <==negation-removal== 14496 (pos)
                    (not (not_at_a_p7))

                    ; #88249: <==negation-removal== 77055 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10))
        :effect (and
                    ; #36277: origin
                    (at_a_p8)

                    ; #77055: origin
                    (not_at_a_p10)

                    ; #70668: <==negation-removal== 36277 (pos)
                    (not (not_at_a_p8))

                    ; #88249: <==negation-removal== 77055 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #69797: origin
                    (at_a_p9)

                    ; #77055: origin
                    (not_at_a_p10)

                    ; #30718: <==negation-removal== 69797 (pos)
                    (not (not_at_a_p9))

                    ; #88249: <==negation-removal== 77055 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11))
        :effect (and
                    ; #22304: origin
                    (at_a_p1)

                    ; #69983: origin
                    (not_at_a_p11)

                    ; #31293: <==negation-removal== 22304 (pos)
                    (not (not_at_a_p1))

                    ; #36951: <==negation-removal== 69983 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #69983: origin
                    (not_at_a_p11)

                    ; #88249: origin
                    (at_a_p10)

                    ; #36951: <==negation-removal== 69983 (pos)
                    (not (at_a_p11))

                    ; #77055: <==negation-removal== 88249 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_a_p11))
        :effect (and
                    ; #36951: origin
                    (at_a_p11)

                    ; #69983: origin
                    (not_at_a_p11)

                    ; #36951: <==negation-removal== 69983 (pos)
                    (not (at_a_p11))

                    ; #69983: <==negation-removal== 36951 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11))
        :effect (and
                    ; #66189: origin
                    (at_a_p12)

                    ; #69983: origin
                    (not_at_a_p11)

                    ; #36951: <==negation-removal== 69983 (pos)
                    (not (at_a_p11))

                    ; #42462: <==negation-removal== 66189 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_a_p11))
        :effect (and
                    ; #33270: origin
                    (at_a_p2)

                    ; #69983: origin
                    (not_at_a_p11)

                    ; #36951: <==negation-removal== 69983 (pos)
                    (not (at_a_p11))

                    ; #80863: <==negation-removal== 33270 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_a_p11))
        :effect (and
                    ; #13086: origin
                    (at_a_p3)

                    ; #69983: origin
                    (not_at_a_p11)

                    ; #36951: <==negation-removal== 69983 (pos)
                    (not (at_a_p11))

                    ; #50026: <==negation-removal== 13086 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11))
        :effect (and
                    ; #69983: origin
                    (not_at_a_p11)

                    ; #85960: origin
                    (at_a_p4)

                    ; #36951: <==negation-removal== 69983 (pos)
                    (not (at_a_p11))

                    ; #68869: <==negation-removal== 85960 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_a_p11))
        :effect (and
                    ; #69983: origin
                    (not_at_a_p11)

                    ; #71231: origin
                    (at_a_p5)

                    ; #36951: <==negation-removal== 69983 (pos)
                    (not (at_a_p11))

                    ; #82772: <==negation-removal== 71231 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_a_p11))
        :effect (and
                    ; #69983: origin
                    (not_at_a_p11)

                    ; #88930: origin
                    (at_a_p6)

                    ; #36951: <==negation-removal== 69983 (pos)
                    (not (at_a_p11))

                    ; #49099: <==negation-removal== 88930 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_a_p11))
        :effect (and
                    ; #14496: origin
                    (at_a_p7)

                    ; #69983: origin
                    (not_at_a_p11)

                    ; #21324: <==negation-removal== 14496 (pos)
                    (not (not_at_a_p7))

                    ; #36951: <==negation-removal== 69983 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11))
        :effect (and
                    ; #36277: origin
                    (at_a_p8)

                    ; #69983: origin
                    (not_at_a_p11)

                    ; #36951: <==negation-removal== 69983 (pos)
                    (not (at_a_p11))

                    ; #70668: <==negation-removal== 36277 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11))
        :effect (and
                    ; #69797: origin
                    (at_a_p9)

                    ; #69983: origin
                    (not_at_a_p11)

                    ; #30718: <==negation-removal== 69797 (pos)
                    (not (not_at_a_p9))

                    ; #36951: <==negation-removal== 69983 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12))
        :effect (and
                    ; #22304: origin
                    (at_a_p1)

                    ; #42462: origin
                    (not_at_a_p12)

                    ; #31293: <==negation-removal== 22304 (pos)
                    (not (not_at_a_p1))

                    ; #66189: <==negation-removal== 42462 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12))
        :effect (and
                    ; #42462: origin
                    (not_at_a_p12)

                    ; #88249: origin
                    (at_a_p10)

                    ; #66189: <==negation-removal== 42462 (pos)
                    (not (at_a_p12))

                    ; #77055: <==negation-removal== 88249 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12))
        :effect (and
                    ; #36951: origin
                    (at_a_p11)

                    ; #42462: origin
                    (not_at_a_p12)

                    ; #66189: <==negation-removal== 42462 (pos)
                    (not (at_a_p12))

                    ; #69983: <==negation-removal== 36951 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12))
        :effect (and
                    ; #42462: origin
                    (not_at_a_p12)

                    ; #66189: origin
                    (at_a_p12)

                    ; #42462: <==negation-removal== 66189 (pos)
                    (not (not_at_a_p12))

                    ; #66189: <==negation-removal== 42462 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12))
        :effect (and
                    ; #33270: origin
                    (at_a_p2)

                    ; #42462: origin
                    (not_at_a_p12)

                    ; #66189: <==negation-removal== 42462 (pos)
                    (not (at_a_p12))

                    ; #80863: <==negation-removal== 33270 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #13086: origin
                    (at_a_p3)

                    ; #42462: origin
                    (not_at_a_p12)

                    ; #50026: <==negation-removal== 13086 (pos)
                    (not (not_at_a_p3))

                    ; #66189: <==negation-removal== 42462 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12))
        :effect (and
                    ; #42462: origin
                    (not_at_a_p12)

                    ; #85960: origin
                    (at_a_p4)

                    ; #66189: <==negation-removal== 42462 (pos)
                    (not (at_a_p12))

                    ; #68869: <==negation-removal== 85960 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (at_a_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #42462: origin
                    (not_at_a_p12)

                    ; #71231: origin
                    (at_a_p5)

                    ; #66189: <==negation-removal== 42462 (pos)
                    (not (at_a_p12))

                    ; #82772: <==negation-removal== 71231 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12))
        :effect (and
                    ; #42462: origin
                    (not_at_a_p12)

                    ; #88930: origin
                    (at_a_p6)

                    ; #49099: <==negation-removal== 88930 (pos)
                    (not (not_at_a_p6))

                    ; #66189: <==negation-removal== 42462 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12))
        :effect (and
                    ; #14496: origin
                    (at_a_p7)

                    ; #42462: origin
                    (not_at_a_p12)

                    ; #21324: <==negation-removal== 14496 (pos)
                    (not (not_at_a_p7))

                    ; #66189: <==negation-removal== 42462 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12))
        :effect (and
                    ; #36277: origin
                    (at_a_p8)

                    ; #42462: origin
                    (not_at_a_p12)

                    ; #66189: <==negation-removal== 42462 (pos)
                    (not (at_a_p12))

                    ; #70668: <==negation-removal== 36277 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (at_a_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #42462: origin
                    (not_at_a_p12)

                    ; #69797: origin
                    (at_a_p9)

                    ; #30718: <==negation-removal== 69797 (pos)
                    (not (not_at_a_p9))

                    ; #66189: <==negation-removal== 42462 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #22304: origin
                    (at_a_p1)

                    ; #31293: origin
                    (not_at_a_p1)

                    ; #22304: <==negation-removal== 31293 (pos)
                    (not (at_a_p1))

                    ; #31293: <==negation-removal== 22304 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1))
        :effect (and
                    ; #31293: origin
                    (not_at_a_p1)

                    ; #88249: origin
                    (at_a_p10)

                    ; #22304: <==negation-removal== 31293 (pos)
                    (not (at_a_p1))

                    ; #77055: <==negation-removal== 88249 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1))
        :effect (and
                    ; #31293: origin
                    (not_at_a_p1)

                    ; #36951: origin
                    (at_a_p11)

                    ; #22304: <==negation-removal== 31293 (pos)
                    (not (at_a_p1))

                    ; #69983: <==negation-removal== 36951 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1))
        :effect (and
                    ; #31293: origin
                    (not_at_a_p1)

                    ; #66189: origin
                    (at_a_p12)

                    ; #22304: <==negation-removal== 31293 (pos)
                    (not (at_a_p1))

                    ; #42462: <==negation-removal== 66189 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #31293: origin
                    (not_at_a_p1)

                    ; #33270: origin
                    (at_a_p2)

                    ; #22304: <==negation-removal== 31293 (pos)
                    (not (at_a_p1))

                    ; #80863: <==negation-removal== 33270 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #13086: origin
                    (at_a_p3)

                    ; #31293: origin
                    (not_at_a_p1)

                    ; #22304: <==negation-removal== 31293 (pos)
                    (not (at_a_p1))

                    ; #50026: <==negation-removal== 13086 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #31293: origin
                    (not_at_a_p1)

                    ; #85960: origin
                    (at_a_p4)

                    ; #22304: <==negation-removal== 31293 (pos)
                    (not (at_a_p1))

                    ; #68869: <==negation-removal== 85960 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #31293: origin
                    (not_at_a_p1)

                    ; #71231: origin
                    (at_a_p5)

                    ; #22304: <==negation-removal== 31293 (pos)
                    (not (at_a_p1))

                    ; #82772: <==negation-removal== 71231 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #31293: origin
                    (not_at_a_p1)

                    ; #88930: origin
                    (at_a_p6)

                    ; #22304: <==negation-removal== 31293 (pos)
                    (not (at_a_p1))

                    ; #49099: <==negation-removal== 88930 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #14496: origin
                    (at_a_p7)

                    ; #31293: origin
                    (not_at_a_p1)

                    ; #21324: <==negation-removal== 14496 (pos)
                    (not (not_at_a_p7))

                    ; #22304: <==negation-removal== 31293 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #31293: origin
                    (not_at_a_p1)

                    ; #36277: origin
                    (at_a_p8)

                    ; #22304: <==negation-removal== 31293 (pos)
                    (not (at_a_p1))

                    ; #70668: <==negation-removal== 36277 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #31293: origin
                    (not_at_a_p1)

                    ; #69797: origin
                    (at_a_p9)

                    ; #22304: <==negation-removal== 31293 (pos)
                    (not (at_a_p1))

                    ; #30718: <==negation-removal== 69797 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #22304: origin
                    (at_a_p1)

                    ; #80863: origin
                    (not_at_a_p2)

                    ; #31293: <==negation-removal== 22304 (pos)
                    (not (not_at_a_p1))

                    ; #33270: <==negation-removal== 80863 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2))
        :effect (and
                    ; #80863: origin
                    (not_at_a_p2)

                    ; #88249: origin
                    (at_a_p10)

                    ; #33270: <==negation-removal== 80863 (pos)
                    (not (at_a_p2))

                    ; #77055: <==negation-removal== 88249 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2))
        :effect (and
                    ; #36951: origin
                    (at_a_p11)

                    ; #80863: origin
                    (not_at_a_p2)

                    ; #33270: <==negation-removal== 80863 (pos)
                    (not (at_a_p2))

                    ; #69983: <==negation-removal== 36951 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #66189: origin
                    (at_a_p12)

                    ; #80863: origin
                    (not_at_a_p2)

                    ; #33270: <==negation-removal== 80863 (pos)
                    (not (at_a_p2))

                    ; #42462: <==negation-removal== 66189 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #33270: origin
                    (at_a_p2)

                    ; #80863: origin
                    (not_at_a_p2)

                    ; #33270: <==negation-removal== 80863 (pos)
                    (not (at_a_p2))

                    ; #80863: <==negation-removal== 33270 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #13086: origin
                    (at_a_p3)

                    ; #80863: origin
                    (not_at_a_p2)

                    ; #33270: <==negation-removal== 80863 (pos)
                    (not (at_a_p2))

                    ; #50026: <==negation-removal== 13086 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #80863: origin
                    (not_at_a_p2)

                    ; #85960: origin
                    (at_a_p4)

                    ; #33270: <==negation-removal== 80863 (pos)
                    (not (at_a_p2))

                    ; #68869: <==negation-removal== 85960 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #71231: origin
                    (at_a_p5)

                    ; #80863: origin
                    (not_at_a_p2)

                    ; #33270: <==negation-removal== 80863 (pos)
                    (not (at_a_p2))

                    ; #82772: <==negation-removal== 71231 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #80863: origin
                    (not_at_a_p2)

                    ; #88930: origin
                    (at_a_p6)

                    ; #33270: <==negation-removal== 80863 (pos)
                    (not (at_a_p2))

                    ; #49099: <==negation-removal== 88930 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #14496: origin
                    (at_a_p7)

                    ; #80863: origin
                    (not_at_a_p2)

                    ; #21324: <==negation-removal== 14496 (pos)
                    (not (not_at_a_p7))

                    ; #33270: <==negation-removal== 80863 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #36277: origin
                    (at_a_p8)

                    ; #80863: origin
                    (not_at_a_p2)

                    ; #33270: <==negation-removal== 80863 (pos)
                    (not (at_a_p2))

                    ; #70668: <==negation-removal== 36277 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #69797: origin
                    (at_a_p9)

                    ; #80863: origin
                    (not_at_a_p2)

                    ; #30718: <==negation-removal== 69797 (pos)
                    (not (not_at_a_p9))

                    ; #33270: <==negation-removal== 80863 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #22304: origin
                    (at_a_p1)

                    ; #50026: origin
                    (not_at_a_p3)

                    ; #13086: <==negation-removal== 50026 (pos)
                    (not (at_a_p3))

                    ; #31293: <==negation-removal== 22304 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3))
        :effect (and
                    ; #50026: origin
                    (not_at_a_p3)

                    ; #88249: origin
                    (at_a_p10)

                    ; #13086: <==negation-removal== 50026 (pos)
                    (not (at_a_p3))

                    ; #77055: <==negation-removal== 88249 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3))
        :effect (and
                    ; #36951: origin
                    (at_a_p11)

                    ; #50026: origin
                    (not_at_a_p3)

                    ; #13086: <==negation-removal== 50026 (pos)
                    (not (at_a_p3))

                    ; #69983: <==negation-removal== 36951 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3))
        :effect (and
                    ; #50026: origin
                    (not_at_a_p3)

                    ; #66189: origin
                    (at_a_p12)

                    ; #13086: <==negation-removal== 50026 (pos)
                    (not (at_a_p3))

                    ; #42462: <==negation-removal== 66189 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #33270: origin
                    (at_a_p2)

                    ; #50026: origin
                    (not_at_a_p3)

                    ; #13086: <==negation-removal== 50026 (pos)
                    (not (at_a_p3))

                    ; #80863: <==negation-removal== 33270 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #13086: origin
                    (at_a_p3)

                    ; #50026: origin
                    (not_at_a_p3)

                    ; #13086: <==negation-removal== 50026 (pos)
                    (not (at_a_p3))

                    ; #50026: <==negation-removal== 13086 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #50026: origin
                    (not_at_a_p3)

                    ; #85960: origin
                    (at_a_p4)

                    ; #13086: <==negation-removal== 50026 (pos)
                    (not (at_a_p3))

                    ; #68869: <==negation-removal== 85960 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #50026: origin
                    (not_at_a_p3)

                    ; #71231: origin
                    (at_a_p5)

                    ; #13086: <==negation-removal== 50026 (pos)
                    (not (at_a_p3))

                    ; #82772: <==negation-removal== 71231 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #50026: origin
                    (not_at_a_p3)

                    ; #88930: origin
                    (at_a_p6)

                    ; #13086: <==negation-removal== 50026 (pos)
                    (not (at_a_p3))

                    ; #49099: <==negation-removal== 88930 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #14496: origin
                    (at_a_p7)

                    ; #50026: origin
                    (not_at_a_p3)

                    ; #13086: <==negation-removal== 50026 (pos)
                    (not (at_a_p3))

                    ; #21324: <==negation-removal== 14496 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #36277: origin
                    (at_a_p8)

                    ; #50026: origin
                    (not_at_a_p3)

                    ; #13086: <==negation-removal== 50026 (pos)
                    (not (at_a_p3))

                    ; #70668: <==negation-removal== 36277 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #50026: origin
                    (not_at_a_p3)

                    ; #69797: origin
                    (at_a_p9)

                    ; #13086: <==negation-removal== 50026 (pos)
                    (not (at_a_p3))

                    ; #30718: <==negation-removal== 69797 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #22304: origin
                    (at_a_p1)

                    ; #68869: origin
                    (not_at_a_p4)

                    ; #31293: <==negation-removal== 22304 (pos)
                    (not (not_at_a_p1))

                    ; #85960: <==negation-removal== 68869 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #68869: origin
                    (not_at_a_p4)

                    ; #88249: origin
                    (at_a_p10)

                    ; #77055: <==negation-removal== 88249 (pos)
                    (not (not_at_a_p10))

                    ; #85960: <==negation-removal== 68869 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #36951: origin
                    (at_a_p11)

                    ; #68869: origin
                    (not_at_a_p4)

                    ; #69983: <==negation-removal== 36951 (pos)
                    (not (not_at_a_p11))

                    ; #85960: <==negation-removal== 68869 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #66189: origin
                    (at_a_p12)

                    ; #68869: origin
                    (not_at_a_p4)

                    ; #42462: <==negation-removal== 66189 (pos)
                    (not (not_at_a_p12))

                    ; #85960: <==negation-removal== 68869 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #33270: origin
                    (at_a_p2)

                    ; #68869: origin
                    (not_at_a_p4)

                    ; #80863: <==negation-removal== 33270 (pos)
                    (not (not_at_a_p2))

                    ; #85960: <==negation-removal== 68869 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #13086: origin
                    (at_a_p3)

                    ; #68869: origin
                    (not_at_a_p4)

                    ; #50026: <==negation-removal== 13086 (pos)
                    (not (not_at_a_p3))

                    ; #85960: <==negation-removal== 68869 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #68869: origin
                    (not_at_a_p4)

                    ; #85960: origin
                    (at_a_p4)

                    ; #68869: <==negation-removal== 85960 (pos)
                    (not (not_at_a_p4))

                    ; #85960: <==negation-removal== 68869 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #68869: origin
                    (not_at_a_p4)

                    ; #71231: origin
                    (at_a_p5)

                    ; #82772: <==negation-removal== 71231 (pos)
                    (not (not_at_a_p5))

                    ; #85960: <==negation-removal== 68869 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #68869: origin
                    (not_at_a_p4)

                    ; #88930: origin
                    (at_a_p6)

                    ; #49099: <==negation-removal== 88930 (pos)
                    (not (not_at_a_p6))

                    ; #85960: <==negation-removal== 68869 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #14496: origin
                    (at_a_p7)

                    ; #68869: origin
                    (not_at_a_p4)

                    ; #21324: <==negation-removal== 14496 (pos)
                    (not (not_at_a_p7))

                    ; #85960: <==negation-removal== 68869 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #36277: origin
                    (at_a_p8)

                    ; #68869: origin
                    (not_at_a_p4)

                    ; #70668: <==negation-removal== 36277 (pos)
                    (not (not_at_a_p8))

                    ; #85960: <==negation-removal== 68869 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #68869: origin
                    (not_at_a_p4)

                    ; #69797: origin
                    (at_a_p9)

                    ; #30718: <==negation-removal== 69797 (pos)
                    (not (not_at_a_p9))

                    ; #85960: <==negation-removal== 68869 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #22304: origin
                    (at_a_p1)

                    ; #82772: origin
                    (not_at_a_p5)

                    ; #31293: <==negation-removal== 22304 (pos)
                    (not (not_at_a_p1))

                    ; #71231: <==negation-removal== 82772 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #82772: origin
                    (not_at_a_p5)

                    ; #88249: origin
                    (at_a_p10)

                    ; #71231: <==negation-removal== 82772 (pos)
                    (not (at_a_p5))

                    ; #77055: <==negation-removal== 88249 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #36951: origin
                    (at_a_p11)

                    ; #82772: origin
                    (not_at_a_p5)

                    ; #69983: <==negation-removal== 36951 (pos)
                    (not (not_at_a_p11))

                    ; #71231: <==negation-removal== 82772 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #66189: origin
                    (at_a_p12)

                    ; #82772: origin
                    (not_at_a_p5)

                    ; #42462: <==negation-removal== 66189 (pos)
                    (not (not_at_a_p12))

                    ; #71231: <==negation-removal== 82772 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #33270: origin
                    (at_a_p2)

                    ; #82772: origin
                    (not_at_a_p5)

                    ; #71231: <==negation-removal== 82772 (pos)
                    (not (at_a_p5))

                    ; #80863: <==negation-removal== 33270 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #13086: origin
                    (at_a_p3)

                    ; #82772: origin
                    (not_at_a_p5)

                    ; #50026: <==negation-removal== 13086 (pos)
                    (not (not_at_a_p3))

                    ; #71231: <==negation-removal== 82772 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #82772: origin
                    (not_at_a_p5)

                    ; #85960: origin
                    (at_a_p4)

                    ; #68869: <==negation-removal== 85960 (pos)
                    (not (not_at_a_p4))

                    ; #71231: <==negation-removal== 82772 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #71231: origin
                    (at_a_p5)

                    ; #82772: origin
                    (not_at_a_p5)

                    ; #71231: <==negation-removal== 82772 (pos)
                    (not (at_a_p5))

                    ; #82772: <==negation-removal== 71231 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #82772: origin
                    (not_at_a_p5)

                    ; #88930: origin
                    (at_a_p6)

                    ; #49099: <==negation-removal== 88930 (pos)
                    (not (not_at_a_p6))

                    ; #71231: <==negation-removal== 82772 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #14496: origin
                    (at_a_p7)

                    ; #82772: origin
                    (not_at_a_p5)

                    ; #21324: <==negation-removal== 14496 (pos)
                    (not (not_at_a_p7))

                    ; #71231: <==negation-removal== 82772 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #36277: origin
                    (at_a_p8)

                    ; #82772: origin
                    (not_at_a_p5)

                    ; #70668: <==negation-removal== 36277 (pos)
                    (not (not_at_a_p8))

                    ; #71231: <==negation-removal== 82772 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #69797: origin
                    (at_a_p9)

                    ; #82772: origin
                    (not_at_a_p5)

                    ; #30718: <==negation-removal== 69797 (pos)
                    (not (not_at_a_p9))

                    ; #71231: <==negation-removal== 82772 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #22304: origin
                    (at_a_p1)

                    ; #49099: origin
                    (not_at_a_p6)

                    ; #31293: <==negation-removal== 22304 (pos)
                    (not (not_at_a_p1))

                    ; #88930: <==negation-removal== 49099 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6))
        :effect (and
                    ; #49099: origin
                    (not_at_a_p6)

                    ; #88249: origin
                    (at_a_p10)

                    ; #77055: <==negation-removal== 88249 (pos)
                    (not (not_at_a_p10))

                    ; #88930: <==negation-removal== 49099 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (at_a_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #36951: origin
                    (at_a_p11)

                    ; #49099: origin
                    (not_at_a_p6)

                    ; #69983: <==negation-removal== 36951 (pos)
                    (not (not_at_a_p11))

                    ; #88930: <==negation-removal== 49099 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6))
        :effect (and
                    ; #49099: origin
                    (not_at_a_p6)

                    ; #66189: origin
                    (at_a_p12)

                    ; #42462: <==negation-removal== 66189 (pos)
                    (not (not_at_a_p12))

                    ; #88930: <==negation-removal== 49099 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #33270: origin
                    (at_a_p2)

                    ; #49099: origin
                    (not_at_a_p6)

                    ; #80863: <==negation-removal== 33270 (pos)
                    (not (not_at_a_p2))

                    ; #88930: <==negation-removal== 49099 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #13086: origin
                    (at_a_p3)

                    ; #49099: origin
                    (not_at_a_p6)

                    ; #50026: <==negation-removal== 13086 (pos)
                    (not (not_at_a_p3))

                    ; #88930: <==negation-removal== 49099 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #49099: origin
                    (not_at_a_p6)

                    ; #85960: origin
                    (at_a_p4)

                    ; #68869: <==negation-removal== 85960 (pos)
                    (not (not_at_a_p4))

                    ; #88930: <==negation-removal== 49099 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #49099: origin
                    (not_at_a_p6)

                    ; #71231: origin
                    (at_a_p5)

                    ; #82772: <==negation-removal== 71231 (pos)
                    (not (not_at_a_p5))

                    ; #88930: <==negation-removal== 49099 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #49099: origin
                    (not_at_a_p6)

                    ; #88930: origin
                    (at_a_p6)

                    ; #49099: <==negation-removal== 88930 (pos)
                    (not (not_at_a_p6))

                    ; #88930: <==negation-removal== 49099 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #14496: origin
                    (at_a_p7)

                    ; #49099: origin
                    (not_at_a_p6)

                    ; #21324: <==negation-removal== 14496 (pos)
                    (not (not_at_a_p7))

                    ; #88930: <==negation-removal== 49099 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #36277: origin
                    (at_a_p8)

                    ; #49099: origin
                    (not_at_a_p6)

                    ; #70668: <==negation-removal== 36277 (pos)
                    (not (not_at_a_p8))

                    ; #88930: <==negation-removal== 49099 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #49099: origin
                    (not_at_a_p6)

                    ; #69797: origin
                    (at_a_p9)

                    ; #30718: <==negation-removal== 69797 (pos)
                    (not (not_at_a_p9))

                    ; #88930: <==negation-removal== 49099 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #21324: origin
                    (not_at_a_p7)

                    ; #22304: origin
                    (at_a_p1)

                    ; #14496: <==negation-removal== 21324 (pos)
                    (not (at_a_p7))

                    ; #31293: <==negation-removal== 22304 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (at_a_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #21324: origin
                    (not_at_a_p7)

                    ; #88249: origin
                    (at_a_p10)

                    ; #14496: <==negation-removal== 21324 (pos)
                    (not (at_a_p7))

                    ; #77055: <==negation-removal== 88249 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7))
        :effect (and
                    ; #21324: origin
                    (not_at_a_p7)

                    ; #36951: origin
                    (at_a_p11)

                    ; #14496: <==negation-removal== 21324 (pos)
                    (not (at_a_p7))

                    ; #69983: <==negation-removal== 36951 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (at_a_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #21324: origin
                    (not_at_a_p7)

                    ; #66189: origin
                    (at_a_p12)

                    ; #14496: <==negation-removal== 21324 (pos)
                    (not (at_a_p7))

                    ; #42462: <==negation-removal== 66189 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #21324: origin
                    (not_at_a_p7)

                    ; #33270: origin
                    (at_a_p2)

                    ; #14496: <==negation-removal== 21324 (pos)
                    (not (at_a_p7))

                    ; #80863: <==negation-removal== 33270 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #13086: origin
                    (at_a_p3)

                    ; #21324: origin
                    (not_at_a_p7)

                    ; #14496: <==negation-removal== 21324 (pos)
                    (not (at_a_p7))

                    ; #50026: <==negation-removal== 13086 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #21324: origin
                    (not_at_a_p7)

                    ; #85960: origin
                    (at_a_p4)

                    ; #14496: <==negation-removal== 21324 (pos)
                    (not (at_a_p7))

                    ; #68869: <==negation-removal== 85960 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #21324: origin
                    (not_at_a_p7)

                    ; #71231: origin
                    (at_a_p5)

                    ; #14496: <==negation-removal== 21324 (pos)
                    (not (at_a_p7))

                    ; #82772: <==negation-removal== 71231 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #21324: origin
                    (not_at_a_p7)

                    ; #88930: origin
                    (at_a_p6)

                    ; #14496: <==negation-removal== 21324 (pos)
                    (not (at_a_p7))

                    ; #49099: <==negation-removal== 88930 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #14496: origin
                    (at_a_p7)

                    ; #21324: origin
                    (not_at_a_p7)

                    ; #14496: <==negation-removal== 21324 (pos)
                    (not (at_a_p7))

                    ; #21324: <==negation-removal== 14496 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #21324: origin
                    (not_at_a_p7)

                    ; #36277: origin
                    (at_a_p8)

                    ; #14496: <==negation-removal== 21324 (pos)
                    (not (at_a_p7))

                    ; #70668: <==negation-removal== 36277 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #21324: origin
                    (not_at_a_p7)

                    ; #69797: origin
                    (at_a_p9)

                    ; #14496: <==negation-removal== 21324 (pos)
                    (not (at_a_p7))

                    ; #30718: <==negation-removal== 69797 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #22304: origin
                    (at_a_p1)

                    ; #70668: origin
                    (not_at_a_p8)

                    ; #31293: <==negation-removal== 22304 (pos)
                    (not (not_at_a_p1))

                    ; #36277: <==negation-removal== 70668 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8))
        :effect (and
                    ; #70668: origin
                    (not_at_a_p8)

                    ; #88249: origin
                    (at_a_p10)

                    ; #36277: <==negation-removal== 70668 (pos)
                    (not (at_a_p8))

                    ; #77055: <==negation-removal== 88249 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #36951: origin
                    (at_a_p11)

                    ; #70668: origin
                    (not_at_a_p8)

                    ; #36277: <==negation-removal== 70668 (pos)
                    (not (at_a_p8))

                    ; #69983: <==negation-removal== 36951 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_a_p8))
        :effect (and
                    ; #66189: origin
                    (at_a_p12)

                    ; #70668: origin
                    (not_at_a_p8)

                    ; #36277: <==negation-removal== 70668 (pos)
                    (not (at_a_p8))

                    ; #42462: <==negation-removal== 66189 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #33270: origin
                    (at_a_p2)

                    ; #70668: origin
                    (not_at_a_p8)

                    ; #36277: <==negation-removal== 70668 (pos)
                    (not (at_a_p8))

                    ; #80863: <==negation-removal== 33270 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #13086: origin
                    (at_a_p3)

                    ; #70668: origin
                    (not_at_a_p8)

                    ; #36277: <==negation-removal== 70668 (pos)
                    (not (at_a_p8))

                    ; #50026: <==negation-removal== 13086 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #70668: origin
                    (not_at_a_p8)

                    ; #85960: origin
                    (at_a_p4)

                    ; #36277: <==negation-removal== 70668 (pos)
                    (not (at_a_p8))

                    ; #68869: <==negation-removal== 85960 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #70668: origin
                    (not_at_a_p8)

                    ; #71231: origin
                    (at_a_p5)

                    ; #36277: <==negation-removal== 70668 (pos)
                    (not (at_a_p8))

                    ; #82772: <==negation-removal== 71231 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #70668: origin
                    (not_at_a_p8)

                    ; #88930: origin
                    (at_a_p6)

                    ; #36277: <==negation-removal== 70668 (pos)
                    (not (at_a_p8))

                    ; #49099: <==negation-removal== 88930 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #14496: origin
                    (at_a_p7)

                    ; #70668: origin
                    (not_at_a_p8)

                    ; #21324: <==negation-removal== 14496 (pos)
                    (not (not_at_a_p7))

                    ; #36277: <==negation-removal== 70668 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #36277: origin
                    (at_a_p8)

                    ; #70668: origin
                    (not_at_a_p8)

                    ; #36277: <==negation-removal== 70668 (pos)
                    (not (at_a_p8))

                    ; #70668: <==negation-removal== 36277 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #69797: origin
                    (at_a_p9)

                    ; #70668: origin
                    (not_at_a_p8)

                    ; #30718: <==negation-removal== 69797 (pos)
                    (not (not_at_a_p9))

                    ; #36277: <==negation-removal== 70668 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #22304: origin
                    (at_a_p1)

                    ; #30718: origin
                    (not_at_a_p9)

                    ; #31293: <==negation-removal== 22304 (pos)
                    (not (not_at_a_p1))

                    ; #69797: <==negation-removal== 30718 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9))
        :effect (and
                    ; #30718: origin
                    (not_at_a_p9)

                    ; #88249: origin
                    (at_a_p10)

                    ; #69797: <==negation-removal== 30718 (pos)
                    (not (at_a_p9))

                    ; #77055: <==negation-removal== 88249 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p9_p11
        :precondition (and (at_a_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #30718: origin
                    (not_at_a_p9)

                    ; #36951: origin
                    (at_a_p11)

                    ; #69797: <==negation-removal== 30718 (pos)
                    (not (at_a_p9))

                    ; #69983: <==negation-removal== 36951 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #30718: origin
                    (not_at_a_p9)

                    ; #66189: origin
                    (at_a_p12)

                    ; #42462: <==negation-removal== 66189 (pos)
                    (not (not_at_a_p12))

                    ; #69797: <==negation-removal== 30718 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #30718: origin
                    (not_at_a_p9)

                    ; #33270: origin
                    (at_a_p2)

                    ; #69797: <==negation-removal== 30718 (pos)
                    (not (at_a_p9))

                    ; #80863: <==negation-removal== 33270 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #13086: origin
                    (at_a_p3)

                    ; #30718: origin
                    (not_at_a_p9)

                    ; #50026: <==negation-removal== 13086 (pos)
                    (not (not_at_a_p3))

                    ; #69797: <==negation-removal== 30718 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #30718: origin
                    (not_at_a_p9)

                    ; #85960: origin
                    (at_a_p4)

                    ; #68869: <==negation-removal== 85960 (pos)
                    (not (not_at_a_p4))

                    ; #69797: <==negation-removal== 30718 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #30718: origin
                    (not_at_a_p9)

                    ; #71231: origin
                    (at_a_p5)

                    ; #69797: <==negation-removal== 30718 (pos)
                    (not (at_a_p9))

                    ; #82772: <==negation-removal== 71231 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #30718: origin
                    (not_at_a_p9)

                    ; #88930: origin
                    (at_a_p6)

                    ; #49099: <==negation-removal== 88930 (pos)
                    (not (not_at_a_p6))

                    ; #69797: <==negation-removal== 30718 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #14496: origin
                    (at_a_p7)

                    ; #30718: origin
                    (not_at_a_p9)

                    ; #21324: <==negation-removal== 14496 (pos)
                    (not (not_at_a_p7))

                    ; #69797: <==negation-removal== 30718 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #30718: origin
                    (not_at_a_p9)

                    ; #36277: origin
                    (at_a_p8)

                    ; #69797: <==negation-removal== 30718 (pos)
                    (not (at_a_p9))

                    ; #70668: <==negation-removal== 36277 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #30718: origin
                    (not_at_a_p9)

                    ; #69797: origin
                    (at_a_p9)

                    ; #30718: <==negation-removal== 69797 (pos)
                    (not (not_at_a_p9))

                    ; #69797: <==negation-removal== 30718 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #68854: origin
                    (not_at_b_p10)

                    ; #84789: origin
                    (at_b_p1)

                    ; #32694: <==negation-removal== 84789 (pos)
                    (not (not_at_b_p1))

                    ; #78630: <==negation-removal== 68854 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #68854: origin
                    (not_at_b_p10)

                    ; #78630: origin
                    (at_b_p10)

                    ; #68854: <==negation-removal== 78630 (pos)
                    (not (not_at_b_p10))

                    ; #78630: <==negation-removal== 68854 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10))
        :effect (and
                    ; #68854: origin
                    (not_at_b_p10)

                    ; #91618: origin
                    (at_b_p11)

                    ; #43593: <==negation-removal== 91618 (pos)
                    (not (not_at_b_p11))

                    ; #78630: <==negation-removal== 68854 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_b_p10))
        :effect (and
                    ; #25219: origin
                    (at_b_p12)

                    ; #68854: origin
                    (not_at_b_p10)

                    ; #48767: <==negation-removal== 25219 (pos)
                    (not (not_at_b_p12))

                    ; #78630: <==negation-removal== 68854 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_b_p10))
        :effect (and
                    ; #48258: origin
                    (at_b_p2)

                    ; #68854: origin
                    (not_at_b_p10)

                    ; #18805: <==negation-removal== 48258 (pos)
                    (not (not_at_b_p2))

                    ; #78630: <==negation-removal== 68854 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_b_p10))
        :effect (and
                    ; #64551: origin
                    (at_b_p3)

                    ; #68854: origin
                    (not_at_b_p10)

                    ; #44178: <==negation-removal== 64551 (pos)
                    (not (not_at_b_p3))

                    ; #78630: <==negation-removal== 68854 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_b_p10))
        :effect (and
                    ; #68854: origin
                    (not_at_b_p10)

                    ; #77014: origin
                    (at_b_p4)

                    ; #15403: <==negation-removal== 77014 (pos)
                    (not (not_at_b_p4))

                    ; #78630: <==negation-removal== 68854 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #44641: origin
                    (at_b_p5)

                    ; #68854: origin
                    (not_at_b_p10)

                    ; #68483: <==negation-removal== 44641 (pos)
                    (not (not_at_b_p5))

                    ; #78630: <==negation-removal== 68854 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_b_p10))
        :effect (and
                    ; #52245: origin
                    (at_b_p6)

                    ; #68854: origin
                    (not_at_b_p10)

                    ; #74756: <==negation-removal== 52245 (pos)
                    (not (not_at_b_p6))

                    ; #78630: <==negation-removal== 68854 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #68854: origin
                    (not_at_b_p10)

                    ; #79100: origin
                    (at_b_p7)

                    ; #47252: <==negation-removal== 79100 (pos)
                    (not (not_at_b_p7))

                    ; #78630: <==negation-removal== 68854 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_b_p10))
        :effect (and
                    ; #27075: origin
                    (at_b_p8)

                    ; #68854: origin
                    (not_at_b_p10)

                    ; #29144: <==negation-removal== 27075 (pos)
                    (not (not_at_b_p8))

                    ; #78630: <==negation-removal== 68854 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_b_p10))
        :effect (and
                    ; #33579: origin
                    (at_b_p9)

                    ; #68854: origin
                    (not_at_b_p10)

                    ; #64559: <==negation-removal== 33579 (pos)
                    (not (not_at_b_p9))

                    ; #78630: <==negation-removal== 68854 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (at_b_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #43593: origin
                    (not_at_b_p11)

                    ; #84789: origin
                    (at_b_p1)

                    ; #32694: <==negation-removal== 84789 (pos)
                    (not (not_at_b_p1))

                    ; #91618: <==negation-removal== 43593 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #43593: origin
                    (not_at_b_p11)

                    ; #78630: origin
                    (at_b_p10)

                    ; #68854: <==negation-removal== 78630 (pos)
                    (not (not_at_b_p10))

                    ; #91618: <==negation-removal== 43593 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #43593: origin
                    (not_at_b_p11)

                    ; #91618: origin
                    (at_b_p11)

                    ; #43593: <==negation-removal== 91618 (pos)
                    (not (not_at_b_p11))

                    ; #91618: <==negation-removal== 43593 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (at_b_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #25219: origin
                    (at_b_p12)

                    ; #43593: origin
                    (not_at_b_p11)

                    ; #48767: <==negation-removal== 25219 (pos)
                    (not (not_at_b_p12))

                    ; #91618: <==negation-removal== 43593 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11))
        :effect (and
                    ; #43593: origin
                    (not_at_b_p11)

                    ; #48258: origin
                    (at_b_p2)

                    ; #18805: <==negation-removal== 48258 (pos)
                    (not (not_at_b_p2))

                    ; #91618: <==negation-removal== 43593 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11))
        :effect (and
                    ; #43593: origin
                    (not_at_b_p11)

                    ; #64551: origin
                    (at_b_p3)

                    ; #44178: <==negation-removal== 64551 (pos)
                    (not (not_at_b_p3))

                    ; #91618: <==negation-removal== 43593 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p4
        :precondition (and (at_b_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #43593: origin
                    (not_at_b_p11)

                    ; #77014: origin
                    (at_b_p4)

                    ; #15403: <==negation-removal== 77014 (pos)
                    (not (not_at_b_p4))

                    ; #91618: <==negation-removal== 43593 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #43593: origin
                    (not_at_b_p11)

                    ; #44641: origin
                    (at_b_p5)

                    ; #68483: <==negation-removal== 44641 (pos)
                    (not (not_at_b_p5))

                    ; #91618: <==negation-removal== 43593 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11))
        :effect (and
                    ; #43593: origin
                    (not_at_b_p11)

                    ; #52245: origin
                    (at_b_p6)

                    ; #74756: <==negation-removal== 52245 (pos)
                    (not (not_at_b_p6))

                    ; #91618: <==negation-removal== 43593 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #43593: origin
                    (not_at_b_p11)

                    ; #79100: origin
                    (at_b_p7)

                    ; #47252: <==negation-removal== 79100 (pos)
                    (not (not_at_b_p7))

                    ; #91618: <==negation-removal== 43593 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p8
        :precondition (and (at_b_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #27075: origin
                    (at_b_p8)

                    ; #43593: origin
                    (not_at_b_p11)

                    ; #29144: <==negation-removal== 27075 (pos)
                    (not (not_at_b_p8))

                    ; #91618: <==negation-removal== 43593 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #33579: origin
                    (at_b_p9)

                    ; #43593: origin
                    (not_at_b_p11)

                    ; #64559: <==negation-removal== 33579 (pos)
                    (not (not_at_b_p9))

                    ; #91618: <==negation-removal== 43593 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12))
        :effect (and
                    ; #48767: origin
                    (not_at_b_p12)

                    ; #84789: origin
                    (at_b_p1)

                    ; #25219: <==negation-removal== 48767 (pos)
                    (not (at_b_p12))

                    ; #32694: <==negation-removal== 84789 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_b_p12))
        :effect (and
                    ; #48767: origin
                    (not_at_b_p12)

                    ; #78630: origin
                    (at_b_p10)

                    ; #25219: <==negation-removal== 48767 (pos)
                    (not (at_b_p12))

                    ; #68854: <==negation-removal== 78630 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_b_p12))
        :effect (and
                    ; #48767: origin
                    (not_at_b_p12)

                    ; #91618: origin
                    (at_b_p11)

                    ; #25219: <==negation-removal== 48767 (pos)
                    (not (at_b_p12))

                    ; #43593: <==negation-removal== 91618 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_b_p12))
        :effect (and
                    ; #25219: origin
                    (at_b_p12)

                    ; #48767: origin
                    (not_at_b_p12)

                    ; #25219: <==negation-removal== 48767 (pos)
                    (not (at_b_p12))

                    ; #48767: <==negation-removal== 25219 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12))
        :effect (and
                    ; #48258: origin
                    (at_b_p2)

                    ; #48767: origin
                    (not_at_b_p12)

                    ; #18805: <==negation-removal== 48258 (pos)
                    (not (not_at_b_p2))

                    ; #25219: <==negation-removal== 48767 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12))
        :effect (and
                    ; #48767: origin
                    (not_at_b_p12)

                    ; #64551: origin
                    (at_b_p3)

                    ; #25219: <==negation-removal== 48767 (pos)
                    (not (at_b_p12))

                    ; #44178: <==negation-removal== 64551 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_b_p12))
        :effect (and
                    ; #48767: origin
                    (not_at_b_p12)

                    ; #77014: origin
                    (at_b_p4)

                    ; #15403: <==negation-removal== 77014 (pos)
                    (not (not_at_b_p4))

                    ; #25219: <==negation-removal== 48767 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #44641: origin
                    (at_b_p5)

                    ; #48767: origin
                    (not_at_b_p12)

                    ; #25219: <==negation-removal== 48767 (pos)
                    (not (at_b_p12))

                    ; #68483: <==negation-removal== 44641 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_b_p12))
        :effect (and
                    ; #48767: origin
                    (not_at_b_p12)

                    ; #52245: origin
                    (at_b_p6)

                    ; #25219: <==negation-removal== 48767 (pos)
                    (not (at_b_p12))

                    ; #74756: <==negation-removal== 52245 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #48767: origin
                    (not_at_b_p12)

                    ; #79100: origin
                    (at_b_p7)

                    ; #25219: <==negation-removal== 48767 (pos)
                    (not (at_b_p12))

                    ; #47252: <==negation-removal== 79100 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_b_p12))
        :effect (and
                    ; #27075: origin
                    (at_b_p8)

                    ; #48767: origin
                    (not_at_b_p12)

                    ; #25219: <==negation-removal== 48767 (pos)
                    (not (at_b_p12))

                    ; #29144: <==negation-removal== 27075 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #33579: origin
                    (at_b_p9)

                    ; #48767: origin
                    (not_at_b_p12)

                    ; #25219: <==negation-removal== 48767 (pos)
                    (not (at_b_p12))

                    ; #64559: <==negation-removal== 33579 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #32694: origin
                    (not_at_b_p1)

                    ; #84789: origin
                    (at_b_p1)

                    ; #32694: <==negation-removal== 84789 (pos)
                    (not (not_at_b_p1))

                    ; #84789: <==negation-removal== 32694 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (at_b_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #32694: origin
                    (not_at_b_p1)

                    ; #78630: origin
                    (at_b_p10)

                    ; #68854: <==negation-removal== 78630 (pos)
                    (not (not_at_b_p10))

                    ; #84789: <==negation-removal== 32694 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #32694: origin
                    (not_at_b_p1)

                    ; #91618: origin
                    (at_b_p11)

                    ; #43593: <==negation-removal== 91618 (pos)
                    (not (not_at_b_p11))

                    ; #84789: <==negation-removal== 32694 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #25219: origin
                    (at_b_p12)

                    ; #32694: origin
                    (not_at_b_p1)

                    ; #48767: <==negation-removal== 25219 (pos)
                    (not (not_at_b_p12))

                    ; #84789: <==negation-removal== 32694 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #32694: origin
                    (not_at_b_p1)

                    ; #48258: origin
                    (at_b_p2)

                    ; #18805: <==negation-removal== 48258 (pos)
                    (not (not_at_b_p2))

                    ; #84789: <==negation-removal== 32694 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #32694: origin
                    (not_at_b_p1)

                    ; #64551: origin
                    (at_b_p3)

                    ; #44178: <==negation-removal== 64551 (pos)
                    (not (not_at_b_p3))

                    ; #84789: <==negation-removal== 32694 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #32694: origin
                    (not_at_b_p1)

                    ; #77014: origin
                    (at_b_p4)

                    ; #15403: <==negation-removal== 77014 (pos)
                    (not (not_at_b_p4))

                    ; #84789: <==negation-removal== 32694 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #32694: origin
                    (not_at_b_p1)

                    ; #44641: origin
                    (at_b_p5)

                    ; #68483: <==negation-removal== 44641 (pos)
                    (not (not_at_b_p5))

                    ; #84789: <==negation-removal== 32694 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #32694: origin
                    (not_at_b_p1)

                    ; #52245: origin
                    (at_b_p6)

                    ; #74756: <==negation-removal== 52245 (pos)
                    (not (not_at_b_p6))

                    ; #84789: <==negation-removal== 32694 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #32694: origin
                    (not_at_b_p1)

                    ; #79100: origin
                    (at_b_p7)

                    ; #47252: <==negation-removal== 79100 (pos)
                    (not (not_at_b_p7))

                    ; #84789: <==negation-removal== 32694 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #27075: origin
                    (at_b_p8)

                    ; #32694: origin
                    (not_at_b_p1)

                    ; #29144: <==negation-removal== 27075 (pos)
                    (not (not_at_b_p8))

                    ; #84789: <==negation-removal== 32694 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #32694: origin
                    (not_at_b_p1)

                    ; #33579: origin
                    (at_b_p9)

                    ; #64559: <==negation-removal== 33579 (pos)
                    (not (not_at_b_p9))

                    ; #84789: <==negation-removal== 32694 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #18805: origin
                    (not_at_b_p2)

                    ; #84789: origin
                    (at_b_p1)

                    ; #32694: <==negation-removal== 84789 (pos)
                    (not (not_at_b_p1))

                    ; #48258: <==negation-removal== 18805 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2))
        :effect (and
                    ; #18805: origin
                    (not_at_b_p2)

                    ; #78630: origin
                    (at_b_p10)

                    ; #48258: <==negation-removal== 18805 (pos)
                    (not (at_b_p2))

                    ; #68854: <==negation-removal== 78630 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2))
        :effect (and
                    ; #18805: origin
                    (not_at_b_p2)

                    ; #91618: origin
                    (at_b_p11)

                    ; #43593: <==negation-removal== 91618 (pos)
                    (not (not_at_b_p11))

                    ; #48258: <==negation-removal== 18805 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2))
        :effect (and
                    ; #18805: origin
                    (not_at_b_p2)

                    ; #25219: origin
                    (at_b_p12)

                    ; #48258: <==negation-removal== 18805 (pos)
                    (not (at_b_p2))

                    ; #48767: <==negation-removal== 25219 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #18805: origin
                    (not_at_b_p2)

                    ; #48258: origin
                    (at_b_p2)

                    ; #18805: <==negation-removal== 48258 (pos)
                    (not (not_at_b_p2))

                    ; #48258: <==negation-removal== 18805 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #18805: origin
                    (not_at_b_p2)

                    ; #64551: origin
                    (at_b_p3)

                    ; #44178: <==negation-removal== 64551 (pos)
                    (not (not_at_b_p3))

                    ; #48258: <==negation-removal== 18805 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #18805: origin
                    (not_at_b_p2)

                    ; #77014: origin
                    (at_b_p4)

                    ; #15403: <==negation-removal== 77014 (pos)
                    (not (not_at_b_p4))

                    ; #48258: <==negation-removal== 18805 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #18805: origin
                    (not_at_b_p2)

                    ; #44641: origin
                    (at_b_p5)

                    ; #48258: <==negation-removal== 18805 (pos)
                    (not (at_b_p2))

                    ; #68483: <==negation-removal== 44641 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #18805: origin
                    (not_at_b_p2)

                    ; #52245: origin
                    (at_b_p6)

                    ; #48258: <==negation-removal== 18805 (pos)
                    (not (at_b_p2))

                    ; #74756: <==negation-removal== 52245 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #18805: origin
                    (not_at_b_p2)

                    ; #79100: origin
                    (at_b_p7)

                    ; #47252: <==negation-removal== 79100 (pos)
                    (not (not_at_b_p7))

                    ; #48258: <==negation-removal== 18805 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #18805: origin
                    (not_at_b_p2)

                    ; #27075: origin
                    (at_b_p8)

                    ; #29144: <==negation-removal== 27075 (pos)
                    (not (not_at_b_p8))

                    ; #48258: <==negation-removal== 18805 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #18805: origin
                    (not_at_b_p2)

                    ; #33579: origin
                    (at_b_p9)

                    ; #48258: <==negation-removal== 18805 (pos)
                    (not (at_b_p2))

                    ; #64559: <==negation-removal== 33579 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #44178: origin
                    (not_at_b_p3)

                    ; #84789: origin
                    (at_b_p1)

                    ; #32694: <==negation-removal== 84789 (pos)
                    (not (not_at_b_p1))

                    ; #64551: <==negation-removal== 44178 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #44178: origin
                    (not_at_b_p3)

                    ; #78630: origin
                    (at_b_p10)

                    ; #64551: <==negation-removal== 44178 (pos)
                    (not (at_b_p3))

                    ; #68854: <==negation-removal== 78630 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #44178: origin
                    (not_at_b_p3)

                    ; #91618: origin
                    (at_b_p11)

                    ; #43593: <==negation-removal== 91618 (pos)
                    (not (not_at_b_p11))

                    ; #64551: <==negation-removal== 44178 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3))
        :effect (and
                    ; #25219: origin
                    (at_b_p12)

                    ; #44178: origin
                    (not_at_b_p3)

                    ; #48767: <==negation-removal== 25219 (pos)
                    (not (not_at_b_p12))

                    ; #64551: <==negation-removal== 44178 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #44178: origin
                    (not_at_b_p3)

                    ; #48258: origin
                    (at_b_p2)

                    ; #18805: <==negation-removal== 48258 (pos)
                    (not (not_at_b_p2))

                    ; #64551: <==negation-removal== 44178 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #44178: origin
                    (not_at_b_p3)

                    ; #64551: origin
                    (at_b_p3)

                    ; #44178: <==negation-removal== 64551 (pos)
                    (not (not_at_b_p3))

                    ; #64551: <==negation-removal== 44178 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #44178: origin
                    (not_at_b_p3)

                    ; #77014: origin
                    (at_b_p4)

                    ; #15403: <==negation-removal== 77014 (pos)
                    (not (not_at_b_p4))

                    ; #64551: <==negation-removal== 44178 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #44178: origin
                    (not_at_b_p3)

                    ; #44641: origin
                    (at_b_p5)

                    ; #64551: <==negation-removal== 44178 (pos)
                    (not (at_b_p3))

                    ; #68483: <==negation-removal== 44641 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #44178: origin
                    (not_at_b_p3)

                    ; #52245: origin
                    (at_b_p6)

                    ; #64551: <==negation-removal== 44178 (pos)
                    (not (at_b_p3))

                    ; #74756: <==negation-removal== 52245 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #44178: origin
                    (not_at_b_p3)

                    ; #79100: origin
                    (at_b_p7)

                    ; #47252: <==negation-removal== 79100 (pos)
                    (not (not_at_b_p7))

                    ; #64551: <==negation-removal== 44178 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #27075: origin
                    (at_b_p8)

                    ; #44178: origin
                    (not_at_b_p3)

                    ; #29144: <==negation-removal== 27075 (pos)
                    (not (not_at_b_p8))

                    ; #64551: <==negation-removal== 44178 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #33579: origin
                    (at_b_p9)

                    ; #44178: origin
                    (not_at_b_p3)

                    ; #64551: <==negation-removal== 44178 (pos)
                    (not (at_b_p3))

                    ; #64559: <==negation-removal== 33579 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #15403: origin
                    (not_at_b_p4)

                    ; #84789: origin
                    (at_b_p1)

                    ; #32694: <==negation-removal== 84789 (pos)
                    (not (not_at_b_p1))

                    ; #77014: <==negation-removal== 15403 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4))
        :effect (and
                    ; #15403: origin
                    (not_at_b_p4)

                    ; #78630: origin
                    (at_b_p10)

                    ; #68854: <==negation-removal== 78630 (pos)
                    (not (not_at_b_p10))

                    ; #77014: <==negation-removal== 15403 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4))
        :effect (and
                    ; #15403: origin
                    (not_at_b_p4)

                    ; #91618: origin
                    (at_b_p11)

                    ; #43593: <==negation-removal== 91618 (pos)
                    (not (not_at_b_p11))

                    ; #77014: <==negation-removal== 15403 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #15403: origin
                    (not_at_b_p4)

                    ; #25219: origin
                    (at_b_p12)

                    ; #48767: <==negation-removal== 25219 (pos)
                    (not (not_at_b_p12))

                    ; #77014: <==negation-removal== 15403 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #15403: origin
                    (not_at_b_p4)

                    ; #48258: origin
                    (at_b_p2)

                    ; #18805: <==negation-removal== 48258 (pos)
                    (not (not_at_b_p2))

                    ; #77014: <==negation-removal== 15403 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #15403: origin
                    (not_at_b_p4)

                    ; #64551: origin
                    (at_b_p3)

                    ; #44178: <==negation-removal== 64551 (pos)
                    (not (not_at_b_p3))

                    ; #77014: <==negation-removal== 15403 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #15403: origin
                    (not_at_b_p4)

                    ; #77014: origin
                    (at_b_p4)

                    ; #15403: <==negation-removal== 77014 (pos)
                    (not (not_at_b_p4))

                    ; #77014: <==negation-removal== 15403 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #15403: origin
                    (not_at_b_p4)

                    ; #44641: origin
                    (at_b_p5)

                    ; #68483: <==negation-removal== 44641 (pos)
                    (not (not_at_b_p5))

                    ; #77014: <==negation-removal== 15403 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #15403: origin
                    (not_at_b_p4)

                    ; #52245: origin
                    (at_b_p6)

                    ; #74756: <==negation-removal== 52245 (pos)
                    (not (not_at_b_p6))

                    ; #77014: <==negation-removal== 15403 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #15403: origin
                    (not_at_b_p4)

                    ; #79100: origin
                    (at_b_p7)

                    ; #47252: <==negation-removal== 79100 (pos)
                    (not (not_at_b_p7))

                    ; #77014: <==negation-removal== 15403 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #15403: origin
                    (not_at_b_p4)

                    ; #27075: origin
                    (at_b_p8)

                    ; #29144: <==negation-removal== 27075 (pos)
                    (not (not_at_b_p8))

                    ; #77014: <==negation-removal== 15403 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #15403: origin
                    (not_at_b_p4)

                    ; #33579: origin
                    (at_b_p9)

                    ; #64559: <==negation-removal== 33579 (pos)
                    (not (not_at_b_p9))

                    ; #77014: <==negation-removal== 15403 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #68483: origin
                    (not_at_b_p5)

                    ; #84789: origin
                    (at_b_p1)

                    ; #32694: <==negation-removal== 84789 (pos)
                    (not (not_at_b_p1))

                    ; #44641: <==negation-removal== 68483 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5))
        :effect (and
                    ; #68483: origin
                    (not_at_b_p5)

                    ; #78630: origin
                    (at_b_p10)

                    ; #44641: <==negation-removal== 68483 (pos)
                    (not (at_b_p5))

                    ; #68854: <==negation-removal== 78630 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #68483: origin
                    (not_at_b_p5)

                    ; #91618: origin
                    (at_b_p11)

                    ; #43593: <==negation-removal== 91618 (pos)
                    (not (not_at_b_p11))

                    ; #44641: <==negation-removal== 68483 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #25219: origin
                    (at_b_p12)

                    ; #68483: origin
                    (not_at_b_p5)

                    ; #44641: <==negation-removal== 68483 (pos)
                    (not (at_b_p5))

                    ; #48767: <==negation-removal== 25219 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #48258: origin
                    (at_b_p2)

                    ; #68483: origin
                    (not_at_b_p5)

                    ; #18805: <==negation-removal== 48258 (pos)
                    (not (not_at_b_p2))

                    ; #44641: <==negation-removal== 68483 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #64551: origin
                    (at_b_p3)

                    ; #68483: origin
                    (not_at_b_p5)

                    ; #44178: <==negation-removal== 64551 (pos)
                    (not (not_at_b_p3))

                    ; #44641: <==negation-removal== 68483 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #68483: origin
                    (not_at_b_p5)

                    ; #77014: origin
                    (at_b_p4)

                    ; #15403: <==negation-removal== 77014 (pos)
                    (not (not_at_b_p4))

                    ; #44641: <==negation-removal== 68483 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #44641: origin
                    (at_b_p5)

                    ; #68483: origin
                    (not_at_b_p5)

                    ; #44641: <==negation-removal== 68483 (pos)
                    (not (at_b_p5))

                    ; #68483: <==negation-removal== 44641 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #52245: origin
                    (at_b_p6)

                    ; #68483: origin
                    (not_at_b_p5)

                    ; #44641: <==negation-removal== 68483 (pos)
                    (not (at_b_p5))

                    ; #74756: <==negation-removal== 52245 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #68483: origin
                    (not_at_b_p5)

                    ; #79100: origin
                    (at_b_p7)

                    ; #44641: <==negation-removal== 68483 (pos)
                    (not (at_b_p5))

                    ; #47252: <==negation-removal== 79100 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #27075: origin
                    (at_b_p8)

                    ; #68483: origin
                    (not_at_b_p5)

                    ; #29144: <==negation-removal== 27075 (pos)
                    (not (not_at_b_p8))

                    ; #44641: <==negation-removal== 68483 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #33579: origin
                    (at_b_p9)

                    ; #68483: origin
                    (not_at_b_p5)

                    ; #44641: <==negation-removal== 68483 (pos)
                    (not (at_b_p5))

                    ; #64559: <==negation-removal== 33579 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #74756: origin
                    (not_at_b_p6)

                    ; #84789: origin
                    (at_b_p1)

                    ; #32694: <==negation-removal== 84789 (pos)
                    (not (not_at_b_p1))

                    ; #52245: <==negation-removal== 74756 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6))
        :effect (and
                    ; #74756: origin
                    (not_at_b_p6)

                    ; #78630: origin
                    (at_b_p10)

                    ; #52245: <==negation-removal== 74756 (pos)
                    (not (at_b_p6))

                    ; #68854: <==negation-removal== 78630 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6))
        :effect (and
                    ; #74756: origin
                    (not_at_b_p6)

                    ; #91618: origin
                    (at_b_p11)

                    ; #43593: <==negation-removal== 91618 (pos)
                    (not (not_at_b_p11))

                    ; #52245: <==negation-removal== 74756 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6))
        :effect (and
                    ; #25219: origin
                    (at_b_p12)

                    ; #74756: origin
                    (not_at_b_p6)

                    ; #48767: <==negation-removal== 25219 (pos)
                    (not (not_at_b_p12))

                    ; #52245: <==negation-removal== 74756 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #48258: origin
                    (at_b_p2)

                    ; #74756: origin
                    (not_at_b_p6)

                    ; #18805: <==negation-removal== 48258 (pos)
                    (not (not_at_b_p2))

                    ; #52245: <==negation-removal== 74756 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #64551: origin
                    (at_b_p3)

                    ; #74756: origin
                    (not_at_b_p6)

                    ; #44178: <==negation-removal== 64551 (pos)
                    (not (not_at_b_p3))

                    ; #52245: <==negation-removal== 74756 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #74756: origin
                    (not_at_b_p6)

                    ; #77014: origin
                    (at_b_p4)

                    ; #15403: <==negation-removal== 77014 (pos)
                    (not (not_at_b_p4))

                    ; #52245: <==negation-removal== 74756 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #44641: origin
                    (at_b_p5)

                    ; #74756: origin
                    (not_at_b_p6)

                    ; #52245: <==negation-removal== 74756 (pos)
                    (not (at_b_p6))

                    ; #68483: <==negation-removal== 44641 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #52245: origin
                    (at_b_p6)

                    ; #74756: origin
                    (not_at_b_p6)

                    ; #52245: <==negation-removal== 74756 (pos)
                    (not (at_b_p6))

                    ; #74756: <==negation-removal== 52245 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #74756: origin
                    (not_at_b_p6)

                    ; #79100: origin
                    (at_b_p7)

                    ; #47252: <==negation-removal== 79100 (pos)
                    (not (not_at_b_p7))

                    ; #52245: <==negation-removal== 74756 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #27075: origin
                    (at_b_p8)

                    ; #74756: origin
                    (not_at_b_p6)

                    ; #29144: <==negation-removal== 27075 (pos)
                    (not (not_at_b_p8))

                    ; #52245: <==negation-removal== 74756 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #33579: origin
                    (at_b_p9)

                    ; #74756: origin
                    (not_at_b_p6)

                    ; #52245: <==negation-removal== 74756 (pos)
                    (not (at_b_p6))

                    ; #64559: <==negation-removal== 33579 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #47252: origin
                    (not_at_b_p7)

                    ; #84789: origin
                    (at_b_p1)

                    ; #32694: <==negation-removal== 84789 (pos)
                    (not (not_at_b_p1))

                    ; #79100: <==negation-removal== 47252 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #47252: origin
                    (not_at_b_p7)

                    ; #78630: origin
                    (at_b_p10)

                    ; #68854: <==negation-removal== 78630 (pos)
                    (not (not_at_b_p10))

                    ; #79100: <==negation-removal== 47252 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #47252: origin
                    (not_at_b_p7)

                    ; #91618: origin
                    (at_b_p11)

                    ; #43593: <==negation-removal== 91618 (pos)
                    (not (not_at_b_p11))

                    ; #79100: <==negation-removal== 47252 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (at_b_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #25219: origin
                    (at_b_p12)

                    ; #47252: origin
                    (not_at_b_p7)

                    ; #48767: <==negation-removal== 25219 (pos)
                    (not (not_at_b_p12))

                    ; #79100: <==negation-removal== 47252 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #47252: origin
                    (not_at_b_p7)

                    ; #48258: origin
                    (at_b_p2)

                    ; #18805: <==negation-removal== 48258 (pos)
                    (not (not_at_b_p2))

                    ; #79100: <==negation-removal== 47252 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #47252: origin
                    (not_at_b_p7)

                    ; #64551: origin
                    (at_b_p3)

                    ; #44178: <==negation-removal== 64551 (pos)
                    (not (not_at_b_p3))

                    ; #79100: <==negation-removal== 47252 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #47252: origin
                    (not_at_b_p7)

                    ; #77014: origin
                    (at_b_p4)

                    ; #15403: <==negation-removal== 77014 (pos)
                    (not (not_at_b_p4))

                    ; #79100: <==negation-removal== 47252 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #44641: origin
                    (at_b_p5)

                    ; #47252: origin
                    (not_at_b_p7)

                    ; #68483: <==negation-removal== 44641 (pos)
                    (not (not_at_b_p5))

                    ; #79100: <==negation-removal== 47252 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #47252: origin
                    (not_at_b_p7)

                    ; #52245: origin
                    (at_b_p6)

                    ; #74756: <==negation-removal== 52245 (pos)
                    (not (not_at_b_p6))

                    ; #79100: <==negation-removal== 47252 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #47252: origin
                    (not_at_b_p7)

                    ; #79100: origin
                    (at_b_p7)

                    ; #47252: <==negation-removal== 79100 (pos)
                    (not (not_at_b_p7))

                    ; #79100: <==negation-removal== 47252 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #27075: origin
                    (at_b_p8)

                    ; #47252: origin
                    (not_at_b_p7)

                    ; #29144: <==negation-removal== 27075 (pos)
                    (not (not_at_b_p8))

                    ; #79100: <==negation-removal== 47252 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #33579: origin
                    (at_b_p9)

                    ; #47252: origin
                    (not_at_b_p7)

                    ; #64559: <==negation-removal== 33579 (pos)
                    (not (not_at_b_p9))

                    ; #79100: <==negation-removal== 47252 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #29144: origin
                    (not_at_b_p8)

                    ; #84789: origin
                    (at_b_p1)

                    ; #27075: <==negation-removal== 29144 (pos)
                    (not (at_b_p8))

                    ; #32694: <==negation-removal== 84789 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8))
        :effect (and
                    ; #29144: origin
                    (not_at_b_p8)

                    ; #78630: origin
                    (at_b_p10)

                    ; #27075: <==negation-removal== 29144 (pos)
                    (not (at_b_p8))

                    ; #68854: <==negation-removal== 78630 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #29144: origin
                    (not_at_b_p8)

                    ; #91618: origin
                    (at_b_p11)

                    ; #27075: <==negation-removal== 29144 (pos)
                    (not (at_b_p8))

                    ; #43593: <==negation-removal== 91618 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8))
        :effect (and
                    ; #25219: origin
                    (at_b_p12)

                    ; #29144: origin
                    (not_at_b_p8)

                    ; #27075: <==negation-removal== 29144 (pos)
                    (not (at_b_p8))

                    ; #48767: <==negation-removal== 25219 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #29144: origin
                    (not_at_b_p8)

                    ; #48258: origin
                    (at_b_p2)

                    ; #18805: <==negation-removal== 48258 (pos)
                    (not (not_at_b_p2))

                    ; #27075: <==negation-removal== 29144 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #29144: origin
                    (not_at_b_p8)

                    ; #64551: origin
                    (at_b_p3)

                    ; #27075: <==negation-removal== 29144 (pos)
                    (not (at_b_p8))

                    ; #44178: <==negation-removal== 64551 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #29144: origin
                    (not_at_b_p8)

                    ; #77014: origin
                    (at_b_p4)

                    ; #15403: <==negation-removal== 77014 (pos)
                    (not (not_at_b_p4))

                    ; #27075: <==negation-removal== 29144 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #29144: origin
                    (not_at_b_p8)

                    ; #44641: origin
                    (at_b_p5)

                    ; #27075: <==negation-removal== 29144 (pos)
                    (not (at_b_p8))

                    ; #68483: <==negation-removal== 44641 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #29144: origin
                    (not_at_b_p8)

                    ; #52245: origin
                    (at_b_p6)

                    ; #27075: <==negation-removal== 29144 (pos)
                    (not (at_b_p8))

                    ; #74756: <==negation-removal== 52245 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #29144: origin
                    (not_at_b_p8)

                    ; #79100: origin
                    (at_b_p7)

                    ; #27075: <==negation-removal== 29144 (pos)
                    (not (at_b_p8))

                    ; #47252: <==negation-removal== 79100 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #27075: origin
                    (at_b_p8)

                    ; #29144: origin
                    (not_at_b_p8)

                    ; #27075: <==negation-removal== 29144 (pos)
                    (not (at_b_p8))

                    ; #29144: <==negation-removal== 27075 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #29144: origin
                    (not_at_b_p8)

                    ; #33579: origin
                    (at_b_p9)

                    ; #27075: <==negation-removal== 29144 (pos)
                    (not (at_b_p8))

                    ; #64559: <==negation-removal== 33579 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #64559: origin
                    (not_at_b_p9)

                    ; #84789: origin
                    (at_b_p1)

                    ; #32694: <==negation-removal== 84789 (pos)
                    (not (not_at_b_p1))

                    ; #33579: <==negation-removal== 64559 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9))
        :effect (and
                    ; #64559: origin
                    (not_at_b_p9)

                    ; #78630: origin
                    (at_b_p10)

                    ; #33579: <==negation-removal== 64559 (pos)
                    (not (at_b_p9))

                    ; #68854: <==negation-removal== 78630 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (at_b_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #64559: origin
                    (not_at_b_p9)

                    ; #91618: origin
                    (at_b_p11)

                    ; #33579: <==negation-removal== 64559 (pos)
                    (not (at_b_p9))

                    ; #43593: <==negation-removal== 91618 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #25219: origin
                    (at_b_p12)

                    ; #64559: origin
                    (not_at_b_p9)

                    ; #33579: <==negation-removal== 64559 (pos)
                    (not (at_b_p9))

                    ; #48767: <==negation-removal== 25219 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #48258: origin
                    (at_b_p2)

                    ; #64559: origin
                    (not_at_b_p9)

                    ; #18805: <==negation-removal== 48258 (pos)
                    (not (not_at_b_p2))

                    ; #33579: <==negation-removal== 64559 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #64551: origin
                    (at_b_p3)

                    ; #64559: origin
                    (not_at_b_p9)

                    ; #33579: <==negation-removal== 64559 (pos)
                    (not (at_b_p9))

                    ; #44178: <==negation-removal== 64551 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #64559: origin
                    (not_at_b_p9)

                    ; #77014: origin
                    (at_b_p4)

                    ; #15403: <==negation-removal== 77014 (pos)
                    (not (not_at_b_p4))

                    ; #33579: <==negation-removal== 64559 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #44641: origin
                    (at_b_p5)

                    ; #64559: origin
                    (not_at_b_p9)

                    ; #33579: <==negation-removal== 64559 (pos)
                    (not (at_b_p9))

                    ; #68483: <==negation-removal== 44641 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #52245: origin
                    (at_b_p6)

                    ; #64559: origin
                    (not_at_b_p9)

                    ; #33579: <==negation-removal== 64559 (pos)
                    (not (at_b_p9))

                    ; #74756: <==negation-removal== 52245 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #64559: origin
                    (not_at_b_p9)

                    ; #79100: origin
                    (at_b_p7)

                    ; #33579: <==negation-removal== 64559 (pos)
                    (not (at_b_p9))

                    ; #47252: <==negation-removal== 79100 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #27075: origin
                    (at_b_p8)

                    ; #64559: origin
                    (not_at_b_p9)

                    ; #29144: <==negation-removal== 27075 (pos)
                    (not (not_at_b_p8))

                    ; #33579: <==negation-removal== 64559 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #33579: origin
                    (at_b_p9)

                    ; #64559: origin
                    (not_at_b_p9)

                    ; #33579: <==negation-removal== 64559 (pos)
                    (not (at_b_p9))

                    ; #64559: <==negation-removal== 33579 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #67234: origin
                    (at_c_p1)

                    ; #83702: origin
                    (not_at_c_p10)

                    ; #13515: <==negation-removal== 67234 (pos)
                    (not (not_at_c_p1))

                    ; #86748: <==negation-removal== 83702 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_c_p10))
        :effect (and
                    ; #83702: origin
                    (not_at_c_p10)

                    ; #86748: origin
                    (at_c_p10)

                    ; #83702: <==negation-removal== 86748 (pos)
                    (not (not_at_c_p10))

                    ; #86748: <==negation-removal== 83702 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10))
        :effect (and
                    ; #22839: origin
                    (at_c_p11)

                    ; #83702: origin
                    (not_at_c_p10)

                    ; #22716: <==negation-removal== 22839 (pos)
                    (not (not_at_c_p11))

                    ; #86748: <==negation-removal== 83702 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10))
        :effect (and
                    ; #83702: origin
                    (not_at_c_p10)

                    ; #91099: origin
                    (at_c_p12)

                    ; #31921: <==negation-removal== 91099 (pos)
                    (not (not_at_c_p12))

                    ; #86748: <==negation-removal== 83702 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_c_p10))
        :effect (and
                    ; #23299: origin
                    (at_c_p2)

                    ; #83702: origin
                    (not_at_c_p10)

                    ; #30228: <==negation-removal== 23299 (pos)
                    (not (not_at_c_p2))

                    ; #86748: <==negation-removal== 83702 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10))
        :effect (and
                    ; #37464: origin
                    (at_c_p3)

                    ; #83702: origin
                    (not_at_c_p10)

                    ; #29354: <==negation-removal== 37464 (pos)
                    (not (not_at_c_p3))

                    ; #86748: <==negation-removal== 83702 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_c_p10))
        :effect (and
                    ; #83702: origin
                    (not_at_c_p10)

                    ; #86601: origin
                    (at_c_p4)

                    ; #84540: <==negation-removal== 86601 (pos)
                    (not (not_at_c_p4))

                    ; #86748: <==negation-removal== 83702 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_c_p10))
        :effect (and
                    ; #48693: origin
                    (at_c_p5)

                    ; #83702: origin
                    (not_at_c_p10)

                    ; #82882: <==negation-removal== 48693 (pos)
                    (not (not_at_c_p5))

                    ; #86748: <==negation-removal== 83702 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_c_p10))
        :effect (and
                    ; #10596: origin
                    (at_c_p6)

                    ; #83702: origin
                    (not_at_c_p10)

                    ; #62403: <==negation-removal== 10596 (pos)
                    (not (not_at_c_p6))

                    ; #86748: <==negation-removal== 83702 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_c_p10))
        :effect (and
                    ; #75721: origin
                    (at_c_p7)

                    ; #83702: origin
                    (not_at_c_p10)

                    ; #45413: <==negation-removal== 75721 (pos)
                    (not (not_at_c_p7))

                    ; #86748: <==negation-removal== 83702 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_c_p10))
        :effect (and
                    ; #64390: origin
                    (at_c_p8)

                    ; #83702: origin
                    (not_at_c_p10)

                    ; #33034: <==negation-removal== 64390 (pos)
                    (not (not_at_c_p8))

                    ; #86748: <==negation-removal== 83702 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_c_p10))
        :effect (and
                    ; #54256: origin
                    (at_c_p9)

                    ; #83702: origin
                    (not_at_c_p10)

                    ; #40234: <==negation-removal== 54256 (pos)
                    (not (not_at_c_p9))

                    ; #86748: <==negation-removal== 83702 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11))
        :effect (and
                    ; #22716: origin
                    (not_at_c_p11)

                    ; #67234: origin
                    (at_c_p1)

                    ; #13515: <==negation-removal== 67234 (pos)
                    (not (not_at_c_p1))

                    ; #22839: <==negation-removal== 22716 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11))
        :effect (and
                    ; #22716: origin
                    (not_at_c_p11)

                    ; #86748: origin
                    (at_c_p10)

                    ; #22839: <==negation-removal== 22716 (pos)
                    (not (at_c_p11))

                    ; #83702: <==negation-removal== 86748 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_c_p11))
        :effect (and
                    ; #22716: origin
                    (not_at_c_p11)

                    ; #22839: origin
                    (at_c_p11)

                    ; #22716: <==negation-removal== 22839 (pos)
                    (not (not_at_c_p11))

                    ; #22839: <==negation-removal== 22716 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11))
        :effect (and
                    ; #22716: origin
                    (not_at_c_p11)

                    ; #91099: origin
                    (at_c_p12)

                    ; #22839: <==negation-removal== 22716 (pos)
                    (not (at_c_p11))

                    ; #31921: <==negation-removal== 91099 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11))
        :effect (and
                    ; #22716: origin
                    (not_at_c_p11)

                    ; #23299: origin
                    (at_c_p2)

                    ; #22839: <==negation-removal== 22716 (pos)
                    (not (at_c_p11))

                    ; #30228: <==negation-removal== 23299 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_c_p11))
        :effect (and
                    ; #22716: origin
                    (not_at_c_p11)

                    ; #37464: origin
                    (at_c_p3)

                    ; #22839: <==negation-removal== 22716 (pos)
                    (not (at_c_p11))

                    ; #29354: <==negation-removal== 37464 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11))
        :effect (and
                    ; #22716: origin
                    (not_at_c_p11)

                    ; #86601: origin
                    (at_c_p4)

                    ; #22839: <==negation-removal== 22716 (pos)
                    (not (at_c_p11))

                    ; #84540: <==negation-removal== 86601 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_c_p11))
        :effect (and
                    ; #22716: origin
                    (not_at_c_p11)

                    ; #48693: origin
                    (at_c_p5)

                    ; #22839: <==negation-removal== 22716 (pos)
                    (not (at_c_p11))

                    ; #82882: <==negation-removal== 48693 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11))
        :effect (and
                    ; #10596: origin
                    (at_c_p6)

                    ; #22716: origin
                    (not_at_c_p11)

                    ; #22839: <==negation-removal== 22716 (pos)
                    (not (at_c_p11))

                    ; #62403: <==negation-removal== 10596 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11))
        :effect (and
                    ; #22716: origin
                    (not_at_c_p11)

                    ; #75721: origin
                    (at_c_p7)

                    ; #22839: <==negation-removal== 22716 (pos)
                    (not (at_c_p11))

                    ; #45413: <==negation-removal== 75721 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11))
        :effect (and
                    ; #22716: origin
                    (not_at_c_p11)

                    ; #64390: origin
                    (at_c_p8)

                    ; #22839: <==negation-removal== 22716 (pos)
                    (not (at_c_p11))

                    ; #33034: <==negation-removal== 64390 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11))
        :effect (and
                    ; #22716: origin
                    (not_at_c_p11)

                    ; #54256: origin
                    (at_c_p9)

                    ; #22839: <==negation-removal== 22716 (pos)
                    (not (at_c_p11))

                    ; #40234: <==negation-removal== 54256 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #31921: origin
                    (not_at_c_p12)

                    ; #67234: origin
                    (at_c_p1)

                    ; #13515: <==negation-removal== 67234 (pos)
                    (not (not_at_c_p1))

                    ; #91099: <==negation-removal== 31921 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #31921: origin
                    (not_at_c_p12)

                    ; #86748: origin
                    (at_c_p10)

                    ; #83702: <==negation-removal== 86748 (pos)
                    (not (not_at_c_p10))

                    ; #91099: <==negation-removal== 31921 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #22839: origin
                    (at_c_p11)

                    ; #31921: origin
                    (not_at_c_p12)

                    ; #22716: <==negation-removal== 22839 (pos)
                    (not (not_at_c_p11))

                    ; #91099: <==negation-removal== 31921 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12))
        :effect (and
                    ; #31921: origin
                    (not_at_c_p12)

                    ; #91099: origin
                    (at_c_p12)

                    ; #31921: <==negation-removal== 91099 (pos)
                    (not (not_at_c_p12))

                    ; #91099: <==negation-removal== 31921 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (at_c_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #23299: origin
                    (at_c_p2)

                    ; #31921: origin
                    (not_at_c_p12)

                    ; #30228: <==negation-removal== 23299 (pos)
                    (not (not_at_c_p2))

                    ; #91099: <==negation-removal== 31921 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #31921: origin
                    (not_at_c_p12)

                    ; #37464: origin
                    (at_c_p3)

                    ; #29354: <==negation-removal== 37464 (pos)
                    (not (not_at_c_p3))

                    ; #91099: <==negation-removal== 31921 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12))
        :effect (and
                    ; #31921: origin
                    (not_at_c_p12)

                    ; #86601: origin
                    (at_c_p4)

                    ; #84540: <==negation-removal== 86601 (pos)
                    (not (not_at_c_p4))

                    ; #91099: <==negation-removal== 31921 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #31921: origin
                    (not_at_c_p12)

                    ; #48693: origin
                    (at_c_p5)

                    ; #82882: <==negation-removal== 48693 (pos)
                    (not (not_at_c_p5))

                    ; #91099: <==negation-removal== 31921 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12))
        :effect (and
                    ; #10596: origin
                    (at_c_p6)

                    ; #31921: origin
                    (not_at_c_p12)

                    ; #62403: <==negation-removal== 10596 (pos)
                    (not (not_at_c_p6))

                    ; #91099: <==negation-removal== 31921 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #31921: origin
                    (not_at_c_p12)

                    ; #75721: origin
                    (at_c_p7)

                    ; #45413: <==negation-removal== 75721 (pos)
                    (not (not_at_c_p7))

                    ; #91099: <==negation-removal== 31921 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #31921: origin
                    (not_at_c_p12)

                    ; #64390: origin
                    (at_c_p8)

                    ; #33034: <==negation-removal== 64390 (pos)
                    (not (not_at_c_p8))

                    ; #91099: <==negation-removal== 31921 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #31921: origin
                    (not_at_c_p12)

                    ; #54256: origin
                    (at_c_p9)

                    ; #40234: <==negation-removal== 54256 (pos)
                    (not (not_at_c_p9))

                    ; #91099: <==negation-removal== 31921 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #13515: origin
                    (not_at_c_p1)

                    ; #67234: origin
                    (at_c_p1)

                    ; #13515: <==negation-removal== 67234 (pos)
                    (not (not_at_c_p1))

                    ; #67234: <==negation-removal== 13515 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_c_p1))
        :effect (and
                    ; #13515: origin
                    (not_at_c_p1)

                    ; #86748: origin
                    (at_c_p10)

                    ; #67234: <==negation-removal== 13515 (pos)
                    (not (at_c_p1))

                    ; #83702: <==negation-removal== 86748 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_c_p1))
        :effect (and
                    ; #13515: origin
                    (not_at_c_p1)

                    ; #22839: origin
                    (at_c_p11)

                    ; #22716: <==negation-removal== 22839 (pos)
                    (not (not_at_c_p11))

                    ; #67234: <==negation-removal== 13515 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #13515: origin
                    (not_at_c_p1)

                    ; #91099: origin
                    (at_c_p12)

                    ; #31921: <==negation-removal== 91099 (pos)
                    (not (not_at_c_p12))

                    ; #67234: <==negation-removal== 13515 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #13515: origin
                    (not_at_c_p1)

                    ; #23299: origin
                    (at_c_p2)

                    ; #30228: <==negation-removal== 23299 (pos)
                    (not (not_at_c_p2))

                    ; #67234: <==negation-removal== 13515 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #13515: origin
                    (not_at_c_p1)

                    ; #37464: origin
                    (at_c_p3)

                    ; #29354: <==negation-removal== 37464 (pos)
                    (not (not_at_c_p3))

                    ; #67234: <==negation-removal== 13515 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #13515: origin
                    (not_at_c_p1)

                    ; #86601: origin
                    (at_c_p4)

                    ; #67234: <==negation-removal== 13515 (pos)
                    (not (at_c_p1))

                    ; #84540: <==negation-removal== 86601 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #13515: origin
                    (not_at_c_p1)

                    ; #48693: origin
                    (at_c_p5)

                    ; #67234: <==negation-removal== 13515 (pos)
                    (not (at_c_p1))

                    ; #82882: <==negation-removal== 48693 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #10596: origin
                    (at_c_p6)

                    ; #13515: origin
                    (not_at_c_p1)

                    ; #62403: <==negation-removal== 10596 (pos)
                    (not (not_at_c_p6))

                    ; #67234: <==negation-removal== 13515 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #13515: origin
                    (not_at_c_p1)

                    ; #75721: origin
                    (at_c_p7)

                    ; #45413: <==negation-removal== 75721 (pos)
                    (not (not_at_c_p7))

                    ; #67234: <==negation-removal== 13515 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #13515: origin
                    (not_at_c_p1)

                    ; #64390: origin
                    (at_c_p8)

                    ; #33034: <==negation-removal== 64390 (pos)
                    (not (not_at_c_p8))

                    ; #67234: <==negation-removal== 13515 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #13515: origin
                    (not_at_c_p1)

                    ; #54256: origin
                    (at_c_p9)

                    ; #40234: <==negation-removal== 54256 (pos)
                    (not (not_at_c_p9))

                    ; #67234: <==negation-removal== 13515 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #30228: origin
                    (not_at_c_p2)

                    ; #67234: origin
                    (at_c_p1)

                    ; #13515: <==negation-removal== 67234 (pos)
                    (not (not_at_c_p1))

                    ; #23299: <==negation-removal== 30228 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2))
        :effect (and
                    ; #30228: origin
                    (not_at_c_p2)

                    ; #86748: origin
                    (at_c_p10)

                    ; #23299: <==negation-removal== 30228 (pos)
                    (not (at_c_p2))

                    ; #83702: <==negation-removal== 86748 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2))
        :effect (and
                    ; #22839: origin
                    (at_c_p11)

                    ; #30228: origin
                    (not_at_c_p2)

                    ; #22716: <==negation-removal== 22839 (pos)
                    (not (not_at_c_p11))

                    ; #23299: <==negation-removal== 30228 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_c_p2))
        :effect (and
                    ; #30228: origin
                    (not_at_c_p2)

                    ; #91099: origin
                    (at_c_p12)

                    ; #23299: <==negation-removal== 30228 (pos)
                    (not (at_c_p2))

                    ; #31921: <==negation-removal== 91099 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #23299: origin
                    (at_c_p2)

                    ; #30228: origin
                    (not_at_c_p2)

                    ; #23299: <==negation-removal== 30228 (pos)
                    (not (at_c_p2))

                    ; #30228: <==negation-removal== 23299 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #30228: origin
                    (not_at_c_p2)

                    ; #37464: origin
                    (at_c_p3)

                    ; #23299: <==negation-removal== 30228 (pos)
                    (not (at_c_p2))

                    ; #29354: <==negation-removal== 37464 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #30228: origin
                    (not_at_c_p2)

                    ; #86601: origin
                    (at_c_p4)

                    ; #23299: <==negation-removal== 30228 (pos)
                    (not (at_c_p2))

                    ; #84540: <==negation-removal== 86601 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #30228: origin
                    (not_at_c_p2)

                    ; #48693: origin
                    (at_c_p5)

                    ; #23299: <==negation-removal== 30228 (pos)
                    (not (at_c_p2))

                    ; #82882: <==negation-removal== 48693 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #10596: origin
                    (at_c_p6)

                    ; #30228: origin
                    (not_at_c_p2)

                    ; #23299: <==negation-removal== 30228 (pos)
                    (not (at_c_p2))

                    ; #62403: <==negation-removal== 10596 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #30228: origin
                    (not_at_c_p2)

                    ; #75721: origin
                    (at_c_p7)

                    ; #23299: <==negation-removal== 30228 (pos)
                    (not (at_c_p2))

                    ; #45413: <==negation-removal== 75721 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #30228: origin
                    (not_at_c_p2)

                    ; #64390: origin
                    (at_c_p8)

                    ; #23299: <==negation-removal== 30228 (pos)
                    (not (at_c_p2))

                    ; #33034: <==negation-removal== 64390 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #30228: origin
                    (not_at_c_p2)

                    ; #54256: origin
                    (at_c_p9)

                    ; #23299: <==negation-removal== 30228 (pos)
                    (not (at_c_p2))

                    ; #40234: <==negation-removal== 54256 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #29354: origin
                    (not_at_c_p3)

                    ; #67234: origin
                    (at_c_p1)

                    ; #13515: <==negation-removal== 67234 (pos)
                    (not (not_at_c_p1))

                    ; #37464: <==negation-removal== 29354 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #29354: origin
                    (not_at_c_p3)

                    ; #86748: origin
                    (at_c_p10)

                    ; #37464: <==negation-removal== 29354 (pos)
                    (not (at_c_p3))

                    ; #83702: <==negation-removal== 86748 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #22839: origin
                    (at_c_p11)

                    ; #29354: origin
                    (not_at_c_p3)

                    ; #22716: <==negation-removal== 22839 (pos)
                    (not (not_at_c_p11))

                    ; #37464: <==negation-removal== 29354 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_c_p3))
        :effect (and
                    ; #29354: origin
                    (not_at_c_p3)

                    ; #91099: origin
                    (at_c_p12)

                    ; #31921: <==negation-removal== 91099 (pos)
                    (not (not_at_c_p12))

                    ; #37464: <==negation-removal== 29354 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #23299: origin
                    (at_c_p2)

                    ; #29354: origin
                    (not_at_c_p3)

                    ; #30228: <==negation-removal== 23299 (pos)
                    (not (not_at_c_p2))

                    ; #37464: <==negation-removal== 29354 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #29354: origin
                    (not_at_c_p3)

                    ; #37464: origin
                    (at_c_p3)

                    ; #29354: <==negation-removal== 37464 (pos)
                    (not (not_at_c_p3))

                    ; #37464: <==negation-removal== 29354 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #29354: origin
                    (not_at_c_p3)

                    ; #86601: origin
                    (at_c_p4)

                    ; #37464: <==negation-removal== 29354 (pos)
                    (not (at_c_p3))

                    ; #84540: <==negation-removal== 86601 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #29354: origin
                    (not_at_c_p3)

                    ; #48693: origin
                    (at_c_p5)

                    ; #37464: <==negation-removal== 29354 (pos)
                    (not (at_c_p3))

                    ; #82882: <==negation-removal== 48693 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #10596: origin
                    (at_c_p6)

                    ; #29354: origin
                    (not_at_c_p3)

                    ; #37464: <==negation-removal== 29354 (pos)
                    (not (at_c_p3))

                    ; #62403: <==negation-removal== 10596 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #29354: origin
                    (not_at_c_p3)

                    ; #75721: origin
                    (at_c_p7)

                    ; #37464: <==negation-removal== 29354 (pos)
                    (not (at_c_p3))

                    ; #45413: <==negation-removal== 75721 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #29354: origin
                    (not_at_c_p3)

                    ; #64390: origin
                    (at_c_p8)

                    ; #33034: <==negation-removal== 64390 (pos)
                    (not (not_at_c_p8))

                    ; #37464: <==negation-removal== 29354 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #29354: origin
                    (not_at_c_p3)

                    ; #54256: origin
                    (at_c_p9)

                    ; #37464: <==negation-removal== 29354 (pos)
                    (not (at_c_p3))

                    ; #40234: <==negation-removal== 54256 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #67234: origin
                    (at_c_p1)

                    ; #84540: origin
                    (not_at_c_p4)

                    ; #13515: <==negation-removal== 67234 (pos)
                    (not (not_at_c_p1))

                    ; #86601: <==negation-removal== 84540 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_c_p4))
        :effect (and
                    ; #84540: origin
                    (not_at_c_p4)

                    ; #86748: origin
                    (at_c_p10)

                    ; #83702: <==negation-removal== 86748 (pos)
                    (not (not_at_c_p10))

                    ; #86601: <==negation-removal== 84540 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4))
        :effect (and
                    ; #22839: origin
                    (at_c_p11)

                    ; #84540: origin
                    (not_at_c_p4)

                    ; #22716: <==negation-removal== 22839 (pos)
                    (not (not_at_c_p11))

                    ; #86601: <==negation-removal== 84540 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #84540: origin
                    (not_at_c_p4)

                    ; #91099: origin
                    (at_c_p12)

                    ; #31921: <==negation-removal== 91099 (pos)
                    (not (not_at_c_p12))

                    ; #86601: <==negation-removal== 84540 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #23299: origin
                    (at_c_p2)

                    ; #84540: origin
                    (not_at_c_p4)

                    ; #30228: <==negation-removal== 23299 (pos)
                    (not (not_at_c_p2))

                    ; #86601: <==negation-removal== 84540 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #37464: origin
                    (at_c_p3)

                    ; #84540: origin
                    (not_at_c_p4)

                    ; #29354: <==negation-removal== 37464 (pos)
                    (not (not_at_c_p3))

                    ; #86601: <==negation-removal== 84540 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #84540: origin
                    (not_at_c_p4)

                    ; #86601: origin
                    (at_c_p4)

                    ; #84540: <==negation-removal== 86601 (pos)
                    (not (not_at_c_p4))

                    ; #86601: <==negation-removal== 84540 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #48693: origin
                    (at_c_p5)

                    ; #84540: origin
                    (not_at_c_p4)

                    ; #82882: <==negation-removal== 48693 (pos)
                    (not (not_at_c_p5))

                    ; #86601: <==negation-removal== 84540 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #10596: origin
                    (at_c_p6)

                    ; #84540: origin
                    (not_at_c_p4)

                    ; #62403: <==negation-removal== 10596 (pos)
                    (not (not_at_c_p6))

                    ; #86601: <==negation-removal== 84540 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #75721: origin
                    (at_c_p7)

                    ; #84540: origin
                    (not_at_c_p4)

                    ; #45413: <==negation-removal== 75721 (pos)
                    (not (not_at_c_p7))

                    ; #86601: <==negation-removal== 84540 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #64390: origin
                    (at_c_p8)

                    ; #84540: origin
                    (not_at_c_p4)

                    ; #33034: <==negation-removal== 64390 (pos)
                    (not (not_at_c_p8))

                    ; #86601: <==negation-removal== 84540 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #54256: origin
                    (at_c_p9)

                    ; #84540: origin
                    (not_at_c_p4)

                    ; #40234: <==negation-removal== 54256 (pos)
                    (not (not_at_c_p9))

                    ; #86601: <==negation-removal== 84540 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #67234: origin
                    (at_c_p1)

                    ; #82882: origin
                    (not_at_c_p5)

                    ; #13515: <==negation-removal== 67234 (pos)
                    (not (not_at_c_p1))

                    ; #48693: <==negation-removal== 82882 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5))
        :effect (and
                    ; #82882: origin
                    (not_at_c_p5)

                    ; #86748: origin
                    (at_c_p10)

                    ; #48693: <==negation-removal== 82882 (pos)
                    (not (at_c_p5))

                    ; #83702: <==negation-removal== 86748 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #22839: origin
                    (at_c_p11)

                    ; #82882: origin
                    (not_at_c_p5)

                    ; #22716: <==negation-removal== 22839 (pos)
                    (not (not_at_c_p11))

                    ; #48693: <==negation-removal== 82882 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #82882: origin
                    (not_at_c_p5)

                    ; #91099: origin
                    (at_c_p12)

                    ; #31921: <==negation-removal== 91099 (pos)
                    (not (not_at_c_p12))

                    ; #48693: <==negation-removal== 82882 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #23299: origin
                    (at_c_p2)

                    ; #82882: origin
                    (not_at_c_p5)

                    ; #30228: <==negation-removal== 23299 (pos)
                    (not (not_at_c_p2))

                    ; #48693: <==negation-removal== 82882 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #37464: origin
                    (at_c_p3)

                    ; #82882: origin
                    (not_at_c_p5)

                    ; #29354: <==negation-removal== 37464 (pos)
                    (not (not_at_c_p3))

                    ; #48693: <==negation-removal== 82882 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #82882: origin
                    (not_at_c_p5)

                    ; #86601: origin
                    (at_c_p4)

                    ; #48693: <==negation-removal== 82882 (pos)
                    (not (at_c_p5))

                    ; #84540: <==negation-removal== 86601 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #48693: origin
                    (at_c_p5)

                    ; #82882: origin
                    (not_at_c_p5)

                    ; #48693: <==negation-removal== 82882 (pos)
                    (not (at_c_p5))

                    ; #82882: <==negation-removal== 48693 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #10596: origin
                    (at_c_p6)

                    ; #82882: origin
                    (not_at_c_p5)

                    ; #48693: <==negation-removal== 82882 (pos)
                    (not (at_c_p5))

                    ; #62403: <==negation-removal== 10596 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #75721: origin
                    (at_c_p7)

                    ; #82882: origin
                    (not_at_c_p5)

                    ; #45413: <==negation-removal== 75721 (pos)
                    (not (not_at_c_p7))

                    ; #48693: <==negation-removal== 82882 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #64390: origin
                    (at_c_p8)

                    ; #82882: origin
                    (not_at_c_p5)

                    ; #33034: <==negation-removal== 64390 (pos)
                    (not (not_at_c_p8))

                    ; #48693: <==negation-removal== 82882 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #54256: origin
                    (at_c_p9)

                    ; #82882: origin
                    (not_at_c_p5)

                    ; #40234: <==negation-removal== 54256 (pos)
                    (not (not_at_c_p9))

                    ; #48693: <==negation-removal== 82882 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #62403: origin
                    (not_at_c_p6)

                    ; #67234: origin
                    (at_c_p1)

                    ; #10596: <==negation-removal== 62403 (pos)
                    (not (at_c_p6))

                    ; #13515: <==negation-removal== 67234 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #62403: origin
                    (not_at_c_p6)

                    ; #86748: origin
                    (at_c_p10)

                    ; #10596: <==negation-removal== 62403 (pos)
                    (not (at_c_p6))

                    ; #83702: <==negation-removal== 86748 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #22839: origin
                    (at_c_p11)

                    ; #62403: origin
                    (not_at_c_p6)

                    ; #10596: <==negation-removal== 62403 (pos)
                    (not (at_c_p6))

                    ; #22716: <==negation-removal== 22839 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #62403: origin
                    (not_at_c_p6)

                    ; #91099: origin
                    (at_c_p12)

                    ; #10596: <==negation-removal== 62403 (pos)
                    (not (at_c_p6))

                    ; #31921: <==negation-removal== 91099 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #23299: origin
                    (at_c_p2)

                    ; #62403: origin
                    (not_at_c_p6)

                    ; #10596: <==negation-removal== 62403 (pos)
                    (not (at_c_p6))

                    ; #30228: <==negation-removal== 23299 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #37464: origin
                    (at_c_p3)

                    ; #62403: origin
                    (not_at_c_p6)

                    ; #10596: <==negation-removal== 62403 (pos)
                    (not (at_c_p6))

                    ; #29354: <==negation-removal== 37464 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #62403: origin
                    (not_at_c_p6)

                    ; #86601: origin
                    (at_c_p4)

                    ; #10596: <==negation-removal== 62403 (pos)
                    (not (at_c_p6))

                    ; #84540: <==negation-removal== 86601 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #48693: origin
                    (at_c_p5)

                    ; #62403: origin
                    (not_at_c_p6)

                    ; #10596: <==negation-removal== 62403 (pos)
                    (not (at_c_p6))

                    ; #82882: <==negation-removal== 48693 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #10596: origin
                    (at_c_p6)

                    ; #62403: origin
                    (not_at_c_p6)

                    ; #10596: <==negation-removal== 62403 (pos)
                    (not (at_c_p6))

                    ; #62403: <==negation-removal== 10596 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #62403: origin
                    (not_at_c_p6)

                    ; #75721: origin
                    (at_c_p7)

                    ; #10596: <==negation-removal== 62403 (pos)
                    (not (at_c_p6))

                    ; #45413: <==negation-removal== 75721 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #62403: origin
                    (not_at_c_p6)

                    ; #64390: origin
                    (at_c_p8)

                    ; #10596: <==negation-removal== 62403 (pos)
                    (not (at_c_p6))

                    ; #33034: <==negation-removal== 64390 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #54256: origin
                    (at_c_p9)

                    ; #62403: origin
                    (not_at_c_p6)

                    ; #10596: <==negation-removal== 62403 (pos)
                    (not (at_c_p6))

                    ; #40234: <==negation-removal== 54256 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #45413: origin
                    (not_at_c_p7)

                    ; #67234: origin
                    (at_c_p1)

                    ; #13515: <==negation-removal== 67234 (pos)
                    (not (not_at_c_p1))

                    ; #75721: <==negation-removal== 45413 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (at_c_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #45413: origin
                    (not_at_c_p7)

                    ; #86748: origin
                    (at_c_p10)

                    ; #75721: <==negation-removal== 45413 (pos)
                    (not (at_c_p7))

                    ; #83702: <==negation-removal== 86748 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #22839: origin
                    (at_c_p11)

                    ; #45413: origin
                    (not_at_c_p7)

                    ; #22716: <==negation-removal== 22839 (pos)
                    (not (not_at_c_p11))

                    ; #75721: <==negation-removal== 45413 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #45413: origin
                    (not_at_c_p7)

                    ; #91099: origin
                    (at_c_p12)

                    ; #31921: <==negation-removal== 91099 (pos)
                    (not (not_at_c_p12))

                    ; #75721: <==negation-removal== 45413 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #23299: origin
                    (at_c_p2)

                    ; #45413: origin
                    (not_at_c_p7)

                    ; #30228: <==negation-removal== 23299 (pos)
                    (not (not_at_c_p2))

                    ; #75721: <==negation-removal== 45413 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #37464: origin
                    (at_c_p3)

                    ; #45413: origin
                    (not_at_c_p7)

                    ; #29354: <==negation-removal== 37464 (pos)
                    (not (not_at_c_p3))

                    ; #75721: <==negation-removal== 45413 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #45413: origin
                    (not_at_c_p7)

                    ; #86601: origin
                    (at_c_p4)

                    ; #75721: <==negation-removal== 45413 (pos)
                    (not (at_c_p7))

                    ; #84540: <==negation-removal== 86601 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #45413: origin
                    (not_at_c_p7)

                    ; #48693: origin
                    (at_c_p5)

                    ; #75721: <==negation-removal== 45413 (pos)
                    (not (at_c_p7))

                    ; #82882: <==negation-removal== 48693 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #10596: origin
                    (at_c_p6)

                    ; #45413: origin
                    (not_at_c_p7)

                    ; #62403: <==negation-removal== 10596 (pos)
                    (not (not_at_c_p6))

                    ; #75721: <==negation-removal== 45413 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #45413: origin
                    (not_at_c_p7)

                    ; #75721: origin
                    (at_c_p7)

                    ; #45413: <==negation-removal== 75721 (pos)
                    (not (not_at_c_p7))

                    ; #75721: <==negation-removal== 45413 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #45413: origin
                    (not_at_c_p7)

                    ; #64390: origin
                    (at_c_p8)

                    ; #33034: <==negation-removal== 64390 (pos)
                    (not (not_at_c_p8))

                    ; #75721: <==negation-removal== 45413 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #45413: origin
                    (not_at_c_p7)

                    ; #54256: origin
                    (at_c_p9)

                    ; #40234: <==negation-removal== 54256 (pos)
                    (not (not_at_c_p9))

                    ; #75721: <==negation-removal== 45413 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #33034: origin
                    (not_at_c_p8)

                    ; #67234: origin
                    (at_c_p1)

                    ; #13515: <==negation-removal== 67234 (pos)
                    (not (not_at_c_p1))

                    ; #64390: <==negation-removal== 33034 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8))
        :effect (and
                    ; #33034: origin
                    (not_at_c_p8)

                    ; #86748: origin
                    (at_c_p10)

                    ; #64390: <==negation-removal== 33034 (pos)
                    (not (at_c_p8))

                    ; #83702: <==negation-removal== 86748 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8))
        :effect (and
                    ; #22839: origin
                    (at_c_p11)

                    ; #33034: origin
                    (not_at_c_p8)

                    ; #22716: <==negation-removal== 22839 (pos)
                    (not (not_at_c_p11))

                    ; #64390: <==negation-removal== 33034 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_c_p8))
        :effect (and
                    ; #33034: origin
                    (not_at_c_p8)

                    ; #91099: origin
                    (at_c_p12)

                    ; #31921: <==negation-removal== 91099 (pos)
                    (not (not_at_c_p12))

                    ; #64390: <==negation-removal== 33034 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #23299: origin
                    (at_c_p2)

                    ; #33034: origin
                    (not_at_c_p8)

                    ; #30228: <==negation-removal== 23299 (pos)
                    (not (not_at_c_p2))

                    ; #64390: <==negation-removal== 33034 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #33034: origin
                    (not_at_c_p8)

                    ; #37464: origin
                    (at_c_p3)

                    ; #29354: <==negation-removal== 37464 (pos)
                    (not (not_at_c_p3))

                    ; #64390: <==negation-removal== 33034 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #33034: origin
                    (not_at_c_p8)

                    ; #86601: origin
                    (at_c_p4)

                    ; #64390: <==negation-removal== 33034 (pos)
                    (not (at_c_p8))

                    ; #84540: <==negation-removal== 86601 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #33034: origin
                    (not_at_c_p8)

                    ; #48693: origin
                    (at_c_p5)

                    ; #64390: <==negation-removal== 33034 (pos)
                    (not (at_c_p8))

                    ; #82882: <==negation-removal== 48693 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #10596: origin
                    (at_c_p6)

                    ; #33034: origin
                    (not_at_c_p8)

                    ; #62403: <==negation-removal== 10596 (pos)
                    (not (not_at_c_p6))

                    ; #64390: <==negation-removal== 33034 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #33034: origin
                    (not_at_c_p8)

                    ; #75721: origin
                    (at_c_p7)

                    ; #45413: <==negation-removal== 75721 (pos)
                    (not (not_at_c_p7))

                    ; #64390: <==negation-removal== 33034 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #33034: origin
                    (not_at_c_p8)

                    ; #64390: origin
                    (at_c_p8)

                    ; #33034: <==negation-removal== 64390 (pos)
                    (not (not_at_c_p8))

                    ; #64390: <==negation-removal== 33034 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #33034: origin
                    (not_at_c_p8)

                    ; #54256: origin
                    (at_c_p9)

                    ; #40234: <==negation-removal== 54256 (pos)
                    (not (not_at_c_p9))

                    ; #64390: <==negation-removal== 33034 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #40234: origin
                    (not_at_c_p9)

                    ; #67234: origin
                    (at_c_p1)

                    ; #13515: <==negation-removal== 67234 (pos)
                    (not (not_at_c_p1))

                    ; #54256: <==negation-removal== 40234 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9))
        :effect (and
                    ; #40234: origin
                    (not_at_c_p9)

                    ; #86748: origin
                    (at_c_p10)

                    ; #54256: <==negation-removal== 40234 (pos)
                    (not (at_c_p9))

                    ; #83702: <==negation-removal== 86748 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p9_p11
        :precondition (and (at_c_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #22839: origin
                    (at_c_p11)

                    ; #40234: origin
                    (not_at_c_p9)

                    ; #22716: <==negation-removal== 22839 (pos)
                    (not (not_at_c_p11))

                    ; #54256: <==negation-removal== 40234 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #40234: origin
                    (not_at_c_p9)

                    ; #91099: origin
                    (at_c_p12)

                    ; #31921: <==negation-removal== 91099 (pos)
                    (not (not_at_c_p12))

                    ; #54256: <==negation-removal== 40234 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #23299: origin
                    (at_c_p2)

                    ; #40234: origin
                    (not_at_c_p9)

                    ; #30228: <==negation-removal== 23299 (pos)
                    (not (not_at_c_p2))

                    ; #54256: <==negation-removal== 40234 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #37464: origin
                    (at_c_p3)

                    ; #40234: origin
                    (not_at_c_p9)

                    ; #29354: <==negation-removal== 37464 (pos)
                    (not (not_at_c_p3))

                    ; #54256: <==negation-removal== 40234 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #40234: origin
                    (not_at_c_p9)

                    ; #86601: origin
                    (at_c_p4)

                    ; #54256: <==negation-removal== 40234 (pos)
                    (not (at_c_p9))

                    ; #84540: <==negation-removal== 86601 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #40234: origin
                    (not_at_c_p9)

                    ; #48693: origin
                    (at_c_p5)

                    ; #54256: <==negation-removal== 40234 (pos)
                    (not (at_c_p9))

                    ; #82882: <==negation-removal== 48693 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #10596: origin
                    (at_c_p6)

                    ; #40234: origin
                    (not_at_c_p9)

                    ; #54256: <==negation-removal== 40234 (pos)
                    (not (at_c_p9))

                    ; #62403: <==negation-removal== 10596 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #40234: origin
                    (not_at_c_p9)

                    ; #75721: origin
                    (at_c_p7)

                    ; #45413: <==negation-removal== 75721 (pos)
                    (not (not_at_c_p7))

                    ; #54256: <==negation-removal== 40234 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #40234: origin
                    (not_at_c_p9)

                    ; #64390: origin
                    (at_c_p8)

                    ; #33034: <==negation-removal== 64390 (pos)
                    (not (not_at_c_p8))

                    ; #54256: <==negation-removal== 40234 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #40234: origin
                    (not_at_c_p9)

                    ; #54256: origin
                    (at_c_p9)

                    ; #40234: <==negation-removal== 54256 (pos)
                    (not (not_at_c_p9))

                    ; #54256: <==negation-removal== 40234 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #12557: <==commonly_known== 31219 (pos)
                    (Bc_checked_p10)

                    ; #20288: <==closure== 73304 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #31219: origin
                    (checked_p10)

                    ; #59326: <==commonly_known== 77553 (neg)
                    (Pb_checked_p10)

                    ; #64829: <==commonly_known== 77553 (neg)
                    (Pc_checked_p10)

                    ; #65344: <==commonly_known== 77553 (neg)
                    (Pa_checked_p10)

                    ; #66568: <==commonly_known== 31219 (pos)
                    (Bb_checked_p10)

                    ; #70391: <==commonly_known== 31219 (pos)
                    (Ba_checked_p10)

                    ; #73304: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #74022: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #74572: <==closure== 74022 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #13046: <==uncertain_firing== 74572 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #13995: <==uncertain_firing== 73304 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #22447: <==negation-removal== 73304 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #22741: <==negation-removal== 12557 (pos)
                    (not (Pc_not_checked_p10))

                    ; #42608: <==uncertain_firing== 74022 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #48702: <==negation-removal== 66568 (pos)
                    (not (Pb_not_checked_p10))

                    ; #50732: <==negation-removal== 74022 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #55252: <==negation-removal== 59326 (pos)
                    (not (Bb_not_checked_p10))

                    ; #62044: <==negation-removal== 70391 (pos)
                    (not (Pa_not_checked_p10))

                    ; #64246: <==uncertain_firing== 20288 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #70576: <==negation-removal== 20288 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #71633: <==negation-removal== 64829 (pos)
                    (not (Bc_not_checked_p10))

                    ; #77553: <==negation-removal== 31219 (pos)
                    (not (not_checked_p10))

                    ; #80995: <==negation-removal== 65344 (pos)
                    (not (Ba_not_checked_p10))

                    ; #81780: <==negation-removal== 74572 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #18669: origin
                    (checked_p11)

                    ; #25275: <==commonly_known== 44107 (neg)
                    (Pc_checked_p11)

                    ; #50138: <==commonly_known== 18669 (pos)
                    (Ba_checked_p11)

                    ; #61797: <==commonly_known== 44107 (neg)
                    (Pb_checked_p11)

                    ; #62836: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #69434: <==commonly_known== 44107 (neg)
                    (Pa_checked_p11)

                    ; #74270: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #76427: <==commonly_known== 18669 (pos)
                    (Bc_checked_p11)

                    ; #76911: <==closure== 62836 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #78672: <==commonly_known== 18669 (pos)
                    (Bb_checked_p11)

                    ; #89401: <==closure== 74270 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #23996: <==uncertain_firing== 62836 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #24233: <==negation-removal== 69434 (pos)
                    (not (Ba_not_checked_p11))

                    ; #28045: <==uncertain_firing== 89401 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #35612: <==negation-removal== 25275 (pos)
                    (not (Bc_not_checked_p11))

                    ; #37044: <==negation-removal== 74270 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #37489: <==negation-removal== 76427 (pos)
                    (not (Pc_not_checked_p11))

                    ; #44107: <==negation-removal== 18669 (pos)
                    (not (not_checked_p11))

                    ; #45984: <==negation-removal== 76911 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #46642: <==negation-removal== 61797 (pos)
                    (not (Bb_not_checked_p11))

                    ; #54034: <==negation-removal== 62836 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #59756: <==negation-removal== 89401 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #79479: <==negation-removal== 50138 (pos)
                    (not (Pa_not_checked_p11))

                    ; #86653: <==uncertain_firing== 74270 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #87102: <==negation-removal== 78672 (pos)
                    (not (Pb_not_checked_p11))

                    ; #87452: <==uncertain_firing== 76911 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #11693: <==commonly_known== 67892 (neg)
                    (Pa_checked_p12)

                    ; #13032: <==commonly_known== 90101 (pos)
                    (Bb_checked_p12)

                    ; #18867: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #23305: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #23472: <==closure== 23305 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #54205: <==commonly_known== 90101 (pos)
                    (Bc_checked_p12)

                    ; #73306: <==commonly_known== 67892 (neg)
                    (Pb_checked_p12)

                    ; #84139: <==commonly_known== 67892 (neg)
                    (Pc_checked_p12)

                    ; #85424: <==commonly_known== 90101 (pos)
                    (Ba_checked_p12)

                    ; #90101: origin
                    (checked_p12)

                    ; #92055: <==closure== 18867 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #11039: <==negation-removal== 84139 (pos)
                    (not (Bc_not_checked_p12))

                    ; #13559: <==uncertain_firing== 23472 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #14097: <==negation-removal== 11693 (pos)
                    (not (Ba_not_checked_p12))

                    ; #16250: <==uncertain_firing== 92055 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #17441: <==negation-removal== 13032 (pos)
                    (not (Pb_not_checked_p12))

                    ; #30956: <==negation-removal== 54205 (pos)
                    (not (Pc_not_checked_p12))

                    ; #44678: <==negation-removal== 85424 (pos)
                    (not (Pa_not_checked_p12))

                    ; #48094: <==negation-removal== 23305 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #51432: <==negation-removal== 23472 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #67892: <==negation-removal== 90101 (pos)
                    (not (not_checked_p12))

                    ; #72439: <==uncertain_firing== 18867 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #75014: <==negation-removal== 73306 (pos)
                    (not (Bb_not_checked_p12))

                    ; #77028: <==uncertain_firing== 23305 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #77152: <==negation-removal== 92055 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #86099: <==negation-removal== 18867 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #15235: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #18472: <==commonly_known== 41727 (neg)
                    (Pa_checked_p1)

                    ; #21112: <==commonly_known== 41727 (neg)
                    (Pb_checked_p1)

                    ; #27952: <==closure== 81092 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #28857: origin
                    (checked_p1)

                    ; #38708: <==commonly_known== 28857 (pos)
                    (Bb_checked_p1)

                    ; #46970: <==commonly_known== 28857 (pos)
                    (Bc_checked_p1)

                    ; #55100: <==commonly_known== 41727 (neg)
                    (Pc_checked_p1)

                    ; #57353: <==commonly_known== 28857 (pos)
                    (Ba_checked_p1)

                    ; #81092: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #86154: <==closure== 15235 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #10942: <==uncertain_firing== 86154 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #14513: <==uncertain_firing== 27952 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #28385: <==uncertain_firing== 15235 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #33202: <==negation-removal== 46970 (pos)
                    (not (Pc_not_checked_p1))

                    ; #39576: <==negation-removal== 27952 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #39821: <==negation-removal== 81092 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #39967: <==negation-removal== 18472 (pos)
                    (not (Ba_not_checked_p1))

                    ; #40379: <==uncertain_firing== 81092 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #41727: <==negation-removal== 28857 (pos)
                    (not (not_checked_p1))

                    ; #50443: <==negation-removal== 86154 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #52579: <==negation-removal== 55100 (pos)
                    (not (Bc_not_checked_p1))

                    ; #61635: <==negation-removal== 57353 (pos)
                    (not (Pa_not_checked_p1))

                    ; #70459: <==negation-removal== 38708 (pos)
                    (not (Pb_not_checked_p1))

                    ; #72673: <==negation-removal== 15235 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #85843: <==negation-removal== 21112 (pos)
                    (not (Bb_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #14728: <==commonly_known== 35757 (neg)
                    (Pc_checked_p2)

                    ; #17332: <==commonly_known== 37639 (pos)
                    (Bb_checked_p2)

                    ; #24282: <==commonly_known== 35757 (neg)
                    (Pa_checked_p2)

                    ; #35249: <==commonly_known== 37639 (pos)
                    (Bc_checked_p2)

                    ; #37639: origin
                    (checked_p2)

                    ; #45989: <==closure== 78108 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #48547: <==commonly_known== 35757 (neg)
                    (Pb_checked_p2)

                    ; #65665: <==closure== 84641 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #78108: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #80255: <==commonly_known== 37639 (pos)
                    (Ba_checked_p2)

                    ; #84641: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #10421: <==uncertain_firing== 65665 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #10556: <==negation-removal== 78108 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #14977: <==negation-removal== 45989 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #18888: <==negation-removal== 14728 (pos)
                    (not (Bc_not_checked_p2))

                    ; #30241: <==negation-removal== 48547 (pos)
                    (not (Bb_not_checked_p2))

                    ; #35757: <==negation-removal== 37639 (pos)
                    (not (not_checked_p2))

                    ; #38513: <==negation-removal== 24282 (pos)
                    (not (Ba_not_checked_p2))

                    ; #41426: <==negation-removal== 35249 (pos)
                    (not (Pc_not_checked_p2))

                    ; #48315: <==uncertain_firing== 45989 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #50697: <==uncertain_firing== 78108 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #56000: <==negation-removal== 17332 (pos)
                    (not (Pb_not_checked_p2))

                    ; #58475: <==negation-removal== 65665 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #68713: <==negation-removal== 84641 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #72747: <==uncertain_firing== 84641 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #78732: <==negation-removal== 80255 (pos)
                    (not (Pa_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #34731: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #37168: <==closure== 77486 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #46370: origin
                    (checked_p3)

                    ; #66500: <==commonly_known== 46370 (pos)
                    (Ba_checked_p3)

                    ; #68801: <==commonly_known== 52464 (neg)
                    (Pa_checked_p3)

                    ; #69076: <==commonly_known== 52464 (neg)
                    (Pb_checked_p3)

                    ; #71864: <==commonly_known== 46370 (pos)
                    (Bc_checked_p3)

                    ; #76040: <==commonly_known== 52464 (neg)
                    (Pc_checked_p3)

                    ; #76218: <==commonly_known== 46370 (pos)
                    (Bb_checked_p3)

                    ; #77486: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #91508: <==closure== 34731 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #10547: <==negation-removal== 77486 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #23309: <==negation-removal== 34731 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #24486: <==negation-removal== 69076 (pos)
                    (not (Bb_not_checked_p3))

                    ; #26805: <==negation-removal== 76218 (pos)
                    (not (Pb_not_checked_p3))

                    ; #30514: <==negation-removal== 37168 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #38297: <==negation-removal== 66500 (pos)
                    (not (Pa_not_checked_p3))

                    ; #52464: <==negation-removal== 46370 (pos)
                    (not (not_checked_p3))

                    ; #54523: <==negation-removal== 76040 (pos)
                    (not (Bc_not_checked_p3))

                    ; #63635: <==uncertain_firing== 77486 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #63826: <==negation-removal== 71864 (pos)
                    (not (Pc_not_checked_p3))

                    ; #64982: <==uncertain_firing== 91508 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #74209: <==negation-removal== 68801 (pos)
                    (not (Ba_not_checked_p3))

                    ; #77990: <==uncertain_firing== 37168 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #78137: <==uncertain_firing== 34731 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #86195: <==negation-removal== 91508 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10318: <==commonly_known== 90405 (neg)
                    (Pb_checked_p4)

                    ; #26408: origin
                    (checked_p4)

                    ; #27824: <==closure== 29165 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #29165: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #36741: <==commonly_known== 90405 (neg)
                    (Pa_checked_p4)

                    ; #37278: <==closure== 37980 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #37980: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #77759: <==commonly_known== 26408 (pos)
                    (Bc_checked_p4)

                    ; #79793: <==commonly_known== 26408 (pos)
                    (Ba_checked_p4)

                    ; #84805: <==commonly_known== 26408 (pos)
                    (Bb_checked_p4)

                    ; #91558: <==commonly_known== 90405 (neg)
                    (Pc_checked_p4)

                    ; #10589: <==uncertain_firing== 27824 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #11237: <==uncertain_firing== 29165 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #16327: <==negation-removal== 84805 (pos)
                    (not (Pb_not_checked_p4))

                    ; #22022: <==negation-removal== 29165 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #25645: <==negation-removal== 27824 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #42362: <==negation-removal== 91558 (pos)
                    (not (Bc_not_checked_p4))

                    ; #43154: <==negation-removal== 37980 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #47872: <==negation-removal== 10318 (pos)
                    (not (Bb_not_checked_p4))

                    ; #48332: <==uncertain_firing== 37278 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #61456: <==uncertain_firing== 37980 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #76929: <==negation-removal== 77759 (pos)
                    (not (Pc_not_checked_p4))

                    ; #80792: <==negation-removal== 79793 (pos)
                    (not (Pa_not_checked_p4))

                    ; #83505: <==negation-removal== 36741 (pos)
                    (not (Ba_not_checked_p4))

                    ; #89377: <==negation-removal== 37278 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #90405: <==negation-removal== 26408 (pos)
                    (not (not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11233: <==commonly_known== 42238 (pos)
                    (Ba_checked_p5)

                    ; #15229: <==commonly_known== 42238 (pos)
                    (Bc_checked_p5)

                    ; #31418: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #33190: <==closure== 42442 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #42238: origin
                    (checked_p5)

                    ; #42442: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #43859: <==commonly_known== 74582 (neg)
                    (Pc_checked_p5)

                    ; #54377: <==commonly_known== 42238 (pos)
                    (Bb_checked_p5)

                    ; #59988: <==closure== 31418 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #88361: <==commonly_known== 74582 (neg)
                    (Pb_checked_p5)

                    ; #88962: <==commonly_known== 74582 (neg)
                    (Pa_checked_p5)

                    ; #17978: <==negation-removal== 11233 (pos)
                    (not (Pa_not_checked_p5))

                    ; #20706: <==negation-removal== 88361 (pos)
                    (not (Bb_not_checked_p5))

                    ; #25504: <==negation-removal== 54377 (pos)
                    (not (Pb_not_checked_p5))

                    ; #36774: <==uncertain_firing== 42442 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #40763: <==uncertain_firing== 33190 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #41154: <==negation-removal== 88962 (pos)
                    (not (Ba_not_checked_p5))

                    ; #46624: <==uncertain_firing== 59988 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #50389: <==negation-removal== 43859 (pos)
                    (not (Bc_not_checked_p5))

                    ; #51809: <==negation-removal== 15229 (pos)
                    (not (Pc_not_checked_p5))

                    ; #56212: <==negation-removal== 59988 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #63282: <==negation-removal== 31418 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #65641: <==negation-removal== 33190 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #74582: <==negation-removal== 42238 (pos)
                    (not (not_checked_p5))

                    ; #83668: <==negation-removal== 42442 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #87518: <==uncertain_firing== 31418 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #15966: <==commonly_known== 68250 (pos)
                    (Bb_checked_p6)

                    ; #24970: <==closure== 47443 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #29281: <==commonly_known== 68250 (pos)
                    (Ba_checked_p6)

                    ; #30126: <==commonly_known== 77291 (neg)
                    (Pb_checked_p6)

                    ; #47443: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #56268: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #60176: <==closure== 56268 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #61796: <==commonly_known== 77291 (neg)
                    (Pc_checked_p6)

                    ; #64712: <==commonly_known== 68250 (pos)
                    (Bc_checked_p6)

                    ; #68250: origin
                    (checked_p6)

                    ; #68716: <==commonly_known== 77291 (neg)
                    (Pa_checked_p6)

                    ; #13563: <==negation-removal== 60176 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #14557: <==negation-removal== 30126 (pos)
                    (not (Bb_not_checked_p6))

                    ; #16485: <==uncertain_firing== 60176 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #18943: <==negation-removal== 24970 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #40475: <==negation-removal== 15966 (pos)
                    (not (Pb_not_checked_p6))

                    ; #42409: <==negation-removal== 68716 (pos)
                    (not (Ba_not_checked_p6))

                    ; #52863: <==negation-removal== 29281 (pos)
                    (not (Pa_not_checked_p6))

                    ; #54705: <==negation-removal== 56268 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #68950: <==negation-removal== 47443 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #72508: <==negation-removal== 64712 (pos)
                    (not (Pc_not_checked_p6))

                    ; #77291: <==negation-removal== 68250 (pos)
                    (not (not_checked_p6))

                    ; #83692: <==negation-removal== 61796 (pos)
                    (not (Bc_not_checked_p6))

                    ; #85695: <==uncertain_firing== 47443 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #87837: <==uncertain_firing== 56268 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #96338: <==uncertain_firing== 24970 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #19329: <==commonly_known== 68228 (pos)
                    (Ba_checked_p7)

                    ; #23505: <==commonly_known== 82374 (neg)
                    (Pa_checked_p7)

                    ; #24019: <==commonly_known== 82374 (neg)
                    (Pc_checked_p7)

                    ; #34205: <==commonly_known== 68228 (pos)
                    (Bc_checked_p7)

                    ; #34736: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #56842: <==closure== 34736 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #57060: <==commonly_known== 82374 (neg)
                    (Pb_checked_p7)

                    ; #66387: <==commonly_known== 68228 (pos)
                    (Bb_checked_p7)

                    ; #68228: origin
                    (checked_p7)

                    ; #72855: <==closure== 91697 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #91697: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #21073: <==negation-removal== 72855 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #25832: <==negation-removal== 19329 (pos)
                    (not (Pa_not_checked_p7))

                    ; #28066: <==negation-removal== 91697 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #31188: <==negation-removal== 34736 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #39796: <==negation-removal== 34205 (pos)
                    (not (Pc_not_checked_p7))

                    ; #53600: <==uncertain_firing== 34736 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #61874: <==uncertain_firing== 72855 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #69593: <==negation-removal== 23505 (pos)
                    (not (Ba_not_checked_p7))

                    ; #69654: <==negation-removal== 24019 (pos)
                    (not (Bc_not_checked_p7))

                    ; #77438: <==negation-removal== 57060 (pos)
                    (not (Bb_not_checked_p7))

                    ; #80868: <==uncertain_firing== 56842 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #81238: <==uncertain_firing== 91697 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #82374: <==negation-removal== 68228 (pos)
                    (not (not_checked_p7))

                    ; #86280: <==negation-removal== 56842 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #90336: <==negation-removal== 66387 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #13662: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #14572: <==commonly_known== 67054 (pos)
                    (Bb_checked_p8)

                    ; #26875: <==commonly_known== 67054 (pos)
                    (Bc_checked_p8)

                    ; #34089: <==closure== 81005 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #43043: <==closure== 13662 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #48927: <==commonly_known== 44972 (neg)
                    (Pc_checked_p8)

                    ; #65376: <==commonly_known== 44972 (neg)
                    (Pa_checked_p8)

                    ; #67054: origin
                    (checked_p8)

                    ; #70988: <==commonly_known== 44972 (neg)
                    (Pb_checked_p8)

                    ; #72844: <==commonly_known== 67054 (pos)
                    (Ba_checked_p8)

                    ; #81005: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #12031: <==negation-removal== 65376 (pos)
                    (not (Ba_not_checked_p8))

                    ; #20230: <==negation-removal== 43043 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #34517: <==uncertain_firing== 13662 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #35145: <==negation-removal== 34089 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #36927: <==uncertain_firing== 81005 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #40066: <==negation-removal== 72844 (pos)
                    (not (Pa_not_checked_p8))

                    ; #44972: <==negation-removal== 67054 (pos)
                    (not (not_checked_p8))

                    ; #53423: <==negation-removal== 26875 (pos)
                    (not (Pc_not_checked_p8))

                    ; #60291: <==uncertain_firing== 34089 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #66321: <==uncertain_firing== 43043 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #70838: <==negation-removal== 13662 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #75711: <==negation-removal== 70988 (pos)
                    (not (Bb_not_checked_p8))

                    ; #76288: <==negation-removal== 48927 (pos)
                    (not (Bc_not_checked_p8))

                    ; #78170: <==negation-removal== 14572 (pos)
                    (not (Pb_not_checked_p8))

                    ; #90315: <==negation-removal== 81005 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #14955: <==commonly_known== 19479 (pos)
                    (Ba_checked_p9)

                    ; #19469: <==commonly_known== 52928 (neg)
                    (Pb_checked_p9)

                    ; #19479: origin
                    (checked_p9)

                    ; #19588: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #32617: <==commonly_known== 19479 (pos)
                    (Bc_checked_p9)

                    ; #38192: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #44058: <==commonly_known== 52928 (neg)
                    (Pa_checked_p9)

                    ; #47729: <==commonly_known== 19479 (pos)
                    (Bb_checked_p9)

                    ; #61745: <==closure== 38192 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #73761: <==closure== 19588 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #77933: <==commonly_known== 52928 (neg)
                    (Pc_checked_p9)

                    ; #11178: <==negation-removal== 61745 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #26567: <==negation-removal== 38192 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #44295: <==uncertain_firing== 61745 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #45879: <==negation-removal== 19469 (pos)
                    (not (Bb_not_checked_p9))

                    ; #52010: <==negation-removal== 14955 (pos)
                    (not (Pa_not_checked_p9))

                    ; #52928: <==negation-removal== 19479 (pos)
                    (not (not_checked_p9))

                    ; #53663: <==uncertain_firing== 38192 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #58173: <==negation-removal== 19588 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #68117: <==negation-removal== 32617 (pos)
                    (not (Pc_not_checked_p9))

                    ; #70081: <==uncertain_firing== 19588 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #70786: <==negation-removal== 77933 (pos)
                    (not (Bc_not_checked_p9))

                    ; #70984: <==uncertain_firing== 73761 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #80774: <==negation-removal== 44058 (pos)
                    (not (Ba_not_checked_p9))

                    ; #84053: <==negation-removal== 73761 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #89284: <==negation-removal== 47729 (pos)
                    (not (Pb_not_checked_p9))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #12557: <==commonly_known== 31219 (pos)
                    (Bc_checked_p10)

                    ; #19940: <==closure== 31751 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #29177: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #31219: origin
                    (checked_p10)

                    ; #31751: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #52147: <==closure== 29177 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #59326: <==commonly_known== 77553 (neg)
                    (Pb_checked_p10)

                    ; #64829: <==commonly_known== 77553 (neg)
                    (Pc_checked_p10)

                    ; #65344: <==commonly_known== 77553 (neg)
                    (Pa_checked_p10)

                    ; #66568: <==commonly_known== 31219 (pos)
                    (Bb_checked_p10)

                    ; #70391: <==commonly_known== 31219 (pos)
                    (Ba_checked_p10)

                    ; #17439: <==negation-removal== 29177 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #22741: <==negation-removal== 12557 (pos)
                    (not (Pc_not_checked_p10))

                    ; #31622: <==uncertain_firing== 52147 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #44514: <==negation-removal== 52147 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #48702: <==negation-removal== 66568 (pos)
                    (not (Pb_not_checked_p10))

                    ; #51219: <==uncertain_firing== 29177 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #54841: <==uncertain_firing== 31751 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #55252: <==negation-removal== 59326 (pos)
                    (not (Bb_not_checked_p10))

                    ; #62044: <==negation-removal== 70391 (pos)
                    (not (Pa_not_checked_p10))

                    ; #68922: <==uncertain_firing== 19940 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #71633: <==negation-removal== 64829 (pos)
                    (not (Bc_not_checked_p10))

                    ; #73765: <==negation-removal== 31751 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #74993: <==negation-removal== 19940 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #77553: <==negation-removal== 31219 (pos)
                    (not (not_checked_p10))

                    ; #80995: <==negation-removal== 65344 (pos)
                    (not (Ba_not_checked_p10))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #10712: <==closure== 12943 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #12943: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #18669: origin
                    (checked_p11)

                    ; #25275: <==commonly_known== 44107 (neg)
                    (Pc_checked_p11)

                    ; #39042: <==closure== 48215 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #48215: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #50138: <==commonly_known== 18669 (pos)
                    (Ba_checked_p11)

                    ; #61797: <==commonly_known== 44107 (neg)
                    (Pb_checked_p11)

                    ; #69434: <==commonly_known== 44107 (neg)
                    (Pa_checked_p11)

                    ; #76427: <==commonly_known== 18669 (pos)
                    (Bc_checked_p11)

                    ; #78672: <==commonly_known== 18669 (pos)
                    (Bb_checked_p11)

                    ; #16032: <==uncertain_firing== 12943 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #24233: <==negation-removal== 69434 (pos)
                    (not (Ba_not_checked_p11))

                    ; #27575: <==uncertain_firing== 10712 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #35612: <==negation-removal== 25275 (pos)
                    (not (Bc_not_checked_p11))

                    ; #36832: <==uncertain_firing== 39042 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #37489: <==negation-removal== 76427 (pos)
                    (not (Pc_not_checked_p11))

                    ; #44107: <==negation-removal== 18669 (pos)
                    (not (not_checked_p11))

                    ; #46642: <==negation-removal== 61797 (pos)
                    (not (Bb_not_checked_p11))

                    ; #51375: <==negation-removal== 48215 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #76703: <==negation-removal== 12943 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #78468: <==negation-removal== 10712 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #79479: <==negation-removal== 50138 (pos)
                    (not (Pa_not_checked_p11))

                    ; #81154: <==uncertain_firing== 48215 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #87102: <==negation-removal== 78672 (pos)
                    (not (Pb_not_checked_p11))

                    ; #90740: <==negation-removal== 39042 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #11693: <==commonly_known== 67892 (neg)
                    (Pa_checked_p12)

                    ; #13032: <==commonly_known== 90101 (pos)
                    (Bb_checked_p12)

                    ; #32991: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #38959: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #54205: <==commonly_known== 90101 (pos)
                    (Bc_checked_p12)

                    ; #73306: <==commonly_known== 67892 (neg)
                    (Pb_checked_p12)

                    ; #84139: <==commonly_known== 67892 (neg)
                    (Pc_checked_p12)

                    ; #85424: <==commonly_known== 90101 (pos)
                    (Ba_checked_p12)

                    ; #89104: <==closure== 32991 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #90101: origin
                    (checked_p12)

                    ; #90315: <==closure== 38959 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #10548: <==negation-removal== 89104 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #11039: <==negation-removal== 84139 (pos)
                    (not (Bc_not_checked_p12))

                    ; #12178: <==negation-removal== 32991 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #14097: <==negation-removal== 11693 (pos)
                    (not (Ba_not_checked_p12))

                    ; #17441: <==negation-removal== 13032 (pos)
                    (not (Pb_not_checked_p12))

                    ; #23571: <==uncertain_firing== 90315 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #24524: <==negation-removal== 38959 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #30956: <==negation-removal== 54205 (pos)
                    (not (Pc_not_checked_p12))

                    ; #43176: <==negation-removal== 90315 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #44103: <==uncertain_firing== 89104 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #44678: <==negation-removal== 85424 (pos)
                    (not (Pa_not_checked_p12))

                    ; #55512: <==uncertain_firing== 32991 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #63191: <==uncertain_firing== 38959 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #67892: <==negation-removal== 90101 (pos)
                    (not (not_checked_p12))

                    ; #75014: <==negation-removal== 73306 (pos)
                    (not (Bb_not_checked_p12))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #17767: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #18472: <==commonly_known== 41727 (neg)
                    (Pa_checked_p1)

                    ; #21112: <==commonly_known== 41727 (neg)
                    (Pb_checked_p1)

                    ; #28857: origin
                    (checked_p1)

                    ; #38708: <==commonly_known== 28857 (pos)
                    (Bb_checked_p1)

                    ; #46970: <==commonly_known== 28857 (pos)
                    (Bc_checked_p1)

                    ; #55100: <==commonly_known== 41727 (neg)
                    (Pc_checked_p1)

                    ; #55880: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #57353: <==commonly_known== 28857 (pos)
                    (Ba_checked_p1)

                    ; #63270: <==closure== 17767 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #82288: <==closure== 55880 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #19719: <==uncertain_firing== 63270 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #27977: <==negation-removal== 17767 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #28557: <==negation-removal== 55880 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #31748: <==uncertain_firing== 82288 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #33202: <==negation-removal== 46970 (pos)
                    (not (Pc_not_checked_p1))

                    ; #39967: <==negation-removal== 18472 (pos)
                    (not (Ba_not_checked_p1))

                    ; #40449: <==uncertain_firing== 17767 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #41727: <==negation-removal== 28857 (pos)
                    (not (not_checked_p1))

                    ; #43954: <==negation-removal== 82288 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #52579: <==negation-removal== 55100 (pos)
                    (not (Bc_not_checked_p1))

                    ; #61635: <==negation-removal== 57353 (pos)
                    (not (Pa_not_checked_p1))

                    ; #70459: <==negation-removal== 38708 (pos)
                    (not (Pb_not_checked_p1))

                    ; #77562: <==uncertain_firing== 55880 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #85843: <==negation-removal== 21112 (pos)
                    (not (Bb_not_checked_p1))

                    ; #87957: <==negation-removal== 63270 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #14728: <==commonly_known== 35757 (neg)
                    (Pc_checked_p2)

                    ; #14981: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #17332: <==commonly_known== 37639 (pos)
                    (Bb_checked_p2)

                    ; #24282: <==commonly_known== 35757 (neg)
                    (Pa_checked_p2)

                    ; #35249: <==commonly_known== 37639 (pos)
                    (Bc_checked_p2)

                    ; #37639: origin
                    (checked_p2)

                    ; #45857: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #48547: <==commonly_known== 35757 (neg)
                    (Pb_checked_p2)

                    ; #71706: <==closure== 14981 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #80255: <==commonly_known== 37639 (pos)
                    (Ba_checked_p2)

                    ; #80454: <==closure== 45857 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #11839: <==negation-removal== 80454 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #17480: <==uncertain_firing== 45857 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #18888: <==negation-removal== 14728 (pos)
                    (not (Bc_not_checked_p2))

                    ; #18995: <==negation-removal== 45857 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #30241: <==negation-removal== 48547 (pos)
                    (not (Bb_not_checked_p2))

                    ; #35757: <==negation-removal== 37639 (pos)
                    (not (not_checked_p2))

                    ; #38513: <==negation-removal== 24282 (pos)
                    (not (Ba_not_checked_p2))

                    ; #41426: <==negation-removal== 35249 (pos)
                    (not (Pc_not_checked_p2))

                    ; #46107: <==negation-removal== 71706 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #48428: <==uncertain_firing== 14981 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #48848: <==uncertain_firing== 80454 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #56000: <==negation-removal== 17332 (pos)
                    (not (Pb_not_checked_p2))

                    ; #62981: <==uncertain_firing== 71706 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #78732: <==negation-removal== 80255 (pos)
                    (not (Pa_not_checked_p2))

                    ; #79792: <==negation-removal== 14981 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13201: <==closure== 79811 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #27097: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #46370: origin
                    (checked_p3)

                    ; #56266: <==closure== 27097 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #66500: <==commonly_known== 46370 (pos)
                    (Ba_checked_p3)

                    ; #68801: <==commonly_known== 52464 (neg)
                    (Pa_checked_p3)

                    ; #69076: <==commonly_known== 52464 (neg)
                    (Pb_checked_p3)

                    ; #71864: <==commonly_known== 46370 (pos)
                    (Bc_checked_p3)

                    ; #76040: <==commonly_known== 52464 (neg)
                    (Pc_checked_p3)

                    ; #76218: <==commonly_known== 46370 (pos)
                    (Bb_checked_p3)

                    ; #79811: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #15977: <==negation-removal== 13201 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #16490: <==uncertain_firing== 56266 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #24486: <==negation-removal== 69076 (pos)
                    (not (Bb_not_checked_p3))

                    ; #26805: <==negation-removal== 76218 (pos)
                    (not (Pb_not_checked_p3))

                    ; #31537: <==uncertain_firing== 13201 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #38297: <==negation-removal== 66500 (pos)
                    (not (Pa_not_checked_p3))

                    ; #52464: <==negation-removal== 46370 (pos)
                    (not (not_checked_p3))

                    ; #54262: <==uncertain_firing== 79811 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #54523: <==negation-removal== 76040 (pos)
                    (not (Bc_not_checked_p3))

                    ; #58463: <==negation-removal== 56266 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #63826: <==negation-removal== 71864 (pos)
                    (not (Pc_not_checked_p3))

                    ; #67039: <==negation-removal== 27097 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #68472: <==uncertain_firing== 27097 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #74209: <==negation-removal== 68801 (pos)
                    (not (Ba_not_checked_p3))

                    ; #79986: <==negation-removal== 79811 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10318: <==commonly_known== 90405 (neg)
                    (Pb_checked_p4)

                    ; #10897: <==closure== 45234 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #26408: origin
                    (checked_p4)

                    ; #31907: <==closure== 72361 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #36741: <==commonly_known== 90405 (neg)
                    (Pa_checked_p4)

                    ; #45234: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #72361: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #77759: <==commonly_known== 26408 (pos)
                    (Bc_checked_p4)

                    ; #79793: <==commonly_known== 26408 (pos)
                    (Ba_checked_p4)

                    ; #84805: <==commonly_known== 26408 (pos)
                    (Bb_checked_p4)

                    ; #91558: <==commonly_known== 90405 (neg)
                    (Pc_checked_p4)

                    ; #11200: <==negation-removal== 31907 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #16327: <==negation-removal== 84805 (pos)
                    (not (Pb_not_checked_p4))

                    ; #42362: <==negation-removal== 91558 (pos)
                    (not (Bc_not_checked_p4))

                    ; #44228: <==uncertain_firing== 31907 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #47872: <==negation-removal== 10318 (pos)
                    (not (Bb_not_checked_p4))

                    ; #59582: <==negation-removal== 10897 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #61914: <==negation-removal== 72361 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #75141: <==uncertain_firing== 45234 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #76929: <==negation-removal== 77759 (pos)
                    (not (Pc_not_checked_p4))

                    ; #80792: <==negation-removal== 79793 (pos)
                    (not (Pa_not_checked_p4))

                    ; #81978: <==uncertain_firing== 72361 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #83505: <==negation-removal== 36741 (pos)
                    (not (Ba_not_checked_p4))

                    ; #89098: <==negation-removal== 45234 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #90405: <==negation-removal== 26408 (pos)
                    (not (not_checked_p4))

                    ; #91739: <==uncertain_firing== 10897 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11233: <==commonly_known== 42238 (pos)
                    (Ba_checked_p5)

                    ; #15229: <==commonly_known== 42238 (pos)
                    (Bc_checked_p5)

                    ; #42238: origin
                    (checked_p5)

                    ; #43859: <==commonly_known== 74582 (neg)
                    (Pc_checked_p5)

                    ; #49403: <==closure== 74609 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #50350: <==closure== 94899 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #54377: <==commonly_known== 42238 (pos)
                    (Bb_checked_p5)

                    ; #74609: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #88361: <==commonly_known== 74582 (neg)
                    (Pb_checked_p5)

                    ; #88962: <==commonly_known== 74582 (neg)
                    (Pa_checked_p5)

                    ; #94899: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #14929: <==uncertain_firing== 74609 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #17978: <==negation-removal== 11233 (pos)
                    (not (Pa_not_checked_p5))

                    ; #20706: <==negation-removal== 88361 (pos)
                    (not (Bb_not_checked_p5))

                    ; #25504: <==negation-removal== 54377 (pos)
                    (not (Pb_not_checked_p5))

                    ; #36132: <==uncertain_firing== 50350 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #41154: <==negation-removal== 88962 (pos)
                    (not (Ba_not_checked_p5))

                    ; #50389: <==negation-removal== 43859 (pos)
                    (not (Bc_not_checked_p5))

                    ; #50555: <==uncertain_firing== 94899 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #51809: <==negation-removal== 15229 (pos)
                    (not (Pc_not_checked_p5))

                    ; #52680: <==negation-removal== 74609 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #64133: <==negation-removal== 50350 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #64144: <==negation-removal== 49403 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #74582: <==negation-removal== 42238 (pos)
                    (not (not_checked_p5))

                    ; #79623: <==negation-removal== 94899 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #94661: <==uncertain_firing== 49403 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #15966: <==commonly_known== 68250 (pos)
                    (Bb_checked_p6)

                    ; #24462: <==closure== 44918 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #29281: <==commonly_known== 68250 (pos)
                    (Ba_checked_p6)

                    ; #30126: <==commonly_known== 77291 (neg)
                    (Pb_checked_p6)

                    ; #44918: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #54273: <==closure== 74128 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #61796: <==commonly_known== 77291 (neg)
                    (Pc_checked_p6)

                    ; #64712: <==commonly_known== 68250 (pos)
                    (Bc_checked_p6)

                    ; #68250: origin
                    (checked_p6)

                    ; #68716: <==commonly_known== 77291 (neg)
                    (Pa_checked_p6)

                    ; #74128: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #14557: <==negation-removal== 30126 (pos)
                    (not (Bb_not_checked_p6))

                    ; #15566: <==uncertain_firing== 54273 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #17563: <==uncertain_firing== 44918 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #17590: <==negation-removal== 74128 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #19864: <==negation-removal== 54273 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #40423: <==negation-removal== 44918 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #40475: <==negation-removal== 15966 (pos)
                    (not (Pb_not_checked_p6))

                    ; #42409: <==negation-removal== 68716 (pos)
                    (not (Ba_not_checked_p6))

                    ; #52863: <==negation-removal== 29281 (pos)
                    (not (Pa_not_checked_p6))

                    ; #60160: <==uncertain_firing== 24462 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #72508: <==negation-removal== 64712 (pos)
                    (not (Pc_not_checked_p6))

                    ; #77291: <==negation-removal== 68250 (pos)
                    (not (not_checked_p6))

                    ; #83692: <==negation-removal== 61796 (pos)
                    (not (Bc_not_checked_p6))

                    ; #87131: <==negation-removal== 24462 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #90775: <==uncertain_firing== 74128 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #14778: <==closure== 52869 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #19329: <==commonly_known== 68228 (pos)
                    (Ba_checked_p7)

                    ; #23505: <==commonly_known== 82374 (neg)
                    (Pa_checked_p7)

                    ; #24019: <==commonly_known== 82374 (neg)
                    (Pc_checked_p7)

                    ; #34205: <==commonly_known== 68228 (pos)
                    (Bc_checked_p7)

                    ; #36025: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #52869: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #55387: <==closure== 36025 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #57060: <==commonly_known== 82374 (neg)
                    (Pb_checked_p7)

                    ; #66387: <==commonly_known== 68228 (pos)
                    (Bb_checked_p7)

                    ; #68228: origin
                    (checked_p7)

                    ; #20159: <==uncertain_firing== 36025 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #23937: <==uncertain_firing== 55387 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #25814: <==negation-removal== 14778 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #25832: <==negation-removal== 19329 (pos)
                    (not (Pa_not_checked_p7))

                    ; #29957: <==negation-removal== 52869 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #39796: <==negation-removal== 34205 (pos)
                    (not (Pc_not_checked_p7))

                    ; #57647: <==uncertain_firing== 52869 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #63651: <==uncertain_firing== 14778 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #69593: <==negation-removal== 23505 (pos)
                    (not (Ba_not_checked_p7))

                    ; #69654: <==negation-removal== 24019 (pos)
                    (not (Bc_not_checked_p7))

                    ; #77438: <==negation-removal== 57060 (pos)
                    (not (Bb_not_checked_p7))

                    ; #80860: <==negation-removal== 55387 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #82374: <==negation-removal== 68228 (pos)
                    (not (not_checked_p7))

                    ; #83108: <==negation-removal== 36025 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #90336: <==negation-removal== 66387 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #14572: <==commonly_known== 67054 (pos)
                    (Bb_checked_p8)

                    ; #26875: <==commonly_known== 67054 (pos)
                    (Bc_checked_p8)

                    ; #27915: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #41790: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #48927: <==commonly_known== 44972 (neg)
                    (Pc_checked_p8)

                    ; #65376: <==commonly_known== 44972 (neg)
                    (Pa_checked_p8)

                    ; #67054: origin
                    (checked_p8)

                    ; #70988: <==commonly_known== 44972 (neg)
                    (Pb_checked_p8)

                    ; #72844: <==commonly_known== 67054 (pos)
                    (Ba_checked_p8)

                    ; #75440: <==closure== 41790 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #89578: <==closure== 27915 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #12031: <==negation-removal== 65376 (pos)
                    (not (Ba_not_checked_p8))

                    ; #20829: <==negation-removal== 41790 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #23811: <==uncertain_firing== 27915 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #25113: <==uncertain_firing== 89578 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #26222: <==negation-removal== 89578 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #36716: <==uncertain_firing== 75440 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #40066: <==negation-removal== 72844 (pos)
                    (not (Pa_not_checked_p8))

                    ; #44749: <==uncertain_firing== 41790 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #44972: <==negation-removal== 67054 (pos)
                    (not (not_checked_p8))

                    ; #50858: <==negation-removal== 75440 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #53423: <==negation-removal== 26875 (pos)
                    (not (Pc_not_checked_p8))

                    ; #69148: <==negation-removal== 27915 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #75711: <==negation-removal== 70988 (pos)
                    (not (Bb_not_checked_p8))

                    ; #76288: <==negation-removal== 48927 (pos)
                    (not (Bc_not_checked_p8))

                    ; #78170: <==negation-removal== 14572 (pos)
                    (not (Pb_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #14955: <==commonly_known== 19479 (pos)
                    (Ba_checked_p9)

                    ; #19469: <==commonly_known== 52928 (neg)
                    (Pb_checked_p9)

                    ; #19479: origin
                    (checked_p9)

                    ; #32617: <==commonly_known== 19479 (pos)
                    (Bc_checked_p9)

                    ; #34373: <==closure== 71391 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #44058: <==commonly_known== 52928 (neg)
                    (Pa_checked_p9)

                    ; #47729: <==commonly_known== 19479 (pos)
                    (Bb_checked_p9)

                    ; #59569: <==closure== 68374 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #68374: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #71391: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #77933: <==commonly_known== 52928 (neg)
                    (Pc_checked_p9)

                    ; #16679: <==negation-removal== 34373 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #18625: <==uncertain_firing== 34373 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #20868: <==negation-removal== 59569 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #45879: <==negation-removal== 19469 (pos)
                    (not (Bb_not_checked_p9))

                    ; #49797: <==uncertain_firing== 71391 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #52010: <==negation-removal== 14955 (pos)
                    (not (Pa_not_checked_p9))

                    ; #52928: <==negation-removal== 19479 (pos)
                    (not (not_checked_p9))

                    ; #64223: <==negation-removal== 71391 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #68117: <==negation-removal== 32617 (pos)
                    (not (Pc_not_checked_p9))

                    ; #69026: <==uncertain_firing== 68374 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #70786: <==negation-removal== 77933 (pos)
                    (not (Bc_not_checked_p9))

                    ; #80774: <==negation-removal== 44058 (pos)
                    (not (Ba_not_checked_p9))

                    ; #81596: <==uncertain_firing== 59569 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #89284: <==negation-removal== 47729 (pos)
                    (not (Pb_not_checked_p9))

                    ; #91044: <==negation-removal== 68374 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #12557: <==commonly_known== 31219 (pos)
                    (Bc_checked_p10)

                    ; #18741: <==closure== 26820 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #26820: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #31219: origin
                    (checked_p10)

                    ; #57182: <==closure== 67569 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #59326: <==commonly_known== 77553 (neg)
                    (Pb_checked_p10)

                    ; #64829: <==commonly_known== 77553 (neg)
                    (Pc_checked_p10)

                    ; #65344: <==commonly_known== 77553 (neg)
                    (Pa_checked_p10)

                    ; #66568: <==commonly_known== 31219 (pos)
                    (Bb_checked_p10)

                    ; #67569: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #70391: <==commonly_known== 31219 (pos)
                    (Ba_checked_p10)

                    ; #17545: <==uncertain_firing== 57182 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #19736: <==negation-removal== 26820 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #22622: <==uncertain_firing== 26820 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #22741: <==negation-removal== 12557 (pos)
                    (not (Pc_not_checked_p10))

                    ; #25663: <==negation-removal== 67569 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #35507: <==uncertain_firing== 67569 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #48702: <==negation-removal== 66568 (pos)
                    (not (Pb_not_checked_p10))

                    ; #55252: <==negation-removal== 59326 (pos)
                    (not (Bb_not_checked_p10))

                    ; #62044: <==negation-removal== 70391 (pos)
                    (not (Pa_not_checked_p10))

                    ; #63356: <==uncertain_firing== 18741 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #71633: <==negation-removal== 64829 (pos)
                    (not (Bc_not_checked_p10))

                    ; #77297: <==negation-removal== 18741 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #77553: <==negation-removal== 31219 (pos)
                    (not (not_checked_p10))

                    ; #80995: <==negation-removal== 65344 (pos)
                    (not (Ba_not_checked_p10))

                    ; #83589: <==negation-removal== 57182 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #18669: origin
                    (checked_p11)

                    ; #23865: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #25275: <==commonly_known== 44107 (neg)
                    (Pc_checked_p11)

                    ; #50138: <==commonly_known== 18669 (pos)
                    (Ba_checked_p11)

                    ; #61797: <==commonly_known== 44107 (neg)
                    (Pb_checked_p11)

                    ; #68750: <==closure== 70190 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #69434: <==commonly_known== 44107 (neg)
                    (Pa_checked_p11)

                    ; #70190: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #73995: <==closure== 23865 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #76427: <==commonly_known== 18669 (pos)
                    (Bc_checked_p11)

                    ; #78672: <==commonly_known== 18669 (pos)
                    (Bb_checked_p11)

                    ; #11800: <==negation-removal== 70190 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #24233: <==negation-removal== 69434 (pos)
                    (not (Ba_not_checked_p11))

                    ; #25281: <==uncertain_firing== 23865 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #35612: <==negation-removal== 25275 (pos)
                    (not (Bc_not_checked_p11))

                    ; #37489: <==negation-removal== 76427 (pos)
                    (not (Pc_not_checked_p11))

                    ; #41347: <==uncertain_firing== 68750 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #44107: <==negation-removal== 18669 (pos)
                    (not (not_checked_p11))

                    ; #46642: <==negation-removal== 61797 (pos)
                    (not (Bb_not_checked_p11))

                    ; #53262: <==uncertain_firing== 70190 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #69720: <==negation-removal== 68750 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #72036: <==negation-removal== 73995 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #79479: <==negation-removal== 50138 (pos)
                    (not (Pa_not_checked_p11))

                    ; #83714: <==uncertain_firing== 73995 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #87102: <==negation-removal== 78672 (pos)
                    (not (Pb_not_checked_p11))

                    ; #91400: <==negation-removal== 23865 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #11193: <==closure== 78188 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #11693: <==commonly_known== 67892 (neg)
                    (Pa_checked_p12)

                    ; #13032: <==commonly_known== 90101 (pos)
                    (Bb_checked_p12)

                    ; #14096: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #25660: <==closure== 14096 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #54205: <==commonly_known== 90101 (pos)
                    (Bc_checked_p12)

                    ; #73306: <==commonly_known== 67892 (neg)
                    (Pb_checked_p12)

                    ; #78188: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #84139: <==commonly_known== 67892 (neg)
                    (Pc_checked_p12)

                    ; #85424: <==commonly_known== 90101 (pos)
                    (Ba_checked_p12)

                    ; #90101: origin
                    (checked_p12)

                    ; #11039: <==negation-removal== 84139 (pos)
                    (not (Bc_not_checked_p12))

                    ; #14097: <==negation-removal== 11693 (pos)
                    (not (Ba_not_checked_p12))

                    ; #17441: <==negation-removal== 13032 (pos)
                    (not (Pb_not_checked_p12))

                    ; #17449: <==negation-removal== 78188 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #30956: <==negation-removal== 54205 (pos)
                    (not (Pc_not_checked_p12))

                    ; #36827: <==uncertain_firing== 25660 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #44678: <==negation-removal== 85424 (pos)
                    (not (Pa_not_checked_p12))

                    ; #47323: <==negation-removal== 25660 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #52062: <==negation-removal== 14096 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #67892: <==negation-removal== 90101 (pos)
                    (not (not_checked_p12))

                    ; #69423: <==uncertain_firing== 14096 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #69760: <==uncertain_firing== 78188 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #75014: <==negation-removal== 73306 (pos)
                    (not (Bb_not_checked_p12))

                    ; #84963: <==negation-removal== 11193 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #87748: <==uncertain_firing== 11193 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #14082: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #18472: <==commonly_known== 41727 (neg)
                    (Pa_checked_p1)

                    ; #21112: <==commonly_known== 41727 (neg)
                    (Pb_checked_p1)

                    ; #28857: origin
                    (checked_p1)

                    ; #29513: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #38708: <==commonly_known== 28857 (pos)
                    (Bb_checked_p1)

                    ; #46970: <==commonly_known== 28857 (pos)
                    (Bc_checked_p1)

                    ; #55100: <==commonly_known== 41727 (neg)
                    (Pc_checked_p1)

                    ; #57353: <==commonly_known== 28857 (pos)
                    (Ba_checked_p1)

                    ; #63101: <==closure== 29513 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #84923: <==closure== 14082 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #11706: <==negation-removal== 14082 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #12967: <==negation-removal== 84923 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #33202: <==negation-removal== 46970 (pos)
                    (not (Pc_not_checked_p1))

                    ; #35679: <==uncertain_firing== 63101 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #37414: <==negation-removal== 29513 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #39967: <==negation-removal== 18472 (pos)
                    (not (Ba_not_checked_p1))

                    ; #41462: <==uncertain_firing== 84923 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #41727: <==negation-removal== 28857 (pos)
                    (not (not_checked_p1))

                    ; #43556: <==uncertain_firing== 29513 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #51558: <==negation-removal== 63101 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #52579: <==negation-removal== 55100 (pos)
                    (not (Bc_not_checked_p1))

                    ; #56939: <==uncertain_firing== 14082 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #61635: <==negation-removal== 57353 (pos)
                    (not (Pa_not_checked_p1))

                    ; #70459: <==negation-removal== 38708 (pos)
                    (not (Pb_not_checked_p1))

                    ; #85843: <==negation-removal== 21112 (pos)
                    (not (Bb_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #14728: <==commonly_known== 35757 (neg)
                    (Pc_checked_p2)

                    ; #17332: <==commonly_known== 37639 (pos)
                    (Bb_checked_p2)

                    ; #24282: <==commonly_known== 35757 (neg)
                    (Pa_checked_p2)

                    ; #32536: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #35249: <==commonly_known== 37639 (pos)
                    (Bc_checked_p2)

                    ; #37639: origin
                    (checked_p2)

                    ; #41479: <==closure== 61975 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #43965: <==closure== 32536 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #48547: <==commonly_known== 35757 (neg)
                    (Pb_checked_p2)

                    ; #61975: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #80255: <==commonly_known== 37639 (pos)
                    (Ba_checked_p2)

                    ; #18888: <==negation-removal== 14728 (pos)
                    (not (Bc_not_checked_p2))

                    ; #30241: <==negation-removal== 48547 (pos)
                    (not (Bb_not_checked_p2))

                    ; #35757: <==negation-removal== 37639 (pos)
                    (not (not_checked_p2))

                    ; #38513: <==negation-removal== 24282 (pos)
                    (not (Ba_not_checked_p2))

                    ; #41426: <==negation-removal== 35249 (pos)
                    (not (Pc_not_checked_p2))

                    ; #41683: <==negation-removal== 32536 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #49535: <==uncertain_firing== 41479 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #55881: <==negation-removal== 61975 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #56000: <==negation-removal== 17332 (pos)
                    (not (Pb_not_checked_p2))

                    ; #61820: <==uncertain_firing== 32536 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #65286: <==uncertain_firing== 43965 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #70868: <==negation-removal== 41479 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #78732: <==negation-removal== 80255 (pos)
                    (not (Pa_not_checked_p2))

                    ; #79281: <==negation-removal== 43965 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #83153: <==uncertain_firing== 61975 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #21437: <==closure== 49480 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #29510: <==closure== 53717 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #46370: origin
                    (checked_p3)

                    ; #49480: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #53717: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #66500: <==commonly_known== 46370 (pos)
                    (Ba_checked_p3)

                    ; #68801: <==commonly_known== 52464 (neg)
                    (Pa_checked_p3)

                    ; #69076: <==commonly_known== 52464 (neg)
                    (Pb_checked_p3)

                    ; #71864: <==commonly_known== 46370 (pos)
                    (Bc_checked_p3)

                    ; #76040: <==commonly_known== 52464 (neg)
                    (Pc_checked_p3)

                    ; #76218: <==commonly_known== 46370 (pos)
                    (Bb_checked_p3)

                    ; #21911: <==negation-removal== 29510 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #22371: <==uncertain_firing== 49480 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #24486: <==negation-removal== 69076 (pos)
                    (not (Bb_not_checked_p3))

                    ; #26805: <==negation-removal== 76218 (pos)
                    (not (Pb_not_checked_p3))

                    ; #29957: <==negation-removal== 53717 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #38297: <==negation-removal== 66500 (pos)
                    (not (Pa_not_checked_p3))

                    ; #45440: <==uncertain_firing== 53717 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #52464: <==negation-removal== 46370 (pos)
                    (not (not_checked_p3))

                    ; #54523: <==negation-removal== 76040 (pos)
                    (not (Bc_not_checked_p3))

                    ; #63826: <==negation-removal== 71864 (pos)
                    (not (Pc_not_checked_p3))

                    ; #64361: <==negation-removal== 49480 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #74209: <==negation-removal== 68801 (pos)
                    (not (Ba_not_checked_p3))

                    ; #79649: <==negation-removal== 21437 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #90037: <==uncertain_firing== 21437 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #90185: <==uncertain_firing== 29510 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10318: <==commonly_known== 90405 (neg)
                    (Pb_checked_p4)

                    ; #25107: <==closure== 57721 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #26408: origin
                    (checked_p4)

                    ; #36741: <==commonly_known== 90405 (neg)
                    (Pa_checked_p4)

                    ; #57721: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #63283: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #77759: <==commonly_known== 26408 (pos)
                    (Bc_checked_p4)

                    ; #79793: <==commonly_known== 26408 (pos)
                    (Ba_checked_p4)

                    ; #84805: <==commonly_known== 26408 (pos)
                    (Bb_checked_p4)

                    ; #85723: <==closure== 63283 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #91558: <==commonly_known== 90405 (neg)
                    (Pc_checked_p4)

                    ; #13210: <==negation-removal== 85723 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #16327: <==negation-removal== 84805 (pos)
                    (not (Pb_not_checked_p4))

                    ; #23381: <==negation-removal== 25107 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #26139: <==uncertain_firing== 63283 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #28747: <==uncertain_firing== 85723 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #40501: <==negation-removal== 57721 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #42362: <==negation-removal== 91558 (pos)
                    (not (Bc_not_checked_p4))

                    ; #47872: <==negation-removal== 10318 (pos)
                    (not (Bb_not_checked_p4))

                    ; #63778: <==uncertain_firing== 57721 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #74723: <==uncertain_firing== 25107 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #76929: <==negation-removal== 77759 (pos)
                    (not (Pc_not_checked_p4))

                    ; #80792: <==negation-removal== 79793 (pos)
                    (not (Pa_not_checked_p4))

                    ; #83505: <==negation-removal== 36741 (pos)
                    (not (Ba_not_checked_p4))

                    ; #85157: <==negation-removal== 63283 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #90405: <==negation-removal== 26408 (pos)
                    (not (not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11233: <==commonly_known== 42238 (pos)
                    (Ba_checked_p5)

                    ; #15229: <==commonly_known== 42238 (pos)
                    (Bc_checked_p5)

                    ; #19729: <==closure== 73851 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #42238: origin
                    (checked_p5)

                    ; #43859: <==commonly_known== 74582 (neg)
                    (Pc_checked_p5)

                    ; #46067: <==closure== 67883 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #54377: <==commonly_known== 42238 (pos)
                    (Bb_checked_p5)

                    ; #67883: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #73851: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #88361: <==commonly_known== 74582 (neg)
                    (Pb_checked_p5)

                    ; #88962: <==commonly_known== 74582 (neg)
                    (Pa_checked_p5)

                    ; #12998: <==negation-removal== 73851 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #15295: <==negation-removal== 67883 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #16529: <==uncertain_firing== 67883 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #17978: <==negation-removal== 11233 (pos)
                    (not (Pa_not_checked_p5))

                    ; #20706: <==negation-removal== 88361 (pos)
                    (not (Bb_not_checked_p5))

                    ; #22746: <==uncertain_firing== 73851 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #25504: <==negation-removal== 54377 (pos)
                    (not (Pb_not_checked_p5))

                    ; #41154: <==negation-removal== 88962 (pos)
                    (not (Ba_not_checked_p5))

                    ; #50389: <==negation-removal== 43859 (pos)
                    (not (Bc_not_checked_p5))

                    ; #51809: <==negation-removal== 15229 (pos)
                    (not (Pc_not_checked_p5))

                    ; #60123: <==uncertain_firing== 46067 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #60405: <==uncertain_firing== 19729 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #60881: <==negation-removal== 46067 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #74582: <==negation-removal== 42238 (pos)
                    (not (not_checked_p5))

                    ; #80322: <==negation-removal== 19729 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #15966: <==commonly_known== 68250 (pos)
                    (Bb_checked_p6)

                    ; #16648: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #16952: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #29281: <==commonly_known== 68250 (pos)
                    (Ba_checked_p6)

                    ; #30126: <==commonly_known== 77291 (neg)
                    (Pb_checked_p6)

                    ; #61796: <==commonly_known== 77291 (neg)
                    (Pc_checked_p6)

                    ; #61872: <==closure== 16952 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #64712: <==commonly_known== 68250 (pos)
                    (Bc_checked_p6)

                    ; #65358: <==closure== 16648 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #68250: origin
                    (checked_p6)

                    ; #68716: <==commonly_known== 77291 (neg)
                    (Pa_checked_p6)

                    ; #14557: <==negation-removal== 30126 (pos)
                    (not (Bb_not_checked_p6))

                    ; #19458: <==uncertain_firing== 16952 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #21739: <==uncertain_firing== 65358 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #31044: <==negation-removal== 65358 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #40475: <==negation-removal== 15966 (pos)
                    (not (Pb_not_checked_p6))

                    ; #42409: <==negation-removal== 68716 (pos)
                    (not (Ba_not_checked_p6))

                    ; #45400: <==negation-removal== 16648 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #46048: <==uncertain_firing== 16648 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #52863: <==negation-removal== 29281 (pos)
                    (not (Pa_not_checked_p6))

                    ; #56550: <==uncertain_firing== 61872 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #60330: <==negation-removal== 61872 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #72508: <==negation-removal== 64712 (pos)
                    (not (Pc_not_checked_p6))

                    ; #77291: <==negation-removal== 68250 (pos)
                    (not (not_checked_p6))

                    ; #83692: <==negation-removal== 61796 (pos)
                    (not (Bc_not_checked_p6))

                    ; #90530: <==negation-removal== 16952 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #19329: <==commonly_known== 68228 (pos)
                    (Ba_checked_p7)

                    ; #23505: <==commonly_known== 82374 (neg)
                    (Pa_checked_p7)

                    ; #24019: <==commonly_known== 82374 (neg)
                    (Pc_checked_p7)

                    ; #34205: <==commonly_known== 68228 (pos)
                    (Bc_checked_p7)

                    ; #43626: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #57060: <==commonly_known== 82374 (neg)
                    (Pb_checked_p7)

                    ; #66387: <==commonly_known== 68228 (pos)
                    (Bb_checked_p7)

                    ; #67237: <==closure== 74095 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #68228: origin
                    (checked_p7)

                    ; #69571: <==closure== 43626 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #74095: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #15882: <==negation-removal== 74095 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #20893: <==uncertain_firing== 69571 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #25832: <==negation-removal== 19329 (pos)
                    (not (Pa_not_checked_p7))

                    ; #27383: <==uncertain_firing== 67237 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #34875: <==negation-removal== 43626 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #35152: <==uncertain_firing== 74095 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #39796: <==negation-removal== 34205 (pos)
                    (not (Pc_not_checked_p7))

                    ; #52347: <==negation-removal== 69571 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #64927: <==negation-removal== 67237 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #69593: <==negation-removal== 23505 (pos)
                    (not (Ba_not_checked_p7))

                    ; #69654: <==negation-removal== 24019 (pos)
                    (not (Bc_not_checked_p7))

                    ; #77438: <==negation-removal== 57060 (pos)
                    (not (Bb_not_checked_p7))

                    ; #82374: <==negation-removal== 68228 (pos)
                    (not (not_checked_p7))

                    ; #90336: <==negation-removal== 66387 (pos)
                    (not (Pb_not_checked_p7))

                    ; #92078: <==uncertain_firing== 43626 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #14572: <==commonly_known== 67054 (pos)
                    (Bb_checked_p8)

                    ; #19364: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #26875: <==commonly_known== 67054 (pos)
                    (Bc_checked_p8)

                    ; #30142: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #35269: <==closure== 30142 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #48927: <==commonly_known== 44972 (neg)
                    (Pc_checked_p8)

                    ; #65305: <==closure== 19364 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #65376: <==commonly_known== 44972 (neg)
                    (Pa_checked_p8)

                    ; #67054: origin
                    (checked_p8)

                    ; #70988: <==commonly_known== 44972 (neg)
                    (Pb_checked_p8)

                    ; #72844: <==commonly_known== 67054 (pos)
                    (Ba_checked_p8)

                    ; #11230: <==negation-removal== 35269 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #12031: <==negation-removal== 65376 (pos)
                    (not (Ba_not_checked_p8))

                    ; #15722: <==uncertain_firing== 35269 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #36240: <==negation-removal== 65305 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #40066: <==negation-removal== 72844 (pos)
                    (not (Pa_not_checked_p8))

                    ; #44972: <==negation-removal== 67054 (pos)
                    (not (not_checked_p8))

                    ; #51421: <==uncertain_firing== 19364 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #53423: <==negation-removal== 26875 (pos)
                    (not (Pc_not_checked_p8))

                    ; #68886: <==negation-removal== 19364 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #69810: <==uncertain_firing== 65305 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #75711: <==negation-removal== 70988 (pos)
                    (not (Bb_not_checked_p8))

                    ; #76288: <==negation-removal== 48927 (pos)
                    (not (Bc_not_checked_p8))

                    ; #78170: <==negation-removal== 14572 (pos)
                    (not (Pb_not_checked_p8))

                    ; #89098: <==negation-removal== 30142 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #91843: <==uncertain_firing== 30142 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #14852: <==closure== 54894 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #14955: <==commonly_known== 19479 (pos)
                    (Ba_checked_p9)

                    ; #19469: <==commonly_known== 52928 (neg)
                    (Pb_checked_p9)

                    ; #19479: origin
                    (checked_p9)

                    ; #25633: <==closure== 78255 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #32617: <==commonly_known== 19479 (pos)
                    (Bc_checked_p9)

                    ; #44058: <==commonly_known== 52928 (neg)
                    (Pa_checked_p9)

                    ; #47729: <==commonly_known== 19479 (pos)
                    (Bb_checked_p9)

                    ; #54894: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #77933: <==commonly_known== 52928 (neg)
                    (Pc_checked_p9)

                    ; #78255: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #27132: <==uncertain_firing== 54894 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #27360: <==uncertain_firing== 25633 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #35956: <==uncertain_firing== 14852 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #41122: <==negation-removal== 54894 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #44270: <==negation-removal== 78255 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #45879: <==negation-removal== 19469 (pos)
                    (not (Bb_not_checked_p9))

                    ; #52010: <==negation-removal== 14955 (pos)
                    (not (Pa_not_checked_p9))

                    ; #52928: <==negation-removal== 19479 (pos)
                    (not (not_checked_p9))

                    ; #59519: <==negation-removal== 14852 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #68117: <==negation-removal== 32617 (pos)
                    (not (Pc_not_checked_p9))

                    ; #70786: <==negation-removal== 77933 (pos)
                    (not (Bc_not_checked_p9))

                    ; #73216: <==negation-removal== 25633 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #80774: <==negation-removal== 44058 (pos)
                    (not (Ba_not_checked_p9))

                    ; #82335: <==uncertain_firing== 78255 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #89284: <==negation-removal== 47729 (pos)
                    (not (Pb_not_checked_p9))))

)