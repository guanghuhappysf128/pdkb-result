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
                    ; #20310: <==closure== 82040 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #43607: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #59000: <==closure== 70435 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #59581: <==closure== 43607 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #70435: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #82040: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #11288: <==negation-removal== 59581 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #17109: <==negation-removal== 43607 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #21860: <==uncertain_firing== 82040 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #27237: <==negation-removal== 59000 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #30259: <==uncertain_firing== 43607 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #32996: <==negation-removal== 20310 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #35031: <==uncertain_firing== 59000 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #54790: <==uncertain_firing== 20310 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #68120: <==negation-removal== 70435 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #69700: <==negation-removal== 82040 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #88439: <==uncertain_firing== 70435 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #93241: <==uncertain_firing== 59581 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))))

    (:action badcomm_p10_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #20310: <==closure== 82040 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #43607: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #59000: <==closure== 70435 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #59581: <==closure== 43607 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #70435: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #82040: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #11288: <==negation-removal== 59581 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #17109: <==negation-removal== 43607 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #21860: <==uncertain_firing== 82040 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #27237: <==negation-removal== 59000 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #30259: <==uncertain_firing== 43607 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #32996: <==negation-removal== 20310 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #35031: <==uncertain_firing== 59000 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #54790: <==uncertain_firing== 20310 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #68120: <==negation-removal== 70435 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #69700: <==negation-removal== 82040 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #88439: <==uncertain_firing== 70435 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #93241: <==uncertain_firing== 59581 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))))

    (:action badcomm_p10_c_s
        :precondition (and (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #20310: <==closure== 82040 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #43607: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #59000: <==closure== 70435 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #59581: <==closure== 43607 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #70435: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #82040: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #11288: <==negation-removal== 59581 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #17109: <==negation-removal== 43607 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #21860: <==uncertain_firing== 82040 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #27237: <==negation-removal== 59000 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #30259: <==uncertain_firing== 43607 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #32996: <==negation-removal== 20310 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #35031: <==uncertain_firing== 59000 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #54790: <==uncertain_firing== 20310 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #68120: <==negation-removal== 70435 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #69700: <==negation-removal== 82040 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #88439: <==uncertain_firing== 70435 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #93241: <==uncertain_firing== 59581 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))))

    (:action badcomm_p11_a_s
        :precondition (and (at_a_p11)
                           (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11))
        :effect (and
                    ; #11982: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #39523: <==closure== 49273 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #43203: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #49273: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #50355: <==closure== 43203 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #54132: <==closure== 11982 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #12687: <==negation-removal== 39523 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #13591: <==negation-removal== 43203 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #16670: <==uncertain_firing== 54132 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #22371: <==negation-removal== 11982 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #29750: <==uncertain_firing== 43203 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #53873: <==negation-removal== 50355 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #66024: <==negation-removal== 54132 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #66516: <==negation-removal== 49273 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #67188: <==uncertain_firing== 11982 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #78055: <==uncertain_firing== 39523 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #80917: <==uncertain_firing== 49273 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #88426: <==uncertain_firing== 50355 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))))

    (:action badcomm_p11_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #11982: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #39523: <==closure== 49273 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #43203: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #49273: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #50355: <==closure== 43203 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #54132: <==closure== 11982 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #12687: <==negation-removal== 39523 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #13591: <==negation-removal== 43203 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #16670: <==uncertain_firing== 54132 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #22371: <==negation-removal== 11982 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #29750: <==uncertain_firing== 43203 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #53873: <==negation-removal== 50355 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #66024: <==negation-removal== 54132 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #66516: <==negation-removal== 49273 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #67188: <==uncertain_firing== 11982 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #78055: <==uncertain_firing== 39523 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #80917: <==uncertain_firing== 49273 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #88426: <==uncertain_firing== 50355 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))))

    (:action badcomm_p11_c_s
        :precondition (and (Pc_survivorat_s_p11)
                           (at_c_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #11982: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #39523: <==closure== 49273 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #43203: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #49273: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #50355: <==closure== 43203 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #54132: <==closure== 11982 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #12687: <==negation-removal== 39523 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #13591: <==negation-removal== 43203 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #16670: <==uncertain_firing== 54132 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #22371: <==negation-removal== 11982 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #29750: <==uncertain_firing== 43203 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #53873: <==negation-removal== 50355 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #66024: <==negation-removal== 54132 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #66516: <==negation-removal== 49273 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #67188: <==uncertain_firing== 11982 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #78055: <==uncertain_firing== 39523 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #80917: <==uncertain_firing== 49273 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #88426: <==uncertain_firing== 50355 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))))

    (:action badcomm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #17129: <==closure== 83417 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #21234: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #44882: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #73391: <==closure== 44882 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #83125: <==closure== 21234 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #83417: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #15834: <==uncertain_firing== 17129 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #26672: <==uncertain_firing== 83417 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #30458: <==negation-removal== 44882 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #31194: <==uncertain_firing== 73391 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #33444: <==negation-removal== 17129 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #47760: <==negation-removal== 83417 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #69782: <==uncertain_firing== 83125 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #70584: <==uncertain_firing== 21234 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #79257: <==negation-removal== 73391 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #85016: <==uncertain_firing== 44882 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #86468: <==negation-removal== 83125 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #88723: <==negation-removal== 21234 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))))

    (:action badcomm_p12_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #17129: <==closure== 83417 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #21234: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #44882: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #73391: <==closure== 44882 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #83125: <==closure== 21234 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #83417: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #15834: <==uncertain_firing== 17129 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #26672: <==uncertain_firing== 83417 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #30458: <==negation-removal== 44882 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #31194: <==uncertain_firing== 73391 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #33444: <==negation-removal== 17129 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #47760: <==negation-removal== 83417 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #69782: <==uncertain_firing== 83125 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #70584: <==uncertain_firing== 21234 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #79257: <==negation-removal== 73391 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #85016: <==uncertain_firing== 44882 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #86468: <==negation-removal== 83125 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #88723: <==negation-removal== 21234 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))))

    (:action badcomm_p12_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #17129: <==closure== 83417 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #21234: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #44882: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #73391: <==closure== 44882 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #83125: <==closure== 21234 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #83417: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #15834: <==uncertain_firing== 17129 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #26672: <==uncertain_firing== 83417 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #30458: <==negation-removal== 44882 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #31194: <==uncertain_firing== 73391 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #33444: <==negation-removal== 17129 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #47760: <==negation-removal== 83417 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #69782: <==uncertain_firing== 83125 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #70584: <==uncertain_firing== 21234 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #79257: <==negation-removal== 73391 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #85016: <==uncertain_firing== 44882 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #86468: <==negation-removal== 83125 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #88723: <==negation-removal== 21234 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))))

    (:action badcomm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #32655: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #42106: <==closure== 61248 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #56738: <==closure== 32655 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #61248: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #63088: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #78527: <==closure== 63088 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #11916: <==negation-removal== 63088 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #13908: <==uncertain_firing== 56738 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #24828: <==uncertain_firing== 42106 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #30990: <==negation-removal== 32655 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #40863: <==negation-removal== 56738 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #55879: <==uncertain_firing== 78527 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #57302: <==negation-removal== 42106 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #58662: <==uncertain_firing== 63088 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #73554: <==negation-removal== 61248 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #77601: <==uncertain_firing== 32655 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #78008: <==uncertain_firing== 61248 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #81842: <==negation-removal== 78527 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #32655: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #42106: <==closure== 61248 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #56738: <==closure== 32655 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #61248: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #63088: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #78527: <==closure== 63088 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #11916: <==negation-removal== 63088 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #13908: <==uncertain_firing== 56738 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #24828: <==uncertain_firing== 42106 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #30990: <==negation-removal== 32655 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #40863: <==negation-removal== 56738 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #55879: <==uncertain_firing== 78527 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #57302: <==negation-removal== 42106 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #58662: <==uncertain_firing== 63088 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #73554: <==negation-removal== 61248 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #77601: <==uncertain_firing== 32655 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #78008: <==uncertain_firing== 61248 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #81842: <==negation-removal== 78527 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #32655: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #42106: <==closure== 61248 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #56738: <==closure== 32655 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #61248: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #63088: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #78527: <==closure== 63088 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #11916: <==negation-removal== 63088 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #13908: <==uncertain_firing== 56738 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #24828: <==uncertain_firing== 42106 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #30990: <==negation-removal== 32655 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #40863: <==negation-removal== 56738 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #55879: <==uncertain_firing== 78527 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #57302: <==negation-removal== 42106 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #58662: <==uncertain_firing== 63088 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #73554: <==negation-removal== 61248 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #77601: <==uncertain_firing== 32655 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #78008: <==uncertain_firing== 61248 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #81842: <==negation-removal== 78527 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #25899: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #41831: <==closure== 25899 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #63676: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #79040: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #84551: <==closure== 63676 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #85596: <==closure== 79040 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #12313: <==negation-removal== 84551 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #14661: <==negation-removal== 79040 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #24249: <==uncertain_firing== 79040 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #32341: <==negation-removal== 63676 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #35187: <==uncertain_firing== 63676 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #35580: <==negation-removal== 25899 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #49436: <==negation-removal== 85596 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #53772: <==uncertain_firing== 25899 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #57742: <==uncertain_firing== 84551 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #70435: <==negation-removal== 41831 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #79934: <==uncertain_firing== 85596 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #91104: <==uncertain_firing== 41831 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #25899: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #41831: <==closure== 25899 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #63676: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #79040: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #84551: <==closure== 63676 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #85596: <==closure== 79040 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #12313: <==negation-removal== 84551 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #14661: <==negation-removal== 79040 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #24249: <==uncertain_firing== 79040 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #32341: <==negation-removal== 63676 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #35187: <==uncertain_firing== 63676 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #35580: <==negation-removal== 25899 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #49436: <==negation-removal== 85596 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #53772: <==uncertain_firing== 25899 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #57742: <==uncertain_firing== 84551 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #70435: <==negation-removal== 41831 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #79934: <==uncertain_firing== 85596 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #91104: <==uncertain_firing== 41831 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #25899: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #41831: <==closure== 25899 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #63676: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #79040: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #84551: <==closure== 63676 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #85596: <==closure== 79040 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #12313: <==negation-removal== 84551 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #14661: <==negation-removal== 79040 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #24249: <==uncertain_firing== 79040 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #32341: <==negation-removal== 63676 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #35187: <==uncertain_firing== 63676 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #35580: <==negation-removal== 25899 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #49436: <==negation-removal== 85596 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #53772: <==uncertain_firing== 25899 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #57742: <==uncertain_firing== 84551 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #70435: <==negation-removal== 41831 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #79934: <==uncertain_firing== 85596 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #91104: <==uncertain_firing== 41831 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #35304: <==closure== 38799 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #38799: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #56286: <==closure== 86094 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #63609: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #86094: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #87146: <==closure== 63609 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #11095: <==negation-removal== 63609 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #18051: <==uncertain_firing== 35304 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #28993: <==uncertain_firing== 38799 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #33114: <==uncertain_firing== 86094 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #34594: <==uncertain_firing== 63609 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #43260: <==uncertain_firing== 87146 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #45057: <==negation-removal== 56286 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #65793: <==negation-removal== 38799 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #69159: <==negation-removal== 35304 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #74738: <==uncertain_firing== 56286 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #76925: <==negation-removal== 87146 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #87002: <==negation-removal== 86094 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #35304: <==closure== 38799 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #38799: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #56286: <==closure== 86094 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #63609: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #86094: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #87146: <==closure== 63609 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #11095: <==negation-removal== 63609 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #18051: <==uncertain_firing== 35304 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #28993: <==uncertain_firing== 38799 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #33114: <==uncertain_firing== 86094 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #34594: <==uncertain_firing== 63609 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #43260: <==uncertain_firing== 87146 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #45057: <==negation-removal== 56286 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #65793: <==negation-removal== 38799 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #69159: <==negation-removal== 35304 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #74738: <==uncertain_firing== 56286 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #76925: <==negation-removal== 87146 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #87002: <==negation-removal== 86094 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #35304: <==closure== 38799 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #38799: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #56286: <==closure== 86094 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #63609: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #86094: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #87146: <==closure== 63609 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #11095: <==negation-removal== 63609 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #18051: <==uncertain_firing== 35304 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #28993: <==uncertain_firing== 38799 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #33114: <==uncertain_firing== 86094 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #34594: <==uncertain_firing== 63609 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #43260: <==uncertain_firing== 87146 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #45057: <==negation-removal== 56286 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #65793: <==negation-removal== 38799 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #69159: <==negation-removal== 35304 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #74738: <==uncertain_firing== 56286 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #76925: <==negation-removal== 87146 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #87002: <==negation-removal== 86094 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #15796: <==closure== 78623 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #33691: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #46530: <==closure== 33691 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #69086: <==closure== 87234 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #78623: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #87234: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #27668: <==uncertain_firing== 78623 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #29535: <==negation-removal== 46530 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #35893: <==uncertain_firing== 69086 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #37215: <==negation-removal== 15796 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #43798: <==negation-removal== 33691 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #45771: <==negation-removal== 78623 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #49823: <==negation-removal== 87234 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #64833: <==uncertain_firing== 87234 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #70907: <==negation-removal== 69086 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #77303: <==uncertain_firing== 46530 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #91296: <==uncertain_firing== 33691 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #91571: <==uncertain_firing== 15796 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #15796: <==closure== 78623 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #33691: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #46530: <==closure== 33691 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #69086: <==closure== 87234 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #78623: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #87234: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #27668: <==uncertain_firing== 78623 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #29535: <==negation-removal== 46530 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #35893: <==uncertain_firing== 69086 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #37215: <==negation-removal== 15796 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #43798: <==negation-removal== 33691 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #45771: <==negation-removal== 78623 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #49823: <==negation-removal== 87234 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #64833: <==uncertain_firing== 87234 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #70907: <==negation-removal== 69086 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #77303: <==uncertain_firing== 46530 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #91296: <==uncertain_firing== 33691 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #91571: <==uncertain_firing== 15796 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #15796: <==closure== 78623 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #33691: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #46530: <==closure== 33691 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #69086: <==closure== 87234 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #78623: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #87234: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #27668: <==uncertain_firing== 78623 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #29535: <==negation-removal== 46530 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #35893: <==uncertain_firing== 69086 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #37215: <==negation-removal== 15796 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #43798: <==negation-removal== 33691 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #45771: <==negation-removal== 78623 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #49823: <==negation-removal== 87234 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #64833: <==uncertain_firing== 87234 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #70907: <==negation-removal== 69086 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #77303: <==uncertain_firing== 46530 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #91296: <==uncertain_firing== 33691 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #91571: <==uncertain_firing== 15796 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #32108: <==closure== 53467 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #44697: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #47621: <==closure== 77222 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #53467: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #77222: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #84618: <==closure== 44697 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #19413: <==uncertain_firing== 32108 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #38990: <==negation-removal== 32108 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #53147: <==uncertain_firing== 77222 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #72077: <==uncertain_firing== 47621 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #74035: <==uncertain_firing== 44697 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #75213: <==negation-removal== 47621 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #76926: <==negation-removal== 77222 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #84087: <==negation-removal== 84618 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #84846: <==negation-removal== 53467 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #88203: <==negation-removal== 44697 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #89029: <==uncertain_firing== 53467 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #91644: <==uncertain_firing== 84618 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #32108: <==closure== 53467 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #44697: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #47621: <==closure== 77222 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #53467: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #77222: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #84618: <==closure== 44697 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #19413: <==uncertain_firing== 32108 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #38990: <==negation-removal== 32108 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #53147: <==uncertain_firing== 77222 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #72077: <==uncertain_firing== 47621 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #74035: <==uncertain_firing== 44697 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #75213: <==negation-removal== 47621 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #76926: <==negation-removal== 77222 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #84087: <==negation-removal== 84618 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #84846: <==negation-removal== 53467 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #88203: <==negation-removal== 44697 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #89029: <==uncertain_firing== 53467 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #91644: <==uncertain_firing== 84618 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #32108: <==closure== 53467 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #44697: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #47621: <==closure== 77222 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #53467: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #77222: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #84618: <==closure== 44697 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #19413: <==uncertain_firing== 32108 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #38990: <==negation-removal== 32108 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #53147: <==uncertain_firing== 77222 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #72077: <==uncertain_firing== 47621 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #74035: <==uncertain_firing== 44697 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #75213: <==negation-removal== 47621 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #76926: <==negation-removal== 77222 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #84087: <==negation-removal== 84618 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #84846: <==negation-removal== 53467 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #88203: <==negation-removal== 44697 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #89029: <==uncertain_firing== 53467 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #91644: <==uncertain_firing== 84618 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #10077: <==closure== 89068 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #13046: <==closure== 76182 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #57705: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #72698: <==closure== 57705 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #76182: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #89068: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #15677: <==uncertain_firing== 89068 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #23049: <==uncertain_firing== 76182 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #44254: <==uncertain_firing== 10077 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #44824: <==negation-removal== 13046 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #49400: <==negation-removal== 57705 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #55471: <==uncertain_firing== 72698 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #58466: <==negation-removal== 72698 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #66542: <==negation-removal== 89068 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #66784: <==uncertain_firing== 13046 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #85708: <==negation-removal== 76182 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #86318: <==uncertain_firing== 57705 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #97270: <==negation-removal== 10077 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #10077: <==closure== 89068 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #13046: <==closure== 76182 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #57705: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #72698: <==closure== 57705 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #76182: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #89068: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #15677: <==uncertain_firing== 89068 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #23049: <==uncertain_firing== 76182 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #44254: <==uncertain_firing== 10077 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #44824: <==negation-removal== 13046 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #49400: <==negation-removal== 57705 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #55471: <==uncertain_firing== 72698 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #58466: <==negation-removal== 72698 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #66542: <==negation-removal== 89068 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #66784: <==uncertain_firing== 13046 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #85708: <==negation-removal== 76182 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #86318: <==uncertain_firing== 57705 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #97270: <==negation-removal== 10077 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #10077: <==closure== 89068 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #13046: <==closure== 76182 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #57705: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #72698: <==closure== 57705 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #76182: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #89068: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #15677: <==uncertain_firing== 89068 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #23049: <==uncertain_firing== 76182 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #44254: <==uncertain_firing== 10077 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #44824: <==negation-removal== 13046 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #49400: <==negation-removal== 57705 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #55471: <==uncertain_firing== 72698 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #58466: <==negation-removal== 72698 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #66542: <==negation-removal== 89068 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #66784: <==uncertain_firing== 13046 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #85708: <==negation-removal== 76182 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #86318: <==uncertain_firing== 57705 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #97270: <==negation-removal== 10077 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #22107: <==closure== 69938 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #27753: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #40854: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #49832: <==closure== 40854 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #64718: <==closure== 27753 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #69938: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #17874: <==uncertain_firing== 27753 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #23361: <==negation-removal== 64718 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #29444: <==negation-removal== 27753 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #30559: <==negation-removal== 40854 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #47656: <==uncertain_firing== 69938 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #53974: <==negation-removal== 69938 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #63573: <==negation-removal== 22107 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #74601: <==uncertain_firing== 49832 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #74941: <==negation-removal== 49832 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #81222: <==uncertain_firing== 64718 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #83039: <==uncertain_firing== 40854 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #94831: <==uncertain_firing== 22107 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #22107: <==closure== 69938 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #27753: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #40854: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #49832: <==closure== 40854 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #64718: <==closure== 27753 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #69938: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #17874: <==uncertain_firing== 27753 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #23361: <==negation-removal== 64718 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #29444: <==negation-removal== 27753 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #30559: <==negation-removal== 40854 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #47656: <==uncertain_firing== 69938 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #53974: <==negation-removal== 69938 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #63573: <==negation-removal== 22107 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #74601: <==uncertain_firing== 49832 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #74941: <==negation-removal== 49832 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #81222: <==uncertain_firing== 64718 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #83039: <==uncertain_firing== 40854 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #94831: <==uncertain_firing== 22107 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #22107: <==closure== 69938 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #27753: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #40854: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #49832: <==closure== 40854 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #64718: <==closure== 27753 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #69938: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #17874: <==uncertain_firing== 27753 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #23361: <==negation-removal== 64718 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #29444: <==negation-removal== 27753 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #30559: <==negation-removal== 40854 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #47656: <==uncertain_firing== 69938 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #53974: <==negation-removal== 69938 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #63573: <==negation-removal== 22107 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #74601: <==uncertain_firing== 49832 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #74941: <==negation-removal== 49832 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #81222: <==uncertain_firing== 64718 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #83039: <==uncertain_firing== 40854 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #94831: <==uncertain_firing== 22107 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #29125: <==closure== 37031 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #37031: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #43687: <==closure== 89484 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #58607: <==closure== 62239 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #62239: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #89484: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #17039: <==negation-removal== 89484 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #21906: <==uncertain_firing== 37031 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #22182: <==uncertain_firing== 89484 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #22645: <==negation-removal== 29125 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #35739: <==negation-removal== 58607 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #48210: <==uncertain_firing== 29125 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #51691: <==uncertain_firing== 43687 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #61854: <==uncertain_firing== 62239 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #72904: <==negation-removal== 62239 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #75490: <==negation-removal== 43687 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #77210: <==uncertain_firing== 58607 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #84804: <==negation-removal== 37031 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #29125: <==closure== 37031 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #37031: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #43687: <==closure== 89484 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #58607: <==closure== 62239 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #62239: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #89484: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #17039: <==negation-removal== 89484 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #21906: <==uncertain_firing== 37031 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #22182: <==uncertain_firing== 89484 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #22645: <==negation-removal== 29125 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #35739: <==negation-removal== 58607 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #48210: <==uncertain_firing== 29125 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #51691: <==uncertain_firing== 43687 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #61854: <==uncertain_firing== 62239 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #72904: <==negation-removal== 62239 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #75490: <==negation-removal== 43687 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #77210: <==uncertain_firing== 58607 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #84804: <==negation-removal== 37031 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #29125: <==closure== 37031 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #37031: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #43687: <==closure== 89484 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #58607: <==closure== 62239 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #62239: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #89484: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #17039: <==negation-removal== 89484 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #21906: <==uncertain_firing== 37031 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #22182: <==uncertain_firing== 89484 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #22645: <==negation-removal== 29125 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #35739: <==negation-removal== 58607 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #48210: <==uncertain_firing== 29125 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #51691: <==uncertain_firing== 43687 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #61854: <==uncertain_firing== 62239 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #72904: <==negation-removal== 62239 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #75490: <==negation-removal== 43687 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #77210: <==uncertain_firing== 58607 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #84804: <==negation-removal== 37031 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #16440: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #25467: <==closure== 16440 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #48192: <==closure== 51253 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #51253: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #58607: <==closure== 89850 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #89850: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #17246: <==uncertain_firing== 16440 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #19776: <==negation-removal== 16440 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #19927: <==negation-removal== 25467 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #20293: <==negation-removal== 58607 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #24772: <==uncertain_firing== 25467 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #25238: <==uncertain_firing== 58607 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #33979: <==negation-removal== 89850 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #53641: <==uncertain_firing== 51253 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #67128: <==uncertain_firing== 48192 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #79268: <==uncertain_firing== 89850 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #85437: <==negation-removal== 48192 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #91666: <==negation-removal== 51253 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #16440: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #25467: <==closure== 16440 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #48192: <==closure== 51253 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #51253: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #58607: <==closure== 89850 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #89850: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #17246: <==uncertain_firing== 16440 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #19776: <==negation-removal== 16440 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #19927: <==negation-removal== 25467 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #20293: <==negation-removal== 58607 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #24772: <==uncertain_firing== 25467 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #25238: <==uncertain_firing== 58607 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #33979: <==negation-removal== 89850 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #53641: <==uncertain_firing== 51253 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #67128: <==uncertain_firing== 48192 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #79268: <==uncertain_firing== 89850 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #85437: <==negation-removal== 48192 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #91666: <==negation-removal== 51253 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #16440: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #25467: <==closure== 16440 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #48192: <==closure== 51253 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #51253: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #58607: <==closure== 89850 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #89850: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #17246: <==uncertain_firing== 16440 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #19776: <==negation-removal== 16440 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #19927: <==negation-removal== 25467 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #20293: <==negation-removal== 58607 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #24772: <==uncertain_firing== 25467 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #25238: <==uncertain_firing== 58607 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #33979: <==negation-removal== 89850 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #53641: <==uncertain_firing== 51253 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #67128: <==uncertain_firing== 48192 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #79268: <==uncertain_firing== 89850 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #85437: <==negation-removal== 48192 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #91666: <==negation-removal== 51253 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action comm_p10_a_s
        :precondition (and (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #45803: origin
                    (Ba_survivorat_s_p10)

                    ; #50880: <==closure== 45803 (pos)
                    (Pa_survivorat_s_p10)

                    ; #59725: <==closure== 64149 (pos)
                    (Pc_survivorat_s_p10)

                    ; #62194: <==closure== 86856 (pos)
                    (Pb_survivorat_s_p10)

                    ; #64149: origin
                    (Bc_survivorat_s_p10)

                    ; #86856: origin
                    (Bb_survivorat_s_p10)

                    ; #11695: <==negation-removal== 59725 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #14507: <==negation-removal== 45803 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #35130: <==negation-removal== 86856 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #43145: <==negation-removal== 64149 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #47733: <==negation-removal== 62194 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #50813: <==negation-removal== 50880 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #45803: origin
                    (Ba_survivorat_s_p10)

                    ; #50880: <==closure== 45803 (pos)
                    (Pa_survivorat_s_p10)

                    ; #59725: <==closure== 64149 (pos)
                    (Pc_survivorat_s_p10)

                    ; #62194: <==closure== 86856 (pos)
                    (Pb_survivorat_s_p10)

                    ; #64149: origin
                    (Bc_survivorat_s_p10)

                    ; #86856: origin
                    (Bb_survivorat_s_p10)

                    ; #11695: <==negation-removal== 59725 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #14507: <==negation-removal== 45803 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #35130: <==negation-removal== 86856 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #43145: <==negation-removal== 64149 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #47733: <==negation-removal== 62194 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #50813: <==negation-removal== 50880 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #45803: origin
                    (Ba_survivorat_s_p10)

                    ; #50880: <==closure== 45803 (pos)
                    (Pa_survivorat_s_p10)

                    ; #59725: <==closure== 64149 (pos)
                    (Pc_survivorat_s_p10)

                    ; #62194: <==closure== 86856 (pos)
                    (Pb_survivorat_s_p10)

                    ; #64149: origin
                    (Bc_survivorat_s_p10)

                    ; #86856: origin
                    (Bb_survivorat_s_p10)

                    ; #11695: <==negation-removal== 59725 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #14507: <==negation-removal== 45803 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #35130: <==negation-removal== 86856 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #43145: <==negation-removal== 64149 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #47733: <==negation-removal== 62194 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #50813: <==negation-removal== 50880 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (at_a_p11)
                           (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11))
        :effect (and
                    ; #27095: <==closure== 33837 (pos)
                    (Pa_survivorat_s_p11)

                    ; #33837: origin
                    (Ba_survivorat_s_p11)

                    ; #40561: <==closure== 74640 (pos)
                    (Pb_survivorat_s_p11)

                    ; #48526: <==closure== 63296 (pos)
                    (Pc_survivorat_s_p11)

                    ; #63296: origin
                    (Bc_survivorat_s_p11)

                    ; #74640: origin
                    (Bb_survivorat_s_p11)

                    ; #26310: <==negation-removal== 27095 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #40298: <==negation-removal== 48526 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #57400: <==negation-removal== 40561 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #59996: <==negation-removal== 74640 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #64094: <==negation-removal== 63296 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #83160: <==negation-removal== 33837 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #27095: <==closure== 33837 (pos)
                    (Pa_survivorat_s_p11)

                    ; #33837: origin
                    (Ba_survivorat_s_p11)

                    ; #40561: <==closure== 74640 (pos)
                    (Pb_survivorat_s_p11)

                    ; #48526: <==closure== 63296 (pos)
                    (Pc_survivorat_s_p11)

                    ; #63296: origin
                    (Bc_survivorat_s_p11)

                    ; #74640: origin
                    (Bb_survivorat_s_p11)

                    ; #26310: <==negation-removal== 27095 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #40298: <==negation-removal== 48526 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #57400: <==negation-removal== 40561 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #59996: <==negation-removal== 74640 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #64094: <==negation-removal== 63296 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #83160: <==negation-removal== 33837 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Pc_survivorat_s_p11)
                           (at_c_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #27095: <==closure== 33837 (pos)
                    (Pa_survivorat_s_p11)

                    ; #33837: origin
                    (Ba_survivorat_s_p11)

                    ; #40561: <==closure== 74640 (pos)
                    (Pb_survivorat_s_p11)

                    ; #48526: <==closure== 63296 (pos)
                    (Pc_survivorat_s_p11)

                    ; #63296: origin
                    (Bc_survivorat_s_p11)

                    ; #74640: origin
                    (Bb_survivorat_s_p11)

                    ; #26310: <==negation-removal== 27095 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #40298: <==negation-removal== 48526 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #57400: <==negation-removal== 40561 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #59996: <==negation-removal== 74640 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #64094: <==negation-removal== 63296 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #83160: <==negation-removal== 33837 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #11495: origin
                    (Bc_survivorat_s_p12)

                    ; #11782: <==closure== 52885 (pos)
                    (Pa_survivorat_s_p12)

                    ; #39603: origin
                    (Bb_survivorat_s_p12)

                    ; #45720: <==closure== 39603 (pos)
                    (Pb_survivorat_s_p12)

                    ; #52885: origin
                    (Ba_survivorat_s_p12)

                    ; #61922: <==closure== 11495 (pos)
                    (Pc_survivorat_s_p12)

                    ; #33499: <==negation-removal== 52885 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #44011: <==negation-removal== 39603 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #49679: <==negation-removal== 11495 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #61620: <==negation-removal== 11782 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #64399: <==negation-removal== 61922 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #91455: <==negation-removal== 45720 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #11495: origin
                    (Bc_survivorat_s_p12)

                    ; #11782: <==closure== 52885 (pos)
                    (Pa_survivorat_s_p12)

                    ; #39603: origin
                    (Bb_survivorat_s_p12)

                    ; #45720: <==closure== 39603 (pos)
                    (Pb_survivorat_s_p12)

                    ; #52885: origin
                    (Ba_survivorat_s_p12)

                    ; #61922: <==closure== 11495 (pos)
                    (Pc_survivorat_s_p12)

                    ; #33499: <==negation-removal== 52885 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #44011: <==negation-removal== 39603 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #49679: <==negation-removal== 11495 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #61620: <==negation-removal== 11782 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #64399: <==negation-removal== 61922 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #91455: <==negation-removal== 45720 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #11495: origin
                    (Bc_survivorat_s_p12)

                    ; #11782: <==closure== 52885 (pos)
                    (Pa_survivorat_s_p12)

                    ; #39603: origin
                    (Bb_survivorat_s_p12)

                    ; #45720: <==closure== 39603 (pos)
                    (Pb_survivorat_s_p12)

                    ; #52885: origin
                    (Ba_survivorat_s_p12)

                    ; #61922: <==closure== 11495 (pos)
                    (Pc_survivorat_s_p12)

                    ; #33499: <==negation-removal== 52885 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #44011: <==negation-removal== 39603 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #49679: <==negation-removal== 11495 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #61620: <==negation-removal== 11782 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #64399: <==negation-removal== 61922 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #91455: <==negation-removal== 45720 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #29228: origin
                    (Ba_survivorat_s_p1)

                    ; #33406: <==closure== 42641 (pos)
                    (Pc_survivorat_s_p1)

                    ; #42641: origin
                    (Bc_survivorat_s_p1)

                    ; #44104: <==closure== 72223 (pos)
                    (Pb_survivorat_s_p1)

                    ; #72223: origin
                    (Bb_survivorat_s_p1)

                    ; #77338: <==closure== 29228 (pos)
                    (Pa_survivorat_s_p1)

                    ; #14589: <==negation-removal== 72223 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #26273: <==negation-removal== 29228 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #39306: <==negation-removal== 42641 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #79477: <==negation-removal== 44104 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #82752: <==negation-removal== 77338 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #83867: <==negation-removal== 33406 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #29228: origin
                    (Ba_survivorat_s_p1)

                    ; #33406: <==closure== 42641 (pos)
                    (Pc_survivorat_s_p1)

                    ; #42641: origin
                    (Bc_survivorat_s_p1)

                    ; #44104: <==closure== 72223 (pos)
                    (Pb_survivorat_s_p1)

                    ; #72223: origin
                    (Bb_survivorat_s_p1)

                    ; #77338: <==closure== 29228 (pos)
                    (Pa_survivorat_s_p1)

                    ; #14589: <==negation-removal== 72223 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #26273: <==negation-removal== 29228 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #39306: <==negation-removal== 42641 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #79477: <==negation-removal== 44104 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #82752: <==negation-removal== 77338 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #83867: <==negation-removal== 33406 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #29228: origin
                    (Ba_survivorat_s_p1)

                    ; #33406: <==closure== 42641 (pos)
                    (Pc_survivorat_s_p1)

                    ; #42641: origin
                    (Bc_survivorat_s_p1)

                    ; #44104: <==closure== 72223 (pos)
                    (Pb_survivorat_s_p1)

                    ; #72223: origin
                    (Bb_survivorat_s_p1)

                    ; #77338: <==closure== 29228 (pos)
                    (Pa_survivorat_s_p1)

                    ; #14589: <==negation-removal== 72223 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #26273: <==negation-removal== 29228 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #39306: <==negation-removal== 42641 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #79477: <==negation-removal== 44104 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #82752: <==negation-removal== 77338 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #83867: <==negation-removal== 33406 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #13736: origin
                    (Bc_survivorat_s_p2)

                    ; #14212: <==closure== 74195 (pos)
                    (Pb_survivorat_s_p2)

                    ; #67538: <==closure== 13736 (pos)
                    (Pc_survivorat_s_p2)

                    ; #68447: <==closure== 69028 (pos)
                    (Pa_survivorat_s_p2)

                    ; #69028: origin
                    (Ba_survivorat_s_p2)

                    ; #74195: origin
                    (Bb_survivorat_s_p2)

                    ; #23316: <==negation-removal== 74195 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #33558: <==negation-removal== 14212 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #65587: <==negation-removal== 67538 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #80901: <==negation-removal== 69028 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #87519: <==negation-removal== 13736 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #98748: <==negation-removal== 68447 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #13736: origin
                    (Bc_survivorat_s_p2)

                    ; #14212: <==closure== 74195 (pos)
                    (Pb_survivorat_s_p2)

                    ; #67538: <==closure== 13736 (pos)
                    (Pc_survivorat_s_p2)

                    ; #68447: <==closure== 69028 (pos)
                    (Pa_survivorat_s_p2)

                    ; #69028: origin
                    (Ba_survivorat_s_p2)

                    ; #74195: origin
                    (Bb_survivorat_s_p2)

                    ; #23316: <==negation-removal== 74195 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #33558: <==negation-removal== 14212 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #65587: <==negation-removal== 67538 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #80901: <==negation-removal== 69028 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #87519: <==negation-removal== 13736 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #98748: <==negation-removal== 68447 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #13736: origin
                    (Bc_survivorat_s_p2)

                    ; #14212: <==closure== 74195 (pos)
                    (Pb_survivorat_s_p2)

                    ; #67538: <==closure== 13736 (pos)
                    (Pc_survivorat_s_p2)

                    ; #68447: <==closure== 69028 (pos)
                    (Pa_survivorat_s_p2)

                    ; #69028: origin
                    (Ba_survivorat_s_p2)

                    ; #74195: origin
                    (Bb_survivorat_s_p2)

                    ; #23316: <==negation-removal== 74195 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #33558: <==negation-removal== 14212 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #65587: <==negation-removal== 67538 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #80901: <==negation-removal== 69028 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #87519: <==negation-removal== 13736 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #98748: <==negation-removal== 68447 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #10201: <==closure== 56561 (pos)
                    (Pb_survivorat_s_p3)

                    ; #31477: <==closure== 45464 (pos)
                    (Pa_survivorat_s_p3)

                    ; #45464: origin
                    (Ba_survivorat_s_p3)

                    ; #56561: origin
                    (Bb_survivorat_s_p3)

                    ; #69886: <==closure== 69890 (pos)
                    (Pc_survivorat_s_p3)

                    ; #69890: origin
                    (Bc_survivorat_s_p3)

                    ; #13391: <==negation-removal== 56561 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #45861: <==negation-removal== 69890 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #57370: <==negation-removal== 69886 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #59836: <==negation-removal== 31477 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #61256: <==negation-removal== 10201 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #88038: <==negation-removal== 45464 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #10201: <==closure== 56561 (pos)
                    (Pb_survivorat_s_p3)

                    ; #31477: <==closure== 45464 (pos)
                    (Pa_survivorat_s_p3)

                    ; #45464: origin
                    (Ba_survivorat_s_p3)

                    ; #56561: origin
                    (Bb_survivorat_s_p3)

                    ; #69886: <==closure== 69890 (pos)
                    (Pc_survivorat_s_p3)

                    ; #69890: origin
                    (Bc_survivorat_s_p3)

                    ; #13391: <==negation-removal== 56561 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #45861: <==negation-removal== 69890 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #57370: <==negation-removal== 69886 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #59836: <==negation-removal== 31477 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #61256: <==negation-removal== 10201 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #88038: <==negation-removal== 45464 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #10201: <==closure== 56561 (pos)
                    (Pb_survivorat_s_p3)

                    ; #31477: <==closure== 45464 (pos)
                    (Pa_survivorat_s_p3)

                    ; #45464: origin
                    (Ba_survivorat_s_p3)

                    ; #56561: origin
                    (Bb_survivorat_s_p3)

                    ; #69886: <==closure== 69890 (pos)
                    (Pc_survivorat_s_p3)

                    ; #69890: origin
                    (Bc_survivorat_s_p3)

                    ; #13391: <==negation-removal== 56561 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #45861: <==negation-removal== 69890 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #57370: <==negation-removal== 69886 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #59836: <==negation-removal== 31477 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #61256: <==negation-removal== 10201 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #88038: <==negation-removal== 45464 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #19825: <==closure== 45300 (pos)
                    (Pc_survivorat_s_p4)

                    ; #35818: origin
                    (Bb_survivorat_s_p4)

                    ; #44304: origin
                    (Ba_survivorat_s_p4)

                    ; #45300: origin
                    (Bc_survivorat_s_p4)

                    ; #63585: <==closure== 44304 (pos)
                    (Pa_survivorat_s_p4)

                    ; #76757: <==closure== 35818 (pos)
                    (Pb_survivorat_s_p4)

                    ; #15573: <==negation-removal== 35818 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #59719: <==negation-removal== 19825 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #62418: <==negation-removal== 63585 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #78138: <==negation-removal== 76757 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #78562: <==negation-removal== 45300 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #90780: <==negation-removal== 44304 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #19825: <==closure== 45300 (pos)
                    (Pc_survivorat_s_p4)

                    ; #35818: origin
                    (Bb_survivorat_s_p4)

                    ; #44304: origin
                    (Ba_survivorat_s_p4)

                    ; #45300: origin
                    (Bc_survivorat_s_p4)

                    ; #63585: <==closure== 44304 (pos)
                    (Pa_survivorat_s_p4)

                    ; #76757: <==closure== 35818 (pos)
                    (Pb_survivorat_s_p4)

                    ; #15573: <==negation-removal== 35818 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #59719: <==negation-removal== 19825 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #62418: <==negation-removal== 63585 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #78138: <==negation-removal== 76757 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #78562: <==negation-removal== 45300 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #90780: <==negation-removal== 44304 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #19825: <==closure== 45300 (pos)
                    (Pc_survivorat_s_p4)

                    ; #35818: origin
                    (Bb_survivorat_s_p4)

                    ; #44304: origin
                    (Ba_survivorat_s_p4)

                    ; #45300: origin
                    (Bc_survivorat_s_p4)

                    ; #63585: <==closure== 44304 (pos)
                    (Pa_survivorat_s_p4)

                    ; #76757: <==closure== 35818 (pos)
                    (Pb_survivorat_s_p4)

                    ; #15573: <==negation-removal== 35818 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #59719: <==negation-removal== 19825 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #62418: <==negation-removal== 63585 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #78138: <==negation-removal== 76757 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #78562: <==negation-removal== 45300 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #90780: <==negation-removal== 44304 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #47322: <==closure== 71859 (pos)
                    (Pb_survivorat_s_p5)

                    ; #54118: <==closure== 69944 (pos)
                    (Pc_survivorat_s_p5)

                    ; #69944: origin
                    (Bc_survivorat_s_p5)

                    ; #71859: origin
                    (Bb_survivorat_s_p5)

                    ; #83059: origin
                    (Ba_survivorat_s_p5)

                    ; #90352: <==closure== 83059 (pos)
                    (Pa_survivorat_s_p5)

                    ; #17994: <==negation-removal== 54118 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #18511: <==negation-removal== 90352 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #65175: <==negation-removal== 47322 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #69922: <==negation-removal== 83059 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #87033: <==negation-removal== 71859 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #87379: <==negation-removal== 69944 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #47322: <==closure== 71859 (pos)
                    (Pb_survivorat_s_p5)

                    ; #54118: <==closure== 69944 (pos)
                    (Pc_survivorat_s_p5)

                    ; #69944: origin
                    (Bc_survivorat_s_p5)

                    ; #71859: origin
                    (Bb_survivorat_s_p5)

                    ; #83059: origin
                    (Ba_survivorat_s_p5)

                    ; #90352: <==closure== 83059 (pos)
                    (Pa_survivorat_s_p5)

                    ; #17994: <==negation-removal== 54118 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #18511: <==negation-removal== 90352 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #65175: <==negation-removal== 47322 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #69922: <==negation-removal== 83059 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #87033: <==negation-removal== 71859 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #87379: <==negation-removal== 69944 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #47322: <==closure== 71859 (pos)
                    (Pb_survivorat_s_p5)

                    ; #54118: <==closure== 69944 (pos)
                    (Pc_survivorat_s_p5)

                    ; #69944: origin
                    (Bc_survivorat_s_p5)

                    ; #71859: origin
                    (Bb_survivorat_s_p5)

                    ; #83059: origin
                    (Ba_survivorat_s_p5)

                    ; #90352: <==closure== 83059 (pos)
                    (Pa_survivorat_s_p5)

                    ; #17994: <==negation-removal== 54118 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #18511: <==negation-removal== 90352 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #65175: <==negation-removal== 47322 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #69922: <==negation-removal== 83059 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #87033: <==negation-removal== 71859 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #87379: <==negation-removal== 69944 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #18269: <==closure== 52726 (pos)
                    (Pc_survivorat_s_p6)

                    ; #50563: <==closure== 83308 (pos)
                    (Pb_survivorat_s_p6)

                    ; #51324: origin
                    (Ba_survivorat_s_p6)

                    ; #52726: origin
                    (Bc_survivorat_s_p6)

                    ; #78288: <==closure== 51324 (pos)
                    (Pa_survivorat_s_p6)

                    ; #83308: origin
                    (Bb_survivorat_s_p6)

                    ; #34886: <==negation-removal== 50563 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #51000: <==negation-removal== 18269 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #52164: <==negation-removal== 51324 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #60605: <==negation-removal== 83308 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #76017: <==negation-removal== 78288 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #94576: <==negation-removal== 52726 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #18269: <==closure== 52726 (pos)
                    (Pc_survivorat_s_p6)

                    ; #50563: <==closure== 83308 (pos)
                    (Pb_survivorat_s_p6)

                    ; #51324: origin
                    (Ba_survivorat_s_p6)

                    ; #52726: origin
                    (Bc_survivorat_s_p6)

                    ; #78288: <==closure== 51324 (pos)
                    (Pa_survivorat_s_p6)

                    ; #83308: origin
                    (Bb_survivorat_s_p6)

                    ; #34886: <==negation-removal== 50563 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #51000: <==negation-removal== 18269 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #52164: <==negation-removal== 51324 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #60605: <==negation-removal== 83308 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #76017: <==negation-removal== 78288 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #94576: <==negation-removal== 52726 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #18269: <==closure== 52726 (pos)
                    (Pc_survivorat_s_p6)

                    ; #50563: <==closure== 83308 (pos)
                    (Pb_survivorat_s_p6)

                    ; #51324: origin
                    (Ba_survivorat_s_p6)

                    ; #52726: origin
                    (Bc_survivorat_s_p6)

                    ; #78288: <==closure== 51324 (pos)
                    (Pa_survivorat_s_p6)

                    ; #83308: origin
                    (Bb_survivorat_s_p6)

                    ; #34886: <==negation-removal== 50563 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #51000: <==negation-removal== 18269 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #52164: <==negation-removal== 51324 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #60605: <==negation-removal== 83308 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #76017: <==negation-removal== 78288 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #94576: <==negation-removal== 52726 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #17206: <==closure== 86880 (pos)
                    (Pa_survivorat_s_p7)

                    ; #23843: <==closure== 33293 (pos)
                    (Pc_survivorat_s_p7)

                    ; #33293: origin
                    (Bc_survivorat_s_p7)

                    ; #53477: <==closure== 92216 (pos)
                    (Pb_survivorat_s_p7)

                    ; #86880: origin
                    (Ba_survivorat_s_p7)

                    ; #92216: origin
                    (Bb_survivorat_s_p7)

                    ; #24369: <==negation-removal== 23843 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #42026: <==negation-removal== 33293 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #55842: <==negation-removal== 53477 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #81919: <==negation-removal== 86880 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #88771: <==negation-removal== 92216 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #90472: <==negation-removal== 17206 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #17206: <==closure== 86880 (pos)
                    (Pa_survivorat_s_p7)

                    ; #23843: <==closure== 33293 (pos)
                    (Pc_survivorat_s_p7)

                    ; #33293: origin
                    (Bc_survivorat_s_p7)

                    ; #53477: <==closure== 92216 (pos)
                    (Pb_survivorat_s_p7)

                    ; #86880: origin
                    (Ba_survivorat_s_p7)

                    ; #92216: origin
                    (Bb_survivorat_s_p7)

                    ; #24369: <==negation-removal== 23843 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #42026: <==negation-removal== 33293 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #55842: <==negation-removal== 53477 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #81919: <==negation-removal== 86880 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #88771: <==negation-removal== 92216 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #90472: <==negation-removal== 17206 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #17206: <==closure== 86880 (pos)
                    (Pa_survivorat_s_p7)

                    ; #23843: <==closure== 33293 (pos)
                    (Pc_survivorat_s_p7)

                    ; #33293: origin
                    (Bc_survivorat_s_p7)

                    ; #53477: <==closure== 92216 (pos)
                    (Pb_survivorat_s_p7)

                    ; #86880: origin
                    (Ba_survivorat_s_p7)

                    ; #92216: origin
                    (Bb_survivorat_s_p7)

                    ; #24369: <==negation-removal== 23843 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #42026: <==negation-removal== 33293 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #55842: <==negation-removal== 53477 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #81919: <==negation-removal== 86880 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #88771: <==negation-removal== 92216 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #90472: <==negation-removal== 17206 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #15734: origin
                    (Bb_survivorat_s_p8)

                    ; #18573: <==closure== 15734 (pos)
                    (Pb_survivorat_s_p8)

                    ; #20865: <==closure== 82383 (pos)
                    (Pa_survivorat_s_p8)

                    ; #55709: origin
                    (Bc_survivorat_s_p8)

                    ; #73545: <==closure== 55709 (pos)
                    (Pc_survivorat_s_p8)

                    ; #82383: origin
                    (Ba_survivorat_s_p8)

                    ; #18162: <==negation-removal== 55709 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #24283: <==negation-removal== 20865 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #31697: <==negation-removal== 15734 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #63507: <==negation-removal== 82383 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #69115: <==negation-removal== 73545 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #81603: <==negation-removal== 18573 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #15734: origin
                    (Bb_survivorat_s_p8)

                    ; #18573: <==closure== 15734 (pos)
                    (Pb_survivorat_s_p8)

                    ; #20865: <==closure== 82383 (pos)
                    (Pa_survivorat_s_p8)

                    ; #55709: origin
                    (Bc_survivorat_s_p8)

                    ; #73545: <==closure== 55709 (pos)
                    (Pc_survivorat_s_p8)

                    ; #82383: origin
                    (Ba_survivorat_s_p8)

                    ; #18162: <==negation-removal== 55709 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #24283: <==negation-removal== 20865 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #31697: <==negation-removal== 15734 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #63507: <==negation-removal== 82383 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #69115: <==negation-removal== 73545 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #81603: <==negation-removal== 18573 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #15734: origin
                    (Bb_survivorat_s_p8)

                    ; #18573: <==closure== 15734 (pos)
                    (Pb_survivorat_s_p8)

                    ; #20865: <==closure== 82383 (pos)
                    (Pa_survivorat_s_p8)

                    ; #55709: origin
                    (Bc_survivorat_s_p8)

                    ; #73545: <==closure== 55709 (pos)
                    (Pc_survivorat_s_p8)

                    ; #82383: origin
                    (Ba_survivorat_s_p8)

                    ; #18162: <==negation-removal== 55709 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #24283: <==negation-removal== 20865 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #31697: <==negation-removal== 15734 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #63507: <==negation-removal== 82383 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #69115: <==negation-removal== 73545 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #81603: <==negation-removal== 18573 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #14535: <==closure== 26643 (pos)
                    (Pb_survivorat_s_p9)

                    ; #26643: origin
                    (Bb_survivorat_s_p9)

                    ; #55824: <==closure== 76810 (pos)
                    (Pc_survivorat_s_p9)

                    ; #61258: origin
                    (Ba_survivorat_s_p9)

                    ; #74658: <==closure== 61258 (pos)
                    (Pa_survivorat_s_p9)

                    ; #76810: origin
                    (Bc_survivorat_s_p9)

                    ; #23348: <==negation-removal== 55824 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #34919: <==negation-removal== 26643 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #50107: <==negation-removal== 74658 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #71394: <==negation-removal== 61258 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #73340: <==negation-removal== 76810 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #85270: <==negation-removal== 14535 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #14535: <==closure== 26643 (pos)
                    (Pb_survivorat_s_p9)

                    ; #26643: origin
                    (Bb_survivorat_s_p9)

                    ; #55824: <==closure== 76810 (pos)
                    (Pc_survivorat_s_p9)

                    ; #61258: origin
                    (Ba_survivorat_s_p9)

                    ; #74658: <==closure== 61258 (pos)
                    (Pa_survivorat_s_p9)

                    ; #76810: origin
                    (Bc_survivorat_s_p9)

                    ; #23348: <==negation-removal== 55824 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #34919: <==negation-removal== 26643 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #50107: <==negation-removal== 74658 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #71394: <==negation-removal== 61258 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #73340: <==negation-removal== 76810 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #85270: <==negation-removal== 14535 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #14535: <==closure== 26643 (pos)
                    (Pb_survivorat_s_p9)

                    ; #26643: origin
                    (Bb_survivorat_s_p9)

                    ; #55824: <==closure== 76810 (pos)
                    (Pc_survivorat_s_p9)

                    ; #61258: origin
                    (Ba_survivorat_s_p9)

                    ; #74658: <==closure== 61258 (pos)
                    (Pa_survivorat_s_p9)

                    ; #76810: origin
                    (Bc_survivorat_s_p9)

                    ; #23348: <==negation-removal== 55824 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #34919: <==negation-removal== 26643 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #50107: <==negation-removal== 74658 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #71394: <==negation-removal== 61258 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #73340: <==negation-removal== 76810 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #85270: <==negation-removal== 14535 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (at_a_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #68273: origin
                    (at_a_p1)

                    ; #79974: origin
                    (not_at_a_p10)

                    ; #12667: <==negation-removal== 68273 (pos)
                    (not (not_at_a_p1))

                    ; #82631: <==negation-removal== 79974 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #79974: origin
                    (not_at_a_p10)

                    ; #82631: origin
                    (at_a_p10)

                    ; #79974: <==negation-removal== 82631 (pos)
                    (not (not_at_a_p10))

                    ; #82631: <==negation-removal== 79974 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (at_a_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #71763: origin
                    (at_a_p11)

                    ; #79974: origin
                    (not_at_a_p10)

                    ; #69043: <==negation-removal== 71763 (pos)
                    (not (not_at_a_p11))

                    ; #82631: <==negation-removal== 79974 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10))
        :effect (and
                    ; #34910: origin
                    (at_a_p12)

                    ; #79974: origin
                    (not_at_a_p10)

                    ; #33099: <==negation-removal== 34910 (pos)
                    (not (not_at_a_p12))

                    ; #82631: <==negation-removal== 79974 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10))
        :effect (and
                    ; #13233: origin
                    (at_a_p2)

                    ; #79974: origin
                    (not_at_a_p10)

                    ; #54145: <==negation-removal== 13233 (pos)
                    (not (not_at_a_p2))

                    ; #82631: <==negation-removal== 79974 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p3
        :precondition (and (at_a_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #46795: origin
                    (at_a_p3)

                    ; #79974: origin
                    (not_at_a_p10)

                    ; #13698: <==negation-removal== 46795 (pos)
                    (not (not_at_a_p3))

                    ; #82631: <==negation-removal== 79974 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #63965: origin
                    (at_a_p4)

                    ; #79974: origin
                    (not_at_a_p10)

                    ; #19532: <==negation-removal== 63965 (pos)
                    (not (not_at_a_p4))

                    ; #82631: <==negation-removal== 79974 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p5
        :precondition (and (at_a_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #42339: origin
                    (at_a_p5)

                    ; #79974: origin
                    (not_at_a_p10)

                    ; #23125: <==negation-removal== 42339 (pos)
                    (not (not_at_a_p5))

                    ; #82631: <==negation-removal== 79974 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #73340: origin
                    (at_a_p6)

                    ; #79974: origin
                    (not_at_a_p10)

                    ; #72717: <==negation-removal== 73340 (pos)
                    (not (not_at_a_p6))

                    ; #82631: <==negation-removal== 79974 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #18825: origin
                    (at_a_p7)

                    ; #79974: origin
                    (not_at_a_p10)

                    ; #18350: <==negation-removal== 18825 (pos)
                    (not (not_at_a_p7))

                    ; #82631: <==negation-removal== 79974 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p8
        :precondition (and (at_a_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #37734: origin
                    (at_a_p8)

                    ; #79974: origin
                    (not_at_a_p10)

                    ; #74823: <==negation-removal== 37734 (pos)
                    (not (not_at_a_p8))

                    ; #82631: <==negation-removal== 79974 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #52168: origin
                    (at_a_p9)

                    ; #79974: origin
                    (not_at_a_p10)

                    ; #51227: <==negation-removal== 52168 (pos)
                    (not (not_at_a_p9))

                    ; #82631: <==negation-removal== 79974 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #68273: origin
                    (at_a_p1)

                    ; #69043: origin
                    (not_at_a_p11)

                    ; #12667: <==negation-removal== 68273 (pos)
                    (not (not_at_a_p1))

                    ; #71763: <==negation-removal== 69043 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #69043: origin
                    (not_at_a_p11)

                    ; #82631: origin
                    (at_a_p10)

                    ; #71763: <==negation-removal== 69043 (pos)
                    (not (at_a_p11))

                    ; #79974: <==negation-removal== 82631 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #69043: origin
                    (not_at_a_p11)

                    ; #71763: origin
                    (at_a_p11)

                    ; #69043: <==negation-removal== 71763 (pos)
                    (not (not_at_a_p11))

                    ; #71763: <==negation-removal== 69043 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (at_a_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #34910: origin
                    (at_a_p12)

                    ; #69043: origin
                    (not_at_a_p11)

                    ; #33099: <==negation-removal== 34910 (pos)
                    (not (not_at_a_p12))

                    ; #71763: <==negation-removal== 69043 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #13233: origin
                    (at_a_p2)

                    ; #69043: origin
                    (not_at_a_p11)

                    ; #54145: <==negation-removal== 13233 (pos)
                    (not (not_at_a_p2))

                    ; #71763: <==negation-removal== 69043 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #46795: origin
                    (at_a_p3)

                    ; #69043: origin
                    (not_at_a_p11)

                    ; #13698: <==negation-removal== 46795 (pos)
                    (not (not_at_a_p3))

                    ; #71763: <==negation-removal== 69043 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p4
        :precondition (and (at_a_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #63965: origin
                    (at_a_p4)

                    ; #69043: origin
                    (not_at_a_p11)

                    ; #19532: <==negation-removal== 63965 (pos)
                    (not (not_at_a_p4))

                    ; #71763: <==negation-removal== 69043 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_a_p11))
        :effect (and
                    ; #42339: origin
                    (at_a_p5)

                    ; #69043: origin
                    (not_at_a_p11)

                    ; #23125: <==negation-removal== 42339 (pos)
                    (not (not_at_a_p5))

                    ; #71763: <==negation-removal== 69043 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #69043: origin
                    (not_at_a_p11)

                    ; #73340: origin
                    (at_a_p6)

                    ; #71763: <==negation-removal== 69043 (pos)
                    (not (at_a_p11))

                    ; #72717: <==negation-removal== 73340 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #18825: origin
                    (at_a_p7)

                    ; #69043: origin
                    (not_at_a_p11)

                    ; #18350: <==negation-removal== 18825 (pos)
                    (not (not_at_a_p7))

                    ; #71763: <==negation-removal== 69043 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p8
        :precondition (and (at_a_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #37734: origin
                    (at_a_p8)

                    ; #69043: origin
                    (not_at_a_p11)

                    ; #71763: <==negation-removal== 69043 (pos)
                    (not (at_a_p11))

                    ; #74823: <==negation-removal== 37734 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #52168: origin
                    (at_a_p9)

                    ; #69043: origin
                    (not_at_a_p11)

                    ; #51227: <==negation-removal== 52168 (pos)
                    (not (not_at_a_p9))

                    ; #71763: <==negation-removal== 69043 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (at_a_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #33099: origin
                    (not_at_a_p12)

                    ; #68273: origin
                    (at_a_p1)

                    ; #12667: <==negation-removal== 68273 (pos)
                    (not (not_at_a_p1))

                    ; #34910: <==negation-removal== 33099 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #33099: origin
                    (not_at_a_p12)

                    ; #82631: origin
                    (at_a_p10)

                    ; #34910: <==negation-removal== 33099 (pos)
                    (not (at_a_p12))

                    ; #79974: <==negation-removal== 82631 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (at_a_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #33099: origin
                    (not_at_a_p12)

                    ; #71763: origin
                    (at_a_p11)

                    ; #34910: <==negation-removal== 33099 (pos)
                    (not (at_a_p12))

                    ; #69043: <==negation-removal== 71763 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (at_a_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #33099: origin
                    (not_at_a_p12)

                    ; #34910: origin
                    (at_a_p12)

                    ; #33099: <==negation-removal== 34910 (pos)
                    (not (not_at_a_p12))

                    ; #34910: <==negation-removal== 33099 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (at_a_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #13233: origin
                    (at_a_p2)

                    ; #33099: origin
                    (not_at_a_p12)

                    ; #34910: <==negation-removal== 33099 (pos)
                    (not (at_a_p12))

                    ; #54145: <==negation-removal== 13233 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #33099: origin
                    (not_at_a_p12)

                    ; #46795: origin
                    (at_a_p3)

                    ; #13698: <==negation-removal== 46795 (pos)
                    (not (not_at_a_p3))

                    ; #34910: <==negation-removal== 33099 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12))
        :effect (and
                    ; #33099: origin
                    (not_at_a_p12)

                    ; #63965: origin
                    (at_a_p4)

                    ; #19532: <==negation-removal== 63965 (pos)
                    (not (not_at_a_p4))

                    ; #34910: <==negation-removal== 33099 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (at_a_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #33099: origin
                    (not_at_a_p12)

                    ; #42339: origin
                    (at_a_p5)

                    ; #23125: <==negation-removal== 42339 (pos)
                    (not (not_at_a_p5))

                    ; #34910: <==negation-removal== 33099 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #33099: origin
                    (not_at_a_p12)

                    ; #73340: origin
                    (at_a_p6)

                    ; #34910: <==negation-removal== 33099 (pos)
                    (not (at_a_p12))

                    ; #72717: <==negation-removal== 73340 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (at_a_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #18825: origin
                    (at_a_p7)

                    ; #33099: origin
                    (not_at_a_p12)

                    ; #18350: <==negation-removal== 18825 (pos)
                    (not (not_at_a_p7))

                    ; #34910: <==negation-removal== 33099 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (at_a_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #33099: origin
                    (not_at_a_p12)

                    ; #37734: origin
                    (at_a_p8)

                    ; #34910: <==negation-removal== 33099 (pos)
                    (not (at_a_p12))

                    ; #74823: <==negation-removal== 37734 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (at_a_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #33099: origin
                    (not_at_a_p12)

                    ; #52168: origin
                    (at_a_p9)

                    ; #34910: <==negation-removal== 33099 (pos)
                    (not (at_a_p12))

                    ; #51227: <==negation-removal== 52168 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #12667: origin
                    (not_at_a_p1)

                    ; #68273: origin
                    (at_a_p1)

                    ; #12667: <==negation-removal== 68273 (pos)
                    (not (not_at_a_p1))

                    ; #68273: <==negation-removal== 12667 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1))
        :effect (and
                    ; #12667: origin
                    (not_at_a_p1)

                    ; #82631: origin
                    (at_a_p10)

                    ; #68273: <==negation-removal== 12667 (pos)
                    (not (at_a_p1))

                    ; #79974: <==negation-removal== 82631 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1))
        :effect (and
                    ; #12667: origin
                    (not_at_a_p1)

                    ; #71763: origin
                    (at_a_p11)

                    ; #68273: <==negation-removal== 12667 (pos)
                    (not (at_a_p1))

                    ; #69043: <==negation-removal== 71763 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1))
        :effect (and
                    ; #12667: origin
                    (not_at_a_p1)

                    ; #34910: origin
                    (at_a_p12)

                    ; #33099: <==negation-removal== 34910 (pos)
                    (not (not_at_a_p12))

                    ; #68273: <==negation-removal== 12667 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #12667: origin
                    (not_at_a_p1)

                    ; #13233: origin
                    (at_a_p2)

                    ; #54145: <==negation-removal== 13233 (pos)
                    (not (not_at_a_p2))

                    ; #68273: <==negation-removal== 12667 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #12667: origin
                    (not_at_a_p1)

                    ; #46795: origin
                    (at_a_p3)

                    ; #13698: <==negation-removal== 46795 (pos)
                    (not (not_at_a_p3))

                    ; #68273: <==negation-removal== 12667 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #12667: origin
                    (not_at_a_p1)

                    ; #63965: origin
                    (at_a_p4)

                    ; #19532: <==negation-removal== 63965 (pos)
                    (not (not_at_a_p4))

                    ; #68273: <==negation-removal== 12667 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #12667: origin
                    (not_at_a_p1)

                    ; #42339: origin
                    (at_a_p5)

                    ; #23125: <==negation-removal== 42339 (pos)
                    (not (not_at_a_p5))

                    ; #68273: <==negation-removal== 12667 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #12667: origin
                    (not_at_a_p1)

                    ; #73340: origin
                    (at_a_p6)

                    ; #68273: <==negation-removal== 12667 (pos)
                    (not (at_a_p1))

                    ; #72717: <==negation-removal== 73340 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #12667: origin
                    (not_at_a_p1)

                    ; #18825: origin
                    (at_a_p7)

                    ; #18350: <==negation-removal== 18825 (pos)
                    (not (not_at_a_p7))

                    ; #68273: <==negation-removal== 12667 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #12667: origin
                    (not_at_a_p1)

                    ; #37734: origin
                    (at_a_p8)

                    ; #68273: <==negation-removal== 12667 (pos)
                    (not (at_a_p1))

                    ; #74823: <==negation-removal== 37734 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #12667: origin
                    (not_at_a_p1)

                    ; #52168: origin
                    (at_a_p9)

                    ; #51227: <==negation-removal== 52168 (pos)
                    (not (not_at_a_p9))

                    ; #68273: <==negation-removal== 12667 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #54145: origin
                    (not_at_a_p2)

                    ; #68273: origin
                    (at_a_p1)

                    ; #12667: <==negation-removal== 68273 (pos)
                    (not (not_at_a_p1))

                    ; #13233: <==negation-removal== 54145 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2))
        :effect (and
                    ; #54145: origin
                    (not_at_a_p2)

                    ; #82631: origin
                    (at_a_p10)

                    ; #13233: <==negation-removal== 54145 (pos)
                    (not (at_a_p2))

                    ; #79974: <==negation-removal== 82631 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2))
        :effect (and
                    ; #54145: origin
                    (not_at_a_p2)

                    ; #71763: origin
                    (at_a_p11)

                    ; #13233: <==negation-removal== 54145 (pos)
                    (not (at_a_p2))

                    ; #69043: <==negation-removal== 71763 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2))
        :effect (and
                    ; #34910: origin
                    (at_a_p12)

                    ; #54145: origin
                    (not_at_a_p2)

                    ; #13233: <==negation-removal== 54145 (pos)
                    (not (at_a_p2))

                    ; #33099: <==negation-removal== 34910 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #13233: origin
                    (at_a_p2)

                    ; #54145: origin
                    (not_at_a_p2)

                    ; #13233: <==negation-removal== 54145 (pos)
                    (not (at_a_p2))

                    ; #54145: <==negation-removal== 13233 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #46795: origin
                    (at_a_p3)

                    ; #54145: origin
                    (not_at_a_p2)

                    ; #13233: <==negation-removal== 54145 (pos)
                    (not (at_a_p2))

                    ; #13698: <==negation-removal== 46795 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #54145: origin
                    (not_at_a_p2)

                    ; #63965: origin
                    (at_a_p4)

                    ; #13233: <==negation-removal== 54145 (pos)
                    (not (at_a_p2))

                    ; #19532: <==negation-removal== 63965 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #42339: origin
                    (at_a_p5)

                    ; #54145: origin
                    (not_at_a_p2)

                    ; #13233: <==negation-removal== 54145 (pos)
                    (not (at_a_p2))

                    ; #23125: <==negation-removal== 42339 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #54145: origin
                    (not_at_a_p2)

                    ; #73340: origin
                    (at_a_p6)

                    ; #13233: <==negation-removal== 54145 (pos)
                    (not (at_a_p2))

                    ; #72717: <==negation-removal== 73340 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #18825: origin
                    (at_a_p7)

                    ; #54145: origin
                    (not_at_a_p2)

                    ; #13233: <==negation-removal== 54145 (pos)
                    (not (at_a_p2))

                    ; #18350: <==negation-removal== 18825 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #37734: origin
                    (at_a_p8)

                    ; #54145: origin
                    (not_at_a_p2)

                    ; #13233: <==negation-removal== 54145 (pos)
                    (not (at_a_p2))

                    ; #74823: <==negation-removal== 37734 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #52168: origin
                    (at_a_p9)

                    ; #54145: origin
                    (not_at_a_p2)

                    ; #13233: <==negation-removal== 54145 (pos)
                    (not (at_a_p2))

                    ; #51227: <==negation-removal== 52168 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #13698: origin
                    (not_at_a_p3)

                    ; #68273: origin
                    (at_a_p1)

                    ; #12667: <==negation-removal== 68273 (pos)
                    (not (not_at_a_p1))

                    ; #46795: <==negation-removal== 13698 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3))
        :effect (and
                    ; #13698: origin
                    (not_at_a_p3)

                    ; #82631: origin
                    (at_a_p10)

                    ; #46795: <==negation-removal== 13698 (pos)
                    (not (at_a_p3))

                    ; #79974: <==negation-removal== 82631 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3))
        :effect (and
                    ; #13698: origin
                    (not_at_a_p3)

                    ; #71763: origin
                    (at_a_p11)

                    ; #46795: <==negation-removal== 13698 (pos)
                    (not (at_a_p3))

                    ; #69043: <==negation-removal== 71763 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #13698: origin
                    (not_at_a_p3)

                    ; #34910: origin
                    (at_a_p12)

                    ; #33099: <==negation-removal== 34910 (pos)
                    (not (not_at_a_p12))

                    ; #46795: <==negation-removal== 13698 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #13233: origin
                    (at_a_p2)

                    ; #13698: origin
                    (not_at_a_p3)

                    ; #46795: <==negation-removal== 13698 (pos)
                    (not (at_a_p3))

                    ; #54145: <==negation-removal== 13233 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #13698: origin
                    (not_at_a_p3)

                    ; #46795: origin
                    (at_a_p3)

                    ; #13698: <==negation-removal== 46795 (pos)
                    (not (not_at_a_p3))

                    ; #46795: <==negation-removal== 13698 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #13698: origin
                    (not_at_a_p3)

                    ; #63965: origin
                    (at_a_p4)

                    ; #19532: <==negation-removal== 63965 (pos)
                    (not (not_at_a_p4))

                    ; #46795: <==negation-removal== 13698 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #13698: origin
                    (not_at_a_p3)

                    ; #42339: origin
                    (at_a_p5)

                    ; #23125: <==negation-removal== 42339 (pos)
                    (not (not_at_a_p5))

                    ; #46795: <==negation-removal== 13698 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #13698: origin
                    (not_at_a_p3)

                    ; #73340: origin
                    (at_a_p6)

                    ; #46795: <==negation-removal== 13698 (pos)
                    (not (at_a_p3))

                    ; #72717: <==negation-removal== 73340 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #13698: origin
                    (not_at_a_p3)

                    ; #18825: origin
                    (at_a_p7)

                    ; #18350: <==negation-removal== 18825 (pos)
                    (not (not_at_a_p7))

                    ; #46795: <==negation-removal== 13698 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #13698: origin
                    (not_at_a_p3)

                    ; #37734: origin
                    (at_a_p8)

                    ; #46795: <==negation-removal== 13698 (pos)
                    (not (at_a_p3))

                    ; #74823: <==negation-removal== 37734 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #13698: origin
                    (not_at_a_p3)

                    ; #52168: origin
                    (at_a_p9)

                    ; #46795: <==negation-removal== 13698 (pos)
                    (not (at_a_p3))

                    ; #51227: <==negation-removal== 52168 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #19532: origin
                    (not_at_a_p4)

                    ; #68273: origin
                    (at_a_p1)

                    ; #12667: <==negation-removal== 68273 (pos)
                    (not (not_at_a_p1))

                    ; #63965: <==negation-removal== 19532 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #19532: origin
                    (not_at_a_p4)

                    ; #82631: origin
                    (at_a_p10)

                    ; #63965: <==negation-removal== 19532 (pos)
                    (not (at_a_p4))

                    ; #79974: <==negation-removal== 82631 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4))
        :effect (and
                    ; #19532: origin
                    (not_at_a_p4)

                    ; #71763: origin
                    (at_a_p11)

                    ; #63965: <==negation-removal== 19532 (pos)
                    (not (at_a_p4))

                    ; #69043: <==negation-removal== 71763 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_a_p4))
        :effect (and
                    ; #19532: origin
                    (not_at_a_p4)

                    ; #34910: origin
                    (at_a_p12)

                    ; #33099: <==negation-removal== 34910 (pos)
                    (not (not_at_a_p12))

                    ; #63965: <==negation-removal== 19532 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #13233: origin
                    (at_a_p2)

                    ; #19532: origin
                    (not_at_a_p4)

                    ; #54145: <==negation-removal== 13233 (pos)
                    (not (not_at_a_p2))

                    ; #63965: <==negation-removal== 19532 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #19532: origin
                    (not_at_a_p4)

                    ; #46795: origin
                    (at_a_p3)

                    ; #13698: <==negation-removal== 46795 (pos)
                    (not (not_at_a_p3))

                    ; #63965: <==negation-removal== 19532 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #19532: origin
                    (not_at_a_p4)

                    ; #63965: origin
                    (at_a_p4)

                    ; #19532: <==negation-removal== 63965 (pos)
                    (not (not_at_a_p4))

                    ; #63965: <==negation-removal== 19532 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #19532: origin
                    (not_at_a_p4)

                    ; #42339: origin
                    (at_a_p5)

                    ; #23125: <==negation-removal== 42339 (pos)
                    (not (not_at_a_p5))

                    ; #63965: <==negation-removal== 19532 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #19532: origin
                    (not_at_a_p4)

                    ; #73340: origin
                    (at_a_p6)

                    ; #63965: <==negation-removal== 19532 (pos)
                    (not (at_a_p4))

                    ; #72717: <==negation-removal== 73340 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #18825: origin
                    (at_a_p7)

                    ; #19532: origin
                    (not_at_a_p4)

                    ; #18350: <==negation-removal== 18825 (pos)
                    (not (not_at_a_p7))

                    ; #63965: <==negation-removal== 19532 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #19532: origin
                    (not_at_a_p4)

                    ; #37734: origin
                    (at_a_p8)

                    ; #63965: <==negation-removal== 19532 (pos)
                    (not (at_a_p4))

                    ; #74823: <==negation-removal== 37734 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #19532: origin
                    (not_at_a_p4)

                    ; #52168: origin
                    (at_a_p9)

                    ; #51227: <==negation-removal== 52168 (pos)
                    (not (not_at_a_p9))

                    ; #63965: <==negation-removal== 19532 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #23125: origin
                    (not_at_a_p5)

                    ; #68273: origin
                    (at_a_p1)

                    ; #12667: <==negation-removal== 68273 (pos)
                    (not (not_at_a_p1))

                    ; #42339: <==negation-removal== 23125 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #23125: origin
                    (not_at_a_p5)

                    ; #82631: origin
                    (at_a_p10)

                    ; #42339: <==negation-removal== 23125 (pos)
                    (not (at_a_p5))

                    ; #79974: <==negation-removal== 82631 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #23125: origin
                    (not_at_a_p5)

                    ; #71763: origin
                    (at_a_p11)

                    ; #42339: <==negation-removal== 23125 (pos)
                    (not (at_a_p5))

                    ; #69043: <==negation-removal== 71763 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #23125: origin
                    (not_at_a_p5)

                    ; #34910: origin
                    (at_a_p12)

                    ; #33099: <==negation-removal== 34910 (pos)
                    (not (not_at_a_p12))

                    ; #42339: <==negation-removal== 23125 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #13233: origin
                    (at_a_p2)

                    ; #23125: origin
                    (not_at_a_p5)

                    ; #42339: <==negation-removal== 23125 (pos)
                    (not (at_a_p5))

                    ; #54145: <==negation-removal== 13233 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #23125: origin
                    (not_at_a_p5)

                    ; #46795: origin
                    (at_a_p3)

                    ; #13698: <==negation-removal== 46795 (pos)
                    (not (not_at_a_p3))

                    ; #42339: <==negation-removal== 23125 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #23125: origin
                    (not_at_a_p5)

                    ; #63965: origin
                    (at_a_p4)

                    ; #19532: <==negation-removal== 63965 (pos)
                    (not (not_at_a_p4))

                    ; #42339: <==negation-removal== 23125 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #23125: origin
                    (not_at_a_p5)

                    ; #42339: origin
                    (at_a_p5)

                    ; #23125: <==negation-removal== 42339 (pos)
                    (not (not_at_a_p5))

                    ; #42339: <==negation-removal== 23125 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #23125: origin
                    (not_at_a_p5)

                    ; #73340: origin
                    (at_a_p6)

                    ; #42339: <==negation-removal== 23125 (pos)
                    (not (at_a_p5))

                    ; #72717: <==negation-removal== 73340 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #18825: origin
                    (at_a_p7)

                    ; #23125: origin
                    (not_at_a_p5)

                    ; #18350: <==negation-removal== 18825 (pos)
                    (not (not_at_a_p7))

                    ; #42339: <==negation-removal== 23125 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #23125: origin
                    (not_at_a_p5)

                    ; #37734: origin
                    (at_a_p8)

                    ; #42339: <==negation-removal== 23125 (pos)
                    (not (at_a_p5))

                    ; #74823: <==negation-removal== 37734 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #23125: origin
                    (not_at_a_p5)

                    ; #52168: origin
                    (at_a_p9)

                    ; #42339: <==negation-removal== 23125 (pos)
                    (not (at_a_p5))

                    ; #51227: <==negation-removal== 52168 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #68273: origin
                    (at_a_p1)

                    ; #72717: origin
                    (not_at_a_p6)

                    ; #12667: <==negation-removal== 68273 (pos)
                    (not (not_at_a_p1))

                    ; #73340: <==negation-removal== 72717 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #72717: origin
                    (not_at_a_p6)

                    ; #82631: origin
                    (at_a_p10)

                    ; #73340: <==negation-removal== 72717 (pos)
                    (not (at_a_p6))

                    ; #79974: <==negation-removal== 82631 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (at_a_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #71763: origin
                    (at_a_p11)

                    ; #72717: origin
                    (not_at_a_p6)

                    ; #69043: <==negation-removal== 71763 (pos)
                    (not (not_at_a_p11))

                    ; #73340: <==negation-removal== 72717 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #34910: origin
                    (at_a_p12)

                    ; #72717: origin
                    (not_at_a_p6)

                    ; #33099: <==negation-removal== 34910 (pos)
                    (not (not_at_a_p12))

                    ; #73340: <==negation-removal== 72717 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #13233: origin
                    (at_a_p2)

                    ; #72717: origin
                    (not_at_a_p6)

                    ; #54145: <==negation-removal== 13233 (pos)
                    (not (not_at_a_p2))

                    ; #73340: <==negation-removal== 72717 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #46795: origin
                    (at_a_p3)

                    ; #72717: origin
                    (not_at_a_p6)

                    ; #13698: <==negation-removal== 46795 (pos)
                    (not (not_at_a_p3))

                    ; #73340: <==negation-removal== 72717 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #63965: origin
                    (at_a_p4)

                    ; #72717: origin
                    (not_at_a_p6)

                    ; #19532: <==negation-removal== 63965 (pos)
                    (not (not_at_a_p4))

                    ; #73340: <==negation-removal== 72717 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #42339: origin
                    (at_a_p5)

                    ; #72717: origin
                    (not_at_a_p6)

                    ; #23125: <==negation-removal== 42339 (pos)
                    (not (not_at_a_p5))

                    ; #73340: <==negation-removal== 72717 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #72717: origin
                    (not_at_a_p6)

                    ; #73340: origin
                    (at_a_p6)

                    ; #72717: <==negation-removal== 73340 (pos)
                    (not (not_at_a_p6))

                    ; #73340: <==negation-removal== 72717 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #18825: origin
                    (at_a_p7)

                    ; #72717: origin
                    (not_at_a_p6)

                    ; #18350: <==negation-removal== 18825 (pos)
                    (not (not_at_a_p7))

                    ; #73340: <==negation-removal== 72717 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #37734: origin
                    (at_a_p8)

                    ; #72717: origin
                    (not_at_a_p6)

                    ; #73340: <==negation-removal== 72717 (pos)
                    (not (at_a_p6))

                    ; #74823: <==negation-removal== 37734 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #52168: origin
                    (at_a_p9)

                    ; #72717: origin
                    (not_at_a_p6)

                    ; #51227: <==negation-removal== 52168 (pos)
                    (not (not_at_a_p9))

                    ; #73340: <==negation-removal== 72717 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #18350: origin
                    (not_at_a_p7)

                    ; #68273: origin
                    (at_a_p1)

                    ; #12667: <==negation-removal== 68273 (pos)
                    (not (not_at_a_p1))

                    ; #18825: <==negation-removal== 18350 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p10
        :precondition (and (at_a_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #18350: origin
                    (not_at_a_p7)

                    ; #82631: origin
                    (at_a_p10)

                    ; #18825: <==negation-removal== 18350 (pos)
                    (not (at_a_p7))

                    ; #79974: <==negation-removal== 82631 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #18350: origin
                    (not_at_a_p7)

                    ; #71763: origin
                    (at_a_p11)

                    ; #18825: <==negation-removal== 18350 (pos)
                    (not (at_a_p7))

                    ; #69043: <==negation-removal== 71763 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (at_a_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #18350: origin
                    (not_at_a_p7)

                    ; #34910: origin
                    (at_a_p12)

                    ; #18825: <==negation-removal== 18350 (pos)
                    (not (at_a_p7))

                    ; #33099: <==negation-removal== 34910 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #13233: origin
                    (at_a_p2)

                    ; #18350: origin
                    (not_at_a_p7)

                    ; #18825: <==negation-removal== 18350 (pos)
                    (not (at_a_p7))

                    ; #54145: <==negation-removal== 13233 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #18350: origin
                    (not_at_a_p7)

                    ; #46795: origin
                    (at_a_p3)

                    ; #13698: <==negation-removal== 46795 (pos)
                    (not (not_at_a_p3))

                    ; #18825: <==negation-removal== 18350 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #18350: origin
                    (not_at_a_p7)

                    ; #63965: origin
                    (at_a_p4)

                    ; #18825: <==negation-removal== 18350 (pos)
                    (not (at_a_p7))

                    ; #19532: <==negation-removal== 63965 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #18350: origin
                    (not_at_a_p7)

                    ; #42339: origin
                    (at_a_p5)

                    ; #18825: <==negation-removal== 18350 (pos)
                    (not (at_a_p7))

                    ; #23125: <==negation-removal== 42339 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #18350: origin
                    (not_at_a_p7)

                    ; #73340: origin
                    (at_a_p6)

                    ; #18825: <==negation-removal== 18350 (pos)
                    (not (at_a_p7))

                    ; #72717: <==negation-removal== 73340 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #18350: origin
                    (not_at_a_p7)

                    ; #18825: origin
                    (at_a_p7)

                    ; #18350: <==negation-removal== 18825 (pos)
                    (not (not_at_a_p7))

                    ; #18825: <==negation-removal== 18350 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #18350: origin
                    (not_at_a_p7)

                    ; #37734: origin
                    (at_a_p8)

                    ; #18825: <==negation-removal== 18350 (pos)
                    (not (at_a_p7))

                    ; #74823: <==negation-removal== 37734 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #18350: origin
                    (not_at_a_p7)

                    ; #52168: origin
                    (at_a_p9)

                    ; #18825: <==negation-removal== 18350 (pos)
                    (not (at_a_p7))

                    ; #51227: <==negation-removal== 52168 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #68273: origin
                    (at_a_p1)

                    ; #74823: origin
                    (not_at_a_p8)

                    ; #12667: <==negation-removal== 68273 (pos)
                    (not (not_at_a_p1))

                    ; #37734: <==negation-removal== 74823 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8))
        :effect (and
                    ; #74823: origin
                    (not_at_a_p8)

                    ; #82631: origin
                    (at_a_p10)

                    ; #37734: <==negation-removal== 74823 (pos)
                    (not (at_a_p8))

                    ; #79974: <==negation-removal== 82631 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8))
        :effect (and
                    ; #71763: origin
                    (at_a_p11)

                    ; #74823: origin
                    (not_at_a_p8)

                    ; #37734: <==negation-removal== 74823 (pos)
                    (not (at_a_p8))

                    ; #69043: <==negation-removal== 71763 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_a_p8))
        :effect (and
                    ; #34910: origin
                    (at_a_p12)

                    ; #74823: origin
                    (not_at_a_p8)

                    ; #33099: <==negation-removal== 34910 (pos)
                    (not (not_at_a_p12))

                    ; #37734: <==negation-removal== 74823 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #13233: origin
                    (at_a_p2)

                    ; #74823: origin
                    (not_at_a_p8)

                    ; #37734: <==negation-removal== 74823 (pos)
                    (not (at_a_p8))

                    ; #54145: <==negation-removal== 13233 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #46795: origin
                    (at_a_p3)

                    ; #74823: origin
                    (not_at_a_p8)

                    ; #13698: <==negation-removal== 46795 (pos)
                    (not (not_at_a_p3))

                    ; #37734: <==negation-removal== 74823 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #63965: origin
                    (at_a_p4)

                    ; #74823: origin
                    (not_at_a_p8)

                    ; #19532: <==negation-removal== 63965 (pos)
                    (not (not_at_a_p4))

                    ; #37734: <==negation-removal== 74823 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #42339: origin
                    (at_a_p5)

                    ; #74823: origin
                    (not_at_a_p8)

                    ; #23125: <==negation-removal== 42339 (pos)
                    (not (not_at_a_p5))

                    ; #37734: <==negation-removal== 74823 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #73340: origin
                    (at_a_p6)

                    ; #74823: origin
                    (not_at_a_p8)

                    ; #37734: <==negation-removal== 74823 (pos)
                    (not (at_a_p8))

                    ; #72717: <==negation-removal== 73340 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #18825: origin
                    (at_a_p7)

                    ; #74823: origin
                    (not_at_a_p8)

                    ; #18350: <==negation-removal== 18825 (pos)
                    (not (not_at_a_p7))

                    ; #37734: <==negation-removal== 74823 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #37734: origin
                    (at_a_p8)

                    ; #74823: origin
                    (not_at_a_p8)

                    ; #37734: <==negation-removal== 74823 (pos)
                    (not (at_a_p8))

                    ; #74823: <==negation-removal== 37734 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #52168: origin
                    (at_a_p9)

                    ; #74823: origin
                    (not_at_a_p8)

                    ; #37734: <==negation-removal== 74823 (pos)
                    (not (at_a_p8))

                    ; #51227: <==negation-removal== 52168 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #51227: origin
                    (not_at_a_p9)

                    ; #68273: origin
                    (at_a_p1)

                    ; #12667: <==negation-removal== 68273 (pos)
                    (not (not_at_a_p1))

                    ; #52168: <==negation-removal== 51227 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (at_a_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #51227: origin
                    (not_at_a_p9)

                    ; #82631: origin
                    (at_a_p10)

                    ; #52168: <==negation-removal== 51227 (pos)
                    (not (at_a_p9))

                    ; #79974: <==negation-removal== 82631 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p9_p11
        :precondition (and (at_a_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #51227: origin
                    (not_at_a_p9)

                    ; #71763: origin
                    (at_a_p11)

                    ; #52168: <==negation-removal== 51227 (pos)
                    (not (at_a_p9))

                    ; #69043: <==negation-removal== 71763 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #34910: origin
                    (at_a_p12)

                    ; #51227: origin
                    (not_at_a_p9)

                    ; #33099: <==negation-removal== 34910 (pos)
                    (not (not_at_a_p12))

                    ; #52168: <==negation-removal== 51227 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #13233: origin
                    (at_a_p2)

                    ; #51227: origin
                    (not_at_a_p9)

                    ; #52168: <==negation-removal== 51227 (pos)
                    (not (at_a_p9))

                    ; #54145: <==negation-removal== 13233 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #46795: origin
                    (at_a_p3)

                    ; #51227: origin
                    (not_at_a_p9)

                    ; #13698: <==negation-removal== 46795 (pos)
                    (not (not_at_a_p3))

                    ; #52168: <==negation-removal== 51227 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #51227: origin
                    (not_at_a_p9)

                    ; #63965: origin
                    (at_a_p4)

                    ; #19532: <==negation-removal== 63965 (pos)
                    (not (not_at_a_p4))

                    ; #52168: <==negation-removal== 51227 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #42339: origin
                    (at_a_p5)

                    ; #51227: origin
                    (not_at_a_p9)

                    ; #23125: <==negation-removal== 42339 (pos)
                    (not (not_at_a_p5))

                    ; #52168: <==negation-removal== 51227 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #51227: origin
                    (not_at_a_p9)

                    ; #73340: origin
                    (at_a_p6)

                    ; #52168: <==negation-removal== 51227 (pos)
                    (not (at_a_p9))

                    ; #72717: <==negation-removal== 73340 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #18825: origin
                    (at_a_p7)

                    ; #51227: origin
                    (not_at_a_p9)

                    ; #18350: <==negation-removal== 18825 (pos)
                    (not (not_at_a_p7))

                    ; #52168: <==negation-removal== 51227 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #37734: origin
                    (at_a_p8)

                    ; #51227: origin
                    (not_at_a_p9)

                    ; #52168: <==negation-removal== 51227 (pos)
                    (not (at_a_p9))

                    ; #74823: <==negation-removal== 37734 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #51227: origin
                    (not_at_a_p9)

                    ; #52168: origin
                    (at_a_p9)

                    ; #51227: <==negation-removal== 52168 (pos)
                    (not (not_at_a_p9))

                    ; #52168: <==negation-removal== 51227 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #45906: origin
                    (not_at_b_p10)

                    ; #55589: origin
                    (at_b_p1)

                    ; #74211: <==negation-removal== 55589 (pos)
                    (not (not_at_b_p1))

                    ; #78896: <==negation-removal== 45906 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10))
        :effect (and
                    ; #45906: origin
                    (not_at_b_p10)

                    ; #78896: origin
                    (at_b_p10)

                    ; #45906: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p10))

                    ; #78896: <==negation-removal== 45906 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #37427: origin
                    (at_b_p11)

                    ; #45906: origin
                    (not_at_b_p10)

                    ; #71499: <==negation-removal== 37427 (pos)
                    (not (not_at_b_p11))

                    ; #78896: <==negation-removal== 45906 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #45906: origin
                    (not_at_b_p10)

                    ; #63324: origin
                    (at_b_p12)

                    ; #43286: <==negation-removal== 63324 (pos)
                    (not (not_at_b_p12))

                    ; #78896: <==negation-removal== 45906 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #45906: origin
                    (not_at_b_p10)

                    ; #47787: origin
                    (at_b_p2)

                    ; #10936: <==negation-removal== 47787 (pos)
                    (not (not_at_b_p2))

                    ; #78896: <==negation-removal== 45906 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #45906: origin
                    (not_at_b_p10)

                    ; #91452: origin
                    (at_b_p3)

                    ; #25216: <==negation-removal== 91452 (pos)
                    (not (not_at_b_p3))

                    ; #78896: <==negation-removal== 45906 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #13127: origin
                    (at_b_p4)

                    ; #45906: origin
                    (not_at_b_p10)

                    ; #40181: <==negation-removal== 13127 (pos)
                    (not (not_at_b_p4))

                    ; #78896: <==negation-removal== 45906 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #45906: origin
                    (not_at_b_p10)

                    ; #52090: origin
                    (at_b_p5)

                    ; #43647: <==negation-removal== 52090 (pos)
                    (not (not_at_b_p5))

                    ; #78896: <==negation-removal== 45906 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #45906: origin
                    (not_at_b_p10)

                    ; #55598: origin
                    (at_b_p6)

                    ; #61043: <==negation-removal== 55598 (pos)
                    (not (not_at_b_p6))

                    ; #78896: <==negation-removal== 45906 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #43148: origin
                    (at_b_p7)

                    ; #45906: origin
                    (not_at_b_p10)

                    ; #52127: <==negation-removal== 43148 (pos)
                    (not (not_at_b_p7))

                    ; #78896: <==negation-removal== 45906 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #45906: origin
                    (not_at_b_p10)

                    ; #77656: origin
                    (at_b_p8)

                    ; #37058: <==negation-removal== 77656 (pos)
                    (not (not_at_b_p8))

                    ; #78896: <==negation-removal== 45906 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #45906: origin
                    (not_at_b_p10)

                    ; #81317: origin
                    (at_b_p9)

                    ; #78896: <==negation-removal== 45906 (pos)
                    (not (at_b_p10))

                    ; #91191: <==negation-removal== 81317 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (at_b_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #55589: origin
                    (at_b_p1)

                    ; #71499: origin
                    (not_at_b_p11)

                    ; #37427: <==negation-removal== 71499 (pos)
                    (not (at_b_p11))

                    ; #74211: <==negation-removal== 55589 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #71499: origin
                    (not_at_b_p11)

                    ; #78896: origin
                    (at_b_p10)

                    ; #37427: <==negation-removal== 71499 (pos)
                    (not (at_b_p11))

                    ; #45906: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #37427: origin
                    (at_b_p11)

                    ; #71499: origin
                    (not_at_b_p11)

                    ; #37427: <==negation-removal== 71499 (pos)
                    (not (at_b_p11))

                    ; #71499: <==negation-removal== 37427 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (at_b_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #63324: origin
                    (at_b_p12)

                    ; #71499: origin
                    (not_at_b_p11)

                    ; #37427: <==negation-removal== 71499 (pos)
                    (not (at_b_p11))

                    ; #43286: <==negation-removal== 63324 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #47787: origin
                    (at_b_p2)

                    ; #71499: origin
                    (not_at_b_p11)

                    ; #10936: <==negation-removal== 47787 (pos)
                    (not (not_at_b_p2))

                    ; #37427: <==negation-removal== 71499 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #71499: origin
                    (not_at_b_p11)

                    ; #91452: origin
                    (at_b_p3)

                    ; #25216: <==negation-removal== 91452 (pos)
                    (not (not_at_b_p3))

                    ; #37427: <==negation-removal== 71499 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p4
        :precondition (and (at_b_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #13127: origin
                    (at_b_p4)

                    ; #71499: origin
                    (not_at_b_p11)

                    ; #37427: <==negation-removal== 71499 (pos)
                    (not (at_b_p11))

                    ; #40181: <==negation-removal== 13127 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11))
        :effect (and
                    ; #52090: origin
                    (at_b_p5)

                    ; #71499: origin
                    (not_at_b_p11)

                    ; #37427: <==negation-removal== 71499 (pos)
                    (not (at_b_p11))

                    ; #43647: <==negation-removal== 52090 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (at_b_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #55598: origin
                    (at_b_p6)

                    ; #71499: origin
                    (not_at_b_p11)

                    ; #37427: <==negation-removal== 71499 (pos)
                    (not (at_b_p11))

                    ; #61043: <==negation-removal== 55598 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #43148: origin
                    (at_b_p7)

                    ; #71499: origin
                    (not_at_b_p11)

                    ; #37427: <==negation-removal== 71499 (pos)
                    (not (at_b_p11))

                    ; #52127: <==negation-removal== 43148 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (at_b_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #71499: origin
                    (not_at_b_p11)

                    ; #77656: origin
                    (at_b_p8)

                    ; #37058: <==negation-removal== 77656 (pos)
                    (not (not_at_b_p8))

                    ; #37427: <==negation-removal== 71499 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #71499: origin
                    (not_at_b_p11)

                    ; #81317: origin
                    (at_b_p9)

                    ; #37427: <==negation-removal== 71499 (pos)
                    (not (at_b_p11))

                    ; #91191: <==negation-removal== 81317 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12))
        :effect (and
                    ; #43286: origin
                    (not_at_b_p12)

                    ; #55589: origin
                    (at_b_p1)

                    ; #63324: <==negation-removal== 43286 (pos)
                    (not (at_b_p12))

                    ; #74211: <==negation-removal== 55589 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_b_p12))
        :effect (and
                    ; #43286: origin
                    (not_at_b_p12)

                    ; #78896: origin
                    (at_b_p10)

                    ; #45906: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p10))

                    ; #63324: <==negation-removal== 43286 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_b_p12))
        :effect (and
                    ; #37427: origin
                    (at_b_p11)

                    ; #43286: origin
                    (not_at_b_p12)

                    ; #63324: <==negation-removal== 43286 (pos)
                    (not (at_b_p12))

                    ; #71499: <==negation-removal== 37427 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_b_p12))
        :effect (and
                    ; #43286: origin
                    (not_at_b_p12)

                    ; #63324: origin
                    (at_b_p12)

                    ; #43286: <==negation-removal== 63324 (pos)
                    (not (not_at_b_p12))

                    ; #63324: <==negation-removal== 43286 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12))
        :effect (and
                    ; #43286: origin
                    (not_at_b_p12)

                    ; #47787: origin
                    (at_b_p2)

                    ; #10936: <==negation-removal== 47787 (pos)
                    (not (not_at_b_p2))

                    ; #63324: <==negation-removal== 43286 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12))
        :effect (and
                    ; #43286: origin
                    (not_at_b_p12)

                    ; #91452: origin
                    (at_b_p3)

                    ; #25216: <==negation-removal== 91452 (pos)
                    (not (not_at_b_p3))

                    ; #63324: <==negation-removal== 43286 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_b_p12))
        :effect (and
                    ; #13127: origin
                    (at_b_p4)

                    ; #43286: origin
                    (not_at_b_p12)

                    ; #40181: <==negation-removal== 13127 (pos)
                    (not (not_at_b_p4))

                    ; #63324: <==negation-removal== 43286 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12))
        :effect (and
                    ; #43286: origin
                    (not_at_b_p12)

                    ; #52090: origin
                    (at_b_p5)

                    ; #43647: <==negation-removal== 52090 (pos)
                    (not (not_at_b_p5))

                    ; #63324: <==negation-removal== 43286 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_b_p12))
        :effect (and
                    ; #43286: origin
                    (not_at_b_p12)

                    ; #55598: origin
                    (at_b_p6)

                    ; #61043: <==negation-removal== 55598 (pos)
                    (not (not_at_b_p6))

                    ; #63324: <==negation-removal== 43286 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_b_p12))
        :effect (and
                    ; #43148: origin
                    (at_b_p7)

                    ; #43286: origin
                    (not_at_b_p12)

                    ; #52127: <==negation-removal== 43148 (pos)
                    (not (not_at_b_p7))

                    ; #63324: <==negation-removal== 43286 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_b_p12))
        :effect (and
                    ; #43286: origin
                    (not_at_b_p12)

                    ; #77656: origin
                    (at_b_p8)

                    ; #37058: <==negation-removal== 77656 (pos)
                    (not (not_at_b_p8))

                    ; #63324: <==negation-removal== 43286 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12))
        :effect (and
                    ; #43286: origin
                    (not_at_b_p12)

                    ; #81317: origin
                    (at_b_p9)

                    ; #63324: <==negation-removal== 43286 (pos)
                    (not (at_b_p12))

                    ; #91191: <==negation-removal== 81317 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #55589: origin
                    (at_b_p1)

                    ; #74211: origin
                    (not_at_b_p1)

                    ; #55589: <==negation-removal== 74211 (pos)
                    (not (at_b_p1))

                    ; #74211: <==negation-removal== 55589 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1))
        :effect (and
                    ; #74211: origin
                    (not_at_b_p1)

                    ; #78896: origin
                    (at_b_p10)

                    ; #45906: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p10))

                    ; #55589: <==negation-removal== 74211 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1))
        :effect (and
                    ; #37427: origin
                    (at_b_p11)

                    ; #74211: origin
                    (not_at_b_p1)

                    ; #55589: <==negation-removal== 74211 (pos)
                    (not (at_b_p1))

                    ; #71499: <==negation-removal== 37427 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1))
        :effect (and
                    ; #63324: origin
                    (at_b_p12)

                    ; #74211: origin
                    (not_at_b_p1)

                    ; #43286: <==negation-removal== 63324 (pos)
                    (not (not_at_b_p12))

                    ; #55589: <==negation-removal== 74211 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #47787: origin
                    (at_b_p2)

                    ; #74211: origin
                    (not_at_b_p1)

                    ; #10936: <==negation-removal== 47787 (pos)
                    (not (not_at_b_p2))

                    ; #55589: <==negation-removal== 74211 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #74211: origin
                    (not_at_b_p1)

                    ; #91452: origin
                    (at_b_p3)

                    ; #25216: <==negation-removal== 91452 (pos)
                    (not (not_at_b_p3))

                    ; #55589: <==negation-removal== 74211 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #13127: origin
                    (at_b_p4)

                    ; #74211: origin
                    (not_at_b_p1)

                    ; #40181: <==negation-removal== 13127 (pos)
                    (not (not_at_b_p4))

                    ; #55589: <==negation-removal== 74211 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #52090: origin
                    (at_b_p5)

                    ; #74211: origin
                    (not_at_b_p1)

                    ; #43647: <==negation-removal== 52090 (pos)
                    (not (not_at_b_p5))

                    ; #55589: <==negation-removal== 74211 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #55598: origin
                    (at_b_p6)

                    ; #74211: origin
                    (not_at_b_p1)

                    ; #55589: <==negation-removal== 74211 (pos)
                    (not (at_b_p1))

                    ; #61043: <==negation-removal== 55598 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #43148: origin
                    (at_b_p7)

                    ; #74211: origin
                    (not_at_b_p1)

                    ; #52127: <==negation-removal== 43148 (pos)
                    (not (not_at_b_p7))

                    ; #55589: <==negation-removal== 74211 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #74211: origin
                    (not_at_b_p1)

                    ; #77656: origin
                    (at_b_p8)

                    ; #37058: <==negation-removal== 77656 (pos)
                    (not (not_at_b_p8))

                    ; #55589: <==negation-removal== 74211 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #74211: origin
                    (not_at_b_p1)

                    ; #81317: origin
                    (at_b_p9)

                    ; #55589: <==negation-removal== 74211 (pos)
                    (not (at_b_p1))

                    ; #91191: <==negation-removal== 81317 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #10936: origin
                    (not_at_b_p2)

                    ; #55589: origin
                    (at_b_p1)

                    ; #47787: <==negation-removal== 10936 (pos)
                    (not (at_b_p2))

                    ; #74211: <==negation-removal== 55589 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #10936: origin
                    (not_at_b_p2)

                    ; #78896: origin
                    (at_b_p10)

                    ; #45906: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p10))

                    ; #47787: <==negation-removal== 10936 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (at_b_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #10936: origin
                    (not_at_b_p2)

                    ; #37427: origin
                    (at_b_p11)

                    ; #47787: <==negation-removal== 10936 (pos)
                    (not (at_b_p2))

                    ; #71499: <==negation-removal== 37427 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #10936: origin
                    (not_at_b_p2)

                    ; #63324: origin
                    (at_b_p12)

                    ; #43286: <==negation-removal== 63324 (pos)
                    (not (not_at_b_p12))

                    ; #47787: <==negation-removal== 10936 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #10936: origin
                    (not_at_b_p2)

                    ; #47787: origin
                    (at_b_p2)

                    ; #10936: <==negation-removal== 47787 (pos)
                    (not (not_at_b_p2))

                    ; #47787: <==negation-removal== 10936 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #10936: origin
                    (not_at_b_p2)

                    ; #91452: origin
                    (at_b_p3)

                    ; #25216: <==negation-removal== 91452 (pos)
                    (not (not_at_b_p3))

                    ; #47787: <==negation-removal== 10936 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #10936: origin
                    (not_at_b_p2)

                    ; #13127: origin
                    (at_b_p4)

                    ; #40181: <==negation-removal== 13127 (pos)
                    (not (not_at_b_p4))

                    ; #47787: <==negation-removal== 10936 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #10936: origin
                    (not_at_b_p2)

                    ; #52090: origin
                    (at_b_p5)

                    ; #43647: <==negation-removal== 52090 (pos)
                    (not (not_at_b_p5))

                    ; #47787: <==negation-removal== 10936 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #10936: origin
                    (not_at_b_p2)

                    ; #55598: origin
                    (at_b_p6)

                    ; #47787: <==negation-removal== 10936 (pos)
                    (not (at_b_p2))

                    ; #61043: <==negation-removal== 55598 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #10936: origin
                    (not_at_b_p2)

                    ; #43148: origin
                    (at_b_p7)

                    ; #47787: <==negation-removal== 10936 (pos)
                    (not (at_b_p2))

                    ; #52127: <==negation-removal== 43148 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #10936: origin
                    (not_at_b_p2)

                    ; #77656: origin
                    (at_b_p8)

                    ; #37058: <==negation-removal== 77656 (pos)
                    (not (not_at_b_p8))

                    ; #47787: <==negation-removal== 10936 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #10936: origin
                    (not_at_b_p2)

                    ; #81317: origin
                    (at_b_p9)

                    ; #47787: <==negation-removal== 10936 (pos)
                    (not (at_b_p2))

                    ; #91191: <==negation-removal== 81317 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #25216: origin
                    (not_at_b_p3)

                    ; #55589: origin
                    (at_b_p1)

                    ; #74211: <==negation-removal== 55589 (pos)
                    (not (not_at_b_p1))

                    ; #91452: <==negation-removal== 25216 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3))
        :effect (and
                    ; #25216: origin
                    (not_at_b_p3)

                    ; #78896: origin
                    (at_b_p10)

                    ; #45906: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p10))

                    ; #91452: <==negation-removal== 25216 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3))
        :effect (and
                    ; #25216: origin
                    (not_at_b_p3)

                    ; #37427: origin
                    (at_b_p11)

                    ; #71499: <==negation-removal== 37427 (pos)
                    (not (not_at_b_p11))

                    ; #91452: <==negation-removal== 25216 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #25216: origin
                    (not_at_b_p3)

                    ; #63324: origin
                    (at_b_p12)

                    ; #43286: <==negation-removal== 63324 (pos)
                    (not (not_at_b_p12))

                    ; #91452: <==negation-removal== 25216 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #25216: origin
                    (not_at_b_p3)

                    ; #47787: origin
                    (at_b_p2)

                    ; #10936: <==negation-removal== 47787 (pos)
                    (not (not_at_b_p2))

                    ; #91452: <==negation-removal== 25216 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #25216: origin
                    (not_at_b_p3)

                    ; #91452: origin
                    (at_b_p3)

                    ; #25216: <==negation-removal== 91452 (pos)
                    (not (not_at_b_p3))

                    ; #91452: <==negation-removal== 25216 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #13127: origin
                    (at_b_p4)

                    ; #25216: origin
                    (not_at_b_p3)

                    ; #40181: <==negation-removal== 13127 (pos)
                    (not (not_at_b_p4))

                    ; #91452: <==negation-removal== 25216 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #25216: origin
                    (not_at_b_p3)

                    ; #52090: origin
                    (at_b_p5)

                    ; #43647: <==negation-removal== 52090 (pos)
                    (not (not_at_b_p5))

                    ; #91452: <==negation-removal== 25216 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #25216: origin
                    (not_at_b_p3)

                    ; #55598: origin
                    (at_b_p6)

                    ; #61043: <==negation-removal== 55598 (pos)
                    (not (not_at_b_p6))

                    ; #91452: <==negation-removal== 25216 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #25216: origin
                    (not_at_b_p3)

                    ; #43148: origin
                    (at_b_p7)

                    ; #52127: <==negation-removal== 43148 (pos)
                    (not (not_at_b_p7))

                    ; #91452: <==negation-removal== 25216 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #25216: origin
                    (not_at_b_p3)

                    ; #77656: origin
                    (at_b_p8)

                    ; #37058: <==negation-removal== 77656 (pos)
                    (not (not_at_b_p8))

                    ; #91452: <==negation-removal== 25216 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #25216: origin
                    (not_at_b_p3)

                    ; #81317: origin
                    (at_b_p9)

                    ; #91191: <==negation-removal== 81317 (pos)
                    (not (not_at_b_p9))

                    ; #91452: <==negation-removal== 25216 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #40181: origin
                    (not_at_b_p4)

                    ; #55589: origin
                    (at_b_p1)

                    ; #13127: <==negation-removal== 40181 (pos)
                    (not (at_b_p4))

                    ; #74211: <==negation-removal== 55589 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4))
        :effect (and
                    ; #40181: origin
                    (not_at_b_p4)

                    ; #78896: origin
                    (at_b_p10)

                    ; #13127: <==negation-removal== 40181 (pos)
                    (not (at_b_p4))

                    ; #45906: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4))
        :effect (and
                    ; #37427: origin
                    (at_b_p11)

                    ; #40181: origin
                    (not_at_b_p4)

                    ; #13127: <==negation-removal== 40181 (pos)
                    (not (at_b_p4))

                    ; #71499: <==negation-removal== 37427 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4))
        :effect (and
                    ; #40181: origin
                    (not_at_b_p4)

                    ; #63324: origin
                    (at_b_p12)

                    ; #13127: <==negation-removal== 40181 (pos)
                    (not (at_b_p4))

                    ; #43286: <==negation-removal== 63324 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #40181: origin
                    (not_at_b_p4)

                    ; #47787: origin
                    (at_b_p2)

                    ; #10936: <==negation-removal== 47787 (pos)
                    (not (not_at_b_p2))

                    ; #13127: <==negation-removal== 40181 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #40181: origin
                    (not_at_b_p4)

                    ; #91452: origin
                    (at_b_p3)

                    ; #13127: <==negation-removal== 40181 (pos)
                    (not (at_b_p4))

                    ; #25216: <==negation-removal== 91452 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #13127: origin
                    (at_b_p4)

                    ; #40181: origin
                    (not_at_b_p4)

                    ; #13127: <==negation-removal== 40181 (pos)
                    (not (at_b_p4))

                    ; #40181: <==negation-removal== 13127 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #40181: origin
                    (not_at_b_p4)

                    ; #52090: origin
                    (at_b_p5)

                    ; #13127: <==negation-removal== 40181 (pos)
                    (not (at_b_p4))

                    ; #43647: <==negation-removal== 52090 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #40181: origin
                    (not_at_b_p4)

                    ; #55598: origin
                    (at_b_p6)

                    ; #13127: <==negation-removal== 40181 (pos)
                    (not (at_b_p4))

                    ; #61043: <==negation-removal== 55598 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #40181: origin
                    (not_at_b_p4)

                    ; #43148: origin
                    (at_b_p7)

                    ; #13127: <==negation-removal== 40181 (pos)
                    (not (at_b_p4))

                    ; #52127: <==negation-removal== 43148 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #40181: origin
                    (not_at_b_p4)

                    ; #77656: origin
                    (at_b_p8)

                    ; #13127: <==negation-removal== 40181 (pos)
                    (not (at_b_p4))

                    ; #37058: <==negation-removal== 77656 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #40181: origin
                    (not_at_b_p4)

                    ; #81317: origin
                    (at_b_p9)

                    ; #13127: <==negation-removal== 40181 (pos)
                    (not (at_b_p4))

                    ; #91191: <==negation-removal== 81317 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #43647: origin
                    (not_at_b_p5)

                    ; #55589: origin
                    (at_b_p1)

                    ; #52090: <==negation-removal== 43647 (pos)
                    (not (at_b_p5))

                    ; #74211: <==negation-removal== 55589 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #43647: origin
                    (not_at_b_p5)

                    ; #78896: origin
                    (at_b_p10)

                    ; #45906: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p10))

                    ; #52090: <==negation-removal== 43647 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_b_p5))
        :effect (and
                    ; #37427: origin
                    (at_b_p11)

                    ; #43647: origin
                    (not_at_b_p5)

                    ; #52090: <==negation-removal== 43647 (pos)
                    (not (at_b_p5))

                    ; #71499: <==negation-removal== 37427 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #43647: origin
                    (not_at_b_p5)

                    ; #63324: origin
                    (at_b_p12)

                    ; #43286: <==negation-removal== 63324 (pos)
                    (not (not_at_b_p12))

                    ; #52090: <==negation-removal== 43647 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #43647: origin
                    (not_at_b_p5)

                    ; #47787: origin
                    (at_b_p2)

                    ; #10936: <==negation-removal== 47787 (pos)
                    (not (not_at_b_p2))

                    ; #52090: <==negation-removal== 43647 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #43647: origin
                    (not_at_b_p5)

                    ; #91452: origin
                    (at_b_p3)

                    ; #25216: <==negation-removal== 91452 (pos)
                    (not (not_at_b_p3))

                    ; #52090: <==negation-removal== 43647 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #13127: origin
                    (at_b_p4)

                    ; #43647: origin
                    (not_at_b_p5)

                    ; #40181: <==negation-removal== 13127 (pos)
                    (not (not_at_b_p4))

                    ; #52090: <==negation-removal== 43647 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #43647: origin
                    (not_at_b_p5)

                    ; #52090: origin
                    (at_b_p5)

                    ; #43647: <==negation-removal== 52090 (pos)
                    (not (not_at_b_p5))

                    ; #52090: <==negation-removal== 43647 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #43647: origin
                    (not_at_b_p5)

                    ; #55598: origin
                    (at_b_p6)

                    ; #52090: <==negation-removal== 43647 (pos)
                    (not (at_b_p5))

                    ; #61043: <==negation-removal== 55598 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #43148: origin
                    (at_b_p7)

                    ; #43647: origin
                    (not_at_b_p5)

                    ; #52090: <==negation-removal== 43647 (pos)
                    (not (at_b_p5))

                    ; #52127: <==negation-removal== 43148 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #43647: origin
                    (not_at_b_p5)

                    ; #77656: origin
                    (at_b_p8)

                    ; #37058: <==negation-removal== 77656 (pos)
                    (not (not_at_b_p8))

                    ; #52090: <==negation-removal== 43647 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #43647: origin
                    (not_at_b_p5)

                    ; #81317: origin
                    (at_b_p9)

                    ; #52090: <==negation-removal== 43647 (pos)
                    (not (at_b_p5))

                    ; #91191: <==negation-removal== 81317 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #55589: origin
                    (at_b_p1)

                    ; #61043: origin
                    (not_at_b_p6)

                    ; #55598: <==negation-removal== 61043 (pos)
                    (not (at_b_p6))

                    ; #74211: <==negation-removal== 55589 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6))
        :effect (and
                    ; #61043: origin
                    (not_at_b_p6)

                    ; #78896: origin
                    (at_b_p10)

                    ; #45906: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p10))

                    ; #55598: <==negation-removal== 61043 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6))
        :effect (and
                    ; #37427: origin
                    (at_b_p11)

                    ; #61043: origin
                    (not_at_b_p6)

                    ; #55598: <==negation-removal== 61043 (pos)
                    (not (at_b_p6))

                    ; #71499: <==negation-removal== 37427 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6))
        :effect (and
                    ; #61043: origin
                    (not_at_b_p6)

                    ; #63324: origin
                    (at_b_p12)

                    ; #43286: <==negation-removal== 63324 (pos)
                    (not (not_at_b_p12))

                    ; #55598: <==negation-removal== 61043 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #47787: origin
                    (at_b_p2)

                    ; #61043: origin
                    (not_at_b_p6)

                    ; #10936: <==negation-removal== 47787 (pos)
                    (not (not_at_b_p2))

                    ; #55598: <==negation-removal== 61043 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #61043: origin
                    (not_at_b_p6)

                    ; #91452: origin
                    (at_b_p3)

                    ; #25216: <==negation-removal== 91452 (pos)
                    (not (not_at_b_p3))

                    ; #55598: <==negation-removal== 61043 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #13127: origin
                    (at_b_p4)

                    ; #61043: origin
                    (not_at_b_p6)

                    ; #40181: <==negation-removal== 13127 (pos)
                    (not (not_at_b_p4))

                    ; #55598: <==negation-removal== 61043 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #52090: origin
                    (at_b_p5)

                    ; #61043: origin
                    (not_at_b_p6)

                    ; #43647: <==negation-removal== 52090 (pos)
                    (not (not_at_b_p5))

                    ; #55598: <==negation-removal== 61043 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #55598: origin
                    (at_b_p6)

                    ; #61043: origin
                    (not_at_b_p6)

                    ; #55598: <==negation-removal== 61043 (pos)
                    (not (at_b_p6))

                    ; #61043: <==negation-removal== 55598 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #43148: origin
                    (at_b_p7)

                    ; #61043: origin
                    (not_at_b_p6)

                    ; #52127: <==negation-removal== 43148 (pos)
                    (not (not_at_b_p7))

                    ; #55598: <==negation-removal== 61043 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #61043: origin
                    (not_at_b_p6)

                    ; #77656: origin
                    (at_b_p8)

                    ; #37058: <==negation-removal== 77656 (pos)
                    (not (not_at_b_p8))

                    ; #55598: <==negation-removal== 61043 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #61043: origin
                    (not_at_b_p6)

                    ; #81317: origin
                    (at_b_p9)

                    ; #55598: <==negation-removal== 61043 (pos)
                    (not (at_b_p6))

                    ; #91191: <==negation-removal== 81317 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #52127: origin
                    (not_at_b_p7)

                    ; #55589: origin
                    (at_b_p1)

                    ; #43148: <==negation-removal== 52127 (pos)
                    (not (at_b_p7))

                    ; #74211: <==negation-removal== 55589 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #52127: origin
                    (not_at_b_p7)

                    ; #78896: origin
                    (at_b_p10)

                    ; #43148: <==negation-removal== 52127 (pos)
                    (not (at_b_p7))

                    ; #45906: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #37427: origin
                    (at_b_p11)

                    ; #52127: origin
                    (not_at_b_p7)

                    ; #43148: <==negation-removal== 52127 (pos)
                    (not (at_b_p7))

                    ; #71499: <==negation-removal== 37427 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (at_b_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #52127: origin
                    (not_at_b_p7)

                    ; #63324: origin
                    (at_b_p12)

                    ; #43148: <==negation-removal== 52127 (pos)
                    (not (at_b_p7))

                    ; #43286: <==negation-removal== 63324 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #47787: origin
                    (at_b_p2)

                    ; #52127: origin
                    (not_at_b_p7)

                    ; #10936: <==negation-removal== 47787 (pos)
                    (not (not_at_b_p2))

                    ; #43148: <==negation-removal== 52127 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #52127: origin
                    (not_at_b_p7)

                    ; #91452: origin
                    (at_b_p3)

                    ; #25216: <==negation-removal== 91452 (pos)
                    (not (not_at_b_p3))

                    ; #43148: <==negation-removal== 52127 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #13127: origin
                    (at_b_p4)

                    ; #52127: origin
                    (not_at_b_p7)

                    ; #40181: <==negation-removal== 13127 (pos)
                    (not (not_at_b_p4))

                    ; #43148: <==negation-removal== 52127 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #52090: origin
                    (at_b_p5)

                    ; #52127: origin
                    (not_at_b_p7)

                    ; #43148: <==negation-removal== 52127 (pos)
                    (not (at_b_p7))

                    ; #43647: <==negation-removal== 52090 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #52127: origin
                    (not_at_b_p7)

                    ; #55598: origin
                    (at_b_p6)

                    ; #43148: <==negation-removal== 52127 (pos)
                    (not (at_b_p7))

                    ; #61043: <==negation-removal== 55598 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #43148: origin
                    (at_b_p7)

                    ; #52127: origin
                    (not_at_b_p7)

                    ; #43148: <==negation-removal== 52127 (pos)
                    (not (at_b_p7))

                    ; #52127: <==negation-removal== 43148 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #52127: origin
                    (not_at_b_p7)

                    ; #77656: origin
                    (at_b_p8)

                    ; #37058: <==negation-removal== 77656 (pos)
                    (not (not_at_b_p8))

                    ; #43148: <==negation-removal== 52127 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #52127: origin
                    (not_at_b_p7)

                    ; #81317: origin
                    (at_b_p9)

                    ; #43148: <==negation-removal== 52127 (pos)
                    (not (at_b_p7))

                    ; #91191: <==negation-removal== 81317 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #37058: origin
                    (not_at_b_p8)

                    ; #55589: origin
                    (at_b_p1)

                    ; #74211: <==negation-removal== 55589 (pos)
                    (not (not_at_b_p1))

                    ; #77656: <==negation-removal== 37058 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #37058: origin
                    (not_at_b_p8)

                    ; #78896: origin
                    (at_b_p10)

                    ; #45906: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p10))

                    ; #77656: <==negation-removal== 37058 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8))
        :effect (and
                    ; #37058: origin
                    (not_at_b_p8)

                    ; #37427: origin
                    (at_b_p11)

                    ; #71499: <==negation-removal== 37427 (pos)
                    (not (not_at_b_p11))

                    ; #77656: <==negation-removal== 37058 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8))
        :effect (and
                    ; #37058: origin
                    (not_at_b_p8)

                    ; #63324: origin
                    (at_b_p12)

                    ; #43286: <==negation-removal== 63324 (pos)
                    (not (not_at_b_p12))

                    ; #77656: <==negation-removal== 37058 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #37058: origin
                    (not_at_b_p8)

                    ; #47787: origin
                    (at_b_p2)

                    ; #10936: <==negation-removal== 47787 (pos)
                    (not (not_at_b_p2))

                    ; #77656: <==negation-removal== 37058 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #37058: origin
                    (not_at_b_p8)

                    ; #91452: origin
                    (at_b_p3)

                    ; #25216: <==negation-removal== 91452 (pos)
                    (not (not_at_b_p3))

                    ; #77656: <==negation-removal== 37058 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #13127: origin
                    (at_b_p4)

                    ; #37058: origin
                    (not_at_b_p8)

                    ; #40181: <==negation-removal== 13127 (pos)
                    (not (not_at_b_p4))

                    ; #77656: <==negation-removal== 37058 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #37058: origin
                    (not_at_b_p8)

                    ; #52090: origin
                    (at_b_p5)

                    ; #43647: <==negation-removal== 52090 (pos)
                    (not (not_at_b_p5))

                    ; #77656: <==negation-removal== 37058 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #37058: origin
                    (not_at_b_p8)

                    ; #55598: origin
                    (at_b_p6)

                    ; #61043: <==negation-removal== 55598 (pos)
                    (not (not_at_b_p6))

                    ; #77656: <==negation-removal== 37058 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #37058: origin
                    (not_at_b_p8)

                    ; #43148: origin
                    (at_b_p7)

                    ; #52127: <==negation-removal== 43148 (pos)
                    (not (not_at_b_p7))

                    ; #77656: <==negation-removal== 37058 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #37058: origin
                    (not_at_b_p8)

                    ; #77656: origin
                    (at_b_p8)

                    ; #37058: <==negation-removal== 77656 (pos)
                    (not (not_at_b_p8))

                    ; #77656: <==negation-removal== 37058 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #37058: origin
                    (not_at_b_p8)

                    ; #81317: origin
                    (at_b_p9)

                    ; #77656: <==negation-removal== 37058 (pos)
                    (not (at_b_p8))

                    ; #91191: <==negation-removal== 81317 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #55589: origin
                    (at_b_p1)

                    ; #91191: origin
                    (not_at_b_p9)

                    ; #74211: <==negation-removal== 55589 (pos)
                    (not (not_at_b_p1))

                    ; #81317: <==negation-removal== 91191 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p10
        :precondition (and (at_b_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #78896: origin
                    (at_b_p10)

                    ; #91191: origin
                    (not_at_b_p9)

                    ; #45906: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p10))

                    ; #81317: <==negation-removal== 91191 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (at_b_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #37427: origin
                    (at_b_p11)

                    ; #91191: origin
                    (not_at_b_p9)

                    ; #71499: <==negation-removal== 37427 (pos)
                    (not (not_at_b_p11))

                    ; #81317: <==negation-removal== 91191 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #63324: origin
                    (at_b_p12)

                    ; #91191: origin
                    (not_at_b_p9)

                    ; #43286: <==negation-removal== 63324 (pos)
                    (not (not_at_b_p12))

                    ; #81317: <==negation-removal== 91191 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #47787: origin
                    (at_b_p2)

                    ; #91191: origin
                    (not_at_b_p9)

                    ; #10936: <==negation-removal== 47787 (pos)
                    (not (not_at_b_p2))

                    ; #81317: <==negation-removal== 91191 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #91191: origin
                    (not_at_b_p9)

                    ; #91452: origin
                    (at_b_p3)

                    ; #25216: <==negation-removal== 91452 (pos)
                    (not (not_at_b_p3))

                    ; #81317: <==negation-removal== 91191 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #13127: origin
                    (at_b_p4)

                    ; #91191: origin
                    (not_at_b_p9)

                    ; #40181: <==negation-removal== 13127 (pos)
                    (not (not_at_b_p4))

                    ; #81317: <==negation-removal== 91191 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #52090: origin
                    (at_b_p5)

                    ; #91191: origin
                    (not_at_b_p9)

                    ; #43647: <==negation-removal== 52090 (pos)
                    (not (not_at_b_p5))

                    ; #81317: <==negation-removal== 91191 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #55598: origin
                    (at_b_p6)

                    ; #91191: origin
                    (not_at_b_p9)

                    ; #61043: <==negation-removal== 55598 (pos)
                    (not (not_at_b_p6))

                    ; #81317: <==negation-removal== 91191 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #43148: origin
                    (at_b_p7)

                    ; #91191: origin
                    (not_at_b_p9)

                    ; #52127: <==negation-removal== 43148 (pos)
                    (not (not_at_b_p7))

                    ; #81317: <==negation-removal== 91191 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #77656: origin
                    (at_b_p8)

                    ; #91191: origin
                    (not_at_b_p9)

                    ; #37058: <==negation-removal== 77656 (pos)
                    (not (not_at_b_p8))

                    ; #81317: <==negation-removal== 91191 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #81317: origin
                    (at_b_p9)

                    ; #91191: origin
                    (not_at_b_p9)

                    ; #81317: <==negation-removal== 91191 (pos)
                    (not (at_b_p9))

                    ; #91191: <==negation-removal== 81317 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10))
        :effect (and
                    ; #62123: origin
                    (not_at_c_p10)

                    ; #74827: origin
                    (at_c_p1)

                    ; #12125: <==negation-removal== 62123 (pos)
                    (not (at_c_p10))

                    ; #72393: <==negation-removal== 74827 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_c_p10))
        :effect (and
                    ; #12125: origin
                    (at_c_p10)

                    ; #62123: origin
                    (not_at_c_p10)

                    ; #12125: <==negation-removal== 62123 (pos)
                    (not (at_c_p10))

                    ; #62123: <==negation-removal== 12125 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10))
        :effect (and
                    ; #22634: origin
                    (at_c_p11)

                    ; #62123: origin
                    (not_at_c_p10)

                    ; #12125: <==negation-removal== 62123 (pos)
                    (not (at_c_p10))

                    ; #42688: <==negation-removal== 22634 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10))
        :effect (and
                    ; #44359: origin
                    (at_c_p12)

                    ; #62123: origin
                    (not_at_c_p10)

                    ; #12125: <==negation-removal== 62123 (pos)
                    (not (at_c_p10))

                    ; #61642: <==negation-removal== 44359 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_c_p10))
        :effect (and
                    ; #54482: origin
                    (at_c_p2)

                    ; #62123: origin
                    (not_at_c_p10)

                    ; #12125: <==negation-removal== 62123 (pos)
                    (not (at_c_p10))

                    ; #84334: <==negation-removal== 54482 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10))
        :effect (and
                    ; #28543: origin
                    (at_c_p3)

                    ; #62123: origin
                    (not_at_c_p10)

                    ; #12125: <==negation-removal== 62123 (pos)
                    (not (at_c_p10))

                    ; #28164: <==negation-removal== 28543 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_c_p10))
        :effect (and
                    ; #62123: origin
                    (not_at_c_p10)

                    ; #87675: origin
                    (at_c_p4)

                    ; #12125: <==negation-removal== 62123 (pos)
                    (not (at_c_p10))

                    ; #16854: <==negation-removal== 87675 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_c_p10))
        :effect (and
                    ; #38146: origin
                    (at_c_p5)

                    ; #62123: origin
                    (not_at_c_p10)

                    ; #12125: <==negation-removal== 62123 (pos)
                    (not (at_c_p10))

                    ; #46148: <==negation-removal== 38146 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_c_p10))
        :effect (and
                    ; #20932: origin
                    (at_c_p6)

                    ; #62123: origin
                    (not_at_c_p10)

                    ; #12125: <==negation-removal== 62123 (pos)
                    (not (at_c_p10))

                    ; #64561: <==negation-removal== 20932 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_c_p10))
        :effect (and
                    ; #60493: origin
                    (at_c_p7)

                    ; #62123: origin
                    (not_at_c_p10)

                    ; #12125: <==negation-removal== 62123 (pos)
                    (not (at_c_p10))

                    ; #29790: <==negation-removal== 60493 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_c_p10))
        :effect (and
                    ; #62123: origin
                    (not_at_c_p10)

                    ; #78839: origin
                    (at_c_p8)

                    ; #12125: <==negation-removal== 62123 (pos)
                    (not (at_c_p10))

                    ; #51328: <==negation-removal== 78839 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_c_p10))
        :effect (and
                    ; #33858: origin
                    (at_c_p9)

                    ; #62123: origin
                    (not_at_c_p10)

                    ; #12125: <==negation-removal== 62123 (pos)
                    (not (at_c_p10))

                    ; #17646: <==negation-removal== 33858 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11))
        :effect (and
                    ; #42688: origin
                    (not_at_c_p11)

                    ; #74827: origin
                    (at_c_p1)

                    ; #22634: <==negation-removal== 42688 (pos)
                    (not (at_c_p11))

                    ; #72393: <==negation-removal== 74827 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11))
        :effect (and
                    ; #12125: origin
                    (at_c_p10)

                    ; #42688: origin
                    (not_at_c_p11)

                    ; #22634: <==negation-removal== 42688 (pos)
                    (not (at_c_p11))

                    ; #62123: <==negation-removal== 12125 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #22634: origin
                    (at_c_p11)

                    ; #42688: origin
                    (not_at_c_p11)

                    ; #22634: <==negation-removal== 42688 (pos)
                    (not (at_c_p11))

                    ; #42688: <==negation-removal== 22634 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11))
        :effect (and
                    ; #42688: origin
                    (not_at_c_p11)

                    ; #44359: origin
                    (at_c_p12)

                    ; #22634: <==negation-removal== 42688 (pos)
                    (not (at_c_p11))

                    ; #61642: <==negation-removal== 44359 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (at_c_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #42688: origin
                    (not_at_c_p11)

                    ; #54482: origin
                    (at_c_p2)

                    ; #22634: <==negation-removal== 42688 (pos)
                    (not (at_c_p11))

                    ; #84334: <==negation-removal== 54482 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_c_p11))
        :effect (and
                    ; #28543: origin
                    (at_c_p3)

                    ; #42688: origin
                    (not_at_c_p11)

                    ; #22634: <==negation-removal== 42688 (pos)
                    (not (at_c_p11))

                    ; #28164: <==negation-removal== 28543 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11))
        :effect (and
                    ; #42688: origin
                    (not_at_c_p11)

                    ; #87675: origin
                    (at_c_p4)

                    ; #16854: <==negation-removal== 87675 (pos)
                    (not (not_at_c_p4))

                    ; #22634: <==negation-removal== 42688 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_c_p11))
        :effect (and
                    ; #38146: origin
                    (at_c_p5)

                    ; #42688: origin
                    (not_at_c_p11)

                    ; #22634: <==negation-removal== 42688 (pos)
                    (not (at_c_p11))

                    ; #46148: <==negation-removal== 38146 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #20932: origin
                    (at_c_p6)

                    ; #42688: origin
                    (not_at_c_p11)

                    ; #22634: <==negation-removal== 42688 (pos)
                    (not (at_c_p11))

                    ; #64561: <==negation-removal== 20932 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #42688: origin
                    (not_at_c_p11)

                    ; #60493: origin
                    (at_c_p7)

                    ; #22634: <==negation-removal== 42688 (pos)
                    (not (at_c_p11))

                    ; #29790: <==negation-removal== 60493 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11))
        :effect (and
                    ; #42688: origin
                    (not_at_c_p11)

                    ; #78839: origin
                    (at_c_p8)

                    ; #22634: <==negation-removal== 42688 (pos)
                    (not (at_c_p11))

                    ; #51328: <==negation-removal== 78839 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11))
        :effect (and
                    ; #33858: origin
                    (at_c_p9)

                    ; #42688: origin
                    (not_at_c_p11)

                    ; #17646: <==negation-removal== 33858 (pos)
                    (not (not_at_c_p9))

                    ; #22634: <==negation-removal== 42688 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12))
        :effect (and
                    ; #61642: origin
                    (not_at_c_p12)

                    ; #74827: origin
                    (at_c_p1)

                    ; #44359: <==negation-removal== 61642 (pos)
                    (not (at_c_p12))

                    ; #72393: <==negation-removal== 74827 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12))
        :effect (and
                    ; #12125: origin
                    (at_c_p10)

                    ; #61642: origin
                    (not_at_c_p12)

                    ; #44359: <==negation-removal== 61642 (pos)
                    (not (at_c_p12))

                    ; #62123: <==negation-removal== 12125 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_c_p12))
        :effect (and
                    ; #22634: origin
                    (at_c_p11)

                    ; #61642: origin
                    (not_at_c_p12)

                    ; #42688: <==negation-removal== 22634 (pos)
                    (not (not_at_c_p11))

                    ; #44359: <==negation-removal== 61642 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12))
        :effect (and
                    ; #44359: origin
                    (at_c_p12)

                    ; #61642: origin
                    (not_at_c_p12)

                    ; #44359: <==negation-removal== 61642 (pos)
                    (not (at_c_p12))

                    ; #61642: <==negation-removal== 44359 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12))
        :effect (and
                    ; #54482: origin
                    (at_c_p2)

                    ; #61642: origin
                    (not_at_c_p12)

                    ; #44359: <==negation-removal== 61642 (pos)
                    (not (at_c_p12))

                    ; #84334: <==negation-removal== 54482 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #28543: origin
                    (at_c_p3)

                    ; #61642: origin
                    (not_at_c_p12)

                    ; #28164: <==negation-removal== 28543 (pos)
                    (not (not_at_c_p3))

                    ; #44359: <==negation-removal== 61642 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12))
        :effect (and
                    ; #61642: origin
                    (not_at_c_p12)

                    ; #87675: origin
                    (at_c_p4)

                    ; #16854: <==negation-removal== 87675 (pos)
                    (not (not_at_c_p4))

                    ; #44359: <==negation-removal== 61642 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12))
        :effect (and
                    ; #38146: origin
                    (at_c_p5)

                    ; #61642: origin
                    (not_at_c_p12)

                    ; #44359: <==negation-removal== 61642 (pos)
                    (not (at_c_p12))

                    ; #46148: <==negation-removal== 38146 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12))
        :effect (and
                    ; #20932: origin
                    (at_c_p6)

                    ; #61642: origin
                    (not_at_c_p12)

                    ; #44359: <==negation-removal== 61642 (pos)
                    (not (at_c_p12))

                    ; #64561: <==negation-removal== 20932 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12))
        :effect (and
                    ; #60493: origin
                    (at_c_p7)

                    ; #61642: origin
                    (not_at_c_p12)

                    ; #29790: <==negation-removal== 60493 (pos)
                    (not (not_at_c_p7))

                    ; #44359: <==negation-removal== 61642 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12))
        :effect (and
                    ; #61642: origin
                    (not_at_c_p12)

                    ; #78839: origin
                    (at_c_p8)

                    ; #44359: <==negation-removal== 61642 (pos)
                    (not (at_c_p12))

                    ; #51328: <==negation-removal== 78839 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12))
        :effect (and
                    ; #33858: origin
                    (at_c_p9)

                    ; #61642: origin
                    (not_at_c_p12)

                    ; #17646: <==negation-removal== 33858 (pos)
                    (not (not_at_c_p9))

                    ; #44359: <==negation-removal== 61642 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #72393: origin
                    (not_at_c_p1)

                    ; #74827: origin
                    (at_c_p1)

                    ; #72393: <==negation-removal== 74827 (pos)
                    (not (not_at_c_p1))

                    ; #74827: <==negation-removal== 72393 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_c_p1))
        :effect (and
                    ; #12125: origin
                    (at_c_p10)

                    ; #72393: origin
                    (not_at_c_p1)

                    ; #62123: <==negation-removal== 12125 (pos)
                    (not (not_at_c_p10))

                    ; #74827: <==negation-removal== 72393 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_c_p1))
        :effect (and
                    ; #22634: origin
                    (at_c_p11)

                    ; #72393: origin
                    (not_at_c_p1)

                    ; #42688: <==negation-removal== 22634 (pos)
                    (not (not_at_c_p11))

                    ; #74827: <==negation-removal== 72393 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1))
        :effect (and
                    ; #44359: origin
                    (at_c_p12)

                    ; #72393: origin
                    (not_at_c_p1)

                    ; #61642: <==negation-removal== 44359 (pos)
                    (not (not_at_c_p12))

                    ; #74827: <==negation-removal== 72393 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #54482: origin
                    (at_c_p2)

                    ; #72393: origin
                    (not_at_c_p1)

                    ; #74827: <==negation-removal== 72393 (pos)
                    (not (at_c_p1))

                    ; #84334: <==negation-removal== 54482 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #28543: origin
                    (at_c_p3)

                    ; #72393: origin
                    (not_at_c_p1)

                    ; #28164: <==negation-removal== 28543 (pos)
                    (not (not_at_c_p3))

                    ; #74827: <==negation-removal== 72393 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #72393: origin
                    (not_at_c_p1)

                    ; #87675: origin
                    (at_c_p4)

                    ; #16854: <==negation-removal== 87675 (pos)
                    (not (not_at_c_p4))

                    ; #74827: <==negation-removal== 72393 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #38146: origin
                    (at_c_p5)

                    ; #72393: origin
                    (not_at_c_p1)

                    ; #46148: <==negation-removal== 38146 (pos)
                    (not (not_at_c_p5))

                    ; #74827: <==negation-removal== 72393 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #20932: origin
                    (at_c_p6)

                    ; #72393: origin
                    (not_at_c_p1)

                    ; #64561: <==negation-removal== 20932 (pos)
                    (not (not_at_c_p6))

                    ; #74827: <==negation-removal== 72393 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #60493: origin
                    (at_c_p7)

                    ; #72393: origin
                    (not_at_c_p1)

                    ; #29790: <==negation-removal== 60493 (pos)
                    (not (not_at_c_p7))

                    ; #74827: <==negation-removal== 72393 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #72393: origin
                    (not_at_c_p1)

                    ; #78839: origin
                    (at_c_p8)

                    ; #51328: <==negation-removal== 78839 (pos)
                    (not (not_at_c_p8))

                    ; #74827: <==negation-removal== 72393 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #33858: origin
                    (at_c_p9)

                    ; #72393: origin
                    (not_at_c_p1)

                    ; #17646: <==negation-removal== 33858 (pos)
                    (not (not_at_c_p9))

                    ; #74827: <==negation-removal== 72393 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #74827: origin
                    (at_c_p1)

                    ; #84334: origin
                    (not_at_c_p2)

                    ; #54482: <==negation-removal== 84334 (pos)
                    (not (at_c_p2))

                    ; #72393: <==negation-removal== 74827 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2))
        :effect (and
                    ; #12125: origin
                    (at_c_p10)

                    ; #84334: origin
                    (not_at_c_p2)

                    ; #54482: <==negation-removal== 84334 (pos)
                    (not (at_c_p2))

                    ; #62123: <==negation-removal== 12125 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2))
        :effect (and
                    ; #22634: origin
                    (at_c_p11)

                    ; #84334: origin
                    (not_at_c_p2)

                    ; #42688: <==negation-removal== 22634 (pos)
                    (not (not_at_c_p11))

                    ; #54482: <==negation-removal== 84334 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_c_p2))
        :effect (and
                    ; #44359: origin
                    (at_c_p12)

                    ; #84334: origin
                    (not_at_c_p2)

                    ; #54482: <==negation-removal== 84334 (pos)
                    (not (at_c_p2))

                    ; #61642: <==negation-removal== 44359 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #54482: origin
                    (at_c_p2)

                    ; #84334: origin
                    (not_at_c_p2)

                    ; #54482: <==negation-removal== 84334 (pos)
                    (not (at_c_p2))

                    ; #84334: <==negation-removal== 54482 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #28543: origin
                    (at_c_p3)

                    ; #84334: origin
                    (not_at_c_p2)

                    ; #28164: <==negation-removal== 28543 (pos)
                    (not (not_at_c_p3))

                    ; #54482: <==negation-removal== 84334 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #84334: origin
                    (not_at_c_p2)

                    ; #87675: origin
                    (at_c_p4)

                    ; #16854: <==negation-removal== 87675 (pos)
                    (not (not_at_c_p4))

                    ; #54482: <==negation-removal== 84334 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #38146: origin
                    (at_c_p5)

                    ; #84334: origin
                    (not_at_c_p2)

                    ; #46148: <==negation-removal== 38146 (pos)
                    (not (not_at_c_p5))

                    ; #54482: <==negation-removal== 84334 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #20932: origin
                    (at_c_p6)

                    ; #84334: origin
                    (not_at_c_p2)

                    ; #54482: <==negation-removal== 84334 (pos)
                    (not (at_c_p2))

                    ; #64561: <==negation-removal== 20932 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #60493: origin
                    (at_c_p7)

                    ; #84334: origin
                    (not_at_c_p2)

                    ; #29790: <==negation-removal== 60493 (pos)
                    (not (not_at_c_p7))

                    ; #54482: <==negation-removal== 84334 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #78839: origin
                    (at_c_p8)

                    ; #84334: origin
                    (not_at_c_p2)

                    ; #51328: <==negation-removal== 78839 (pos)
                    (not (not_at_c_p8))

                    ; #54482: <==negation-removal== 84334 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #33858: origin
                    (at_c_p9)

                    ; #84334: origin
                    (not_at_c_p2)

                    ; #17646: <==negation-removal== 33858 (pos)
                    (not (not_at_c_p9))

                    ; #54482: <==negation-removal== 84334 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #28164: origin
                    (not_at_c_p3)

                    ; #74827: origin
                    (at_c_p1)

                    ; #28543: <==negation-removal== 28164 (pos)
                    (not (at_c_p3))

                    ; #72393: <==negation-removal== 74827 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3))
        :effect (and
                    ; #12125: origin
                    (at_c_p10)

                    ; #28164: origin
                    (not_at_c_p3)

                    ; #28543: <==negation-removal== 28164 (pos)
                    (not (at_c_p3))

                    ; #62123: <==negation-removal== 12125 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3))
        :effect (and
                    ; #22634: origin
                    (at_c_p11)

                    ; #28164: origin
                    (not_at_c_p3)

                    ; #28543: <==negation-removal== 28164 (pos)
                    (not (at_c_p3))

                    ; #42688: <==negation-removal== 22634 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #28164: origin
                    (not_at_c_p3)

                    ; #44359: origin
                    (at_c_p12)

                    ; #28543: <==negation-removal== 28164 (pos)
                    (not (at_c_p3))

                    ; #61642: <==negation-removal== 44359 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #28164: origin
                    (not_at_c_p3)

                    ; #54482: origin
                    (at_c_p2)

                    ; #28543: <==negation-removal== 28164 (pos)
                    (not (at_c_p3))

                    ; #84334: <==negation-removal== 54482 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #28164: origin
                    (not_at_c_p3)

                    ; #28543: origin
                    (at_c_p3)

                    ; #28164: <==negation-removal== 28543 (pos)
                    (not (not_at_c_p3))

                    ; #28543: <==negation-removal== 28164 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #28164: origin
                    (not_at_c_p3)

                    ; #87675: origin
                    (at_c_p4)

                    ; #16854: <==negation-removal== 87675 (pos)
                    (not (not_at_c_p4))

                    ; #28543: <==negation-removal== 28164 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #28164: origin
                    (not_at_c_p3)

                    ; #38146: origin
                    (at_c_p5)

                    ; #28543: <==negation-removal== 28164 (pos)
                    (not (at_c_p3))

                    ; #46148: <==negation-removal== 38146 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #20932: origin
                    (at_c_p6)

                    ; #28164: origin
                    (not_at_c_p3)

                    ; #28543: <==negation-removal== 28164 (pos)
                    (not (at_c_p3))

                    ; #64561: <==negation-removal== 20932 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #28164: origin
                    (not_at_c_p3)

                    ; #60493: origin
                    (at_c_p7)

                    ; #28543: <==negation-removal== 28164 (pos)
                    (not (at_c_p3))

                    ; #29790: <==negation-removal== 60493 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #28164: origin
                    (not_at_c_p3)

                    ; #78839: origin
                    (at_c_p8)

                    ; #28543: <==negation-removal== 28164 (pos)
                    (not (at_c_p3))

                    ; #51328: <==negation-removal== 78839 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #28164: origin
                    (not_at_c_p3)

                    ; #33858: origin
                    (at_c_p9)

                    ; #17646: <==negation-removal== 33858 (pos)
                    (not (not_at_c_p9))

                    ; #28543: <==negation-removal== 28164 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #16854: origin
                    (not_at_c_p4)

                    ; #74827: origin
                    (at_c_p1)

                    ; #72393: <==negation-removal== 74827 (pos)
                    (not (not_at_c_p1))

                    ; #87675: <==negation-removal== 16854 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #12125: origin
                    (at_c_p10)

                    ; #16854: origin
                    (not_at_c_p4)

                    ; #62123: <==negation-removal== 12125 (pos)
                    (not (not_at_c_p10))

                    ; #87675: <==negation-removal== 16854 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #16854: origin
                    (not_at_c_p4)

                    ; #22634: origin
                    (at_c_p11)

                    ; #42688: <==negation-removal== 22634 (pos)
                    (not (not_at_c_p11))

                    ; #87675: <==negation-removal== 16854 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #16854: origin
                    (not_at_c_p4)

                    ; #44359: origin
                    (at_c_p12)

                    ; #61642: <==negation-removal== 44359 (pos)
                    (not (not_at_c_p12))

                    ; #87675: <==negation-removal== 16854 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #16854: origin
                    (not_at_c_p4)

                    ; #54482: origin
                    (at_c_p2)

                    ; #84334: <==negation-removal== 54482 (pos)
                    (not (not_at_c_p2))

                    ; #87675: <==negation-removal== 16854 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #16854: origin
                    (not_at_c_p4)

                    ; #28543: origin
                    (at_c_p3)

                    ; #28164: <==negation-removal== 28543 (pos)
                    (not (not_at_c_p3))

                    ; #87675: <==negation-removal== 16854 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #16854: origin
                    (not_at_c_p4)

                    ; #87675: origin
                    (at_c_p4)

                    ; #16854: <==negation-removal== 87675 (pos)
                    (not (not_at_c_p4))

                    ; #87675: <==negation-removal== 16854 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #16854: origin
                    (not_at_c_p4)

                    ; #38146: origin
                    (at_c_p5)

                    ; #46148: <==negation-removal== 38146 (pos)
                    (not (not_at_c_p5))

                    ; #87675: <==negation-removal== 16854 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #16854: origin
                    (not_at_c_p4)

                    ; #20932: origin
                    (at_c_p6)

                    ; #64561: <==negation-removal== 20932 (pos)
                    (not (not_at_c_p6))

                    ; #87675: <==negation-removal== 16854 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #16854: origin
                    (not_at_c_p4)

                    ; #60493: origin
                    (at_c_p7)

                    ; #29790: <==negation-removal== 60493 (pos)
                    (not (not_at_c_p7))

                    ; #87675: <==negation-removal== 16854 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #16854: origin
                    (not_at_c_p4)

                    ; #78839: origin
                    (at_c_p8)

                    ; #51328: <==negation-removal== 78839 (pos)
                    (not (not_at_c_p8))

                    ; #87675: <==negation-removal== 16854 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #16854: origin
                    (not_at_c_p4)

                    ; #33858: origin
                    (at_c_p9)

                    ; #17646: <==negation-removal== 33858 (pos)
                    (not (not_at_c_p9))

                    ; #87675: <==negation-removal== 16854 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #46148: origin
                    (not_at_c_p5)

                    ; #74827: origin
                    (at_c_p1)

                    ; #38146: <==negation-removal== 46148 (pos)
                    (not (at_c_p5))

                    ; #72393: <==negation-removal== 74827 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #12125: origin
                    (at_c_p10)

                    ; #46148: origin
                    (not_at_c_p5)

                    ; #38146: <==negation-removal== 46148 (pos)
                    (not (at_c_p5))

                    ; #62123: <==negation-removal== 12125 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #22634: origin
                    (at_c_p11)

                    ; #46148: origin
                    (not_at_c_p5)

                    ; #38146: <==negation-removal== 46148 (pos)
                    (not (at_c_p5))

                    ; #42688: <==negation-removal== 22634 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #44359: origin
                    (at_c_p12)

                    ; #46148: origin
                    (not_at_c_p5)

                    ; #38146: <==negation-removal== 46148 (pos)
                    (not (at_c_p5))

                    ; #61642: <==negation-removal== 44359 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #46148: origin
                    (not_at_c_p5)

                    ; #54482: origin
                    (at_c_p2)

                    ; #38146: <==negation-removal== 46148 (pos)
                    (not (at_c_p5))

                    ; #84334: <==negation-removal== 54482 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #28543: origin
                    (at_c_p3)

                    ; #46148: origin
                    (not_at_c_p5)

                    ; #28164: <==negation-removal== 28543 (pos)
                    (not (not_at_c_p3))

                    ; #38146: <==negation-removal== 46148 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #46148: origin
                    (not_at_c_p5)

                    ; #87675: origin
                    (at_c_p4)

                    ; #16854: <==negation-removal== 87675 (pos)
                    (not (not_at_c_p4))

                    ; #38146: <==negation-removal== 46148 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #38146: origin
                    (at_c_p5)

                    ; #46148: origin
                    (not_at_c_p5)

                    ; #38146: <==negation-removal== 46148 (pos)
                    (not (at_c_p5))

                    ; #46148: <==negation-removal== 38146 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #20932: origin
                    (at_c_p6)

                    ; #46148: origin
                    (not_at_c_p5)

                    ; #38146: <==negation-removal== 46148 (pos)
                    (not (at_c_p5))

                    ; #64561: <==negation-removal== 20932 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #46148: origin
                    (not_at_c_p5)

                    ; #60493: origin
                    (at_c_p7)

                    ; #29790: <==negation-removal== 60493 (pos)
                    (not (not_at_c_p7))

                    ; #38146: <==negation-removal== 46148 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #46148: origin
                    (not_at_c_p5)

                    ; #78839: origin
                    (at_c_p8)

                    ; #38146: <==negation-removal== 46148 (pos)
                    (not (at_c_p5))

                    ; #51328: <==negation-removal== 78839 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #33858: origin
                    (at_c_p9)

                    ; #46148: origin
                    (not_at_c_p5)

                    ; #17646: <==negation-removal== 33858 (pos)
                    (not (not_at_c_p9))

                    ; #38146: <==negation-removal== 46148 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #64561: origin
                    (not_at_c_p6)

                    ; #74827: origin
                    (at_c_p1)

                    ; #20932: <==negation-removal== 64561 (pos)
                    (not (at_c_p6))

                    ; #72393: <==negation-removal== 74827 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #12125: origin
                    (at_c_p10)

                    ; #64561: origin
                    (not_at_c_p6)

                    ; #20932: <==negation-removal== 64561 (pos)
                    (not (at_c_p6))

                    ; #62123: <==negation-removal== 12125 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #22634: origin
                    (at_c_p11)

                    ; #64561: origin
                    (not_at_c_p6)

                    ; #20932: <==negation-removal== 64561 (pos)
                    (not (at_c_p6))

                    ; #42688: <==negation-removal== 22634 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6))
        :effect (and
                    ; #44359: origin
                    (at_c_p12)

                    ; #64561: origin
                    (not_at_c_p6)

                    ; #20932: <==negation-removal== 64561 (pos)
                    (not (at_c_p6))

                    ; #61642: <==negation-removal== 44359 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #54482: origin
                    (at_c_p2)

                    ; #64561: origin
                    (not_at_c_p6)

                    ; #20932: <==negation-removal== 64561 (pos)
                    (not (at_c_p6))

                    ; #84334: <==negation-removal== 54482 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #28543: origin
                    (at_c_p3)

                    ; #64561: origin
                    (not_at_c_p6)

                    ; #20932: <==negation-removal== 64561 (pos)
                    (not (at_c_p6))

                    ; #28164: <==negation-removal== 28543 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #64561: origin
                    (not_at_c_p6)

                    ; #87675: origin
                    (at_c_p4)

                    ; #16854: <==negation-removal== 87675 (pos)
                    (not (not_at_c_p4))

                    ; #20932: <==negation-removal== 64561 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #38146: origin
                    (at_c_p5)

                    ; #64561: origin
                    (not_at_c_p6)

                    ; #20932: <==negation-removal== 64561 (pos)
                    (not (at_c_p6))

                    ; #46148: <==negation-removal== 38146 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #20932: origin
                    (at_c_p6)

                    ; #64561: origin
                    (not_at_c_p6)

                    ; #20932: <==negation-removal== 64561 (pos)
                    (not (at_c_p6))

                    ; #64561: <==negation-removal== 20932 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #60493: origin
                    (at_c_p7)

                    ; #64561: origin
                    (not_at_c_p6)

                    ; #20932: <==negation-removal== 64561 (pos)
                    (not (at_c_p6))

                    ; #29790: <==negation-removal== 60493 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #64561: origin
                    (not_at_c_p6)

                    ; #78839: origin
                    (at_c_p8)

                    ; #20932: <==negation-removal== 64561 (pos)
                    (not (at_c_p6))

                    ; #51328: <==negation-removal== 78839 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #33858: origin
                    (at_c_p9)

                    ; #64561: origin
                    (not_at_c_p6)

                    ; #17646: <==negation-removal== 33858 (pos)
                    (not (not_at_c_p9))

                    ; #20932: <==negation-removal== 64561 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #29790: origin
                    (not_at_c_p7)

                    ; #74827: origin
                    (at_c_p1)

                    ; #60493: <==negation-removal== 29790 (pos)
                    (not (at_c_p7))

                    ; #72393: <==negation-removal== 74827 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (at_c_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #12125: origin
                    (at_c_p10)

                    ; #29790: origin
                    (not_at_c_p7)

                    ; #60493: <==negation-removal== 29790 (pos)
                    (not (at_c_p7))

                    ; #62123: <==negation-removal== 12125 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #22634: origin
                    (at_c_p11)

                    ; #29790: origin
                    (not_at_c_p7)

                    ; #42688: <==negation-removal== 22634 (pos)
                    (not (not_at_c_p11))

                    ; #60493: <==negation-removal== 29790 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #29790: origin
                    (not_at_c_p7)

                    ; #44359: origin
                    (at_c_p12)

                    ; #60493: <==negation-removal== 29790 (pos)
                    (not (at_c_p7))

                    ; #61642: <==negation-removal== 44359 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #29790: origin
                    (not_at_c_p7)

                    ; #54482: origin
                    (at_c_p2)

                    ; #60493: <==negation-removal== 29790 (pos)
                    (not (at_c_p7))

                    ; #84334: <==negation-removal== 54482 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #28543: origin
                    (at_c_p3)

                    ; #29790: origin
                    (not_at_c_p7)

                    ; #28164: <==negation-removal== 28543 (pos)
                    (not (not_at_c_p3))

                    ; #60493: <==negation-removal== 29790 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #29790: origin
                    (not_at_c_p7)

                    ; #87675: origin
                    (at_c_p4)

                    ; #16854: <==negation-removal== 87675 (pos)
                    (not (not_at_c_p4))

                    ; #60493: <==negation-removal== 29790 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #29790: origin
                    (not_at_c_p7)

                    ; #38146: origin
                    (at_c_p5)

                    ; #46148: <==negation-removal== 38146 (pos)
                    (not (not_at_c_p5))

                    ; #60493: <==negation-removal== 29790 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #20932: origin
                    (at_c_p6)

                    ; #29790: origin
                    (not_at_c_p7)

                    ; #60493: <==negation-removal== 29790 (pos)
                    (not (at_c_p7))

                    ; #64561: <==negation-removal== 20932 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #29790: origin
                    (not_at_c_p7)

                    ; #60493: origin
                    (at_c_p7)

                    ; #29790: <==negation-removal== 60493 (pos)
                    (not (not_at_c_p7))

                    ; #60493: <==negation-removal== 29790 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #29790: origin
                    (not_at_c_p7)

                    ; #78839: origin
                    (at_c_p8)

                    ; #51328: <==negation-removal== 78839 (pos)
                    (not (not_at_c_p8))

                    ; #60493: <==negation-removal== 29790 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #29790: origin
                    (not_at_c_p7)

                    ; #33858: origin
                    (at_c_p9)

                    ; #17646: <==negation-removal== 33858 (pos)
                    (not (not_at_c_p9))

                    ; #60493: <==negation-removal== 29790 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #51328: origin
                    (not_at_c_p8)

                    ; #74827: origin
                    (at_c_p1)

                    ; #72393: <==negation-removal== 74827 (pos)
                    (not (not_at_c_p1))

                    ; #78839: <==negation-removal== 51328 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8))
        :effect (and
                    ; #12125: origin
                    (at_c_p10)

                    ; #51328: origin
                    (not_at_c_p8)

                    ; #62123: <==negation-removal== 12125 (pos)
                    (not (not_at_c_p10))

                    ; #78839: <==negation-removal== 51328 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8))
        :effect (and
                    ; #22634: origin
                    (at_c_p11)

                    ; #51328: origin
                    (not_at_c_p8)

                    ; #42688: <==negation-removal== 22634 (pos)
                    (not (not_at_c_p11))

                    ; #78839: <==negation-removal== 51328 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_c_p8))
        :effect (and
                    ; #44359: origin
                    (at_c_p12)

                    ; #51328: origin
                    (not_at_c_p8)

                    ; #61642: <==negation-removal== 44359 (pos)
                    (not (not_at_c_p12))

                    ; #78839: <==negation-removal== 51328 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #51328: origin
                    (not_at_c_p8)

                    ; #54482: origin
                    (at_c_p2)

                    ; #78839: <==negation-removal== 51328 (pos)
                    (not (at_c_p8))

                    ; #84334: <==negation-removal== 54482 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #28543: origin
                    (at_c_p3)

                    ; #51328: origin
                    (not_at_c_p8)

                    ; #28164: <==negation-removal== 28543 (pos)
                    (not (not_at_c_p3))

                    ; #78839: <==negation-removal== 51328 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #51328: origin
                    (not_at_c_p8)

                    ; #87675: origin
                    (at_c_p4)

                    ; #16854: <==negation-removal== 87675 (pos)
                    (not (not_at_c_p4))

                    ; #78839: <==negation-removal== 51328 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #38146: origin
                    (at_c_p5)

                    ; #51328: origin
                    (not_at_c_p8)

                    ; #46148: <==negation-removal== 38146 (pos)
                    (not (not_at_c_p5))

                    ; #78839: <==negation-removal== 51328 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #20932: origin
                    (at_c_p6)

                    ; #51328: origin
                    (not_at_c_p8)

                    ; #64561: <==negation-removal== 20932 (pos)
                    (not (not_at_c_p6))

                    ; #78839: <==negation-removal== 51328 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #51328: origin
                    (not_at_c_p8)

                    ; #60493: origin
                    (at_c_p7)

                    ; #29790: <==negation-removal== 60493 (pos)
                    (not (not_at_c_p7))

                    ; #78839: <==negation-removal== 51328 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #51328: origin
                    (not_at_c_p8)

                    ; #78839: origin
                    (at_c_p8)

                    ; #51328: <==negation-removal== 78839 (pos)
                    (not (not_at_c_p8))

                    ; #78839: <==negation-removal== 51328 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #33858: origin
                    (at_c_p9)

                    ; #51328: origin
                    (not_at_c_p8)

                    ; #17646: <==negation-removal== 33858 (pos)
                    (not (not_at_c_p9))

                    ; #78839: <==negation-removal== 51328 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #17646: origin
                    (not_at_c_p9)

                    ; #74827: origin
                    (at_c_p1)

                    ; #33858: <==negation-removal== 17646 (pos)
                    (not (at_c_p9))

                    ; #72393: <==negation-removal== 74827 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9))
        :effect (and
                    ; #12125: origin
                    (at_c_p10)

                    ; #17646: origin
                    (not_at_c_p9)

                    ; #33858: <==negation-removal== 17646 (pos)
                    (not (at_c_p9))

                    ; #62123: <==negation-removal== 12125 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p9_p11
        :precondition (and (at_c_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #17646: origin
                    (not_at_c_p9)

                    ; #22634: origin
                    (at_c_p11)

                    ; #33858: <==negation-removal== 17646 (pos)
                    (not (at_c_p9))

                    ; #42688: <==negation-removal== 22634 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #17646: origin
                    (not_at_c_p9)

                    ; #44359: origin
                    (at_c_p12)

                    ; #33858: <==negation-removal== 17646 (pos)
                    (not (at_c_p9))

                    ; #61642: <==negation-removal== 44359 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #17646: origin
                    (not_at_c_p9)

                    ; #54482: origin
                    (at_c_p2)

                    ; #33858: <==negation-removal== 17646 (pos)
                    (not (at_c_p9))

                    ; #84334: <==negation-removal== 54482 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #17646: origin
                    (not_at_c_p9)

                    ; #28543: origin
                    (at_c_p3)

                    ; #28164: <==negation-removal== 28543 (pos)
                    (not (not_at_c_p3))

                    ; #33858: <==negation-removal== 17646 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #17646: origin
                    (not_at_c_p9)

                    ; #87675: origin
                    (at_c_p4)

                    ; #16854: <==negation-removal== 87675 (pos)
                    (not (not_at_c_p4))

                    ; #33858: <==negation-removal== 17646 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #17646: origin
                    (not_at_c_p9)

                    ; #38146: origin
                    (at_c_p5)

                    ; #33858: <==negation-removal== 17646 (pos)
                    (not (at_c_p9))

                    ; #46148: <==negation-removal== 38146 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #17646: origin
                    (not_at_c_p9)

                    ; #20932: origin
                    (at_c_p6)

                    ; #33858: <==negation-removal== 17646 (pos)
                    (not (at_c_p9))

                    ; #64561: <==negation-removal== 20932 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #17646: origin
                    (not_at_c_p9)

                    ; #60493: origin
                    (at_c_p7)

                    ; #29790: <==negation-removal== 60493 (pos)
                    (not (not_at_c_p7))

                    ; #33858: <==negation-removal== 17646 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #17646: origin
                    (not_at_c_p9)

                    ; #78839: origin
                    (at_c_p8)

                    ; #33858: <==negation-removal== 17646 (pos)
                    (not (at_c_p9))

                    ; #51328: <==negation-removal== 78839 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #17646: origin
                    (not_at_c_p9)

                    ; #33858: origin
                    (at_c_p9)

                    ; #17646: <==negation-removal== 33858 (pos)
                    (not (not_at_c_p9))

                    ; #33858: <==negation-removal== 17646 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #16107: <==commonly_known== 91676 (neg)
                    (Pb_checked_p10)

                    ; #34953: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #35811: origin
                    (checked_p10)

                    ; #51317: <==closure== 91617 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #59279: <==closure== 34953 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #64895: <==commonly_known== 91676 (neg)
                    (Pa_checked_p10)

                    ; #66970: <==commonly_known== 91676 (neg)
                    (Pc_checked_p10)

                    ; #67115: <==commonly_known== 35811 (pos)
                    (Ba_checked_p10)

                    ; #75195: <==commonly_known== 35811 (pos)
                    (Bc_checked_p10)

                    ; #86088: <==commonly_known== 35811 (pos)
                    (Bb_checked_p10)

                    ; #91617: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #40945: <==uncertain_firing== 59279 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #46362: <==negation-removal== 16107 (pos)
                    (not (Bb_not_checked_p10))

                    ; #46851: <==negation-removal== 86088 (pos)
                    (not (Pb_not_checked_p10))

                    ; #49481: <==negation-removal== 75195 (pos)
                    (not (Pc_not_checked_p10))

                    ; #51576: <==uncertain_firing== 34953 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #51788: <==negation-removal== 91617 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #54650: <==negation-removal== 34953 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #59036: <==negation-removal== 59279 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #67035: <==negation-removal== 64895 (pos)
                    (not (Ba_not_checked_p10))

                    ; #67892: <==negation-removal== 67115 (pos)
                    (not (Pa_not_checked_p10))

                    ; #71627: <==uncertain_firing== 91617 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #82741: <==negation-removal== 66970 (pos)
                    (not (Bc_not_checked_p10))

                    ; #85581: <==negation-removal== 51317 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #87588: <==uncertain_firing== 51317 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #91676: <==negation-removal== 35811 (pos)
                    (not (not_checked_p10))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #14615: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #15990: <==commonly_known== 54651 (pos)
                    (Ba_checked_p11)

                    ; #18301: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #40027: <==commonly_known== 54651 (pos)
                    (Bc_checked_p11)

                    ; #41362: <==commonly_known== 88295 (neg)
                    (Pb_checked_p11)

                    ; #47724: <==commonly_known== 88295 (neg)
                    (Pa_checked_p11)

                    ; #54651: origin
                    (checked_p11)

                    ; #68187: <==closure== 14615 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #71422: <==commonly_known== 88295 (neg)
                    (Pc_checked_p11)

                    ; #78659: <==closure== 18301 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #92123: <==commonly_known== 54651 (pos)
                    (Bb_checked_p11)

                    ; #11439: <==negation-removal== 78659 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #13167: <==negation-removal== 40027 (pos)
                    (not (Pc_not_checked_p11))

                    ; #20397: <==negation-removal== 92123 (pos)
                    (not (Pb_not_checked_p11))

                    ; #28799: <==uncertain_firing== 14615 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #29513: <==negation-removal== 15990 (pos)
                    (not (Pa_not_checked_p11))

                    ; #30503: <==negation-removal== 18301 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #50208: <==uncertain_firing== 68187 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #60093: <==negation-removal== 41362 (pos)
                    (not (Bb_not_checked_p11))

                    ; #65224: <==negation-removal== 71422 (pos)
                    (not (Bc_not_checked_p11))

                    ; #67624: <==negation-removal== 14615 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #75425: <==uncertain_firing== 18301 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #81470: <==uncertain_firing== 78659 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #83264: <==negation-removal== 47724 (pos)
                    (not (Ba_not_checked_p11))

                    ; #85197: <==negation-removal== 68187 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #88295: <==negation-removal== 54651 (pos)
                    (not (not_checked_p11))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #10241: origin
                    (checked_p12)

                    ; #13117: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #26330: <==commonly_known== 10241 (pos)
                    (Ba_checked_p12)

                    ; #41314: <==commonly_known== 58918 (neg)
                    (Pb_checked_p12)

                    ; #54655: <==closure== 13117 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #62627: <==closure== 82960 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #76158: <==commonly_known== 10241 (pos)
                    (Bc_checked_p12)

                    ; #76167: <==commonly_known== 58918 (neg)
                    (Pc_checked_p12)

                    ; #79672: <==commonly_known== 58918 (neg)
                    (Pa_checked_p12)

                    ; #79782: <==commonly_known== 10241 (pos)
                    (Bb_checked_p12)

                    ; #82960: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #28498: <==uncertain_firing== 62627 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #32002: <==negation-removal== 76167 (pos)
                    (not (Bc_not_checked_p12))

                    ; #47878: <==negation-removal== 79782 (pos)
                    (not (Pb_not_checked_p12))

                    ; #48567: <==uncertain_firing== 13117 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #49613: <==negation-removal== 54655 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #50940: <==negation-removal== 82960 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #57897: <==negation-removal== 79672 (pos)
                    (not (Ba_not_checked_p12))

                    ; #58918: <==negation-removal== 10241 (pos)
                    (not (not_checked_p12))

                    ; #60843: <==negation-removal== 76158 (pos)
                    (not (Pc_not_checked_p12))

                    ; #61007: <==uncertain_firing== 82960 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #68654: <==negation-removal== 41314 (pos)
                    (not (Bb_not_checked_p12))

                    ; #76668: <==negation-removal== 62627 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #78462: <==negation-removal== 26330 (pos)
                    (not (Pa_not_checked_p12))

                    ; #81151: <==negation-removal== 13117 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #88569: <==uncertain_firing== 54655 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #10816: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #11865: <==commonly_known== 51957 (pos)
                    (Bb_checked_p1)

                    ; #16806: <==commonly_known== 51957 (pos)
                    (Bc_checked_p1)

                    ; #34468: <==commonly_known== 17099 (neg)
                    (Pc_checked_p1)

                    ; #38394: <==closure== 90806 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #48466: <==commonly_known== 51957 (pos)
                    (Ba_checked_p1)

                    ; #51957: origin
                    (checked_p1)

                    ; #56385: <==commonly_known== 17099 (neg)
                    (Pa_checked_p1)

                    ; #64571: <==closure== 10816 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #66392: <==commonly_known== 17099 (neg)
                    (Pb_checked_p1)

                    ; #90806: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #17099: <==negation-removal== 51957 (pos)
                    (not (not_checked_p1))

                    ; #21831: <==uncertain_firing== 64571 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #24290: <==uncertain_firing== 38394 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #27844: <==negation-removal== 90806 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #40540: <==negation-removal== 66392 (pos)
                    (not (Bb_not_checked_p1))

                    ; #42044: <==negation-removal== 16806 (pos)
                    (not (Pc_not_checked_p1))

                    ; #47626: <==negation-removal== 48466 (pos)
                    (not (Pa_not_checked_p1))

                    ; #48576: <==negation-removal== 38394 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #49395: <==negation-removal== 11865 (pos)
                    (not (Pb_not_checked_p1))

                    ; #55502: <==negation-removal== 34468 (pos)
                    (not (Bc_not_checked_p1))

                    ; #56010: <==negation-removal== 10816 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #69947: <==uncertain_firing== 10816 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #82733: <==negation-removal== 64571 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #82968: <==uncertain_firing== 90806 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #92999: <==negation-removal== 56385 (pos)
                    (not (Ba_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #30205: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #36385: <==commonly_known== 67156 (neg)
                    (Pc_checked_p2)

                    ; #42415: <==commonly_known== 67156 (neg)
                    (Pa_checked_p2)

                    ; #43723: <==commonly_known== 92239 (pos)
                    (Bc_checked_p2)

                    ; #72358: <==commonly_known== 92239 (pos)
                    (Ba_checked_p2)

                    ; #80936: <==closure== 83880 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #82836: <==commonly_known== 67156 (neg)
                    (Pb_checked_p2)

                    ; #83880: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #88808: <==closure== 30205 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #89948: <==commonly_known== 92239 (pos)
                    (Bb_checked_p2)

                    ; #92239: origin
                    (checked_p2)

                    ; #17873: <==uncertain_firing== 88808 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #26291: <==negation-removal== 36385 (pos)
                    (not (Bc_not_checked_p2))

                    ; #37639: <==negation-removal== 80936 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #43587: <==negation-removal== 42415 (pos)
                    (not (Ba_not_checked_p2))

                    ; #47708: <==uncertain_firing== 30205 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #47853: <==negation-removal== 82836 (pos)
                    (not (Bb_not_checked_p2))

                    ; #49025: <==uncertain_firing== 80936 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #50444: <==uncertain_firing== 83880 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #52700: <==negation-removal== 88808 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #64978: <==negation-removal== 89948 (pos)
                    (not (Pb_not_checked_p2))

                    ; #66965: <==negation-removal== 43723 (pos)
                    (not (Pc_not_checked_p2))

                    ; #67156: <==negation-removal== 92239 (pos)
                    (not (not_checked_p2))

                    ; #68993: <==negation-removal== 30205 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #70896: <==negation-removal== 72358 (pos)
                    (not (Pa_not_checked_p2))

                    ; #73835: <==negation-removal== 83880 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #14170: <==commonly_known== 32273 (neg)
                    (Pb_checked_p3)

                    ; #14953: <==commonly_known== 61512 (pos)
                    (Bb_checked_p3)

                    ; #22890: <==closure== 50086 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #31315: <==commonly_known== 32273 (neg)
                    (Pa_checked_p3)

                    ; #31406: <==commonly_known== 61512 (pos)
                    (Ba_checked_p3)

                    ; #39880: <==commonly_known== 61512 (pos)
                    (Bc_checked_p3)

                    ; #49268: <==closure== 54638 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #50086: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #54638: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #61512: origin
                    (checked_p3)

                    ; #79919: <==commonly_known== 32273 (neg)
                    (Pc_checked_p3)

                    ; #17006: <==negation-removal== 14170 (pos)
                    (not (Bb_not_checked_p3))

                    ; #29289: <==uncertain_firing== 49268 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #32273: <==negation-removal== 61512 (pos)
                    (not (not_checked_p3))

                    ; #34486: <==negation-removal== 49268 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #35768: <==uncertain_firing== 50086 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #57785: <==uncertain_firing== 54638 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #58384: <==negation-removal== 22890 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #59099: <==negation-removal== 14953 (pos)
                    (not (Pb_not_checked_p3))

                    ; #59256: <==negation-removal== 54638 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #73587: <==negation-removal== 31315 (pos)
                    (not (Ba_not_checked_p3))

                    ; #84111: <==negation-removal== 79919 (pos)
                    (not (Bc_not_checked_p3))

                    ; #84257: <==uncertain_firing== 22890 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #87325: <==negation-removal== 31406 (pos)
                    (not (Pa_not_checked_p3))

                    ; #89186: <==negation-removal== 39880 (pos)
                    (not (Pc_not_checked_p3))

                    ; #95447: <==negation-removal== 50086 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #28254: <==commonly_known== 82181 (pos)
                    (Bc_checked_p4)

                    ; #32063: <==commonly_known== 64473 (neg)
                    (Pb_checked_p4)

                    ; #35084: <==closure== 80493 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #52159: <==commonly_known== 64473 (neg)
                    (Pc_checked_p4)

                    ; #67830: <==closure== 70529 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #69222: <==commonly_known== 82181 (pos)
                    (Ba_checked_p4)

                    ; #70529: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #76315: <==commonly_known== 82181 (pos)
                    (Bb_checked_p4)

                    ; #80493: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #82181: origin
                    (checked_p4)

                    ; #89004: <==commonly_known== 64473 (neg)
                    (Pa_checked_p4)

                    ; #12141: <==negation-removal== 32063 (pos)
                    (not (Bb_not_checked_p4))

                    ; #19060: <==negation-removal== 52159 (pos)
                    (not (Bc_not_checked_p4))

                    ; #20413: <==negation-removal== 69222 (pos)
                    (not (Pa_not_checked_p4))

                    ; #24667: <==negation-removal== 70529 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #26804: <==negation-removal== 80493 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #29621: <==uncertain_firing== 80493 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #33296: <==negation-removal== 89004 (pos)
                    (not (Ba_not_checked_p4))

                    ; #38149: <==negation-removal== 76315 (pos)
                    (not (Pb_not_checked_p4))

                    ; #38426: <==negation-removal== 67830 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #52714: <==negation-removal== 28254 (pos)
                    (not (Pc_not_checked_p4))

                    ; #64256: <==uncertain_firing== 67830 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #64473: <==negation-removal== 82181 (pos)
                    (not (not_checked_p4))

                    ; #76437: <==uncertain_firing== 70529 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #84295: <==negation-removal== 35084 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #89504: <==uncertain_firing== 35084 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #20328: <==commonly_known== 42563 (neg)
                    (Pa_checked_p5)

                    ; #26002: <==commonly_known== 42563 (neg)
                    (Pc_checked_p5)

                    ; #31468: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #39412: <==closure== 31468 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #39955: <==closure== 63824 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #43541: <==commonly_known== 49155 (pos)
                    (Bb_checked_p5)

                    ; #49155: origin
                    (checked_p5)

                    ; #63824: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #66105: <==commonly_known== 49155 (pos)
                    (Bc_checked_p5)

                    ; #79524: <==commonly_known== 49155 (pos)
                    (Ba_checked_p5)

                    ; #91861: <==commonly_known== 42563 (neg)
                    (Pb_checked_p5)

                    ; #11015: <==negation-removal== 91861 (pos)
                    (not (Bb_not_checked_p5))

                    ; #29580: <==negation-removal== 39955 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #31060: <==negation-removal== 66105 (pos)
                    (not (Pc_not_checked_p5))

                    ; #31122: <==negation-removal== 20328 (pos)
                    (not (Ba_not_checked_p5))

                    ; #42419: <==negation-removal== 43541 (pos)
                    (not (Pb_not_checked_p5))

                    ; #42563: <==negation-removal== 49155 (pos)
                    (not (not_checked_p5))

                    ; #45374: <==negation-removal== 63824 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #50650: <==negation-removal== 39412 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #51888: <==uncertain_firing== 63824 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #55338: <==uncertain_firing== 39955 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #66491: <==uncertain_firing== 31468 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #78821: <==negation-removal== 31468 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #81345: <==uncertain_firing== 39412 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #86620: <==negation-removal== 79524 (pos)
                    (not (Pa_not_checked_p5))

                    ; #97994: <==negation-removal== 26002 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13984: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #41079: <==commonly_known== 56883 (pos)
                    (Bc_checked_p6)

                    ; #45053: <==commonly_known== 26492 (neg)
                    (Pb_checked_p6)

                    ; #45871: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #49337: <==commonly_known== 26492 (neg)
                    (Pa_checked_p6)

                    ; #53565: <==closure== 45871 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #56883: origin
                    (checked_p6)

                    ; #69404: <==commonly_known== 56883 (pos)
                    (Ba_checked_p6)

                    ; #82948: <==closure== 13984 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #84914: <==commonly_known== 56883 (pos)
                    (Bb_checked_p6)

                    ; #96581: <==commonly_known== 26492 (neg)
                    (Pc_checked_p6)

                    ; #11137: <==negation-removal== 96581 (pos)
                    (not (Bc_not_checked_p6))

                    ; #17804: <==negation-removal== 49337 (pos)
                    (not (Ba_not_checked_p6))

                    ; #22281: <==negation-removal== 45053 (pos)
                    (not (Bb_not_checked_p6))

                    ; #26492: <==negation-removal== 56883 (pos)
                    (not (not_checked_p6))

                    ; #28686: <==uncertain_firing== 82948 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #29503: <==negation-removal== 45871 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #34526: <==negation-removal== 84914 (pos)
                    (not (Pb_not_checked_p6))

                    ; #49672: <==uncertain_firing== 13984 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #57267: <==negation-removal== 69404 (pos)
                    (not (Pa_not_checked_p6))

                    ; #57445: <==negation-removal== 82948 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #61900: <==negation-removal== 41079 (pos)
                    (not (Pc_not_checked_p6))

                    ; #64529: <==uncertain_firing== 53565 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #76209: <==negation-removal== 53565 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #79665: <==negation-removal== 13984 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #90609: <==uncertain_firing== 45871 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #12267: <==commonly_known== 85410 (neg)
                    (Pa_checked_p7)

                    ; #27265: <==commonly_known== 39768 (pos)
                    (Ba_checked_p7)

                    ; #27995: <==commonly_known== 85410 (neg)
                    (Pb_checked_p7)

                    ; #39768: origin
                    (checked_p7)

                    ; #50779: <==commonly_known== 85410 (neg)
                    (Pc_checked_p7)

                    ; #60798: <==commonly_known== 39768 (pos)
                    (Bc_checked_p7)

                    ; #66607: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #77513: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #79462: <==commonly_known== 39768 (pos)
                    (Bb_checked_p7)

                    ; #81217: <==closure== 66607 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #90527: <==closure== 77513 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #21270: <==uncertain_firing== 77513 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #23540: <==negation-removal== 12267 (pos)
                    (not (Ba_not_checked_p7))

                    ; #46994: <==uncertain_firing== 81217 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #47312: <==negation-removal== 60798 (pos)
                    (not (Pc_not_checked_p7))

                    ; #52962: <==negation-removal== 50779 (pos)
                    (not (Bc_not_checked_p7))

                    ; #55263: <==negation-removal== 79462 (pos)
                    (not (Pb_not_checked_p7))

                    ; #60855: <==negation-removal== 66607 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #61554: <==uncertain_firing== 90527 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #66521: <==negation-removal== 90527 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #80479: <==negation-removal== 77513 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #83328: <==negation-removal== 81217 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #85410: <==negation-removal== 39768 (pos)
                    (not (not_checked_p7))

                    ; #85740: <==negation-removal== 27995 (pos)
                    (not (Bb_not_checked_p7))

                    ; #86973: <==uncertain_firing== 66607 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #90460: <==negation-removal== 27265 (pos)
                    (not (Pa_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #19386: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #26650: <==closure== 19386 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #51472: origin
                    (checked_p8)

                    ; #64707: <==commonly_known== 51472 (pos)
                    (Ba_checked_p8)

                    ; #68630: <==commonly_known== 51472 (pos)
                    (Bc_checked_p8)

                    ; #72545: <==commonly_known== 87359 (neg)
                    (Pb_checked_p8)

                    ; #72550: <==commonly_known== 51472 (pos)
                    (Bb_checked_p8)

                    ; #81171: <==closure== 82782 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #82782: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #90384: <==commonly_known== 87359 (neg)
                    (Pa_checked_p8)

                    ; #92058: <==commonly_known== 87359 (neg)
                    (Pc_checked_p8)

                    ; #15991: <==negation-removal== 26650 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #23533: <==negation-removal== 64707 (pos)
                    (not (Pa_not_checked_p8))

                    ; #23985: <==negation-removal== 90384 (pos)
                    (not (Ba_not_checked_p8))

                    ; #32606: <==uncertain_firing== 81171 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #40992: <==negation-removal== 82782 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #53564: <==negation-removal== 72550 (pos)
                    (not (Pb_not_checked_p8))

                    ; #62068: <==uncertain_firing== 19386 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #64152: <==negation-removal== 19386 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #69926: <==negation-removal== 81171 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #70814: <==negation-removal== 92058 (pos)
                    (not (Bc_not_checked_p8))

                    ; #77940: <==negation-removal== 68630 (pos)
                    (not (Pc_not_checked_p8))

                    ; #80455: <==uncertain_firing== 26650 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #86025: <==negation-removal== 72545 (pos)
                    (not (Bb_not_checked_p8))

                    ; #87359: <==negation-removal== 51472 (pos)
                    (not (not_checked_p8))

                    ; #88190: <==uncertain_firing== 82782 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #16474: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #21899: <==commonly_known== 70844 (pos)
                    (Bb_checked_p9)

                    ; #35349: <==closure== 67565 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #38970: <==commonly_known== 73287 (neg)
                    (Pc_checked_p9)

                    ; #67565: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #68803: <==commonly_known== 70844 (pos)
                    (Ba_checked_p9)

                    ; #70844: origin
                    (checked_p9)

                    ; #72539: <==commonly_known== 70844 (pos)
                    (Bc_checked_p9)

                    ; #84458: <==commonly_known== 73287 (neg)
                    (Pb_checked_p9)

                    ; #85002: <==commonly_known== 73287 (neg)
                    (Pa_checked_p9)

                    ; #91612: <==closure== 16474 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #16538: <==negation-removal== 91612 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #18753: <==negation-removal== 68803 (pos)
                    (not (Pa_not_checked_p9))

                    ; #18978: <==negation-removal== 72539 (pos)
                    (not (Pc_not_checked_p9))

                    ; #30402: <==negation-removal== 67565 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #35820: <==negation-removal== 38970 (pos)
                    (not (Bc_not_checked_p9))

                    ; #36292: <==negation-removal== 85002 (pos)
                    (not (Ba_not_checked_p9))

                    ; #45156: <==uncertain_firing== 35349 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #45348: <==negation-removal== 16474 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #51851: <==negation-removal== 84458 (pos)
                    (not (Bb_not_checked_p9))

                    ; #73287: <==negation-removal== 70844 (pos)
                    (not (not_checked_p9))

                    ; #75554: <==negation-removal== 35349 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #81415: <==uncertain_firing== 67565 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #88567: <==uncertain_firing== 91612 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #89704: <==negation-removal== 21899 (pos)
                    (not (Pb_not_checked_p9))

                    ; #92022: <==uncertain_firing== 16474 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #16107: <==commonly_known== 91676 (neg)
                    (Pb_checked_p10)

                    ; #35811: origin
                    (checked_p10)

                    ; #39933: <==closure== 89165 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #48190: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #64895: <==commonly_known== 91676 (neg)
                    (Pa_checked_p10)

                    ; #65183: <==closure== 48190 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #66970: <==commonly_known== 91676 (neg)
                    (Pc_checked_p10)

                    ; #67115: <==commonly_known== 35811 (pos)
                    (Ba_checked_p10)

                    ; #75195: <==commonly_known== 35811 (pos)
                    (Bc_checked_p10)

                    ; #86088: <==commonly_known== 35811 (pos)
                    (Bb_checked_p10)

                    ; #89165: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #17484: <==negation-removal== 48190 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #24378: <==uncertain_firing== 48190 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #25915: <==negation-removal== 39933 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #46362: <==negation-removal== 16107 (pos)
                    (not (Bb_not_checked_p10))

                    ; #46851: <==negation-removal== 86088 (pos)
                    (not (Pb_not_checked_p10))

                    ; #49481: <==negation-removal== 75195 (pos)
                    (not (Pc_not_checked_p10))

                    ; #51257: <==uncertain_firing== 65183 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #56671: <==uncertain_firing== 89165 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #67035: <==negation-removal== 64895 (pos)
                    (not (Ba_not_checked_p10))

                    ; #67093: <==negation-removal== 89165 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #67892: <==negation-removal== 67115 (pos)
                    (not (Pa_not_checked_p10))

                    ; #82741: <==negation-removal== 66970 (pos)
                    (not (Bc_not_checked_p10))

                    ; #84705: <==negation-removal== 65183 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #90240: <==uncertain_firing== 39933 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #91676: <==negation-removal== 35811 (pos)
                    (not (not_checked_p10))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #15990: <==commonly_known== 54651 (pos)
                    (Ba_checked_p11)

                    ; #21259: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #31715: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #31865: <==closure== 21259 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #40027: <==commonly_known== 54651 (pos)
                    (Bc_checked_p11)

                    ; #41362: <==commonly_known== 88295 (neg)
                    (Pb_checked_p11)

                    ; #44271: <==closure== 31715 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #47724: <==commonly_known== 88295 (neg)
                    (Pa_checked_p11)

                    ; #54651: origin
                    (checked_p11)

                    ; #71422: <==commonly_known== 88295 (neg)
                    (Pc_checked_p11)

                    ; #92123: <==commonly_known== 54651 (pos)
                    (Bb_checked_p11)

                    ; #13167: <==negation-removal== 40027 (pos)
                    (not (Pc_not_checked_p11))

                    ; #18717: <==uncertain_firing== 44271 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #19473: <==negation-removal== 31715 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #20397: <==negation-removal== 92123 (pos)
                    (not (Pb_not_checked_p11))

                    ; #22033: <==negation-removal== 31865 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #27485: <==uncertain_firing== 31865 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #29513: <==negation-removal== 15990 (pos)
                    (not (Pa_not_checked_p11))

                    ; #60093: <==negation-removal== 41362 (pos)
                    (not (Bb_not_checked_p11))

                    ; #63300: <==uncertain_firing== 21259 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #64382: <==negation-removal== 21259 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #65224: <==negation-removal== 71422 (pos)
                    (not (Bc_not_checked_p11))

                    ; #66683: <==negation-removal== 44271 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #83264: <==negation-removal== 47724 (pos)
                    (not (Ba_not_checked_p11))

                    ; #88295: <==negation-removal== 54651 (pos)
                    (not (not_checked_p11))

                    ; #91864: <==uncertain_firing== 31715 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #10241: origin
                    (checked_p12)

                    ; #26330: <==commonly_known== 10241 (pos)
                    (Ba_checked_p12)

                    ; #37542: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #41314: <==commonly_known== 58918 (neg)
                    (Pb_checked_p12)

                    ; #69980: <==closure== 37542 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #76158: <==commonly_known== 10241 (pos)
                    (Bc_checked_p12)

                    ; #76167: <==commonly_known== 58918 (neg)
                    (Pc_checked_p12)

                    ; #79672: <==commonly_known== 58918 (neg)
                    (Pa_checked_p12)

                    ; #79782: <==commonly_known== 10241 (pos)
                    (Bb_checked_p12)

                    ; #84336: <==closure== 92184 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #92184: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #10123: <==uncertain_firing== 92184 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #17543: <==negation-removal== 84336 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #18748: <==negation-removal== 69980 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #19937: <==negation-removal== 92184 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #29187: <==negation-removal== 37542 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #32002: <==negation-removal== 76167 (pos)
                    (not (Bc_not_checked_p12))

                    ; #47878: <==negation-removal== 79782 (pos)
                    (not (Pb_not_checked_p12))

                    ; #57897: <==negation-removal== 79672 (pos)
                    (not (Ba_not_checked_p12))

                    ; #58918: <==negation-removal== 10241 (pos)
                    (not (not_checked_p12))

                    ; #60843: <==negation-removal== 76158 (pos)
                    (not (Pc_not_checked_p12))

                    ; #67189: <==uncertain_firing== 69980 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #68654: <==negation-removal== 41314 (pos)
                    (not (Bb_not_checked_p12))

                    ; #78462: <==negation-removal== 26330 (pos)
                    (not (Pa_not_checked_p12))

                    ; #79167: <==uncertain_firing== 37542 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #84475: <==uncertain_firing== 84336 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11865: <==commonly_known== 51957 (pos)
                    (Bb_checked_p1)

                    ; #16806: <==commonly_known== 51957 (pos)
                    (Bc_checked_p1)

                    ; #34468: <==commonly_known== 17099 (neg)
                    (Pc_checked_p1)

                    ; #38486: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #48466: <==commonly_known== 51957 (pos)
                    (Ba_checked_p1)

                    ; #51957: origin
                    (checked_p1)

                    ; #56385: <==commonly_known== 17099 (neg)
                    (Pa_checked_p1)

                    ; #64987: <==closure== 82766 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #66392: <==commonly_known== 17099 (neg)
                    (Pb_checked_p1)

                    ; #74592: <==closure== 38486 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #82766: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #17099: <==negation-removal== 51957 (pos)
                    (not (not_checked_p1))

                    ; #30645: <==uncertain_firing== 74592 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #37595: <==negation-removal== 82766 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #40540: <==negation-removal== 66392 (pos)
                    (not (Bb_not_checked_p1))

                    ; #40898: <==uncertain_firing== 82766 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #42044: <==negation-removal== 16806 (pos)
                    (not (Pc_not_checked_p1))

                    ; #43287: <==negation-removal== 64987 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #43787: <==uncertain_firing== 64987 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #46092: <==negation-removal== 38486 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #47626: <==negation-removal== 48466 (pos)
                    (not (Pa_not_checked_p1))

                    ; #49395: <==negation-removal== 11865 (pos)
                    (not (Pb_not_checked_p1))

                    ; #52240: <==negation-removal== 74592 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #55502: <==negation-removal== 34468 (pos)
                    (not (Bc_not_checked_p1))

                    ; #69319: <==uncertain_firing== 38486 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #92999: <==negation-removal== 56385 (pos)
                    (not (Ba_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #36385: <==commonly_known== 67156 (neg)
                    (Pc_checked_p2)

                    ; #38893: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #42415: <==commonly_known== 67156 (neg)
                    (Pa_checked_p2)

                    ; #43723: <==commonly_known== 92239 (pos)
                    (Bc_checked_p2)

                    ; #62271: <==closure== 38893 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #72358: <==commonly_known== 92239 (pos)
                    (Ba_checked_p2)

                    ; #77382: <==closure== 83291 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #82836: <==commonly_known== 67156 (neg)
                    (Pb_checked_p2)

                    ; #83291: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #89948: <==commonly_known== 92239 (pos)
                    (Bb_checked_p2)

                    ; #92239: origin
                    (checked_p2)

                    ; #19388: <==uncertain_firing== 83291 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #20559: <==uncertain_firing== 77382 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #26291: <==negation-removal== 36385 (pos)
                    (not (Bc_not_checked_p2))

                    ; #27352: <==negation-removal== 62271 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #34589: <==uncertain_firing== 62271 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #39240: <==negation-removal== 77382 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #43587: <==negation-removal== 42415 (pos)
                    (not (Ba_not_checked_p2))

                    ; #47853: <==negation-removal== 82836 (pos)
                    (not (Bb_not_checked_p2))

                    ; #48352: <==negation-removal== 38893 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #59235: <==uncertain_firing== 38893 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #64978: <==negation-removal== 89948 (pos)
                    (not (Pb_not_checked_p2))

                    ; #66526: <==negation-removal== 83291 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #66965: <==negation-removal== 43723 (pos)
                    (not (Pc_not_checked_p2))

                    ; #67156: <==negation-removal== 92239 (pos)
                    (not (not_checked_p2))

                    ; #70896: <==negation-removal== 72358 (pos)
                    (not (Pa_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #14170: <==commonly_known== 32273 (neg)
                    (Pb_checked_p3)

                    ; #14953: <==commonly_known== 61512 (pos)
                    (Bb_checked_p3)

                    ; #31315: <==commonly_known== 32273 (neg)
                    (Pa_checked_p3)

                    ; #31406: <==commonly_known== 61512 (pos)
                    (Ba_checked_p3)

                    ; #39880: <==commonly_known== 61512 (pos)
                    (Bc_checked_p3)

                    ; #46922: <==closure== 91784 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #61512: origin
                    (checked_p3)

                    ; #78205: <==closure== 86872 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #79919: <==commonly_known== 32273 (neg)
                    (Pc_checked_p3)

                    ; #86872: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #91784: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #10764: <==uncertain_firing== 91784 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #13176: <==negation-removal== 46922 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #15692: <==negation-removal== 86872 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #17006: <==negation-removal== 14170 (pos)
                    (not (Bb_not_checked_p3))

                    ; #25294: <==uncertain_firing== 86872 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #32273: <==negation-removal== 61512 (pos)
                    (not (not_checked_p3))

                    ; #54488: <==uncertain_firing== 46922 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #55090: <==negation-removal== 91784 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #59099: <==negation-removal== 14953 (pos)
                    (not (Pb_not_checked_p3))

                    ; #73587: <==negation-removal== 31315 (pos)
                    (not (Ba_not_checked_p3))

                    ; #74566: <==uncertain_firing== 78205 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #84111: <==negation-removal== 79919 (pos)
                    (not (Bc_not_checked_p3))

                    ; #87325: <==negation-removal== 31406 (pos)
                    (not (Pa_not_checked_p3))

                    ; #87598: <==negation-removal== 78205 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #89186: <==negation-removal== 39880 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #28254: <==commonly_known== 82181 (pos)
                    (Bc_checked_p4)

                    ; #32063: <==commonly_known== 64473 (neg)
                    (Pb_checked_p4)

                    ; #44690: <==closure== 53550 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #52159: <==commonly_known== 64473 (neg)
                    (Pc_checked_p4)

                    ; #53550: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #69222: <==commonly_known== 82181 (pos)
                    (Ba_checked_p4)

                    ; #71276: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #76315: <==commonly_known== 82181 (pos)
                    (Bb_checked_p4)

                    ; #80257: <==closure== 71276 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #82181: origin
                    (checked_p4)

                    ; #89004: <==commonly_known== 64473 (neg)
                    (Pa_checked_p4)

                    ; #12141: <==negation-removal== 32063 (pos)
                    (not (Bb_not_checked_p4))

                    ; #19060: <==negation-removal== 52159 (pos)
                    (not (Bc_not_checked_p4))

                    ; #20413: <==negation-removal== 69222 (pos)
                    (not (Pa_not_checked_p4))

                    ; #21545: <==negation-removal== 80257 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #32876: <==negation-removal== 71276 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #33296: <==negation-removal== 89004 (pos)
                    (not (Ba_not_checked_p4))

                    ; #35995: <==uncertain_firing== 80257 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #38149: <==negation-removal== 76315 (pos)
                    (not (Pb_not_checked_p4))

                    ; #48909: <==negation-removal== 53550 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #52714: <==negation-removal== 28254 (pos)
                    (not (Pc_not_checked_p4))

                    ; #56854: <==negation-removal== 44690 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #56921: <==uncertain_firing== 71276 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #59094: <==uncertain_firing== 44690 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #64193: <==uncertain_firing== 53550 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #64473: <==negation-removal== 82181 (pos)
                    (not (not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #14452: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #19080: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #20328: <==commonly_known== 42563 (neg)
                    (Pa_checked_p5)

                    ; #26002: <==commonly_known== 42563 (neg)
                    (Pc_checked_p5)

                    ; #43541: <==commonly_known== 49155 (pos)
                    (Bb_checked_p5)

                    ; #49155: origin
                    (checked_p5)

                    ; #66105: <==commonly_known== 49155 (pos)
                    (Bc_checked_p5)

                    ; #70431: <==closure== 19080 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #79524: <==commonly_known== 49155 (pos)
                    (Ba_checked_p5)

                    ; #86903: <==closure== 14452 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #91861: <==commonly_known== 42563 (neg)
                    (Pb_checked_p5)

                    ; #11015: <==negation-removal== 91861 (pos)
                    (not (Bb_not_checked_p5))

                    ; #24373: <==negation-removal== 14452 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #29252: <==uncertain_firing== 14452 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #31060: <==negation-removal== 66105 (pos)
                    (not (Pc_not_checked_p5))

                    ; #31122: <==negation-removal== 20328 (pos)
                    (not (Ba_not_checked_p5))

                    ; #31332: <==negation-removal== 86903 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #33269: <==negation-removal== 70431 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #42419: <==negation-removal== 43541 (pos)
                    (not (Pb_not_checked_p5))

                    ; #42563: <==negation-removal== 49155 (pos)
                    (not (not_checked_p5))

                    ; #53705: <==uncertain_firing== 86903 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #67612: <==uncertain_firing== 70431 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #79286: <==uncertain_firing== 19080 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #86620: <==negation-removal== 79524 (pos)
                    (not (Pa_not_checked_p5))

                    ; #87959: <==negation-removal== 19080 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #97994: <==negation-removal== 26002 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #27974: <==closure== 43922 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #41079: <==commonly_known== 56883 (pos)
                    (Bc_checked_p6)

                    ; #43922: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #45053: <==commonly_known== 26492 (neg)
                    (Pb_checked_p6)

                    ; #46052: <==closure== 87848 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #49337: <==commonly_known== 26492 (neg)
                    (Pa_checked_p6)

                    ; #56883: origin
                    (checked_p6)

                    ; #69404: <==commonly_known== 56883 (pos)
                    (Ba_checked_p6)

                    ; #84914: <==commonly_known== 56883 (pos)
                    (Bb_checked_p6)

                    ; #87848: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #96581: <==commonly_known== 26492 (neg)
                    (Pc_checked_p6)

                    ; #11137: <==negation-removal== 96581 (pos)
                    (not (Bc_not_checked_p6))

                    ; #17804: <==negation-removal== 49337 (pos)
                    (not (Ba_not_checked_p6))

                    ; #18924: <==negation-removal== 27974 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #22281: <==negation-removal== 45053 (pos)
                    (not (Bb_not_checked_p6))

                    ; #26492: <==negation-removal== 56883 (pos)
                    (not (not_checked_p6))

                    ; #34526: <==negation-removal== 84914 (pos)
                    (not (Pb_not_checked_p6))

                    ; #39584: <==uncertain_firing== 87848 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #46108: <==uncertain_firing== 43922 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #57267: <==negation-removal== 69404 (pos)
                    (not (Pa_not_checked_p6))

                    ; #57415: <==uncertain_firing== 46052 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #61900: <==negation-removal== 41079 (pos)
                    (not (Pc_not_checked_p6))

                    ; #65773: <==uncertain_firing== 27974 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #72022: <==negation-removal== 46052 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #74310: <==negation-removal== 87848 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #77498: <==negation-removal== 43922 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #12267: <==commonly_known== 85410 (neg)
                    (Pa_checked_p7)

                    ; #20421: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #24929: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #27265: <==commonly_known== 39768 (pos)
                    (Ba_checked_p7)

                    ; #27995: <==commonly_known== 85410 (neg)
                    (Pb_checked_p7)

                    ; #39768: origin
                    (checked_p7)

                    ; #50779: <==commonly_known== 85410 (neg)
                    (Pc_checked_p7)

                    ; #57589: <==closure== 24929 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #60798: <==commonly_known== 39768 (pos)
                    (Bc_checked_p7)

                    ; #79462: <==commonly_known== 39768 (pos)
                    (Bb_checked_p7)

                    ; #81640: <==closure== 20421 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #10862: <==negation-removal== 57589 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #23540: <==negation-removal== 12267 (pos)
                    (not (Ba_not_checked_p7))

                    ; #41991: <==negation-removal== 20421 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #42954: <==uncertain_firing== 20421 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #47312: <==negation-removal== 60798 (pos)
                    (not (Pc_not_checked_p7))

                    ; #52962: <==negation-removal== 50779 (pos)
                    (not (Bc_not_checked_p7))

                    ; #55263: <==negation-removal== 79462 (pos)
                    (not (Pb_not_checked_p7))

                    ; #59627: <==negation-removal== 24929 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #60940: <==uncertain_firing== 81640 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #68987: <==uncertain_firing== 24929 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #79888: <==uncertain_firing== 57589 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #85410: <==negation-removal== 39768 (pos)
                    (not (not_checked_p7))

                    ; #85740: <==negation-removal== 27995 (pos)
                    (not (Bb_not_checked_p7))

                    ; #90460: <==negation-removal== 27265 (pos)
                    (not (Pa_not_checked_p7))

                    ; #99262: <==negation-removal== 81640 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #51472: origin
                    (checked_p8)

                    ; #60069: <==closure== 88565 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #64707: <==commonly_known== 51472 (pos)
                    (Ba_checked_p8)

                    ; #68630: <==commonly_known== 51472 (pos)
                    (Bc_checked_p8)

                    ; #72545: <==commonly_known== 87359 (neg)
                    (Pb_checked_p8)

                    ; #72550: <==commonly_known== 51472 (pos)
                    (Bb_checked_p8)

                    ; #81140: <==closure== 88601 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #88565: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #88601: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #90384: <==commonly_known== 87359 (neg)
                    (Pa_checked_p8)

                    ; #92058: <==commonly_known== 87359 (neg)
                    (Pc_checked_p8)

                    ; #12074: <==negation-removal== 60069 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #16942: <==uncertain_firing== 81140 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #19090: <==uncertain_firing== 60069 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #23533: <==negation-removal== 64707 (pos)
                    (not (Pa_not_checked_p8))

                    ; #23985: <==negation-removal== 90384 (pos)
                    (not (Ba_not_checked_p8))

                    ; #29587: <==uncertain_firing== 88565 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #42597: <==negation-removal== 88565 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #53564: <==negation-removal== 72550 (pos)
                    (not (Pb_not_checked_p8))

                    ; #56322: <==negation-removal== 81140 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #63041: <==uncertain_firing== 88601 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #70814: <==negation-removal== 92058 (pos)
                    (not (Bc_not_checked_p8))

                    ; #74660: <==negation-removal== 88601 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #77940: <==negation-removal== 68630 (pos)
                    (not (Pc_not_checked_p8))

                    ; #86025: <==negation-removal== 72545 (pos)
                    (not (Bb_not_checked_p8))

                    ; #87359: <==negation-removal== 51472 (pos)
                    (not (not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10117: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #21899: <==commonly_known== 70844 (pos)
                    (Bb_checked_p9)

                    ; #38970: <==commonly_known== 73287 (neg)
                    (Pc_checked_p9)

                    ; #41309: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #44003: <==closure== 10117 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #68803: <==commonly_known== 70844 (pos)
                    (Ba_checked_p9)

                    ; #70844: origin
                    (checked_p9)

                    ; #72539: <==commonly_known== 70844 (pos)
                    (Bc_checked_p9)

                    ; #81631: <==closure== 41309 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #84458: <==commonly_known== 73287 (neg)
                    (Pb_checked_p9)

                    ; #85002: <==commonly_known== 73287 (neg)
                    (Pa_checked_p9)

                    ; #12430: <==uncertain_firing== 81631 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #18753: <==negation-removal== 68803 (pos)
                    (not (Pa_not_checked_p9))

                    ; #18978: <==negation-removal== 72539 (pos)
                    (not (Pc_not_checked_p9))

                    ; #23236: <==negation-removal== 81631 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #35820: <==negation-removal== 38970 (pos)
                    (not (Bc_not_checked_p9))

                    ; #36292: <==negation-removal== 85002 (pos)
                    (not (Ba_not_checked_p9))

                    ; #36837: <==uncertain_firing== 41309 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #42293: <==negation-removal== 44003 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #51851: <==negation-removal== 84458 (pos)
                    (not (Bb_not_checked_p9))

                    ; #55387: <==negation-removal== 41309 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #73287: <==negation-removal== 70844 (pos)
                    (not (not_checked_p9))

                    ; #73922: <==uncertain_firing== 10117 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #75690: <==negation-removal== 10117 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #89292: <==uncertain_firing== 44003 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #89704: <==negation-removal== 21899 (pos)
                    (not (Pb_not_checked_p9))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #16107: <==commonly_known== 91676 (neg)
                    (Pb_checked_p10)

                    ; #33718: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #35811: origin
                    (checked_p10)

                    ; #41087: <==closure== 74396 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #64895: <==commonly_known== 91676 (neg)
                    (Pa_checked_p10)

                    ; #66970: <==commonly_known== 91676 (neg)
                    (Pc_checked_p10)

                    ; #67115: <==commonly_known== 35811 (pos)
                    (Ba_checked_p10)

                    ; #74396: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #75195: <==commonly_known== 35811 (pos)
                    (Bc_checked_p10)

                    ; #80311: <==closure== 33718 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #86088: <==commonly_known== 35811 (pos)
                    (Bb_checked_p10)

                    ; #11460: <==negation-removal== 74396 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #15012: <==negation-removal== 80311 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #24499: <==uncertain_firing== 80311 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #30965: <==negation-removal== 33718 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #46362: <==negation-removal== 16107 (pos)
                    (not (Bb_not_checked_p10))

                    ; #46851: <==negation-removal== 86088 (pos)
                    (not (Pb_not_checked_p10))

                    ; #49481: <==negation-removal== 75195 (pos)
                    (not (Pc_not_checked_p10))

                    ; #66830: <==uncertain_firing== 33718 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #67035: <==negation-removal== 64895 (pos)
                    (not (Ba_not_checked_p10))

                    ; #67892: <==negation-removal== 67115 (pos)
                    (not (Pa_not_checked_p10))

                    ; #82741: <==negation-removal== 66970 (pos)
                    (not (Bc_not_checked_p10))

                    ; #83348: <==negation-removal== 41087 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #89269: <==uncertain_firing== 41087 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #91659: <==uncertain_firing== 74396 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #91676: <==negation-removal== 35811 (pos)
                    (not (not_checked_p10))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #15990: <==commonly_known== 54651 (pos)
                    (Ba_checked_p11)

                    ; #32579: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #40027: <==commonly_known== 54651 (pos)
                    (Bc_checked_p11)

                    ; #41362: <==commonly_known== 88295 (neg)
                    (Pb_checked_p11)

                    ; #46170: <==closure== 46531 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #46531: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #47724: <==commonly_known== 88295 (neg)
                    (Pa_checked_p11)

                    ; #54651: origin
                    (checked_p11)

                    ; #71422: <==commonly_known== 88295 (neg)
                    (Pc_checked_p11)

                    ; #90654: <==closure== 32579 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #92123: <==commonly_known== 54651 (pos)
                    (Bb_checked_p11)

                    ; #13167: <==negation-removal== 40027 (pos)
                    (not (Pc_not_checked_p11))

                    ; #13370: <==uncertain_firing== 46531 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #20397: <==negation-removal== 92123 (pos)
                    (not (Pb_not_checked_p11))

                    ; #27787: <==uncertain_firing== 32579 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #29513: <==negation-removal== 15990 (pos)
                    (not (Pa_not_checked_p11))

                    ; #47879: <==uncertain_firing== 46170 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #48017: <==uncertain_firing== 90654 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #49845: <==negation-removal== 46531 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #57971: <==negation-removal== 32579 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #60093: <==negation-removal== 41362 (pos)
                    (not (Bb_not_checked_p11))

                    ; #65224: <==negation-removal== 71422 (pos)
                    (not (Bc_not_checked_p11))

                    ; #81639: <==negation-removal== 90654 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #83264: <==negation-removal== 47724 (pos)
                    (not (Ba_not_checked_p11))

                    ; #88295: <==negation-removal== 54651 (pos)
                    (not (not_checked_p11))

                    ; #92995: <==negation-removal== 46170 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #10241: origin
                    (checked_p12)

                    ; #26330: <==commonly_known== 10241 (pos)
                    (Ba_checked_p12)

                    ; #36495: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #41314: <==commonly_known== 58918 (neg)
                    (Pb_checked_p12)

                    ; #48279: <==closure== 71648 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #71648: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #75870: <==closure== 36495 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #76158: <==commonly_known== 10241 (pos)
                    (Bc_checked_p12)

                    ; #76167: <==commonly_known== 58918 (neg)
                    (Pc_checked_p12)

                    ; #79672: <==commonly_known== 58918 (neg)
                    (Pa_checked_p12)

                    ; #79782: <==commonly_known== 10241 (pos)
                    (Bb_checked_p12)

                    ; #11317: <==negation-removal== 71648 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #13675: <==negation-removal== 36495 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #26393: <==uncertain_firing== 48279 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #32002: <==negation-removal== 76167 (pos)
                    (not (Bc_not_checked_p12))

                    ; #44295: <==uncertain_firing== 71648 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #47878: <==negation-removal== 79782 (pos)
                    (not (Pb_not_checked_p12))

                    ; #57209: <==uncertain_firing== 75870 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #57897: <==negation-removal== 79672 (pos)
                    (not (Ba_not_checked_p12))

                    ; #58918: <==negation-removal== 10241 (pos)
                    (not (not_checked_p12))

                    ; #60843: <==negation-removal== 76158 (pos)
                    (not (Pc_not_checked_p12))

                    ; #66095: <==negation-removal== 75870 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #68654: <==negation-removal== 41314 (pos)
                    (not (Bb_not_checked_p12))

                    ; #75406: <==negation-removal== 48279 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #78462: <==negation-removal== 26330 (pos)
                    (not (Pa_not_checked_p12))

                    ; #81117: <==uncertain_firing== 36495 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11865: <==commonly_known== 51957 (pos)
                    (Bb_checked_p1)

                    ; #13290: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #15141: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #16806: <==commonly_known== 51957 (pos)
                    (Bc_checked_p1)

                    ; #19646: <==closure== 13290 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #34468: <==commonly_known== 17099 (neg)
                    (Pc_checked_p1)

                    ; #37094: <==closure== 15141 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #48466: <==commonly_known== 51957 (pos)
                    (Ba_checked_p1)

                    ; #51957: origin
                    (checked_p1)

                    ; #56385: <==commonly_known== 17099 (neg)
                    (Pa_checked_p1)

                    ; #66392: <==commonly_known== 17099 (neg)
                    (Pb_checked_p1)

                    ; #17099: <==negation-removal== 51957 (pos)
                    (not (not_checked_p1))

                    ; #29349: <==negation-removal== 15141 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #40540: <==negation-removal== 66392 (pos)
                    (not (Bb_not_checked_p1))

                    ; #42044: <==negation-removal== 16806 (pos)
                    (not (Pc_not_checked_p1))

                    ; #45826: <==negation-removal== 13290 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #47626: <==negation-removal== 48466 (pos)
                    (not (Pa_not_checked_p1))

                    ; #49395: <==negation-removal== 11865 (pos)
                    (not (Pb_not_checked_p1))

                    ; #50010: <==uncertain_firing== 13290 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #55502: <==negation-removal== 34468 (pos)
                    (not (Bc_not_checked_p1))

                    ; #56747: <==uncertain_firing== 37094 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #57888: <==negation-removal== 19646 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #58306: <==negation-removal== 37094 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #69382: <==uncertain_firing== 19646 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #85310: <==uncertain_firing== 15141 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #92999: <==negation-removal== 56385 (pos)
                    (not (Ba_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #31394: <==closure== 89059 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #36385: <==commonly_known== 67156 (neg)
                    (Pc_checked_p2)

                    ; #41942: <==closure== 52692 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #42415: <==commonly_known== 67156 (neg)
                    (Pa_checked_p2)

                    ; #43723: <==commonly_known== 92239 (pos)
                    (Bc_checked_p2)

                    ; #52692: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #72358: <==commonly_known== 92239 (pos)
                    (Ba_checked_p2)

                    ; #82836: <==commonly_known== 67156 (neg)
                    (Pb_checked_p2)

                    ; #89059: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #89948: <==commonly_known== 92239 (pos)
                    (Bb_checked_p2)

                    ; #92239: origin
                    (checked_p2)

                    ; #20181: <==negation-removal== 89059 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #26291: <==negation-removal== 36385 (pos)
                    (not (Bc_not_checked_p2))

                    ; #34288: <==uncertain_firing== 41942 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #36164: <==uncertain_firing== 31394 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #43587: <==negation-removal== 42415 (pos)
                    (not (Ba_not_checked_p2))

                    ; #46627: <==uncertain_firing== 52692 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #47853: <==negation-removal== 82836 (pos)
                    (not (Bb_not_checked_p2))

                    ; #48329: <==negation-removal== 31394 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #49638: <==negation-removal== 41942 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #64978: <==negation-removal== 89948 (pos)
                    (not (Pb_not_checked_p2))

                    ; #66965: <==negation-removal== 43723 (pos)
                    (not (Pc_not_checked_p2))

                    ; #67156: <==negation-removal== 92239 (pos)
                    (not (not_checked_p2))

                    ; #70323: <==negation-removal== 52692 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #70896: <==negation-removal== 72358 (pos)
                    (not (Pa_not_checked_p2))

                    ; #71776: <==uncertain_firing== 89059 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11050: <==closure== 25169 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #14170: <==commonly_known== 32273 (neg)
                    (Pb_checked_p3)

                    ; #14953: <==commonly_known== 61512 (pos)
                    (Bb_checked_p3)

                    ; #19929: <==closure== 85010 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #25169: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #31315: <==commonly_known== 32273 (neg)
                    (Pa_checked_p3)

                    ; #31406: <==commonly_known== 61512 (pos)
                    (Ba_checked_p3)

                    ; #39880: <==commonly_known== 61512 (pos)
                    (Bc_checked_p3)

                    ; #61512: origin
                    (checked_p3)

                    ; #79919: <==commonly_known== 32273 (neg)
                    (Pc_checked_p3)

                    ; #85010: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #17006: <==negation-removal== 14170 (pos)
                    (not (Bb_not_checked_p3))

                    ; #18566: <==negation-removal== 19929 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #32273: <==negation-removal== 61512 (pos)
                    (not (not_checked_p3))

                    ; #33808: <==uncertain_firing== 25169 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #38410: <==negation-removal== 85010 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #39300: <==negation-removal== 11050 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #56978: <==uncertain_firing== 19929 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #59099: <==negation-removal== 14953 (pos)
                    (not (Pb_not_checked_p3))

                    ; #72802: <==uncertain_firing== 11050 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #73587: <==negation-removal== 31315 (pos)
                    (not (Ba_not_checked_p3))

                    ; #82564: <==negation-removal== 25169 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #84111: <==negation-removal== 79919 (pos)
                    (not (Bc_not_checked_p3))

                    ; #87325: <==negation-removal== 31406 (pos)
                    (not (Pa_not_checked_p3))

                    ; #89186: <==negation-removal== 39880 (pos)
                    (not (Pc_not_checked_p3))

                    ; #91246: <==uncertain_firing== 85010 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12788: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #28254: <==commonly_known== 82181 (pos)
                    (Bc_checked_p4)

                    ; #29872: <==closure== 77558 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #32063: <==commonly_known== 64473 (neg)
                    (Pb_checked_p4)

                    ; #52159: <==commonly_known== 64473 (neg)
                    (Pc_checked_p4)

                    ; #53114: <==closure== 12788 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #69222: <==commonly_known== 82181 (pos)
                    (Ba_checked_p4)

                    ; #76315: <==commonly_known== 82181 (pos)
                    (Bb_checked_p4)

                    ; #77558: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #82181: origin
                    (checked_p4)

                    ; #89004: <==commonly_known== 64473 (neg)
                    (Pa_checked_p4)

                    ; #12141: <==negation-removal== 32063 (pos)
                    (not (Bb_not_checked_p4))

                    ; #16260: <==uncertain_firing== 29872 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #19060: <==negation-removal== 52159 (pos)
                    (not (Bc_not_checked_p4))

                    ; #20413: <==negation-removal== 69222 (pos)
                    (not (Pa_not_checked_p4))

                    ; #24643: <==negation-removal== 12788 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #28077: <==negation-removal== 29872 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #29544: <==uncertain_firing== 12788 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #31824: <==uncertain_firing== 53114 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #33296: <==negation-removal== 89004 (pos)
                    (not (Ba_not_checked_p4))

                    ; #38149: <==negation-removal== 76315 (pos)
                    (not (Pb_not_checked_p4))

                    ; #52714: <==negation-removal== 28254 (pos)
                    (not (Pc_not_checked_p4))

                    ; #55857: <==negation-removal== 77558 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #64473: <==negation-removal== 82181 (pos)
                    (not (not_checked_p4))

                    ; #73199: <==uncertain_firing== 77558 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #84518: <==negation-removal== 53114 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #20328: <==commonly_known== 42563 (neg)
                    (Pa_checked_p5)

                    ; #26002: <==commonly_known== 42563 (neg)
                    (Pc_checked_p5)

                    ; #43541: <==commonly_known== 49155 (pos)
                    (Bb_checked_p5)

                    ; #46901: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #49155: origin
                    (checked_p5)

                    ; #59654: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #60326: <==closure== 59654 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #66105: <==commonly_known== 49155 (pos)
                    (Bc_checked_p5)

                    ; #79524: <==commonly_known== 49155 (pos)
                    (Ba_checked_p5)

                    ; #90412: <==closure== 46901 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #91861: <==commonly_known== 42563 (neg)
                    (Pb_checked_p5)

                    ; #11015: <==negation-removal== 91861 (pos)
                    (not (Bb_not_checked_p5))

                    ; #15610: <==uncertain_firing== 60326 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #22782: <==negation-removal== 60326 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #31060: <==negation-removal== 66105 (pos)
                    (not (Pc_not_checked_p5))

                    ; #31122: <==negation-removal== 20328 (pos)
                    (not (Ba_not_checked_p5))

                    ; #36968: <==negation-removal== 46901 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #42419: <==negation-removal== 43541 (pos)
                    (not (Pb_not_checked_p5))

                    ; #42563: <==negation-removal== 49155 (pos)
                    (not (not_checked_p5))

                    ; #55250: <==uncertain_firing== 90412 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #61373: <==negation-removal== 90412 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #77555: <==uncertain_firing== 59654 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #81216: <==negation-removal== 59654 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #86620: <==negation-removal== 79524 (pos)
                    (not (Pa_not_checked_p5))

                    ; #88024: <==uncertain_firing== 46901 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #97994: <==negation-removal== 26002 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #25710: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #33349: <==closure== 25710 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #36569: <==closure== 41204 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #41079: <==commonly_known== 56883 (pos)
                    (Bc_checked_p6)

                    ; #41204: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #45053: <==commonly_known== 26492 (neg)
                    (Pb_checked_p6)

                    ; #49337: <==commonly_known== 26492 (neg)
                    (Pa_checked_p6)

                    ; #56883: origin
                    (checked_p6)

                    ; #69404: <==commonly_known== 56883 (pos)
                    (Ba_checked_p6)

                    ; #84914: <==commonly_known== 56883 (pos)
                    (Bb_checked_p6)

                    ; #96581: <==commonly_known== 26492 (neg)
                    (Pc_checked_p6)

                    ; #11137: <==negation-removal== 96581 (pos)
                    (not (Bc_not_checked_p6))

                    ; #13800: <==negation-removal== 36569 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #17804: <==negation-removal== 49337 (pos)
                    (not (Ba_not_checked_p6))

                    ; #20871: <==uncertain_firing== 33349 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #22281: <==negation-removal== 45053 (pos)
                    (not (Bb_not_checked_p6))

                    ; #24398: <==negation-removal== 41204 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #26492: <==negation-removal== 56883 (pos)
                    (not (not_checked_p6))

                    ; #28791: <==uncertain_firing== 25710 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #34526: <==negation-removal== 84914 (pos)
                    (not (Pb_not_checked_p6))

                    ; #53759: <==uncertain_firing== 41204 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #57267: <==negation-removal== 69404 (pos)
                    (not (Pa_not_checked_p6))

                    ; #58567: <==uncertain_firing== 36569 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #61900: <==negation-removal== 41079 (pos)
                    (not (Pc_not_checked_p6))

                    ; #66071: <==negation-removal== 33349 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #72972: <==negation-removal== 25710 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #12267: <==commonly_known== 85410 (neg)
                    (Pa_checked_p7)

                    ; #13246: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #25118: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #27265: <==commonly_known== 39768 (pos)
                    (Ba_checked_p7)

                    ; #27995: <==commonly_known== 85410 (neg)
                    (Pb_checked_p7)

                    ; #39768: origin
                    (checked_p7)

                    ; #40523: <==closure== 25118 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #50779: <==commonly_known== 85410 (neg)
                    (Pc_checked_p7)

                    ; #60798: <==commonly_known== 39768 (pos)
                    (Bc_checked_p7)

                    ; #77259: <==closure== 13246 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #79462: <==commonly_known== 39768 (pos)
                    (Bb_checked_p7)

                    ; #23540: <==negation-removal== 12267 (pos)
                    (not (Ba_not_checked_p7))

                    ; #30740: <==uncertain_firing== 13246 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #33624: <==uncertain_firing== 77259 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #36292: <==negation-removal== 40523 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #40339: <==negation-removal== 77259 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #47312: <==negation-removal== 60798 (pos)
                    (not (Pc_not_checked_p7))

                    ; #52962: <==negation-removal== 50779 (pos)
                    (not (Bc_not_checked_p7))

                    ; #54175: <==uncertain_firing== 40523 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #55263: <==negation-removal== 79462 (pos)
                    (not (Pb_not_checked_p7))

                    ; #66359: <==negation-removal== 13246 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #74817: <==negation-removal== 25118 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #85410: <==negation-removal== 39768 (pos)
                    (not (not_checked_p7))

                    ; #85740: <==negation-removal== 27995 (pos)
                    (not (Bb_not_checked_p7))

                    ; #88891: <==uncertain_firing== 25118 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #90460: <==negation-removal== 27265 (pos)
                    (not (Pa_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #14822: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #28744: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #43471: <==closure== 14822 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #51472: origin
                    (checked_p8)

                    ; #64707: <==commonly_known== 51472 (pos)
                    (Ba_checked_p8)

                    ; #67444: <==closure== 28744 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #68630: <==commonly_known== 51472 (pos)
                    (Bc_checked_p8)

                    ; #72545: <==commonly_known== 87359 (neg)
                    (Pb_checked_p8)

                    ; #72550: <==commonly_known== 51472 (pos)
                    (Bb_checked_p8)

                    ; #90384: <==commonly_known== 87359 (neg)
                    (Pa_checked_p8)

                    ; #92058: <==commonly_known== 87359 (neg)
                    (Pc_checked_p8)

                    ; #12486: <==uncertain_firing== 28744 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #23533: <==negation-removal== 64707 (pos)
                    (not (Pa_not_checked_p8))

                    ; #23985: <==negation-removal== 90384 (pos)
                    (not (Ba_not_checked_p8))

                    ; #24286: <==negation-removal== 43471 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #37880: <==uncertain_firing== 14822 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #53564: <==negation-removal== 72550 (pos)
                    (not (Pb_not_checked_p8))

                    ; #59757: <==uncertain_firing== 67444 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #69755: <==uncertain_firing== 43471 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #70814: <==negation-removal== 92058 (pos)
                    (not (Bc_not_checked_p8))

                    ; #77940: <==negation-removal== 68630 (pos)
                    (not (Pc_not_checked_p8))

                    ; #85076: <==negation-removal== 14822 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #85676: <==negation-removal== 28744 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #86025: <==negation-removal== 72545 (pos)
                    (not (Bb_not_checked_p8))

                    ; #87359: <==negation-removal== 51472 (pos)
                    (not (not_checked_p8))

                    ; #87476: <==negation-removal== 67444 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #21866: <==closure== 86908 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #21899: <==commonly_known== 70844 (pos)
                    (Bb_checked_p9)

                    ; #38970: <==commonly_known== 73287 (neg)
                    (Pc_checked_p9)

                    ; #68803: <==commonly_known== 70844 (pos)
                    (Ba_checked_p9)

                    ; #70844: origin
                    (checked_p9)

                    ; #72539: <==commonly_known== 70844 (pos)
                    (Bc_checked_p9)

                    ; #84458: <==commonly_known== 73287 (neg)
                    (Pb_checked_p9)

                    ; #85002: <==commonly_known== 73287 (neg)
                    (Pa_checked_p9)

                    ; #86654: <==closure== 91067 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #86908: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #91067: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #14907: <==negation-removal== 86654 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #18753: <==negation-removal== 68803 (pos)
                    (not (Pa_not_checked_p9))

                    ; #18978: <==negation-removal== 72539 (pos)
                    (not (Pc_not_checked_p9))

                    ; #35424: <==negation-removal== 91067 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #35820: <==negation-removal== 38970 (pos)
                    (not (Bc_not_checked_p9))

                    ; #36292: <==negation-removal== 85002 (pos)
                    (not (Ba_not_checked_p9))

                    ; #51851: <==negation-removal== 84458 (pos)
                    (not (Bb_not_checked_p9))

                    ; #52540: <==uncertain_firing== 91067 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #65938: <==uncertain_firing== 86654 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #69793: <==negation-removal== 86908 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #73287: <==negation-removal== 70844 (pos)
                    (not (not_checked_p9))

                    ; #78104: <==uncertain_firing== 86908 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #78676: <==uncertain_firing== 21866 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #89704: <==negation-removal== 21899 (pos)
                    (not (Pb_not_checked_p9))

                    ; #91024: <==negation-removal== 21866 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))))

)