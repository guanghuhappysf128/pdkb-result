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
        (not_at_d_p1)
        (not_at_d_p10)
        (not_at_d_p11)
        (not_at_d_p12)
        (not_at_d_p2)
        (not_at_d_p3)
        (not_at_d_p4)
        (not_at_d_p5)
        (not_at_d_p6)
        (not_at_d_p7)
        (not_at_d_p8)
        (not_at_d_p9)
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
        (Bd_not_checked_p1)
        (Bd_not_checked_p10)
        (Bd_not_checked_p11)
        (Bd_not_checked_p12)
        (Bd_not_checked_p2)
        (Bd_not_checked_p3)
        (Bd_not_checked_p4)
        (Bd_not_checked_p5)
        (Bd_not_checked_p6)
        (Bd_not_checked_p7)
        (Bd_not_checked_p8)
        (Bd_not_checked_p9)
        (Bd_not_hiddensurvivorat_s_p1)
        (Bd_not_hiddensurvivorat_s_p10)
        (Bd_not_hiddensurvivorat_s_p11)
        (Bd_not_hiddensurvivorat_s_p12)
        (Bd_not_hiddensurvivorat_s_p2)
        (Bd_not_hiddensurvivorat_s_p3)
        (Bd_not_hiddensurvivorat_s_p4)
        (Bd_not_hiddensurvivorat_s_p5)
        (Bd_not_hiddensurvivorat_s_p6)
        (Bd_not_hiddensurvivorat_s_p7)
        (Bd_not_hiddensurvivorat_s_p8)
        (Bd_not_hiddensurvivorat_s_p9)
        (Bd_not_survivorat_s_p1)
        (Bd_not_survivorat_s_p10)
        (Bd_not_survivorat_s_p11)
        (Bd_not_survivorat_s_p12)
        (Bd_not_survivorat_s_p2)
        (Bd_not_survivorat_s_p3)
        (Bd_not_survivorat_s_p4)
        (Bd_not_survivorat_s_p5)
        (Bd_not_survivorat_s_p6)
        (Bd_not_survivorat_s_p7)
        (Bd_not_survivorat_s_p8)
        (Bd_not_survivorat_s_p9)
        (Bd_checked_p1)
        (Bd_checked_p10)
        (Bd_checked_p11)
        (Bd_checked_p12)
        (Bd_checked_p2)
        (Bd_checked_p3)
        (Bd_checked_p4)
        (Bd_checked_p5)
        (Bd_checked_p6)
        (Bd_checked_p7)
        (Bd_checked_p8)
        (Bd_checked_p9)
        (Bd_hiddensurvivorat_s_p1)
        (Bd_hiddensurvivorat_s_p10)
        (Bd_hiddensurvivorat_s_p11)
        (Bd_hiddensurvivorat_s_p12)
        (Bd_hiddensurvivorat_s_p2)
        (Bd_hiddensurvivorat_s_p3)
        (Bd_hiddensurvivorat_s_p4)
        (Bd_hiddensurvivorat_s_p5)
        (Bd_hiddensurvivorat_s_p6)
        (Bd_hiddensurvivorat_s_p7)
        (Bd_hiddensurvivorat_s_p8)
        (Bd_hiddensurvivorat_s_p9)
        (Bd_survivorat_s_p1)
        (Bd_survivorat_s_p10)
        (Bd_survivorat_s_p11)
        (Bd_survivorat_s_p12)
        (Bd_survivorat_s_p2)
        (Bd_survivorat_s_p3)
        (Bd_survivorat_s_p4)
        (Bd_survivorat_s_p5)
        (Bd_survivorat_s_p6)
        (Bd_survivorat_s_p7)
        (Bd_survivorat_s_p8)
        (Bd_survivorat_s_p9)
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
        (Pd_not_checked_p1)
        (Pd_not_checked_p10)
        (Pd_not_checked_p11)
        (Pd_not_checked_p12)
        (Pd_not_checked_p2)
        (Pd_not_checked_p3)
        (Pd_not_checked_p4)
        (Pd_not_checked_p5)
        (Pd_not_checked_p6)
        (Pd_not_checked_p7)
        (Pd_not_checked_p8)
        (Pd_not_checked_p9)
        (Pd_not_hiddensurvivorat_s_p1)
        (Pd_not_hiddensurvivorat_s_p10)
        (Pd_not_hiddensurvivorat_s_p11)
        (Pd_not_hiddensurvivorat_s_p12)
        (Pd_not_hiddensurvivorat_s_p2)
        (Pd_not_hiddensurvivorat_s_p3)
        (Pd_not_hiddensurvivorat_s_p4)
        (Pd_not_hiddensurvivorat_s_p5)
        (Pd_not_hiddensurvivorat_s_p6)
        (Pd_not_hiddensurvivorat_s_p7)
        (Pd_not_hiddensurvivorat_s_p8)
        (Pd_not_hiddensurvivorat_s_p9)
        (Pd_not_survivorat_s_p1)
        (Pd_not_survivorat_s_p10)
        (Pd_not_survivorat_s_p11)
        (Pd_not_survivorat_s_p12)
        (Pd_not_survivorat_s_p2)
        (Pd_not_survivorat_s_p3)
        (Pd_not_survivorat_s_p4)
        (Pd_not_survivorat_s_p5)
        (Pd_not_survivorat_s_p6)
        (Pd_not_survivorat_s_p7)
        (Pd_not_survivorat_s_p8)
        (Pd_not_survivorat_s_p9)
        (Pd_checked_p1)
        (Pd_checked_p10)
        (Pd_checked_p11)
        (Pd_checked_p12)
        (Pd_checked_p2)
        (Pd_checked_p3)
        (Pd_checked_p4)
        (Pd_checked_p5)
        (Pd_checked_p6)
        (Pd_checked_p7)
        (Pd_checked_p8)
        (Pd_checked_p9)
        (Pd_hiddensurvivorat_s_p1)
        (Pd_hiddensurvivorat_s_p10)
        (Pd_hiddensurvivorat_s_p11)
        (Pd_hiddensurvivorat_s_p12)
        (Pd_hiddensurvivorat_s_p2)
        (Pd_hiddensurvivorat_s_p3)
        (Pd_hiddensurvivorat_s_p4)
        (Pd_hiddensurvivorat_s_p5)
        (Pd_hiddensurvivorat_s_p6)
        (Pd_hiddensurvivorat_s_p7)
        (Pd_hiddensurvivorat_s_p8)
        (Pd_hiddensurvivorat_s_p9)
        (Pd_survivorat_s_p1)
        (Pd_survivorat_s_p10)
        (Pd_survivorat_s_p11)
        (Pd_survivorat_s_p12)
        (Pd_survivorat_s_p2)
        (Pd_survivorat_s_p3)
        (Pd_survivorat_s_p4)
        (Pd_survivorat_s_p5)
        (Pd_survivorat_s_p6)
        (Pd_survivorat_s_p7)
        (Pd_survivorat_s_p8)
        (Pd_survivorat_s_p9)
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
        (at_d_p1)
        (at_d_p10)
        (at_d_p11)
        (at_d_p12)
        (at_d_p2)
        (at_d_p3)
        (at_d_p4)
        (at_d_p5)
        (at_d_p6)
        (at_d_p7)
        (at_d_p8)
        (at_d_p9)
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
                           (Pa_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #19989: <==closure== 33619 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #25340: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #32380: <==closure== 56151 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #33619: origin
                    (when (and (not_at_d_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #56151: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #57521: <==closure== 25340 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #57568: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #72168: <==closure== 57568 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #12154: <==negation-removal== 32380 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #15605: <==uncertain_firing== 33619 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #22476: <==negation-removal== 57521 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #27199: <==uncertain_firing== 72168 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #33470: <==uncertain_firing== 32380 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #34306: <==negation-removal== 72168 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #43855: <==negation-removal== 56151 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #48678: <==uncertain_firing== 25340 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #53436: <==negation-removal== 57568 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #55667: <==uncertain_firing== 57521 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #72200: <==uncertain_firing== 57568 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #76418: <==negation-removal== 33619 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #82898: <==uncertain_firing== 56151 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #85577: <==uncertain_firing== 19989 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #91009: <==negation-removal== 19989 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #91918: <==negation-removal== 25340 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))))

    (:action badcomm_p10_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #19989: <==closure== 33619 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #25340: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #32380: <==closure== 56151 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #33619: origin
                    (when (and (not_at_d_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #56151: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #57521: <==closure== 25340 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #57568: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #72168: <==closure== 57568 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #12154: <==negation-removal== 32380 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #15605: <==uncertain_firing== 33619 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #22476: <==negation-removal== 57521 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #27199: <==uncertain_firing== 72168 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #33470: <==uncertain_firing== 32380 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #34306: <==negation-removal== 72168 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #43855: <==negation-removal== 56151 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #48678: <==uncertain_firing== 25340 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #53436: <==negation-removal== 57568 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #55667: <==uncertain_firing== 57521 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #72200: <==uncertain_firing== 57568 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #76418: <==negation-removal== 33619 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #82898: <==uncertain_firing== 56151 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #85577: <==uncertain_firing== 19989 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #91009: <==negation-removal== 19989 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #91918: <==negation-removal== 25340 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))))

    (:action badcomm_p10_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #19989: <==closure== 33619 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #25340: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #32380: <==closure== 56151 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #33619: origin
                    (when (and (not_at_d_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #56151: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #57521: <==closure== 25340 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #57568: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #72168: <==closure== 57568 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #12154: <==negation-removal== 32380 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #15605: <==uncertain_firing== 33619 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #22476: <==negation-removal== 57521 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #27199: <==uncertain_firing== 72168 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #33470: <==uncertain_firing== 32380 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #34306: <==negation-removal== 72168 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #43855: <==negation-removal== 56151 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #48678: <==uncertain_firing== 25340 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #53436: <==negation-removal== 57568 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #55667: <==uncertain_firing== 57521 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #72200: <==uncertain_firing== 57568 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #76418: <==negation-removal== 33619 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #82898: <==uncertain_firing== 56151 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #85577: <==uncertain_firing== 19989 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #91009: <==negation-removal== 19989 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #91918: <==negation-removal== 25340 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))))

    (:action badcomm_p10_d_s
        :precondition (and (Pd_survivorat_s_p10)
                           (at_d_p10)
                           (Bd_survivorat_s_p10))
        :effect (and
                    ; #19989: <==closure== 33619 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #25340: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #32380: <==closure== 56151 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #33619: origin
                    (when (and (not_at_d_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #56151: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #57521: <==closure== 25340 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #57568: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #72168: <==closure== 57568 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #12154: <==negation-removal== 32380 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #15605: <==uncertain_firing== 33619 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #22476: <==negation-removal== 57521 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #27199: <==uncertain_firing== 72168 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #33470: <==uncertain_firing== 32380 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #34306: <==negation-removal== 72168 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #43855: <==negation-removal== 56151 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #48678: <==uncertain_firing== 25340 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #53436: <==negation-removal== 57568 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #55667: <==uncertain_firing== 57521 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #72200: <==uncertain_firing== 57568 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #76418: <==negation-removal== 33619 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #82898: <==uncertain_firing== 56151 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #85577: <==uncertain_firing== 19989 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #91009: <==negation-removal== 19989 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #91918: <==negation-removal== 25340 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))))

    (:action badcomm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #11238: <==closure== 16017 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #16017: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #20916: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #27945: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #32924: origin
                    (when (and (not_at_d_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #50176: <==closure== 32924 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #55530: <==closure== 20916 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #69063: <==closure== 27945 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #11272: <==uncertain_firing== 55530 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #14366: <==negation-removal== 16017 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #15941: <==uncertain_firing== 69063 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #18256: <==negation-removal== 20916 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #26684: <==negation-removal== 32924 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #32952: <==uncertain_firing== 11238 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #35433: <==uncertain_firing== 16017 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #54743: <==negation-removal== 50176 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #55848: <==negation-removal== 11238 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #58991: <==uncertain_firing== 32924 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #61816: <==negation-removal== 27945 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #62349: <==negation-removal== 55530 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #73877: <==negation-removal== 69063 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #74817: <==uncertain_firing== 27945 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #78430: <==uncertain_firing== 50176 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #91118: <==uncertain_firing== 20916 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))))

    (:action badcomm_p11_b_s
        :precondition (and (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #11238: <==closure== 16017 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #16017: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #20916: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #27945: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #32924: origin
                    (when (and (not_at_d_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #50176: <==closure== 32924 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #55530: <==closure== 20916 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #69063: <==closure== 27945 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #11272: <==uncertain_firing== 55530 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #14366: <==negation-removal== 16017 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #15941: <==uncertain_firing== 69063 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #18256: <==negation-removal== 20916 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #26684: <==negation-removal== 32924 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #32952: <==uncertain_firing== 11238 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #35433: <==uncertain_firing== 16017 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #54743: <==negation-removal== 50176 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #55848: <==negation-removal== 11238 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #58991: <==uncertain_firing== 32924 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #61816: <==negation-removal== 27945 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #62349: <==negation-removal== 55530 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #73877: <==negation-removal== 69063 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #74817: <==uncertain_firing== 27945 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #78430: <==uncertain_firing== 50176 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #91118: <==uncertain_firing== 20916 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))))

    (:action badcomm_p11_c_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #11238: <==closure== 16017 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #16017: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #20916: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #27945: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #32924: origin
                    (when (and (not_at_d_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #50176: <==closure== 32924 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #55530: <==closure== 20916 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #69063: <==closure== 27945 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #11272: <==uncertain_firing== 55530 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #14366: <==negation-removal== 16017 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #15941: <==uncertain_firing== 69063 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #18256: <==negation-removal== 20916 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #26684: <==negation-removal== 32924 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #32952: <==uncertain_firing== 11238 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #35433: <==uncertain_firing== 16017 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #54743: <==negation-removal== 50176 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #55848: <==negation-removal== 11238 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #58991: <==uncertain_firing== 32924 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #61816: <==negation-removal== 27945 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #62349: <==negation-removal== 55530 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #73877: <==negation-removal== 69063 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #74817: <==uncertain_firing== 27945 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #78430: <==uncertain_firing== 50176 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #91118: <==uncertain_firing== 20916 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))))

    (:action badcomm_p11_d_s
        :precondition (and (Bd_survivorat_s_p11)
                           (Pd_survivorat_s_p11)
                           (at_d_p11))
        :effect (and
                    ; #11238: <==closure== 16017 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #16017: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #20916: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #27945: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #32924: origin
                    (when (and (not_at_d_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #50176: <==closure== 32924 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #55530: <==closure== 20916 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #69063: <==closure== 27945 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #11272: <==uncertain_firing== 55530 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #14366: <==negation-removal== 16017 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #15941: <==uncertain_firing== 69063 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #18256: <==negation-removal== 20916 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #26684: <==negation-removal== 32924 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #32952: <==uncertain_firing== 11238 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #35433: <==uncertain_firing== 16017 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #54743: <==negation-removal== 50176 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #55848: <==negation-removal== 11238 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #58991: <==uncertain_firing== 32924 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #61816: <==negation-removal== 27945 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #62349: <==negation-removal== 55530 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #73877: <==negation-removal== 69063 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #74817: <==uncertain_firing== 27945 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #78430: <==uncertain_firing== 50176 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #91118: <==uncertain_firing== 20916 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))))

    (:action badcomm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #19753: <==closure== 65853 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #27182: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #31278: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #37484: <==closure== 65415 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #54184: <==closure== 27182 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #65415: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #65853: origin
                    (when (and (not_at_d_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #70078: <==closure== 31278 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #12380: <==negation-removal== 31278 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #12558: <==negation-removal== 70078 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #13517: <==negation-removal== 27182 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #19502: <==uncertain_firing== 70078 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #19828: <==uncertain_firing== 65415 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #23512: <==negation-removal== 54184 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #29808: <==negation-removal== 65853 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #34899: <==negation-removal== 37484 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #55392: <==uncertain_firing== 54184 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #57997: <==negation-removal== 19753 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #58520: <==negation-removal== 65415 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #66207: <==uncertain_firing== 27182 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #66692: <==uncertain_firing== 65853 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #83084: <==uncertain_firing== 31278 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #86143: <==uncertain_firing== 37484 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #92610: <==uncertain_firing== 19753 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_survivorat_s_p12)))))

    (:action badcomm_p12_b_s
        :precondition (and (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #19753: <==closure== 65853 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #27182: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #31278: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #37484: <==closure== 65415 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #54184: <==closure== 27182 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #65415: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #65853: origin
                    (when (and (not_at_d_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #70078: <==closure== 31278 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #12380: <==negation-removal== 31278 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #12558: <==negation-removal== 70078 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #13517: <==negation-removal== 27182 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #19502: <==uncertain_firing== 70078 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #19828: <==uncertain_firing== 65415 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #23512: <==negation-removal== 54184 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #29808: <==negation-removal== 65853 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #34899: <==negation-removal== 37484 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #55392: <==uncertain_firing== 54184 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #57997: <==negation-removal== 19753 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #58520: <==negation-removal== 65415 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #66207: <==uncertain_firing== 27182 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #66692: <==uncertain_firing== 65853 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #83084: <==uncertain_firing== 31278 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #86143: <==uncertain_firing== 37484 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #92610: <==uncertain_firing== 19753 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_survivorat_s_p12)))))

    (:action badcomm_p12_c_s
        :precondition (and (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #19753: <==closure== 65853 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #27182: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #31278: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #37484: <==closure== 65415 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #54184: <==closure== 27182 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #65415: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #65853: origin
                    (when (and (not_at_d_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #70078: <==closure== 31278 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #12380: <==negation-removal== 31278 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #12558: <==negation-removal== 70078 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #13517: <==negation-removal== 27182 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #19502: <==uncertain_firing== 70078 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #19828: <==uncertain_firing== 65415 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #23512: <==negation-removal== 54184 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #29808: <==negation-removal== 65853 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #34899: <==negation-removal== 37484 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #55392: <==uncertain_firing== 54184 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #57997: <==negation-removal== 19753 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #58520: <==negation-removal== 65415 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #66207: <==uncertain_firing== 27182 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #66692: <==uncertain_firing== 65853 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #83084: <==uncertain_firing== 31278 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #86143: <==uncertain_firing== 37484 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #92610: <==uncertain_firing== 19753 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_survivorat_s_p12)))))

    (:action badcomm_p12_d_s
        :precondition (and (Bd_survivorat_s_p12)
                           (Pd_survivorat_s_p12)
                           (at_d_p12))
        :effect (and
                    ; #19753: <==closure== 65853 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #27182: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #31278: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #37484: <==closure== 65415 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #54184: <==closure== 27182 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #65415: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #65853: origin
                    (when (and (not_at_d_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #70078: <==closure== 31278 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #12380: <==negation-removal== 31278 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #12558: <==negation-removal== 70078 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #13517: <==negation-removal== 27182 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #19502: <==uncertain_firing== 70078 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #19828: <==uncertain_firing== 65415 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #23512: <==negation-removal== 54184 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #29808: <==negation-removal== 65853 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #34899: <==negation-removal== 37484 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #55392: <==uncertain_firing== 54184 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #57997: <==negation-removal== 19753 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #58520: <==negation-removal== 65415 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #66207: <==uncertain_firing== 27182 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #66692: <==uncertain_firing== 65853 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #83084: <==uncertain_firing== 31278 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #86143: <==uncertain_firing== 37484 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #92610: <==uncertain_firing== 19753 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_survivorat_s_p12)))))

    (:action badcomm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #19589: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #23176: <==closure== 84979 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #34400: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #40142: <==closure== 34400 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #52417: <==closure== 87759 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #84979: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #87759: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #88321: <==closure== 19589 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #11053: <==negation-removal== 19589 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #12116: <==negation-removal== 23176 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #19139: <==negation-removal== 40142 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #23813: <==uncertain_firing== 88321 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #26815: <==negation-removal== 88321 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #32569: <==uncertain_firing== 40142 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #41456: <==uncertain_firing== 84979 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #43282: <==uncertain_firing== 19589 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #45578: <==negation-removal== 87759 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #45842: <==negation-removal== 84979 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #55002: <==negation-removal== 34400 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #61946: <==uncertain_firing== 52417 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #65717: <==negation-removal== 52417 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #74249: <==uncertain_firing== 87759 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #85456: <==uncertain_firing== 23176 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #87483: <==uncertain_firing== 34400 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #19589: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #23176: <==closure== 84979 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #34400: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #40142: <==closure== 34400 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #52417: <==closure== 87759 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #84979: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #87759: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #88321: <==closure== 19589 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #11053: <==negation-removal== 19589 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #12116: <==negation-removal== 23176 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #19139: <==negation-removal== 40142 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #23813: <==uncertain_firing== 88321 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #26815: <==negation-removal== 88321 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #32569: <==uncertain_firing== 40142 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #41456: <==uncertain_firing== 84979 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #43282: <==uncertain_firing== 19589 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #45578: <==negation-removal== 87759 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #45842: <==negation-removal== 84979 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #55002: <==negation-removal== 34400 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #61946: <==uncertain_firing== 52417 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #65717: <==negation-removal== 52417 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #74249: <==uncertain_firing== 87759 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #85456: <==uncertain_firing== 23176 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #87483: <==uncertain_firing== 34400 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #19589: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #23176: <==closure== 84979 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #34400: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #40142: <==closure== 34400 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #52417: <==closure== 87759 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #84979: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #87759: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #88321: <==closure== 19589 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #11053: <==negation-removal== 19589 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #12116: <==negation-removal== 23176 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #19139: <==negation-removal== 40142 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #23813: <==uncertain_firing== 88321 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #26815: <==negation-removal== 88321 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #32569: <==uncertain_firing== 40142 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #41456: <==uncertain_firing== 84979 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #43282: <==uncertain_firing== 19589 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #45578: <==negation-removal== 87759 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #45842: <==negation-removal== 84979 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #55002: <==negation-removal== 34400 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #61946: <==uncertain_firing== 52417 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #65717: <==negation-removal== 52417 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #74249: <==uncertain_firing== 87759 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #85456: <==uncertain_firing== 23176 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #87483: <==uncertain_firing== 34400 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p1_d_s
        :precondition (and (Pd_survivorat_s_p1)
                           (at_d_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #19589: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #23176: <==closure== 84979 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #34400: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #40142: <==closure== 34400 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #52417: <==closure== 87759 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #84979: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #87759: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #88321: <==closure== 19589 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #11053: <==negation-removal== 19589 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #12116: <==negation-removal== 23176 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #19139: <==negation-removal== 40142 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #23813: <==uncertain_firing== 88321 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #26815: <==negation-removal== 88321 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #32569: <==uncertain_firing== 40142 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #41456: <==uncertain_firing== 84979 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #43282: <==uncertain_firing== 19589 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #45578: <==negation-removal== 87759 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #45842: <==negation-removal== 84979 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #55002: <==negation-removal== 34400 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #61946: <==uncertain_firing== 52417 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #65717: <==negation-removal== 52417 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #74249: <==uncertain_firing== 87759 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #85456: <==uncertain_firing== 23176 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #87483: <==uncertain_firing== 34400 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #20675: <==closure== 73330 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #23548: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #49834: <==closure== 82401 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #54371: <==closure== 23548 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #70241: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #73330: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #82401: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #85820: <==closure== 70241 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #19181: <==uncertain_firing== 20675 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #24085: <==negation-removal== 23548 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #26642: <==negation-removal== 49834 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #27563: <==negation-removal== 20675 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #33934: <==negation-removal== 54371 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #37659: <==negation-removal== 73330 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #46675: <==uncertain_firing== 73330 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #53709: <==uncertain_firing== 54371 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #54890: <==negation-removal== 82401 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #55306: <==uncertain_firing== 70241 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #56649: <==uncertain_firing== 82401 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #57468: <==negation-removal== 85820 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #62846: <==uncertain_firing== 23548 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #76676: <==negation-removal== 70241 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #79023: <==uncertain_firing== 49834 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #80021: <==uncertain_firing== 85820 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #20675: <==closure== 73330 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #23548: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #49834: <==closure== 82401 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #54371: <==closure== 23548 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #70241: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #73330: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #82401: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #85820: <==closure== 70241 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #19181: <==uncertain_firing== 20675 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #24085: <==negation-removal== 23548 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #26642: <==negation-removal== 49834 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #27563: <==negation-removal== 20675 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #33934: <==negation-removal== 54371 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #37659: <==negation-removal== 73330 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #46675: <==uncertain_firing== 73330 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #53709: <==uncertain_firing== 54371 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #54890: <==negation-removal== 82401 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #55306: <==uncertain_firing== 70241 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #56649: <==uncertain_firing== 82401 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #57468: <==negation-removal== 85820 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #62846: <==uncertain_firing== 23548 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #76676: <==negation-removal== 70241 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #79023: <==uncertain_firing== 49834 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #80021: <==uncertain_firing== 85820 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #20675: <==closure== 73330 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #23548: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #49834: <==closure== 82401 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #54371: <==closure== 23548 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #70241: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #73330: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #82401: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #85820: <==closure== 70241 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #19181: <==uncertain_firing== 20675 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #24085: <==negation-removal== 23548 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #26642: <==negation-removal== 49834 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #27563: <==negation-removal== 20675 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #33934: <==negation-removal== 54371 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #37659: <==negation-removal== 73330 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #46675: <==uncertain_firing== 73330 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #53709: <==uncertain_firing== 54371 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #54890: <==negation-removal== 82401 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #55306: <==uncertain_firing== 70241 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #56649: <==uncertain_firing== 82401 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #57468: <==negation-removal== 85820 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #62846: <==uncertain_firing== 23548 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #76676: <==negation-removal== 70241 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #79023: <==uncertain_firing== 49834 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #80021: <==uncertain_firing== 85820 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))))

    (:action badcomm_p2_d_s
        :precondition (and (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2)
                           (at_d_p2))
        :effect (and
                    ; #20675: <==closure== 73330 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #23548: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #49834: <==closure== 82401 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #54371: <==closure== 23548 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #70241: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #73330: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #82401: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #85820: <==closure== 70241 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #19181: <==uncertain_firing== 20675 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #24085: <==negation-removal== 23548 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #26642: <==negation-removal== 49834 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #27563: <==negation-removal== 20675 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #33934: <==negation-removal== 54371 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #37659: <==negation-removal== 73330 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #46675: <==uncertain_firing== 73330 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #53709: <==uncertain_firing== 54371 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #54890: <==negation-removal== 82401 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #55306: <==uncertain_firing== 70241 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #56649: <==uncertain_firing== 82401 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #57468: <==negation-removal== 85820 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #62846: <==uncertain_firing== 23548 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #76676: <==negation-removal== 70241 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #79023: <==uncertain_firing== 49834 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #80021: <==uncertain_firing== 85820 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #18285: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #41448: <==closure== 42206 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #41609: <==closure== 18285 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #42206: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #43025: <==closure== 53936 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #53936: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #54113: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #54572: <==closure== 54113 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #10017: <==negation-removal== 41448 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #12576: <==uncertain_firing== 53936 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #14086: <==uncertain_firing== 54113 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #22218: <==uncertain_firing== 18285 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #24712: <==negation-removal== 18285 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #26461: <==negation-removal== 43025 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #35474: <==uncertain_firing== 41448 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #35622: <==uncertain_firing== 54572 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #39351: <==uncertain_firing== 41609 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #41433: <==negation-removal== 54113 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #52211: <==negation-removal== 42206 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #52447: <==uncertain_firing== 42206 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #62739: <==negation-removal== 53936 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #67337: <==negation-removal== 41609 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #73758: <==negation-removal== 54572 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #83329: <==uncertain_firing== 43025 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #18285: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #41448: <==closure== 42206 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #41609: <==closure== 18285 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #42206: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #43025: <==closure== 53936 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #53936: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #54113: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #54572: <==closure== 54113 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #10017: <==negation-removal== 41448 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #12576: <==uncertain_firing== 53936 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #14086: <==uncertain_firing== 54113 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #22218: <==uncertain_firing== 18285 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #24712: <==negation-removal== 18285 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #26461: <==negation-removal== 43025 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #35474: <==uncertain_firing== 41448 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #35622: <==uncertain_firing== 54572 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #39351: <==uncertain_firing== 41609 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #41433: <==negation-removal== 54113 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #52211: <==negation-removal== 42206 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #52447: <==uncertain_firing== 42206 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #62739: <==negation-removal== 53936 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #67337: <==negation-removal== 41609 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #73758: <==negation-removal== 54572 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #83329: <==uncertain_firing== 43025 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #18285: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #41448: <==closure== 42206 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #41609: <==closure== 18285 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #42206: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #43025: <==closure== 53936 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #53936: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #54113: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #54572: <==closure== 54113 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #10017: <==negation-removal== 41448 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #12576: <==uncertain_firing== 53936 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #14086: <==uncertain_firing== 54113 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #22218: <==uncertain_firing== 18285 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #24712: <==negation-removal== 18285 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #26461: <==negation-removal== 43025 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #35474: <==uncertain_firing== 41448 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #35622: <==uncertain_firing== 54572 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #39351: <==uncertain_firing== 41609 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #41433: <==negation-removal== 54113 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #52211: <==negation-removal== 42206 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #52447: <==uncertain_firing== 42206 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #62739: <==negation-removal== 53936 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #67337: <==negation-removal== 41609 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #73758: <==negation-removal== 54572 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #83329: <==uncertain_firing== 43025 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))))

    (:action badcomm_p3_d_s
        :precondition (and (at_d_p3)
                           (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #18285: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #41448: <==closure== 42206 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #41609: <==closure== 18285 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #42206: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #43025: <==closure== 53936 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #53936: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #54113: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #54572: <==closure== 54113 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #10017: <==negation-removal== 41448 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #12576: <==uncertain_firing== 53936 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #14086: <==uncertain_firing== 54113 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #22218: <==uncertain_firing== 18285 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #24712: <==negation-removal== 18285 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #26461: <==negation-removal== 43025 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #35474: <==uncertain_firing== 41448 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #35622: <==uncertain_firing== 54572 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #39351: <==uncertain_firing== 41609 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #41433: <==negation-removal== 54113 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #52211: <==negation-removal== 42206 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #52447: <==uncertain_firing== 42206 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #62739: <==negation-removal== 53936 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #67337: <==negation-removal== 41609 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #73758: <==negation-removal== 54572 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #83329: <==uncertain_firing== 43025 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #10808: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #14497: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #29863: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #38638: <==closure== 29863 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #43037: <==closure== 86947 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #45095: <==closure== 14497 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #82061: <==closure== 10808 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #86947: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #12844: <==negation-removal== 45095 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #13870: <==uncertain_firing== 45095 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #13892: <==uncertain_firing== 29863 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #21524: <==uncertain_firing== 82061 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #38595: <==negation-removal== 14497 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #48576: <==negation-removal== 10808 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #55589: <==negation-removal== 29863 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #58262: <==uncertain_firing== 38638 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #67390: <==negation-removal== 86947 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #67557: <==negation-removal== 38638 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #69213: <==uncertain_firing== 43037 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #69454: <==negation-removal== 82061 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #69813: <==uncertain_firing== 86947 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #82938: <==negation-removal== 43037 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #88948: <==uncertain_firing== 14497 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #92002: <==uncertain_firing== 10808 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #10808: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #14497: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #29863: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #38638: <==closure== 29863 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #43037: <==closure== 86947 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #45095: <==closure== 14497 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #82061: <==closure== 10808 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #86947: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #12844: <==negation-removal== 45095 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #13870: <==uncertain_firing== 45095 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #13892: <==uncertain_firing== 29863 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #21524: <==uncertain_firing== 82061 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #38595: <==negation-removal== 14497 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #48576: <==negation-removal== 10808 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #55589: <==negation-removal== 29863 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #58262: <==uncertain_firing== 38638 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #67390: <==negation-removal== 86947 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #67557: <==negation-removal== 38638 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #69213: <==uncertain_firing== 43037 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #69454: <==negation-removal== 82061 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #69813: <==uncertain_firing== 86947 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #82938: <==negation-removal== 43037 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #88948: <==uncertain_firing== 14497 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #92002: <==uncertain_firing== 10808 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #10808: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #14497: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #29863: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #38638: <==closure== 29863 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #43037: <==closure== 86947 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #45095: <==closure== 14497 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #82061: <==closure== 10808 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #86947: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #12844: <==negation-removal== 45095 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #13870: <==uncertain_firing== 45095 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #13892: <==uncertain_firing== 29863 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #21524: <==uncertain_firing== 82061 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #38595: <==negation-removal== 14497 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #48576: <==negation-removal== 10808 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #55589: <==negation-removal== 29863 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #58262: <==uncertain_firing== 38638 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #67390: <==negation-removal== 86947 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #67557: <==negation-removal== 38638 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #69213: <==uncertain_firing== 43037 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #69454: <==negation-removal== 82061 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #69813: <==uncertain_firing== 86947 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #82938: <==negation-removal== 43037 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #88948: <==uncertain_firing== 14497 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #92002: <==uncertain_firing== 10808 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))))

    (:action badcomm_p4_d_s
        :precondition (and (at_d_p4)
                           (Bd_survivorat_s_p4)
                           (Pd_survivorat_s_p4))
        :effect (and
                    ; #10808: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #14497: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #29863: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #38638: <==closure== 29863 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #43037: <==closure== 86947 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #45095: <==closure== 14497 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #82061: <==closure== 10808 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #86947: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #12844: <==negation-removal== 45095 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #13870: <==uncertain_firing== 45095 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #13892: <==uncertain_firing== 29863 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #21524: <==uncertain_firing== 82061 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #38595: <==negation-removal== 14497 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #48576: <==negation-removal== 10808 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #55589: <==negation-removal== 29863 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #58262: <==uncertain_firing== 38638 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #67390: <==negation-removal== 86947 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #67557: <==negation-removal== 38638 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #69213: <==uncertain_firing== 43037 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #69454: <==negation-removal== 82061 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #69813: <==uncertain_firing== 86947 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #82938: <==negation-removal== 43037 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #88948: <==uncertain_firing== 14497 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #92002: <==uncertain_firing== 10808 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #16864: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #23954: <==closure== 75711 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #36865: <==closure== 68337 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #40770: <==closure== 16864 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #45865: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #68337: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #75711: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #89061: <==closure== 45865 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #28715: <==negation-removal== 89061 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #32442: <==uncertain_firing== 23954 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #33298: <==negation-removal== 68337 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #34577: <==negation-removal== 16864 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #37104: <==uncertain_firing== 45865 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #39953: <==uncertain_firing== 40770 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #41972: <==negation-removal== 75711 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #45289: <==uncertain_firing== 75711 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #48206: <==uncertain_firing== 16864 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #50762: <==uncertain_firing== 68337 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #56181: <==uncertain_firing== 36865 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #61867: <==negation-removal== 40770 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #73121: <==uncertain_firing== 89061 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #75010: <==negation-removal== 45865 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #76780: <==negation-removal== 23954 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #83455: <==negation-removal== 36865 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #16864: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #23954: <==closure== 75711 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #36865: <==closure== 68337 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #40770: <==closure== 16864 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #45865: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #68337: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #75711: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #89061: <==closure== 45865 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #28715: <==negation-removal== 89061 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #32442: <==uncertain_firing== 23954 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #33298: <==negation-removal== 68337 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #34577: <==negation-removal== 16864 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #37104: <==uncertain_firing== 45865 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #39953: <==uncertain_firing== 40770 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #41972: <==negation-removal== 75711 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #45289: <==uncertain_firing== 75711 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #48206: <==uncertain_firing== 16864 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #50762: <==uncertain_firing== 68337 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #56181: <==uncertain_firing== 36865 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #61867: <==negation-removal== 40770 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #73121: <==uncertain_firing== 89061 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #75010: <==negation-removal== 45865 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #76780: <==negation-removal== 23954 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #83455: <==negation-removal== 36865 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #16864: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #23954: <==closure== 75711 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #36865: <==closure== 68337 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #40770: <==closure== 16864 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #45865: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #68337: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #75711: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #89061: <==closure== 45865 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #28715: <==negation-removal== 89061 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #32442: <==uncertain_firing== 23954 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #33298: <==negation-removal== 68337 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #34577: <==negation-removal== 16864 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #37104: <==uncertain_firing== 45865 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #39953: <==uncertain_firing== 40770 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #41972: <==negation-removal== 75711 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #45289: <==uncertain_firing== 75711 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #48206: <==uncertain_firing== 16864 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #50762: <==uncertain_firing== 68337 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #56181: <==uncertain_firing== 36865 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #61867: <==negation-removal== 40770 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #73121: <==uncertain_firing== 89061 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #75010: <==negation-removal== 45865 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #76780: <==negation-removal== 23954 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #83455: <==negation-removal== 36865 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))))

    (:action badcomm_p5_d_s
        :precondition (and (Bd_survivorat_s_p5)
                           (at_d_p5)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #16864: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #23954: <==closure== 75711 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #36865: <==closure== 68337 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #40770: <==closure== 16864 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #45865: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #68337: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #75711: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #89061: <==closure== 45865 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #28715: <==negation-removal== 89061 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #32442: <==uncertain_firing== 23954 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #33298: <==negation-removal== 68337 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #34577: <==negation-removal== 16864 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #37104: <==uncertain_firing== 45865 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #39953: <==uncertain_firing== 40770 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #41972: <==negation-removal== 75711 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #45289: <==uncertain_firing== 75711 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #48206: <==uncertain_firing== 16864 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #50762: <==uncertain_firing== 68337 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #56181: <==uncertain_firing== 36865 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #61867: <==negation-removal== 40770 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #73121: <==uncertain_firing== 89061 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #75010: <==negation-removal== 45865 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #76780: <==negation-removal== 23954 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #83455: <==negation-removal== 36865 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #22110: <==closure== 74097 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #25014: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #32032: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #49693: <==closure== 25014 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #54447: <==closure== 64048 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #64048: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #74097: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #77429: <==closure== 32032 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #19355: <==uncertain_firing== 22110 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #19909: <==uncertain_firing== 32032 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #27008: <==uncertain_firing== 64048 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #32504: <==uncertain_firing== 25014 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #49374: <==uncertain_firing== 77429 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #51003: <==negation-removal== 64048 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #51395: <==negation-removal== 54447 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #53067: <==negation-removal== 77429 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #60806: <==negation-removal== 49693 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #64621: <==negation-removal== 22110 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #69087: <==negation-removal== 74097 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #70561: <==uncertain_firing== 54447 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #79543: <==uncertain_firing== 49693 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #80203: <==uncertain_firing== 74097 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #86267: <==negation-removal== 25014 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #91676: <==negation-removal== 32032 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #22110: <==closure== 74097 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #25014: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #32032: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #49693: <==closure== 25014 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #54447: <==closure== 64048 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #64048: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #74097: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #77429: <==closure== 32032 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #19355: <==uncertain_firing== 22110 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #19909: <==uncertain_firing== 32032 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #27008: <==uncertain_firing== 64048 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #32504: <==uncertain_firing== 25014 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #49374: <==uncertain_firing== 77429 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #51003: <==negation-removal== 64048 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #51395: <==negation-removal== 54447 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #53067: <==negation-removal== 77429 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #60806: <==negation-removal== 49693 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #64621: <==negation-removal== 22110 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #69087: <==negation-removal== 74097 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #70561: <==uncertain_firing== 54447 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #79543: <==uncertain_firing== 49693 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #80203: <==uncertain_firing== 74097 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #86267: <==negation-removal== 25014 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #91676: <==negation-removal== 32032 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #22110: <==closure== 74097 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #25014: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #32032: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #49693: <==closure== 25014 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #54447: <==closure== 64048 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #64048: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #74097: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #77429: <==closure== 32032 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #19355: <==uncertain_firing== 22110 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #19909: <==uncertain_firing== 32032 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #27008: <==uncertain_firing== 64048 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #32504: <==uncertain_firing== 25014 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #49374: <==uncertain_firing== 77429 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #51003: <==negation-removal== 64048 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #51395: <==negation-removal== 54447 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #53067: <==negation-removal== 77429 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #60806: <==negation-removal== 49693 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #64621: <==negation-removal== 22110 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #69087: <==negation-removal== 74097 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #70561: <==uncertain_firing== 54447 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #79543: <==uncertain_firing== 49693 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #80203: <==uncertain_firing== 74097 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #86267: <==negation-removal== 25014 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #91676: <==negation-removal== 32032 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))))

    (:action badcomm_p6_d_s
        :precondition (and (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #22110: <==closure== 74097 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #25014: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #32032: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #49693: <==closure== 25014 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #54447: <==closure== 64048 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #64048: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #74097: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #77429: <==closure== 32032 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #19355: <==uncertain_firing== 22110 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #19909: <==uncertain_firing== 32032 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #27008: <==uncertain_firing== 64048 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #32504: <==uncertain_firing== 25014 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #49374: <==uncertain_firing== 77429 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #51003: <==negation-removal== 64048 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #51395: <==negation-removal== 54447 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #53067: <==negation-removal== 77429 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #60806: <==negation-removal== 49693 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #64621: <==negation-removal== 22110 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #69087: <==negation-removal== 74097 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #70561: <==uncertain_firing== 54447 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #79543: <==uncertain_firing== 49693 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #80203: <==uncertain_firing== 74097 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #86267: <==negation-removal== 25014 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #91676: <==negation-removal== 32032 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #23642: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #26697: <==closure== 75178 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #29412: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #34486: <==closure== 23642 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #66428: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #75178: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #79101: <==closure== 66428 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #83245: <==closure== 29412 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #17119: <==uncertain_firing== 79101 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #19448: <==uncertain_firing== 66428 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #19710: <==negation-removal== 26697 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #24835: <==negation-removal== 75178 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #33699: <==uncertain_firing== 26697 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #37154: <==uncertain_firing== 23642 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #38702: <==uncertain_firing== 29412 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #55342: <==uncertain_firing== 83245 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #57739: <==uncertain_firing== 34486 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #60840: <==uncertain_firing== 75178 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #62277: <==negation-removal== 34486 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #62614: <==negation-removal== 23642 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #69426: <==negation-removal== 79101 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #71981: <==negation-removal== 66428 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #83804: <==negation-removal== 83245 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #87306: <==negation-removal== 29412 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #23642: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #26697: <==closure== 75178 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #29412: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #34486: <==closure== 23642 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #66428: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #75178: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #79101: <==closure== 66428 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #83245: <==closure== 29412 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #17119: <==uncertain_firing== 79101 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #19448: <==uncertain_firing== 66428 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #19710: <==negation-removal== 26697 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #24835: <==negation-removal== 75178 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #33699: <==uncertain_firing== 26697 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #37154: <==uncertain_firing== 23642 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #38702: <==uncertain_firing== 29412 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #55342: <==uncertain_firing== 83245 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #57739: <==uncertain_firing== 34486 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #60840: <==uncertain_firing== 75178 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #62277: <==negation-removal== 34486 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #62614: <==negation-removal== 23642 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #69426: <==negation-removal== 79101 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #71981: <==negation-removal== 66428 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #83804: <==negation-removal== 83245 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #87306: <==negation-removal== 29412 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #23642: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #26697: <==closure== 75178 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #29412: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #34486: <==closure== 23642 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #66428: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #75178: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #79101: <==closure== 66428 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #83245: <==closure== 29412 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #17119: <==uncertain_firing== 79101 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #19448: <==uncertain_firing== 66428 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #19710: <==negation-removal== 26697 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #24835: <==negation-removal== 75178 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #33699: <==uncertain_firing== 26697 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #37154: <==uncertain_firing== 23642 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #38702: <==uncertain_firing== 29412 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #55342: <==uncertain_firing== 83245 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #57739: <==uncertain_firing== 34486 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #60840: <==uncertain_firing== 75178 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #62277: <==negation-removal== 34486 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #62614: <==negation-removal== 23642 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #69426: <==negation-removal== 79101 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #71981: <==negation-removal== 66428 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #83804: <==negation-removal== 83245 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #87306: <==negation-removal== 29412 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))))

    (:action badcomm_p7_d_s
        :precondition (and (at_d_p7)
                           (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #23642: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #26697: <==closure== 75178 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #29412: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #34486: <==closure== 23642 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #66428: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #75178: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #79101: <==closure== 66428 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #83245: <==closure== 29412 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #17119: <==uncertain_firing== 79101 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #19448: <==uncertain_firing== 66428 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #19710: <==negation-removal== 26697 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #24835: <==negation-removal== 75178 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #33699: <==uncertain_firing== 26697 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #37154: <==uncertain_firing== 23642 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #38702: <==uncertain_firing== 29412 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #55342: <==uncertain_firing== 83245 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #57739: <==uncertain_firing== 34486 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #60840: <==uncertain_firing== 75178 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #62277: <==negation-removal== 34486 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #62614: <==negation-removal== 23642 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #69426: <==negation-removal== 79101 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #71981: <==negation-removal== 66428 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #83804: <==negation-removal== 83245 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #87306: <==negation-removal== 29412 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #18174: <==closure== 26631 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #23636: <==closure== 67642 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #26631: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #31695: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #44210: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #47711: <==closure== 31695 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #67642: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #79495: <==closure== 44210 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #18141: <==uncertain_firing== 47711 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #30369: <==negation-removal== 44210 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #34722: <==negation-removal== 23636 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #36579: <==negation-removal== 79495 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #40224: <==uncertain_firing== 26631 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #52021: <==negation-removal== 31695 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #53642: <==negation-removal== 26631 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #55841: <==uncertain_firing== 18174 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #58228: <==uncertain_firing== 79495 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #58585: <==uncertain_firing== 31695 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #63091: <==uncertain_firing== 23636 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #78477: <==negation-removal== 18174 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #80018: <==uncertain_firing== 44210 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #86990: <==negation-removal== 47711 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #88518: <==uncertain_firing== 67642 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #89023: <==negation-removal== 67642 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #18174: <==closure== 26631 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #23636: <==closure== 67642 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #26631: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #31695: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #44210: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #47711: <==closure== 31695 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #67642: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #79495: <==closure== 44210 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #18141: <==uncertain_firing== 47711 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #30369: <==negation-removal== 44210 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #34722: <==negation-removal== 23636 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #36579: <==negation-removal== 79495 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #40224: <==uncertain_firing== 26631 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #52021: <==negation-removal== 31695 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #53642: <==negation-removal== 26631 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #55841: <==uncertain_firing== 18174 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #58228: <==uncertain_firing== 79495 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #58585: <==uncertain_firing== 31695 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #63091: <==uncertain_firing== 23636 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #78477: <==negation-removal== 18174 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #80018: <==uncertain_firing== 44210 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #86990: <==negation-removal== 47711 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #88518: <==uncertain_firing== 67642 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #89023: <==negation-removal== 67642 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #18174: <==closure== 26631 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #23636: <==closure== 67642 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #26631: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #31695: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #44210: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #47711: <==closure== 31695 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #67642: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #79495: <==closure== 44210 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #18141: <==uncertain_firing== 47711 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #30369: <==negation-removal== 44210 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #34722: <==negation-removal== 23636 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #36579: <==negation-removal== 79495 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #40224: <==uncertain_firing== 26631 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #52021: <==negation-removal== 31695 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #53642: <==negation-removal== 26631 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #55841: <==uncertain_firing== 18174 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #58228: <==uncertain_firing== 79495 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #58585: <==uncertain_firing== 31695 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #63091: <==uncertain_firing== 23636 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #78477: <==negation-removal== 18174 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #80018: <==uncertain_firing== 44210 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #86990: <==negation-removal== 47711 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #88518: <==uncertain_firing== 67642 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #89023: <==negation-removal== 67642 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))))

    (:action badcomm_p8_d_s
        :precondition (and (Bd_survivorat_s_p8)
                           (at_d_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #18174: <==closure== 26631 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #23636: <==closure== 67642 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #26631: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #31695: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #44210: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #47711: <==closure== 31695 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #67642: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #79495: <==closure== 44210 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #18141: <==uncertain_firing== 47711 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #30369: <==negation-removal== 44210 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #34722: <==negation-removal== 23636 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #36579: <==negation-removal== 79495 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #40224: <==uncertain_firing== 26631 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #52021: <==negation-removal== 31695 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #53642: <==negation-removal== 26631 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #55841: <==uncertain_firing== 18174 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #58228: <==uncertain_firing== 79495 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #58585: <==uncertain_firing== 31695 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #63091: <==uncertain_firing== 23636 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #78477: <==negation-removal== 18174 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #80018: <==uncertain_firing== 44210 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #86990: <==negation-removal== 47711 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #88518: <==uncertain_firing== 67642 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #89023: <==negation-removal== 67642 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #24490: <==closure== 36164 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #30213: <==closure== 50761 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #36164: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #45458: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #48564: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #50761: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #51886: <==closure== 48564 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #55522: <==closure== 45458 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #16253: <==uncertain_firing== 45458 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #20114: <==negation-removal== 55522 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #27856: <==negation-removal== 45458 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #35816: <==negation-removal== 48564 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #40942: <==uncertain_firing== 48564 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #43869: <==uncertain_firing== 51886 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #46822: <==negation-removal== 36164 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #50011: <==negation-removal== 30213 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #56434: <==negation-removal== 51886 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #71231: <==uncertain_firing== 36164 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #71715: <==uncertain_firing== 55522 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #74850: <==negation-removal== 24490 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #79104: <==negation-removal== 50761 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #79528: <==uncertain_firing== 50761 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #86060: <==uncertain_firing== 24490 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #89889: <==uncertain_firing== 30213 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #24490: <==closure== 36164 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #30213: <==closure== 50761 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #36164: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #45458: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #48564: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #50761: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #51886: <==closure== 48564 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #55522: <==closure== 45458 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #16253: <==uncertain_firing== 45458 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #20114: <==negation-removal== 55522 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #27856: <==negation-removal== 45458 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #35816: <==negation-removal== 48564 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #40942: <==uncertain_firing== 48564 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #43869: <==uncertain_firing== 51886 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #46822: <==negation-removal== 36164 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #50011: <==negation-removal== 30213 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #56434: <==negation-removal== 51886 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #71231: <==uncertain_firing== 36164 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #71715: <==uncertain_firing== 55522 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #74850: <==negation-removal== 24490 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #79104: <==negation-removal== 50761 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #79528: <==uncertain_firing== 50761 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #86060: <==uncertain_firing== 24490 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #89889: <==uncertain_firing== 30213 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #24490: <==closure== 36164 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #30213: <==closure== 50761 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #36164: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #45458: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #48564: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #50761: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #51886: <==closure== 48564 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #55522: <==closure== 45458 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #16253: <==uncertain_firing== 45458 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #20114: <==negation-removal== 55522 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #27856: <==negation-removal== 45458 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #35816: <==negation-removal== 48564 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #40942: <==uncertain_firing== 48564 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #43869: <==uncertain_firing== 51886 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #46822: <==negation-removal== 36164 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #50011: <==negation-removal== 30213 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #56434: <==negation-removal== 51886 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #71231: <==uncertain_firing== 36164 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #71715: <==uncertain_firing== 55522 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #74850: <==negation-removal== 24490 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #79104: <==negation-removal== 50761 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #79528: <==uncertain_firing== 50761 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #86060: <==uncertain_firing== 24490 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #89889: <==uncertain_firing== 30213 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))))

    (:action badcomm_p9_d_s
        :precondition (and (Bd_survivorat_s_p9)
                           (at_d_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #24490: <==closure== 36164 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #30213: <==closure== 50761 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #36164: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #45458: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #48564: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #50761: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #51886: <==closure== 48564 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #55522: <==closure== 45458 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #16253: <==uncertain_firing== 45458 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #20114: <==negation-removal== 55522 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #27856: <==negation-removal== 45458 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #35816: <==negation-removal== 48564 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #40942: <==uncertain_firing== 48564 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #43869: <==uncertain_firing== 51886 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #46822: <==negation-removal== 36164 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #50011: <==negation-removal== 30213 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #56434: <==negation-removal== 51886 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #71231: <==uncertain_firing== 36164 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #71715: <==uncertain_firing== 55522 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #74850: <==negation-removal== 24490 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #79104: <==negation-removal== 50761 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #79528: <==uncertain_firing== 50761 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #86060: <==uncertain_firing== 24490 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #89889: <==uncertain_firing== 30213 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))))

    (:action comm_p10_a_s
        :precondition (and (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #17989: <==closure== 72912 (pos)
                    (Pb_survivorat_s_p10)

                    ; #26825: origin
                    (Bc_survivorat_s_p10)

                    ; #28556: <==closure== 74625 (pos)
                    (Pd_survivorat_s_p10)

                    ; #38858: <==closure== 89265 (pos)
                    (Pa_survivorat_s_p10)

                    ; #39175: <==closure== 26825 (pos)
                    (Pc_survivorat_s_p10)

                    ; #72912: origin
                    (Bb_survivorat_s_p10)

                    ; #74625: origin
                    (Bd_survivorat_s_p10)

                    ; #89265: origin
                    (Ba_survivorat_s_p10)

                    ; #12757: <==negation-removal== 26825 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #13206: <==negation-removal== 39175 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #19693: <==negation-removal== 74625 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #29982: <==negation-removal== 38858 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #38418: <==negation-removal== 28556 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #79163: <==negation-removal== 89265 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #84551: <==negation-removal== 72912 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #85997: <==negation-removal== 17989 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #17989: <==closure== 72912 (pos)
                    (Pb_survivorat_s_p10)

                    ; #26825: origin
                    (Bc_survivorat_s_p10)

                    ; #28556: <==closure== 74625 (pos)
                    (Pd_survivorat_s_p10)

                    ; #38858: <==closure== 89265 (pos)
                    (Pa_survivorat_s_p10)

                    ; #39175: <==closure== 26825 (pos)
                    (Pc_survivorat_s_p10)

                    ; #72912: origin
                    (Bb_survivorat_s_p10)

                    ; #74625: origin
                    (Bd_survivorat_s_p10)

                    ; #89265: origin
                    (Ba_survivorat_s_p10)

                    ; #12757: <==negation-removal== 26825 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #13206: <==negation-removal== 39175 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #19693: <==negation-removal== 74625 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #29982: <==negation-removal== 38858 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #38418: <==negation-removal== 28556 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #79163: <==negation-removal== 89265 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #84551: <==negation-removal== 72912 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #85997: <==negation-removal== 17989 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #17989: <==closure== 72912 (pos)
                    (Pb_survivorat_s_p10)

                    ; #26825: origin
                    (Bc_survivorat_s_p10)

                    ; #28556: <==closure== 74625 (pos)
                    (Pd_survivorat_s_p10)

                    ; #38858: <==closure== 89265 (pos)
                    (Pa_survivorat_s_p10)

                    ; #39175: <==closure== 26825 (pos)
                    (Pc_survivorat_s_p10)

                    ; #72912: origin
                    (Bb_survivorat_s_p10)

                    ; #74625: origin
                    (Bd_survivorat_s_p10)

                    ; #89265: origin
                    (Ba_survivorat_s_p10)

                    ; #12757: <==negation-removal== 26825 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #13206: <==negation-removal== 39175 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #19693: <==negation-removal== 74625 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #29982: <==negation-removal== 38858 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #38418: <==negation-removal== 28556 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #79163: <==negation-removal== 89265 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #84551: <==negation-removal== 72912 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #85997: <==negation-removal== 17989 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_d_s
        :precondition (and (Pd_survivorat_s_p10)
                           (at_d_p10)
                           (Bd_survivorat_s_p10))
        :effect (and
                    ; #17989: <==closure== 72912 (pos)
                    (Pb_survivorat_s_p10)

                    ; #26825: origin
                    (Bc_survivorat_s_p10)

                    ; #28556: <==closure== 74625 (pos)
                    (Pd_survivorat_s_p10)

                    ; #38858: <==closure== 89265 (pos)
                    (Pa_survivorat_s_p10)

                    ; #39175: <==closure== 26825 (pos)
                    (Pc_survivorat_s_p10)

                    ; #72912: origin
                    (Bb_survivorat_s_p10)

                    ; #74625: origin
                    (Bd_survivorat_s_p10)

                    ; #89265: origin
                    (Ba_survivorat_s_p10)

                    ; #12757: <==negation-removal== 26825 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #13206: <==negation-removal== 39175 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #19693: <==negation-removal== 74625 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #29982: <==negation-removal== 38858 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #38418: <==negation-removal== 28556 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #79163: <==negation-removal== 89265 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #84551: <==negation-removal== 72912 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #85997: <==negation-removal== 17989 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #28359: origin
                    (Bc_survivorat_s_p11)

                    ; #37400: <==closure== 28359 (pos)
                    (Pc_survivorat_s_p11)

                    ; #42945: <==closure== 49530 (pos)
                    (Pb_survivorat_s_p11)

                    ; #49530: origin
                    (Bb_survivorat_s_p11)

                    ; #54489: origin
                    (Bd_survivorat_s_p11)

                    ; #79335: <==closure== 80570 (pos)
                    (Pa_survivorat_s_p11)

                    ; #80570: origin
                    (Ba_survivorat_s_p11)

                    ; #99926: <==closure== 54489 (pos)
                    (Pd_survivorat_s_p11)

                    ; #10607: <==negation-removal== 42945 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #33581: <==negation-removal== 28359 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #35921: <==negation-removal== 79335 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #36799: <==negation-removal== 49530 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #53477: <==negation-removal== 37400 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #55269: <==negation-removal== 80570 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #84189: <==negation-removal== 54489 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #91372: <==negation-removal== 99926 (pos)
                    (not (Bd_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #28359: origin
                    (Bc_survivorat_s_p11)

                    ; #37400: <==closure== 28359 (pos)
                    (Pc_survivorat_s_p11)

                    ; #42945: <==closure== 49530 (pos)
                    (Pb_survivorat_s_p11)

                    ; #49530: origin
                    (Bb_survivorat_s_p11)

                    ; #54489: origin
                    (Bd_survivorat_s_p11)

                    ; #79335: <==closure== 80570 (pos)
                    (Pa_survivorat_s_p11)

                    ; #80570: origin
                    (Ba_survivorat_s_p11)

                    ; #99926: <==closure== 54489 (pos)
                    (Pd_survivorat_s_p11)

                    ; #10607: <==negation-removal== 42945 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #33581: <==negation-removal== 28359 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #35921: <==negation-removal== 79335 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #36799: <==negation-removal== 49530 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #53477: <==negation-removal== 37400 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #55269: <==negation-removal== 80570 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #84189: <==negation-removal== 54489 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #91372: <==negation-removal== 99926 (pos)
                    (not (Bd_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #28359: origin
                    (Bc_survivorat_s_p11)

                    ; #37400: <==closure== 28359 (pos)
                    (Pc_survivorat_s_p11)

                    ; #42945: <==closure== 49530 (pos)
                    (Pb_survivorat_s_p11)

                    ; #49530: origin
                    (Bb_survivorat_s_p11)

                    ; #54489: origin
                    (Bd_survivorat_s_p11)

                    ; #79335: <==closure== 80570 (pos)
                    (Pa_survivorat_s_p11)

                    ; #80570: origin
                    (Ba_survivorat_s_p11)

                    ; #99926: <==closure== 54489 (pos)
                    (Pd_survivorat_s_p11)

                    ; #10607: <==negation-removal== 42945 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #33581: <==negation-removal== 28359 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #35921: <==negation-removal== 79335 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #36799: <==negation-removal== 49530 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #53477: <==negation-removal== 37400 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #55269: <==negation-removal== 80570 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #84189: <==negation-removal== 54489 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #91372: <==negation-removal== 99926 (pos)
                    (not (Bd_not_survivorat_s_p11))))

    (:action comm_p11_d_s
        :precondition (and (Bd_survivorat_s_p11)
                           (Pd_survivorat_s_p11)
                           (at_d_p11))
        :effect (and
                    ; #28359: origin
                    (Bc_survivorat_s_p11)

                    ; #37400: <==closure== 28359 (pos)
                    (Pc_survivorat_s_p11)

                    ; #42945: <==closure== 49530 (pos)
                    (Pb_survivorat_s_p11)

                    ; #49530: origin
                    (Bb_survivorat_s_p11)

                    ; #54489: origin
                    (Bd_survivorat_s_p11)

                    ; #79335: <==closure== 80570 (pos)
                    (Pa_survivorat_s_p11)

                    ; #80570: origin
                    (Ba_survivorat_s_p11)

                    ; #99926: <==closure== 54489 (pos)
                    (Pd_survivorat_s_p11)

                    ; #10607: <==negation-removal== 42945 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #33581: <==negation-removal== 28359 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #35921: <==negation-removal== 79335 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #36799: <==negation-removal== 49530 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #53477: <==negation-removal== 37400 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #55269: <==negation-removal== 80570 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #84189: <==negation-removal== 54489 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #91372: <==negation-removal== 99926 (pos)
                    (not (Bd_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #27324: origin
                    (Ba_survivorat_s_p12)

                    ; #46848: origin
                    (Bd_survivorat_s_p12)

                    ; #77185: <==closure== 27324 (pos)
                    (Pa_survivorat_s_p12)

                    ; #78052: <==closure== 97100 (pos)
                    (Pb_survivorat_s_p12)

                    ; #80980: origin
                    (Bc_survivorat_s_p12)

                    ; #85891: <==closure== 80980 (pos)
                    (Pc_survivorat_s_p12)

                    ; #87322: <==closure== 46848 (pos)
                    (Pd_survivorat_s_p12)

                    ; #97100: origin
                    (Bb_survivorat_s_p12)

                    ; #15837: <==negation-removal== 77185 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #16856: <==negation-removal== 78052 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #33751: <==negation-removal== 27324 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #42561: <==negation-removal== 80980 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #51006: <==negation-removal== 46848 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #73706: <==negation-removal== 85891 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #74935: <==negation-removal== 97100 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #81649: <==negation-removal== 87322 (pos)
                    (not (Bd_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #27324: origin
                    (Ba_survivorat_s_p12)

                    ; #46848: origin
                    (Bd_survivorat_s_p12)

                    ; #77185: <==closure== 27324 (pos)
                    (Pa_survivorat_s_p12)

                    ; #78052: <==closure== 97100 (pos)
                    (Pb_survivorat_s_p12)

                    ; #80980: origin
                    (Bc_survivorat_s_p12)

                    ; #85891: <==closure== 80980 (pos)
                    (Pc_survivorat_s_p12)

                    ; #87322: <==closure== 46848 (pos)
                    (Pd_survivorat_s_p12)

                    ; #97100: origin
                    (Bb_survivorat_s_p12)

                    ; #15837: <==negation-removal== 77185 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #16856: <==negation-removal== 78052 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #33751: <==negation-removal== 27324 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #42561: <==negation-removal== 80980 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #51006: <==negation-removal== 46848 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #73706: <==negation-removal== 85891 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #74935: <==negation-removal== 97100 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #81649: <==negation-removal== 87322 (pos)
                    (not (Bd_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #27324: origin
                    (Ba_survivorat_s_p12)

                    ; #46848: origin
                    (Bd_survivorat_s_p12)

                    ; #77185: <==closure== 27324 (pos)
                    (Pa_survivorat_s_p12)

                    ; #78052: <==closure== 97100 (pos)
                    (Pb_survivorat_s_p12)

                    ; #80980: origin
                    (Bc_survivorat_s_p12)

                    ; #85891: <==closure== 80980 (pos)
                    (Pc_survivorat_s_p12)

                    ; #87322: <==closure== 46848 (pos)
                    (Pd_survivorat_s_p12)

                    ; #97100: origin
                    (Bb_survivorat_s_p12)

                    ; #15837: <==negation-removal== 77185 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #16856: <==negation-removal== 78052 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #33751: <==negation-removal== 27324 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #42561: <==negation-removal== 80980 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #51006: <==negation-removal== 46848 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #73706: <==negation-removal== 85891 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #74935: <==negation-removal== 97100 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #81649: <==negation-removal== 87322 (pos)
                    (not (Bd_not_survivorat_s_p12))))

    (:action comm_p12_d_s
        :precondition (and (Bd_survivorat_s_p12)
                           (Pd_survivorat_s_p12)
                           (at_d_p12))
        :effect (and
                    ; #27324: origin
                    (Ba_survivorat_s_p12)

                    ; #46848: origin
                    (Bd_survivorat_s_p12)

                    ; #77185: <==closure== 27324 (pos)
                    (Pa_survivorat_s_p12)

                    ; #78052: <==closure== 97100 (pos)
                    (Pb_survivorat_s_p12)

                    ; #80980: origin
                    (Bc_survivorat_s_p12)

                    ; #85891: <==closure== 80980 (pos)
                    (Pc_survivorat_s_p12)

                    ; #87322: <==closure== 46848 (pos)
                    (Pd_survivorat_s_p12)

                    ; #97100: origin
                    (Bb_survivorat_s_p12)

                    ; #15837: <==negation-removal== 77185 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #16856: <==negation-removal== 78052 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #33751: <==negation-removal== 27324 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #42561: <==negation-removal== 80980 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #51006: <==negation-removal== 46848 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #73706: <==negation-removal== 85891 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #74935: <==negation-removal== 97100 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #81649: <==negation-removal== 87322 (pos)
                    (not (Bd_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #15250: <==closure== 33528 (pos)
                    (Pa_survivorat_s_p1)

                    ; #22446: origin
                    (Bb_survivorat_s_p1)

                    ; #33528: origin
                    (Ba_survivorat_s_p1)

                    ; #37318: <==closure== 22446 (pos)
                    (Pb_survivorat_s_p1)

                    ; #75324: <==closure== 81528 (pos)
                    (Pc_survivorat_s_p1)

                    ; #78209: <==closure== 86992 (pos)
                    (Pd_survivorat_s_p1)

                    ; #81528: origin
                    (Bc_survivorat_s_p1)

                    ; #86992: origin
                    (Bd_survivorat_s_p1)

                    ; #18983: <==negation-removal== 81528 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #26944: <==negation-removal== 22446 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #43800: <==negation-removal== 15250 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #46881: <==negation-removal== 86992 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #74726: <==negation-removal== 33528 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #76635: <==negation-removal== 37318 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #78260: <==negation-removal== 75324 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #79997: <==negation-removal== 78209 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #15250: <==closure== 33528 (pos)
                    (Pa_survivorat_s_p1)

                    ; #22446: origin
                    (Bb_survivorat_s_p1)

                    ; #33528: origin
                    (Ba_survivorat_s_p1)

                    ; #37318: <==closure== 22446 (pos)
                    (Pb_survivorat_s_p1)

                    ; #75324: <==closure== 81528 (pos)
                    (Pc_survivorat_s_p1)

                    ; #78209: <==closure== 86992 (pos)
                    (Pd_survivorat_s_p1)

                    ; #81528: origin
                    (Bc_survivorat_s_p1)

                    ; #86992: origin
                    (Bd_survivorat_s_p1)

                    ; #18983: <==negation-removal== 81528 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #26944: <==negation-removal== 22446 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #43800: <==negation-removal== 15250 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #46881: <==negation-removal== 86992 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #74726: <==negation-removal== 33528 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #76635: <==negation-removal== 37318 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #78260: <==negation-removal== 75324 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #79997: <==negation-removal== 78209 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #15250: <==closure== 33528 (pos)
                    (Pa_survivorat_s_p1)

                    ; #22446: origin
                    (Bb_survivorat_s_p1)

                    ; #33528: origin
                    (Ba_survivorat_s_p1)

                    ; #37318: <==closure== 22446 (pos)
                    (Pb_survivorat_s_p1)

                    ; #75324: <==closure== 81528 (pos)
                    (Pc_survivorat_s_p1)

                    ; #78209: <==closure== 86992 (pos)
                    (Pd_survivorat_s_p1)

                    ; #81528: origin
                    (Bc_survivorat_s_p1)

                    ; #86992: origin
                    (Bd_survivorat_s_p1)

                    ; #18983: <==negation-removal== 81528 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #26944: <==negation-removal== 22446 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #43800: <==negation-removal== 15250 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #46881: <==negation-removal== 86992 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #74726: <==negation-removal== 33528 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #76635: <==negation-removal== 37318 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #78260: <==negation-removal== 75324 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #79997: <==negation-removal== 78209 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p1_d_s
        :precondition (and (Pd_survivorat_s_p1)
                           (at_d_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #15250: <==closure== 33528 (pos)
                    (Pa_survivorat_s_p1)

                    ; #22446: origin
                    (Bb_survivorat_s_p1)

                    ; #33528: origin
                    (Ba_survivorat_s_p1)

                    ; #37318: <==closure== 22446 (pos)
                    (Pb_survivorat_s_p1)

                    ; #75324: <==closure== 81528 (pos)
                    (Pc_survivorat_s_p1)

                    ; #78209: <==closure== 86992 (pos)
                    (Pd_survivorat_s_p1)

                    ; #81528: origin
                    (Bc_survivorat_s_p1)

                    ; #86992: origin
                    (Bd_survivorat_s_p1)

                    ; #18983: <==negation-removal== 81528 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #26944: <==negation-removal== 22446 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #43800: <==negation-removal== 15250 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #46881: <==negation-removal== 86992 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #74726: <==negation-removal== 33528 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #76635: <==negation-removal== 37318 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #78260: <==negation-removal== 75324 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #79997: <==negation-removal== 78209 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #31262: <==closure== 45990 (pos)
                    (Pc_survivorat_s_p2)

                    ; #44391: origin
                    (Ba_survivorat_s_p2)

                    ; #45990: origin
                    (Bc_survivorat_s_p2)

                    ; #51528: origin
                    (Bb_survivorat_s_p2)

                    ; #67893: <==closure== 51528 (pos)
                    (Pb_survivorat_s_p2)

                    ; #69533: <==closure== 82788 (pos)
                    (Pd_survivorat_s_p2)

                    ; #82788: origin
                    (Bd_survivorat_s_p2)

                    ; #89216: <==closure== 44391 (pos)
                    (Pa_survivorat_s_p2)

                    ; #19930: <==negation-removal== 51528 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #29282: <==negation-removal== 82788 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #41220: <==negation-removal== 31262 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #41362: <==negation-removal== 67893 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #58202: <==negation-removal== 45990 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #62177: <==negation-removal== 44391 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #84081: <==negation-removal== 89216 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #88392: <==negation-removal== 69533 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #31262: <==closure== 45990 (pos)
                    (Pc_survivorat_s_p2)

                    ; #44391: origin
                    (Ba_survivorat_s_p2)

                    ; #45990: origin
                    (Bc_survivorat_s_p2)

                    ; #51528: origin
                    (Bb_survivorat_s_p2)

                    ; #67893: <==closure== 51528 (pos)
                    (Pb_survivorat_s_p2)

                    ; #69533: <==closure== 82788 (pos)
                    (Pd_survivorat_s_p2)

                    ; #82788: origin
                    (Bd_survivorat_s_p2)

                    ; #89216: <==closure== 44391 (pos)
                    (Pa_survivorat_s_p2)

                    ; #19930: <==negation-removal== 51528 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #29282: <==negation-removal== 82788 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #41220: <==negation-removal== 31262 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #41362: <==negation-removal== 67893 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #58202: <==negation-removal== 45990 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #62177: <==negation-removal== 44391 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #84081: <==negation-removal== 89216 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #88392: <==negation-removal== 69533 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #31262: <==closure== 45990 (pos)
                    (Pc_survivorat_s_p2)

                    ; #44391: origin
                    (Ba_survivorat_s_p2)

                    ; #45990: origin
                    (Bc_survivorat_s_p2)

                    ; #51528: origin
                    (Bb_survivorat_s_p2)

                    ; #67893: <==closure== 51528 (pos)
                    (Pb_survivorat_s_p2)

                    ; #69533: <==closure== 82788 (pos)
                    (Pd_survivorat_s_p2)

                    ; #82788: origin
                    (Bd_survivorat_s_p2)

                    ; #89216: <==closure== 44391 (pos)
                    (Pa_survivorat_s_p2)

                    ; #19930: <==negation-removal== 51528 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #29282: <==negation-removal== 82788 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #41220: <==negation-removal== 31262 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #41362: <==negation-removal== 67893 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #58202: <==negation-removal== 45990 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #62177: <==negation-removal== 44391 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #84081: <==negation-removal== 89216 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #88392: <==negation-removal== 69533 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p2_d_s
        :precondition (and (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2)
                           (at_d_p2))
        :effect (and
                    ; #31262: <==closure== 45990 (pos)
                    (Pc_survivorat_s_p2)

                    ; #44391: origin
                    (Ba_survivorat_s_p2)

                    ; #45990: origin
                    (Bc_survivorat_s_p2)

                    ; #51528: origin
                    (Bb_survivorat_s_p2)

                    ; #67893: <==closure== 51528 (pos)
                    (Pb_survivorat_s_p2)

                    ; #69533: <==closure== 82788 (pos)
                    (Pd_survivorat_s_p2)

                    ; #82788: origin
                    (Bd_survivorat_s_p2)

                    ; #89216: <==closure== 44391 (pos)
                    (Pa_survivorat_s_p2)

                    ; #19930: <==negation-removal== 51528 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #29282: <==negation-removal== 82788 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #41220: <==negation-removal== 31262 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #41362: <==negation-removal== 67893 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #58202: <==negation-removal== 45990 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #62177: <==negation-removal== 44391 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #84081: <==negation-removal== 89216 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #88392: <==negation-removal== 69533 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #17034: <==closure== 49781 (pos)
                    (Pa_survivorat_s_p3)

                    ; #33274: <==closure== 60484 (pos)
                    (Pd_survivorat_s_p3)

                    ; #37335: <==closure== 82771 (pos)
                    (Pb_survivorat_s_p3)

                    ; #49781: origin
                    (Ba_survivorat_s_p3)

                    ; #60484: origin
                    (Bd_survivorat_s_p3)

                    ; #72674: origin
                    (Bc_survivorat_s_p3)

                    ; #82771: origin
                    (Bb_survivorat_s_p3)

                    ; #89894: <==closure== 72674 (pos)
                    (Pc_survivorat_s_p3)

                    ; #22498: <==negation-removal== 49781 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #24597: <==negation-removal== 33274 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #38063: <==negation-removal== 89894 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #39067: <==negation-removal== 17034 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #54706: <==negation-removal== 60484 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #60998: <==negation-removal== 37335 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #61603: <==negation-removal== 82771 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #63342: <==negation-removal== 72674 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #17034: <==closure== 49781 (pos)
                    (Pa_survivorat_s_p3)

                    ; #33274: <==closure== 60484 (pos)
                    (Pd_survivorat_s_p3)

                    ; #37335: <==closure== 82771 (pos)
                    (Pb_survivorat_s_p3)

                    ; #49781: origin
                    (Ba_survivorat_s_p3)

                    ; #60484: origin
                    (Bd_survivorat_s_p3)

                    ; #72674: origin
                    (Bc_survivorat_s_p3)

                    ; #82771: origin
                    (Bb_survivorat_s_p3)

                    ; #89894: <==closure== 72674 (pos)
                    (Pc_survivorat_s_p3)

                    ; #22498: <==negation-removal== 49781 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #24597: <==negation-removal== 33274 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #38063: <==negation-removal== 89894 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #39067: <==negation-removal== 17034 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #54706: <==negation-removal== 60484 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #60998: <==negation-removal== 37335 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #61603: <==negation-removal== 82771 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #63342: <==negation-removal== 72674 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #17034: <==closure== 49781 (pos)
                    (Pa_survivorat_s_p3)

                    ; #33274: <==closure== 60484 (pos)
                    (Pd_survivorat_s_p3)

                    ; #37335: <==closure== 82771 (pos)
                    (Pb_survivorat_s_p3)

                    ; #49781: origin
                    (Ba_survivorat_s_p3)

                    ; #60484: origin
                    (Bd_survivorat_s_p3)

                    ; #72674: origin
                    (Bc_survivorat_s_p3)

                    ; #82771: origin
                    (Bb_survivorat_s_p3)

                    ; #89894: <==closure== 72674 (pos)
                    (Pc_survivorat_s_p3)

                    ; #22498: <==negation-removal== 49781 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #24597: <==negation-removal== 33274 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #38063: <==negation-removal== 89894 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #39067: <==negation-removal== 17034 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #54706: <==negation-removal== 60484 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #60998: <==negation-removal== 37335 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #61603: <==negation-removal== 82771 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #63342: <==negation-removal== 72674 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_d_s
        :precondition (and (at_d_p3)
                           (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #17034: <==closure== 49781 (pos)
                    (Pa_survivorat_s_p3)

                    ; #33274: <==closure== 60484 (pos)
                    (Pd_survivorat_s_p3)

                    ; #37335: <==closure== 82771 (pos)
                    (Pb_survivorat_s_p3)

                    ; #49781: origin
                    (Ba_survivorat_s_p3)

                    ; #60484: origin
                    (Bd_survivorat_s_p3)

                    ; #72674: origin
                    (Bc_survivorat_s_p3)

                    ; #82771: origin
                    (Bb_survivorat_s_p3)

                    ; #89894: <==closure== 72674 (pos)
                    (Pc_survivorat_s_p3)

                    ; #22498: <==negation-removal== 49781 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #24597: <==negation-removal== 33274 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #38063: <==negation-removal== 89894 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #39067: <==negation-removal== 17034 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #54706: <==negation-removal== 60484 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #60998: <==negation-removal== 37335 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #61603: <==negation-removal== 82771 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #63342: <==negation-removal== 72674 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #11883: <==closure== 50692 (pos)
                    (Pd_survivorat_s_p4)

                    ; #12057: origin
                    (Bc_survivorat_s_p4)

                    ; #26126: <==closure== 12057 (pos)
                    (Pc_survivorat_s_p4)

                    ; #28638: origin
                    (Ba_survivorat_s_p4)

                    ; #42071: origin
                    (Bb_survivorat_s_p4)

                    ; #45961: <==closure== 42071 (pos)
                    (Pb_survivorat_s_p4)

                    ; #50692: origin
                    (Bd_survivorat_s_p4)

                    ; #68051: <==closure== 28638 (pos)
                    (Pa_survivorat_s_p4)

                    ; #16550: <==negation-removal== 26126 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #28711: <==negation-removal== 42071 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #30840: <==negation-removal== 45961 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #36205: <==negation-removal== 68051 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #37253: <==negation-removal== 11883 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #47711: <==negation-removal== 50692 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #48266: <==negation-removal== 12057 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #57962: <==negation-removal== 28638 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #11883: <==closure== 50692 (pos)
                    (Pd_survivorat_s_p4)

                    ; #12057: origin
                    (Bc_survivorat_s_p4)

                    ; #26126: <==closure== 12057 (pos)
                    (Pc_survivorat_s_p4)

                    ; #28638: origin
                    (Ba_survivorat_s_p4)

                    ; #42071: origin
                    (Bb_survivorat_s_p4)

                    ; #45961: <==closure== 42071 (pos)
                    (Pb_survivorat_s_p4)

                    ; #50692: origin
                    (Bd_survivorat_s_p4)

                    ; #68051: <==closure== 28638 (pos)
                    (Pa_survivorat_s_p4)

                    ; #16550: <==negation-removal== 26126 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #28711: <==negation-removal== 42071 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #30840: <==negation-removal== 45961 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #36205: <==negation-removal== 68051 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #37253: <==negation-removal== 11883 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #47711: <==negation-removal== 50692 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #48266: <==negation-removal== 12057 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #57962: <==negation-removal== 28638 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #11883: <==closure== 50692 (pos)
                    (Pd_survivorat_s_p4)

                    ; #12057: origin
                    (Bc_survivorat_s_p4)

                    ; #26126: <==closure== 12057 (pos)
                    (Pc_survivorat_s_p4)

                    ; #28638: origin
                    (Ba_survivorat_s_p4)

                    ; #42071: origin
                    (Bb_survivorat_s_p4)

                    ; #45961: <==closure== 42071 (pos)
                    (Pb_survivorat_s_p4)

                    ; #50692: origin
                    (Bd_survivorat_s_p4)

                    ; #68051: <==closure== 28638 (pos)
                    (Pa_survivorat_s_p4)

                    ; #16550: <==negation-removal== 26126 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #28711: <==negation-removal== 42071 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #30840: <==negation-removal== 45961 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #36205: <==negation-removal== 68051 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #37253: <==negation-removal== 11883 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #47711: <==negation-removal== 50692 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #48266: <==negation-removal== 12057 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #57962: <==negation-removal== 28638 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_d_s
        :precondition (and (at_d_p4)
                           (Bd_survivorat_s_p4)
                           (Pd_survivorat_s_p4))
        :effect (and
                    ; #11883: <==closure== 50692 (pos)
                    (Pd_survivorat_s_p4)

                    ; #12057: origin
                    (Bc_survivorat_s_p4)

                    ; #26126: <==closure== 12057 (pos)
                    (Pc_survivorat_s_p4)

                    ; #28638: origin
                    (Ba_survivorat_s_p4)

                    ; #42071: origin
                    (Bb_survivorat_s_p4)

                    ; #45961: <==closure== 42071 (pos)
                    (Pb_survivorat_s_p4)

                    ; #50692: origin
                    (Bd_survivorat_s_p4)

                    ; #68051: <==closure== 28638 (pos)
                    (Pa_survivorat_s_p4)

                    ; #16550: <==negation-removal== 26126 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #28711: <==negation-removal== 42071 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #30840: <==negation-removal== 45961 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #36205: <==negation-removal== 68051 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #37253: <==negation-removal== 11883 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #47711: <==negation-removal== 50692 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #48266: <==negation-removal== 12057 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #57962: <==negation-removal== 28638 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #20878: <==closure== 39543 (pos)
                    (Pc_survivorat_s_p5)

                    ; #26246: origin
                    (Bb_survivorat_s_p5)

                    ; #39543: origin
                    (Bc_survivorat_s_p5)

                    ; #46666: <==closure== 74390 (pos)
                    (Pd_survivorat_s_p5)

                    ; #57355: <==closure== 26246 (pos)
                    (Pb_survivorat_s_p5)

                    ; #58064: origin
                    (Ba_survivorat_s_p5)

                    ; #60276: <==closure== 58064 (pos)
                    (Pa_survivorat_s_p5)

                    ; #74390: origin
                    (Bd_survivorat_s_p5)

                    ; #16479: <==negation-removal== 46666 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #26590: <==negation-removal== 39543 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #28802: <==negation-removal== 74390 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #53581: <==negation-removal== 20878 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #61752: <==negation-removal== 57355 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #64555: <==negation-removal== 60276 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #69031: <==negation-removal== 26246 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #80771: <==negation-removal== 58064 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #20878: <==closure== 39543 (pos)
                    (Pc_survivorat_s_p5)

                    ; #26246: origin
                    (Bb_survivorat_s_p5)

                    ; #39543: origin
                    (Bc_survivorat_s_p5)

                    ; #46666: <==closure== 74390 (pos)
                    (Pd_survivorat_s_p5)

                    ; #57355: <==closure== 26246 (pos)
                    (Pb_survivorat_s_p5)

                    ; #58064: origin
                    (Ba_survivorat_s_p5)

                    ; #60276: <==closure== 58064 (pos)
                    (Pa_survivorat_s_p5)

                    ; #74390: origin
                    (Bd_survivorat_s_p5)

                    ; #16479: <==negation-removal== 46666 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #26590: <==negation-removal== 39543 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #28802: <==negation-removal== 74390 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #53581: <==negation-removal== 20878 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #61752: <==negation-removal== 57355 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #64555: <==negation-removal== 60276 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #69031: <==negation-removal== 26246 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #80771: <==negation-removal== 58064 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #20878: <==closure== 39543 (pos)
                    (Pc_survivorat_s_p5)

                    ; #26246: origin
                    (Bb_survivorat_s_p5)

                    ; #39543: origin
                    (Bc_survivorat_s_p5)

                    ; #46666: <==closure== 74390 (pos)
                    (Pd_survivorat_s_p5)

                    ; #57355: <==closure== 26246 (pos)
                    (Pb_survivorat_s_p5)

                    ; #58064: origin
                    (Ba_survivorat_s_p5)

                    ; #60276: <==closure== 58064 (pos)
                    (Pa_survivorat_s_p5)

                    ; #74390: origin
                    (Bd_survivorat_s_p5)

                    ; #16479: <==negation-removal== 46666 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #26590: <==negation-removal== 39543 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #28802: <==negation-removal== 74390 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #53581: <==negation-removal== 20878 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #61752: <==negation-removal== 57355 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #64555: <==negation-removal== 60276 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #69031: <==negation-removal== 26246 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #80771: <==negation-removal== 58064 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_d_s
        :precondition (and (Bd_survivorat_s_p5)
                           (at_d_p5)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #20878: <==closure== 39543 (pos)
                    (Pc_survivorat_s_p5)

                    ; #26246: origin
                    (Bb_survivorat_s_p5)

                    ; #39543: origin
                    (Bc_survivorat_s_p5)

                    ; #46666: <==closure== 74390 (pos)
                    (Pd_survivorat_s_p5)

                    ; #57355: <==closure== 26246 (pos)
                    (Pb_survivorat_s_p5)

                    ; #58064: origin
                    (Ba_survivorat_s_p5)

                    ; #60276: <==closure== 58064 (pos)
                    (Pa_survivorat_s_p5)

                    ; #74390: origin
                    (Bd_survivorat_s_p5)

                    ; #16479: <==negation-removal== 46666 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #26590: <==negation-removal== 39543 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #28802: <==negation-removal== 74390 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #53581: <==negation-removal== 20878 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #61752: <==negation-removal== 57355 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #64555: <==negation-removal== 60276 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #69031: <==negation-removal== 26246 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #80771: <==negation-removal== 58064 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #14289: <==closure== 80267 (pos)
                    (Pd_survivorat_s_p6)

                    ; #18173: origin
                    (Bc_survivorat_s_p6)

                    ; #41211: <==closure== 79151 (pos)
                    (Pb_survivorat_s_p6)

                    ; #76657: <==closure== 18173 (pos)
                    (Pc_survivorat_s_p6)

                    ; #79151: origin
                    (Bb_survivorat_s_p6)

                    ; #80267: origin
                    (Bd_survivorat_s_p6)

                    ; #90421: <==closure== 91078 (pos)
                    (Pa_survivorat_s_p6)

                    ; #91078: origin
                    (Ba_survivorat_s_p6)

                    ; #31608: <==negation-removal== 79151 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #59846: <==negation-removal== 91078 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #69876: <==negation-removal== 76657 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #71144: <==negation-removal== 41211 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #77196: <==negation-removal== 80267 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #78240: <==negation-removal== 18173 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #80008: <==negation-removal== 14289 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #83115: <==negation-removal== 90421 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #14289: <==closure== 80267 (pos)
                    (Pd_survivorat_s_p6)

                    ; #18173: origin
                    (Bc_survivorat_s_p6)

                    ; #41211: <==closure== 79151 (pos)
                    (Pb_survivorat_s_p6)

                    ; #76657: <==closure== 18173 (pos)
                    (Pc_survivorat_s_p6)

                    ; #79151: origin
                    (Bb_survivorat_s_p6)

                    ; #80267: origin
                    (Bd_survivorat_s_p6)

                    ; #90421: <==closure== 91078 (pos)
                    (Pa_survivorat_s_p6)

                    ; #91078: origin
                    (Ba_survivorat_s_p6)

                    ; #31608: <==negation-removal== 79151 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #59846: <==negation-removal== 91078 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #69876: <==negation-removal== 76657 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #71144: <==negation-removal== 41211 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #77196: <==negation-removal== 80267 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #78240: <==negation-removal== 18173 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #80008: <==negation-removal== 14289 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #83115: <==negation-removal== 90421 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #14289: <==closure== 80267 (pos)
                    (Pd_survivorat_s_p6)

                    ; #18173: origin
                    (Bc_survivorat_s_p6)

                    ; #41211: <==closure== 79151 (pos)
                    (Pb_survivorat_s_p6)

                    ; #76657: <==closure== 18173 (pos)
                    (Pc_survivorat_s_p6)

                    ; #79151: origin
                    (Bb_survivorat_s_p6)

                    ; #80267: origin
                    (Bd_survivorat_s_p6)

                    ; #90421: <==closure== 91078 (pos)
                    (Pa_survivorat_s_p6)

                    ; #91078: origin
                    (Ba_survivorat_s_p6)

                    ; #31608: <==negation-removal== 79151 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #59846: <==negation-removal== 91078 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #69876: <==negation-removal== 76657 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #71144: <==negation-removal== 41211 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #77196: <==negation-removal== 80267 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #78240: <==negation-removal== 18173 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #80008: <==negation-removal== 14289 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #83115: <==negation-removal== 90421 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_d_s
        :precondition (and (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #14289: <==closure== 80267 (pos)
                    (Pd_survivorat_s_p6)

                    ; #18173: origin
                    (Bc_survivorat_s_p6)

                    ; #41211: <==closure== 79151 (pos)
                    (Pb_survivorat_s_p6)

                    ; #76657: <==closure== 18173 (pos)
                    (Pc_survivorat_s_p6)

                    ; #79151: origin
                    (Bb_survivorat_s_p6)

                    ; #80267: origin
                    (Bd_survivorat_s_p6)

                    ; #90421: <==closure== 91078 (pos)
                    (Pa_survivorat_s_p6)

                    ; #91078: origin
                    (Ba_survivorat_s_p6)

                    ; #31608: <==negation-removal== 79151 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #59846: <==negation-removal== 91078 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #69876: <==negation-removal== 76657 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #71144: <==negation-removal== 41211 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #77196: <==negation-removal== 80267 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #78240: <==negation-removal== 18173 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #80008: <==negation-removal== 14289 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #83115: <==negation-removal== 90421 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #14383: origin
                    (Bd_survivorat_s_p7)

                    ; #22939: <==closure== 80251 (pos)
                    (Pb_survivorat_s_p7)

                    ; #42033: origin
                    (Bc_survivorat_s_p7)

                    ; #43363: <==closure== 14383 (pos)
                    (Pd_survivorat_s_p7)

                    ; #46798: <==closure== 87655 (pos)
                    (Pa_survivorat_s_p7)

                    ; #58255: <==closure== 42033 (pos)
                    (Pc_survivorat_s_p7)

                    ; #80251: origin
                    (Bb_survivorat_s_p7)

                    ; #87655: origin
                    (Ba_survivorat_s_p7)

                    ; #16195: <==negation-removal== 58255 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #50168: <==negation-removal== 14383 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #53671: <==negation-removal== 87655 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #56276: <==negation-removal== 80251 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #60252: <==negation-removal== 46798 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #74594: <==negation-removal== 22939 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #84867: <==negation-removal== 42033 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #91034: <==negation-removal== 43363 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #14383: origin
                    (Bd_survivorat_s_p7)

                    ; #22939: <==closure== 80251 (pos)
                    (Pb_survivorat_s_p7)

                    ; #42033: origin
                    (Bc_survivorat_s_p7)

                    ; #43363: <==closure== 14383 (pos)
                    (Pd_survivorat_s_p7)

                    ; #46798: <==closure== 87655 (pos)
                    (Pa_survivorat_s_p7)

                    ; #58255: <==closure== 42033 (pos)
                    (Pc_survivorat_s_p7)

                    ; #80251: origin
                    (Bb_survivorat_s_p7)

                    ; #87655: origin
                    (Ba_survivorat_s_p7)

                    ; #16195: <==negation-removal== 58255 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #50168: <==negation-removal== 14383 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #53671: <==negation-removal== 87655 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #56276: <==negation-removal== 80251 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #60252: <==negation-removal== 46798 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #74594: <==negation-removal== 22939 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #84867: <==negation-removal== 42033 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #91034: <==negation-removal== 43363 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #14383: origin
                    (Bd_survivorat_s_p7)

                    ; #22939: <==closure== 80251 (pos)
                    (Pb_survivorat_s_p7)

                    ; #42033: origin
                    (Bc_survivorat_s_p7)

                    ; #43363: <==closure== 14383 (pos)
                    (Pd_survivorat_s_p7)

                    ; #46798: <==closure== 87655 (pos)
                    (Pa_survivorat_s_p7)

                    ; #58255: <==closure== 42033 (pos)
                    (Pc_survivorat_s_p7)

                    ; #80251: origin
                    (Bb_survivorat_s_p7)

                    ; #87655: origin
                    (Ba_survivorat_s_p7)

                    ; #16195: <==negation-removal== 58255 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #50168: <==negation-removal== 14383 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #53671: <==negation-removal== 87655 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #56276: <==negation-removal== 80251 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #60252: <==negation-removal== 46798 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #74594: <==negation-removal== 22939 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #84867: <==negation-removal== 42033 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #91034: <==negation-removal== 43363 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_d_s
        :precondition (and (at_d_p7)
                           (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #14383: origin
                    (Bd_survivorat_s_p7)

                    ; #22939: <==closure== 80251 (pos)
                    (Pb_survivorat_s_p7)

                    ; #42033: origin
                    (Bc_survivorat_s_p7)

                    ; #43363: <==closure== 14383 (pos)
                    (Pd_survivorat_s_p7)

                    ; #46798: <==closure== 87655 (pos)
                    (Pa_survivorat_s_p7)

                    ; #58255: <==closure== 42033 (pos)
                    (Pc_survivorat_s_p7)

                    ; #80251: origin
                    (Bb_survivorat_s_p7)

                    ; #87655: origin
                    (Ba_survivorat_s_p7)

                    ; #16195: <==negation-removal== 58255 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #50168: <==negation-removal== 14383 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #53671: <==negation-removal== 87655 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #56276: <==negation-removal== 80251 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #60252: <==negation-removal== 46798 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #74594: <==negation-removal== 22939 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #84867: <==negation-removal== 42033 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #91034: <==negation-removal== 43363 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #18499: <==closure== 49680 (pos)
                    (Pd_survivorat_s_p8)

                    ; #25998: origin
                    (Bb_survivorat_s_p8)

                    ; #47773: origin
                    (Bc_survivorat_s_p8)

                    ; #49680: origin
                    (Bd_survivorat_s_p8)

                    ; #73574: origin
                    (Ba_survivorat_s_p8)

                    ; #81508: <==closure== 47773 (pos)
                    (Pc_survivorat_s_p8)

                    ; #82342: <==closure== 25998 (pos)
                    (Pb_survivorat_s_p8)

                    ; #88769: <==closure== 73574 (pos)
                    (Pa_survivorat_s_p8)

                    ; #13710: <==negation-removal== 18499 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #33256: <==negation-removal== 73574 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #39098: <==negation-removal== 88769 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #42460: <==negation-removal== 82342 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #43406: <==negation-removal== 49680 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #49087: <==negation-removal== 47773 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #64078: <==negation-removal== 81508 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #76654: <==negation-removal== 25998 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #18499: <==closure== 49680 (pos)
                    (Pd_survivorat_s_p8)

                    ; #25998: origin
                    (Bb_survivorat_s_p8)

                    ; #47773: origin
                    (Bc_survivorat_s_p8)

                    ; #49680: origin
                    (Bd_survivorat_s_p8)

                    ; #73574: origin
                    (Ba_survivorat_s_p8)

                    ; #81508: <==closure== 47773 (pos)
                    (Pc_survivorat_s_p8)

                    ; #82342: <==closure== 25998 (pos)
                    (Pb_survivorat_s_p8)

                    ; #88769: <==closure== 73574 (pos)
                    (Pa_survivorat_s_p8)

                    ; #13710: <==negation-removal== 18499 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #33256: <==negation-removal== 73574 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #39098: <==negation-removal== 88769 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #42460: <==negation-removal== 82342 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #43406: <==negation-removal== 49680 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #49087: <==negation-removal== 47773 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #64078: <==negation-removal== 81508 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #76654: <==negation-removal== 25998 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #18499: <==closure== 49680 (pos)
                    (Pd_survivorat_s_p8)

                    ; #25998: origin
                    (Bb_survivorat_s_p8)

                    ; #47773: origin
                    (Bc_survivorat_s_p8)

                    ; #49680: origin
                    (Bd_survivorat_s_p8)

                    ; #73574: origin
                    (Ba_survivorat_s_p8)

                    ; #81508: <==closure== 47773 (pos)
                    (Pc_survivorat_s_p8)

                    ; #82342: <==closure== 25998 (pos)
                    (Pb_survivorat_s_p8)

                    ; #88769: <==closure== 73574 (pos)
                    (Pa_survivorat_s_p8)

                    ; #13710: <==negation-removal== 18499 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #33256: <==negation-removal== 73574 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #39098: <==negation-removal== 88769 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #42460: <==negation-removal== 82342 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #43406: <==negation-removal== 49680 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #49087: <==negation-removal== 47773 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #64078: <==negation-removal== 81508 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #76654: <==negation-removal== 25998 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_d_s
        :precondition (and (Bd_survivorat_s_p8)
                           (at_d_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #18499: <==closure== 49680 (pos)
                    (Pd_survivorat_s_p8)

                    ; #25998: origin
                    (Bb_survivorat_s_p8)

                    ; #47773: origin
                    (Bc_survivorat_s_p8)

                    ; #49680: origin
                    (Bd_survivorat_s_p8)

                    ; #73574: origin
                    (Ba_survivorat_s_p8)

                    ; #81508: <==closure== 47773 (pos)
                    (Pc_survivorat_s_p8)

                    ; #82342: <==closure== 25998 (pos)
                    (Pb_survivorat_s_p8)

                    ; #88769: <==closure== 73574 (pos)
                    (Pa_survivorat_s_p8)

                    ; #13710: <==negation-removal== 18499 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #33256: <==negation-removal== 73574 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #39098: <==negation-removal== 88769 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #42460: <==negation-removal== 82342 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #43406: <==negation-removal== 49680 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #49087: <==negation-removal== 47773 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #64078: <==negation-removal== 81508 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #76654: <==negation-removal== 25998 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #29014: <==closure== 87279 (pos)
                    (Pa_survivorat_s_p9)

                    ; #50433: origin
                    (Bb_survivorat_s_p9)

                    ; #56965: <==closure== 76208 (pos)
                    (Pd_survivorat_s_p9)

                    ; #59393: <==closure== 87072 (pos)
                    (Pc_survivorat_s_p9)

                    ; #76208: origin
                    (Bd_survivorat_s_p9)

                    ; #87072: origin
                    (Bc_survivorat_s_p9)

                    ; #87279: origin
                    (Ba_survivorat_s_p9)

                    ; #89415: <==closure== 50433 (pos)
                    (Pb_survivorat_s_p9)

                    ; #12019: <==negation-removal== 59393 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #14553: <==negation-removal== 56965 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #25836: <==negation-removal== 87279 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #34793: <==negation-removal== 76208 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #57546: <==negation-removal== 50433 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #68294: <==negation-removal== 89415 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #79130: <==negation-removal== 29014 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #82801: <==negation-removal== 87072 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #29014: <==closure== 87279 (pos)
                    (Pa_survivorat_s_p9)

                    ; #50433: origin
                    (Bb_survivorat_s_p9)

                    ; #56965: <==closure== 76208 (pos)
                    (Pd_survivorat_s_p9)

                    ; #59393: <==closure== 87072 (pos)
                    (Pc_survivorat_s_p9)

                    ; #76208: origin
                    (Bd_survivorat_s_p9)

                    ; #87072: origin
                    (Bc_survivorat_s_p9)

                    ; #87279: origin
                    (Ba_survivorat_s_p9)

                    ; #89415: <==closure== 50433 (pos)
                    (Pb_survivorat_s_p9)

                    ; #12019: <==negation-removal== 59393 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #14553: <==negation-removal== 56965 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #25836: <==negation-removal== 87279 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #34793: <==negation-removal== 76208 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #57546: <==negation-removal== 50433 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #68294: <==negation-removal== 89415 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #79130: <==negation-removal== 29014 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #82801: <==negation-removal== 87072 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #29014: <==closure== 87279 (pos)
                    (Pa_survivorat_s_p9)

                    ; #50433: origin
                    (Bb_survivorat_s_p9)

                    ; #56965: <==closure== 76208 (pos)
                    (Pd_survivorat_s_p9)

                    ; #59393: <==closure== 87072 (pos)
                    (Pc_survivorat_s_p9)

                    ; #76208: origin
                    (Bd_survivorat_s_p9)

                    ; #87072: origin
                    (Bc_survivorat_s_p9)

                    ; #87279: origin
                    (Ba_survivorat_s_p9)

                    ; #89415: <==closure== 50433 (pos)
                    (Pb_survivorat_s_p9)

                    ; #12019: <==negation-removal== 59393 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #14553: <==negation-removal== 56965 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #25836: <==negation-removal== 87279 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #34793: <==negation-removal== 76208 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #57546: <==negation-removal== 50433 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #68294: <==negation-removal== 89415 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #79130: <==negation-removal== 29014 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #82801: <==negation-removal== 87072 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_d_s
        :precondition (and (Bd_survivorat_s_p9)
                           (at_d_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #29014: <==closure== 87279 (pos)
                    (Pa_survivorat_s_p9)

                    ; #50433: origin
                    (Bb_survivorat_s_p9)

                    ; #56965: <==closure== 76208 (pos)
                    (Pd_survivorat_s_p9)

                    ; #59393: <==closure== 87072 (pos)
                    (Pc_survivorat_s_p9)

                    ; #76208: origin
                    (Bd_survivorat_s_p9)

                    ; #87072: origin
                    (Bc_survivorat_s_p9)

                    ; #87279: origin
                    (Ba_survivorat_s_p9)

                    ; #89415: <==closure== 50433 (pos)
                    (Pb_survivorat_s_p9)

                    ; #12019: <==negation-removal== 59393 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #14553: <==negation-removal== 56965 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #25836: <==negation-removal== 87279 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #34793: <==negation-removal== 76208 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #57546: <==negation-removal== 50433 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #68294: <==negation-removal== 89415 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #79130: <==negation-removal== 29014 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #82801: <==negation-removal== 87072 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #10726: origin
                    (at_a_p1)

                    ; #66954: origin
                    (not_at_a_p10)

                    ; #39387: <==negation-removal== 10726 (pos)
                    (not (not_at_a_p1))

                    ; #59464: <==negation-removal== 66954 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #59464: origin
                    (at_a_p10)

                    ; #66954: origin
                    (not_at_a_p10)

                    ; #59464: <==negation-removal== 66954 (pos)
                    (not (at_a_p10))

                    ; #66954: <==negation-removal== 59464 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #23689: origin
                    (at_a_p11)

                    ; #66954: origin
                    (not_at_a_p10)

                    ; #59464: <==negation-removal== 66954 (pos)
                    (not (at_a_p10))

                    ; #80137: <==negation-removal== 23689 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10))
        :effect (and
                    ; #47115: origin
                    (at_a_p12)

                    ; #66954: origin
                    (not_at_a_p10)

                    ; #59464: <==negation-removal== 66954 (pos)
                    (not (at_a_p10))

                    ; #82118: <==negation-removal== 47115 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10))
        :effect (and
                    ; #19476: origin
                    (at_a_p2)

                    ; #66954: origin
                    (not_at_a_p10)

                    ; #14580: <==negation-removal== 19476 (pos)
                    (not (not_at_a_p2))

                    ; #59464: <==negation-removal== 66954 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10))
        :effect (and
                    ; #66954: origin
                    (not_at_a_p10)

                    ; #70883: origin
                    (at_a_p3)

                    ; #24181: <==negation-removal== 70883 (pos)
                    (not (not_at_a_p3))

                    ; #59464: <==negation-removal== 66954 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10))
        :effect (and
                    ; #51345: origin
                    (at_a_p4)

                    ; #66954: origin
                    (not_at_a_p10)

                    ; #40744: <==negation-removal== 51345 (pos)
                    (not (not_at_a_p4))

                    ; #59464: <==negation-removal== 66954 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10))
        :effect (and
                    ; #39067: origin
                    (at_a_p5)

                    ; #66954: origin
                    (not_at_a_p10)

                    ; #59464: <==negation-removal== 66954 (pos)
                    (not (at_a_p10))

                    ; #86796: <==negation-removal== 39067 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10))
        :effect (and
                    ; #10554: origin
                    (at_a_p6)

                    ; #66954: origin
                    (not_at_a_p10)

                    ; #57239: <==negation-removal== 10554 (pos)
                    (not (not_at_a_p6))

                    ; #59464: <==negation-removal== 66954 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10))
        :effect (and
                    ; #16626: origin
                    (at_a_p7)

                    ; #66954: origin
                    (not_at_a_p10)

                    ; #50914: <==negation-removal== 16626 (pos)
                    (not (not_at_a_p7))

                    ; #59464: <==negation-removal== 66954 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10))
        :effect (and
                    ; #66954: origin
                    (not_at_a_p10)

                    ; #92175: origin
                    (at_a_p8)

                    ; #49725: <==negation-removal== 92175 (pos)
                    (not (not_at_a_p8))

                    ; #59464: <==negation-removal== 66954 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10))
        :effect (and
                    ; #66954: origin
                    (not_at_a_p10)

                    ; #70034: origin
                    (at_a_p9)

                    ; #21235: <==negation-removal== 70034 (pos)
                    (not (not_at_a_p9))

                    ; #59464: <==negation-removal== 66954 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #10726: origin
                    (at_a_p1)

                    ; #80137: origin
                    (not_at_a_p11)

                    ; #23689: <==negation-removal== 80137 (pos)
                    (not (at_a_p11))

                    ; #39387: <==negation-removal== 10726 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_a_p11))
        :effect (and
                    ; #59464: origin
                    (at_a_p10)

                    ; #80137: origin
                    (not_at_a_p11)

                    ; #23689: <==negation-removal== 80137 (pos)
                    (not (at_a_p11))

                    ; #66954: <==negation-removal== 59464 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_a_p11))
        :effect (and
                    ; #23689: origin
                    (at_a_p11)

                    ; #80137: origin
                    (not_at_a_p11)

                    ; #23689: <==negation-removal== 80137 (pos)
                    (not (at_a_p11))

                    ; #80137: <==negation-removal== 23689 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11))
        :effect (and
                    ; #47115: origin
                    (at_a_p12)

                    ; #80137: origin
                    (not_at_a_p11)

                    ; #23689: <==negation-removal== 80137 (pos)
                    (not (at_a_p11))

                    ; #82118: <==negation-removal== 47115 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_a_p11))
        :effect (and
                    ; #19476: origin
                    (at_a_p2)

                    ; #80137: origin
                    (not_at_a_p11)

                    ; #14580: <==negation-removal== 19476 (pos)
                    (not (not_at_a_p2))

                    ; #23689: <==negation-removal== 80137 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_a_p11))
        :effect (and
                    ; #70883: origin
                    (at_a_p3)

                    ; #80137: origin
                    (not_at_a_p11)

                    ; #23689: <==negation-removal== 80137 (pos)
                    (not (at_a_p11))

                    ; #24181: <==negation-removal== 70883 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11))
        :effect (and
                    ; #51345: origin
                    (at_a_p4)

                    ; #80137: origin
                    (not_at_a_p11)

                    ; #23689: <==negation-removal== 80137 (pos)
                    (not (at_a_p11))

                    ; #40744: <==negation-removal== 51345 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_a_p11))
        :effect (and
                    ; #39067: origin
                    (at_a_p5)

                    ; #80137: origin
                    (not_at_a_p11)

                    ; #23689: <==negation-removal== 80137 (pos)
                    (not (at_a_p11))

                    ; #86796: <==negation-removal== 39067 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #10554: origin
                    (at_a_p6)

                    ; #80137: origin
                    (not_at_a_p11)

                    ; #23689: <==negation-removal== 80137 (pos)
                    (not (at_a_p11))

                    ; #57239: <==negation-removal== 10554 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #16626: origin
                    (at_a_p7)

                    ; #80137: origin
                    (not_at_a_p11)

                    ; #23689: <==negation-removal== 80137 (pos)
                    (not (at_a_p11))

                    ; #50914: <==negation-removal== 16626 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11))
        :effect (and
                    ; #80137: origin
                    (not_at_a_p11)

                    ; #92175: origin
                    (at_a_p8)

                    ; #23689: <==negation-removal== 80137 (pos)
                    (not (at_a_p11))

                    ; #49725: <==negation-removal== 92175 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11))
        :effect (and
                    ; #70034: origin
                    (at_a_p9)

                    ; #80137: origin
                    (not_at_a_p11)

                    ; #21235: <==negation-removal== 70034 (pos)
                    (not (not_at_a_p9))

                    ; #23689: <==negation-removal== 80137 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12))
        :effect (and
                    ; #10726: origin
                    (at_a_p1)

                    ; #82118: origin
                    (not_at_a_p12)

                    ; #39387: <==negation-removal== 10726 (pos)
                    (not (not_at_a_p1))

                    ; #47115: <==negation-removal== 82118 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12))
        :effect (and
                    ; #59464: origin
                    (at_a_p10)

                    ; #82118: origin
                    (not_at_a_p12)

                    ; #47115: <==negation-removal== 82118 (pos)
                    (not (at_a_p12))

                    ; #66954: <==negation-removal== 59464 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12))
        :effect (and
                    ; #23689: origin
                    (at_a_p11)

                    ; #82118: origin
                    (not_at_a_p12)

                    ; #47115: <==negation-removal== 82118 (pos)
                    (not (at_a_p12))

                    ; #80137: <==negation-removal== 23689 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12))
        :effect (and
                    ; #47115: origin
                    (at_a_p12)

                    ; #82118: origin
                    (not_at_a_p12)

                    ; #47115: <==negation-removal== 82118 (pos)
                    (not (at_a_p12))

                    ; #82118: <==negation-removal== 47115 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12))
        :effect (and
                    ; #19476: origin
                    (at_a_p2)

                    ; #82118: origin
                    (not_at_a_p12)

                    ; #14580: <==negation-removal== 19476 (pos)
                    (not (not_at_a_p2))

                    ; #47115: <==negation-removal== 82118 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #70883: origin
                    (at_a_p3)

                    ; #82118: origin
                    (not_at_a_p12)

                    ; #24181: <==negation-removal== 70883 (pos)
                    (not (not_at_a_p3))

                    ; #47115: <==negation-removal== 82118 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12))
        :effect (and
                    ; #51345: origin
                    (at_a_p4)

                    ; #82118: origin
                    (not_at_a_p12)

                    ; #40744: <==negation-removal== 51345 (pos)
                    (not (not_at_a_p4))

                    ; #47115: <==negation-removal== 82118 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12))
        :effect (and
                    ; #39067: origin
                    (at_a_p5)

                    ; #82118: origin
                    (not_at_a_p12)

                    ; #47115: <==negation-removal== 82118 (pos)
                    (not (at_a_p12))

                    ; #86796: <==negation-removal== 39067 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12))
        :effect (and
                    ; #10554: origin
                    (at_a_p6)

                    ; #82118: origin
                    (not_at_a_p12)

                    ; #47115: <==negation-removal== 82118 (pos)
                    (not (at_a_p12))

                    ; #57239: <==negation-removal== 10554 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12))
        :effect (and
                    ; #16626: origin
                    (at_a_p7)

                    ; #82118: origin
                    (not_at_a_p12)

                    ; #47115: <==negation-removal== 82118 (pos)
                    (not (at_a_p12))

                    ; #50914: <==negation-removal== 16626 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12))
        :effect (and
                    ; #82118: origin
                    (not_at_a_p12)

                    ; #92175: origin
                    (at_a_p8)

                    ; #47115: <==negation-removal== 82118 (pos)
                    (not (at_a_p12))

                    ; #49725: <==negation-removal== 92175 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12))
        :effect (and
                    ; #70034: origin
                    (at_a_p9)

                    ; #82118: origin
                    (not_at_a_p12)

                    ; #21235: <==negation-removal== 70034 (pos)
                    (not (not_at_a_p9))

                    ; #47115: <==negation-removal== 82118 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #10726: origin
                    (at_a_p1)

                    ; #39387: origin
                    (not_at_a_p1)

                    ; #10726: <==negation-removal== 39387 (pos)
                    (not (at_a_p1))

                    ; #39387: <==negation-removal== 10726 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1))
        :effect (and
                    ; #39387: origin
                    (not_at_a_p1)

                    ; #59464: origin
                    (at_a_p10)

                    ; #10726: <==negation-removal== 39387 (pos)
                    (not (at_a_p1))

                    ; #66954: <==negation-removal== 59464 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1))
        :effect (and
                    ; #23689: origin
                    (at_a_p11)

                    ; #39387: origin
                    (not_at_a_p1)

                    ; #10726: <==negation-removal== 39387 (pos)
                    (not (at_a_p1))

                    ; #80137: <==negation-removal== 23689 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1))
        :effect (and
                    ; #39387: origin
                    (not_at_a_p1)

                    ; #47115: origin
                    (at_a_p12)

                    ; #10726: <==negation-removal== 39387 (pos)
                    (not (at_a_p1))

                    ; #82118: <==negation-removal== 47115 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #19476: origin
                    (at_a_p2)

                    ; #39387: origin
                    (not_at_a_p1)

                    ; #10726: <==negation-removal== 39387 (pos)
                    (not (at_a_p1))

                    ; #14580: <==negation-removal== 19476 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #39387: origin
                    (not_at_a_p1)

                    ; #70883: origin
                    (at_a_p3)

                    ; #10726: <==negation-removal== 39387 (pos)
                    (not (at_a_p1))

                    ; #24181: <==negation-removal== 70883 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #39387: origin
                    (not_at_a_p1)

                    ; #51345: origin
                    (at_a_p4)

                    ; #10726: <==negation-removal== 39387 (pos)
                    (not (at_a_p1))

                    ; #40744: <==negation-removal== 51345 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #39067: origin
                    (at_a_p5)

                    ; #39387: origin
                    (not_at_a_p1)

                    ; #10726: <==negation-removal== 39387 (pos)
                    (not (at_a_p1))

                    ; #86796: <==negation-removal== 39067 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #10554: origin
                    (at_a_p6)

                    ; #39387: origin
                    (not_at_a_p1)

                    ; #10726: <==negation-removal== 39387 (pos)
                    (not (at_a_p1))

                    ; #57239: <==negation-removal== 10554 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #16626: origin
                    (at_a_p7)

                    ; #39387: origin
                    (not_at_a_p1)

                    ; #10726: <==negation-removal== 39387 (pos)
                    (not (at_a_p1))

                    ; #50914: <==negation-removal== 16626 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #39387: origin
                    (not_at_a_p1)

                    ; #92175: origin
                    (at_a_p8)

                    ; #10726: <==negation-removal== 39387 (pos)
                    (not (at_a_p1))

                    ; #49725: <==negation-removal== 92175 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #39387: origin
                    (not_at_a_p1)

                    ; #70034: origin
                    (at_a_p9)

                    ; #10726: <==negation-removal== 39387 (pos)
                    (not (at_a_p1))

                    ; #21235: <==negation-removal== 70034 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #10726: origin
                    (at_a_p1)

                    ; #14580: origin
                    (not_at_a_p2)

                    ; #19476: <==negation-removal== 14580 (pos)
                    (not (at_a_p2))

                    ; #39387: <==negation-removal== 10726 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2))
        :effect (and
                    ; #14580: origin
                    (not_at_a_p2)

                    ; #59464: origin
                    (at_a_p10)

                    ; #19476: <==negation-removal== 14580 (pos)
                    (not (at_a_p2))

                    ; #66954: <==negation-removal== 59464 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2))
        :effect (and
                    ; #14580: origin
                    (not_at_a_p2)

                    ; #23689: origin
                    (at_a_p11)

                    ; #19476: <==negation-removal== 14580 (pos)
                    (not (at_a_p2))

                    ; #80137: <==negation-removal== 23689 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2))
        :effect (and
                    ; #14580: origin
                    (not_at_a_p2)

                    ; #47115: origin
                    (at_a_p12)

                    ; #19476: <==negation-removal== 14580 (pos)
                    (not (at_a_p2))

                    ; #82118: <==negation-removal== 47115 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #14580: origin
                    (not_at_a_p2)

                    ; #19476: origin
                    (at_a_p2)

                    ; #14580: <==negation-removal== 19476 (pos)
                    (not (not_at_a_p2))

                    ; #19476: <==negation-removal== 14580 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #14580: origin
                    (not_at_a_p2)

                    ; #70883: origin
                    (at_a_p3)

                    ; #19476: <==negation-removal== 14580 (pos)
                    (not (at_a_p2))

                    ; #24181: <==negation-removal== 70883 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #14580: origin
                    (not_at_a_p2)

                    ; #51345: origin
                    (at_a_p4)

                    ; #19476: <==negation-removal== 14580 (pos)
                    (not (at_a_p2))

                    ; #40744: <==negation-removal== 51345 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #14580: origin
                    (not_at_a_p2)

                    ; #39067: origin
                    (at_a_p5)

                    ; #19476: <==negation-removal== 14580 (pos)
                    (not (at_a_p2))

                    ; #86796: <==negation-removal== 39067 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #10554: origin
                    (at_a_p6)

                    ; #14580: origin
                    (not_at_a_p2)

                    ; #19476: <==negation-removal== 14580 (pos)
                    (not (at_a_p2))

                    ; #57239: <==negation-removal== 10554 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #14580: origin
                    (not_at_a_p2)

                    ; #16626: origin
                    (at_a_p7)

                    ; #19476: <==negation-removal== 14580 (pos)
                    (not (at_a_p2))

                    ; #50914: <==negation-removal== 16626 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #14580: origin
                    (not_at_a_p2)

                    ; #92175: origin
                    (at_a_p8)

                    ; #19476: <==negation-removal== 14580 (pos)
                    (not (at_a_p2))

                    ; #49725: <==negation-removal== 92175 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #14580: origin
                    (not_at_a_p2)

                    ; #70034: origin
                    (at_a_p9)

                    ; #19476: <==negation-removal== 14580 (pos)
                    (not (at_a_p2))

                    ; #21235: <==negation-removal== 70034 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #10726: origin
                    (at_a_p1)

                    ; #24181: origin
                    (not_at_a_p3)

                    ; #39387: <==negation-removal== 10726 (pos)
                    (not (not_at_a_p1))

                    ; #70883: <==negation-removal== 24181 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #24181: origin
                    (not_at_a_p3)

                    ; #59464: origin
                    (at_a_p10)

                    ; #66954: <==negation-removal== 59464 (pos)
                    (not (not_at_a_p10))

                    ; #70883: <==negation-removal== 24181 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #23689: origin
                    (at_a_p11)

                    ; #24181: origin
                    (not_at_a_p3)

                    ; #70883: <==negation-removal== 24181 (pos)
                    (not (at_a_p3))

                    ; #80137: <==negation-removal== 23689 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3))
        :effect (and
                    ; #24181: origin
                    (not_at_a_p3)

                    ; #47115: origin
                    (at_a_p12)

                    ; #70883: <==negation-removal== 24181 (pos)
                    (not (at_a_p3))

                    ; #82118: <==negation-removal== 47115 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #19476: origin
                    (at_a_p2)

                    ; #24181: origin
                    (not_at_a_p3)

                    ; #14580: <==negation-removal== 19476 (pos)
                    (not (not_at_a_p2))

                    ; #70883: <==negation-removal== 24181 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #24181: origin
                    (not_at_a_p3)

                    ; #70883: origin
                    (at_a_p3)

                    ; #24181: <==negation-removal== 70883 (pos)
                    (not (not_at_a_p3))

                    ; #70883: <==negation-removal== 24181 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #24181: origin
                    (not_at_a_p3)

                    ; #51345: origin
                    (at_a_p4)

                    ; #40744: <==negation-removal== 51345 (pos)
                    (not (not_at_a_p4))

                    ; #70883: <==negation-removal== 24181 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #24181: origin
                    (not_at_a_p3)

                    ; #39067: origin
                    (at_a_p5)

                    ; #70883: <==negation-removal== 24181 (pos)
                    (not (at_a_p3))

                    ; #86796: <==negation-removal== 39067 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #10554: origin
                    (at_a_p6)

                    ; #24181: origin
                    (not_at_a_p3)

                    ; #57239: <==negation-removal== 10554 (pos)
                    (not (not_at_a_p6))

                    ; #70883: <==negation-removal== 24181 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #16626: origin
                    (at_a_p7)

                    ; #24181: origin
                    (not_at_a_p3)

                    ; #50914: <==negation-removal== 16626 (pos)
                    (not (not_at_a_p7))

                    ; #70883: <==negation-removal== 24181 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #24181: origin
                    (not_at_a_p3)

                    ; #92175: origin
                    (at_a_p8)

                    ; #49725: <==negation-removal== 92175 (pos)
                    (not (not_at_a_p8))

                    ; #70883: <==negation-removal== 24181 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #24181: origin
                    (not_at_a_p3)

                    ; #70034: origin
                    (at_a_p9)

                    ; #21235: <==negation-removal== 70034 (pos)
                    (not (not_at_a_p9))

                    ; #70883: <==negation-removal== 24181 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #10726: origin
                    (at_a_p1)

                    ; #40744: origin
                    (not_at_a_p4)

                    ; #39387: <==negation-removal== 10726 (pos)
                    (not (not_at_a_p1))

                    ; #51345: <==negation-removal== 40744 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #40744: origin
                    (not_at_a_p4)

                    ; #59464: origin
                    (at_a_p10)

                    ; #51345: <==negation-removal== 40744 (pos)
                    (not (at_a_p4))

                    ; #66954: <==negation-removal== 59464 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4))
        :effect (and
                    ; #23689: origin
                    (at_a_p11)

                    ; #40744: origin
                    (not_at_a_p4)

                    ; #51345: <==negation-removal== 40744 (pos)
                    (not (at_a_p4))

                    ; #80137: <==negation-removal== 23689 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #40744: origin
                    (not_at_a_p4)

                    ; #47115: origin
                    (at_a_p12)

                    ; #51345: <==negation-removal== 40744 (pos)
                    (not (at_a_p4))

                    ; #82118: <==negation-removal== 47115 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #19476: origin
                    (at_a_p2)

                    ; #40744: origin
                    (not_at_a_p4)

                    ; #14580: <==negation-removal== 19476 (pos)
                    (not (not_at_a_p2))

                    ; #51345: <==negation-removal== 40744 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #40744: origin
                    (not_at_a_p4)

                    ; #70883: origin
                    (at_a_p3)

                    ; #24181: <==negation-removal== 70883 (pos)
                    (not (not_at_a_p3))

                    ; #51345: <==negation-removal== 40744 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #40744: origin
                    (not_at_a_p4)

                    ; #51345: origin
                    (at_a_p4)

                    ; #40744: <==negation-removal== 51345 (pos)
                    (not (not_at_a_p4))

                    ; #51345: <==negation-removal== 40744 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #39067: origin
                    (at_a_p5)

                    ; #40744: origin
                    (not_at_a_p4)

                    ; #51345: <==negation-removal== 40744 (pos)
                    (not (at_a_p4))

                    ; #86796: <==negation-removal== 39067 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #10554: origin
                    (at_a_p6)

                    ; #40744: origin
                    (not_at_a_p4)

                    ; #51345: <==negation-removal== 40744 (pos)
                    (not (at_a_p4))

                    ; #57239: <==negation-removal== 10554 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #16626: origin
                    (at_a_p7)

                    ; #40744: origin
                    (not_at_a_p4)

                    ; #50914: <==negation-removal== 16626 (pos)
                    (not (not_at_a_p7))

                    ; #51345: <==negation-removal== 40744 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #40744: origin
                    (not_at_a_p4)

                    ; #92175: origin
                    (at_a_p8)

                    ; #49725: <==negation-removal== 92175 (pos)
                    (not (not_at_a_p8))

                    ; #51345: <==negation-removal== 40744 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #40744: origin
                    (not_at_a_p4)

                    ; #70034: origin
                    (at_a_p9)

                    ; #21235: <==negation-removal== 70034 (pos)
                    (not (not_at_a_p9))

                    ; #51345: <==negation-removal== 40744 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #10726: origin
                    (at_a_p1)

                    ; #86796: origin
                    (not_at_a_p5)

                    ; #39067: <==negation-removal== 86796 (pos)
                    (not (at_a_p5))

                    ; #39387: <==negation-removal== 10726 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_a_p5))
        :effect (and
                    ; #59464: origin
                    (at_a_p10)

                    ; #86796: origin
                    (not_at_a_p5)

                    ; #39067: <==negation-removal== 86796 (pos)
                    (not (at_a_p5))

                    ; #66954: <==negation-removal== 59464 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_a_p5))
        :effect (and
                    ; #23689: origin
                    (at_a_p11)

                    ; #86796: origin
                    (not_at_a_p5)

                    ; #39067: <==negation-removal== 86796 (pos)
                    (not (at_a_p5))

                    ; #80137: <==negation-removal== 23689 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_a_p5))
        :effect (and
                    ; #47115: origin
                    (at_a_p12)

                    ; #86796: origin
                    (not_at_a_p5)

                    ; #39067: <==negation-removal== 86796 (pos)
                    (not (at_a_p5))

                    ; #82118: <==negation-removal== 47115 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #19476: origin
                    (at_a_p2)

                    ; #86796: origin
                    (not_at_a_p5)

                    ; #14580: <==negation-removal== 19476 (pos)
                    (not (not_at_a_p2))

                    ; #39067: <==negation-removal== 86796 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #70883: origin
                    (at_a_p3)

                    ; #86796: origin
                    (not_at_a_p5)

                    ; #24181: <==negation-removal== 70883 (pos)
                    (not (not_at_a_p3))

                    ; #39067: <==negation-removal== 86796 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #51345: origin
                    (at_a_p4)

                    ; #86796: origin
                    (not_at_a_p5)

                    ; #39067: <==negation-removal== 86796 (pos)
                    (not (at_a_p5))

                    ; #40744: <==negation-removal== 51345 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #39067: origin
                    (at_a_p5)

                    ; #86796: origin
                    (not_at_a_p5)

                    ; #39067: <==negation-removal== 86796 (pos)
                    (not (at_a_p5))

                    ; #86796: <==negation-removal== 39067 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #10554: origin
                    (at_a_p6)

                    ; #86796: origin
                    (not_at_a_p5)

                    ; #39067: <==negation-removal== 86796 (pos)
                    (not (at_a_p5))

                    ; #57239: <==negation-removal== 10554 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #16626: origin
                    (at_a_p7)

                    ; #86796: origin
                    (not_at_a_p5)

                    ; #39067: <==negation-removal== 86796 (pos)
                    (not (at_a_p5))

                    ; #50914: <==negation-removal== 16626 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #86796: origin
                    (not_at_a_p5)

                    ; #92175: origin
                    (at_a_p8)

                    ; #39067: <==negation-removal== 86796 (pos)
                    (not (at_a_p5))

                    ; #49725: <==negation-removal== 92175 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #70034: origin
                    (at_a_p9)

                    ; #86796: origin
                    (not_at_a_p5)

                    ; #21235: <==negation-removal== 70034 (pos)
                    (not (not_at_a_p9))

                    ; #39067: <==negation-removal== 86796 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #10726: origin
                    (at_a_p1)

                    ; #57239: origin
                    (not_at_a_p6)

                    ; #10554: <==negation-removal== 57239 (pos)
                    (not (at_a_p6))

                    ; #39387: <==negation-removal== 10726 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #57239: origin
                    (not_at_a_p6)

                    ; #59464: origin
                    (at_a_p10)

                    ; #10554: <==negation-removal== 57239 (pos)
                    (not (at_a_p6))

                    ; #66954: <==negation-removal== 59464 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (at_a_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #23689: origin
                    (at_a_p11)

                    ; #57239: origin
                    (not_at_a_p6)

                    ; #10554: <==negation-removal== 57239 (pos)
                    (not (at_a_p6))

                    ; #80137: <==negation-removal== 23689 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #47115: origin
                    (at_a_p12)

                    ; #57239: origin
                    (not_at_a_p6)

                    ; #10554: <==negation-removal== 57239 (pos)
                    (not (at_a_p6))

                    ; #82118: <==negation-removal== 47115 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #19476: origin
                    (at_a_p2)

                    ; #57239: origin
                    (not_at_a_p6)

                    ; #10554: <==negation-removal== 57239 (pos)
                    (not (at_a_p6))

                    ; #14580: <==negation-removal== 19476 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #57239: origin
                    (not_at_a_p6)

                    ; #70883: origin
                    (at_a_p3)

                    ; #10554: <==negation-removal== 57239 (pos)
                    (not (at_a_p6))

                    ; #24181: <==negation-removal== 70883 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #51345: origin
                    (at_a_p4)

                    ; #57239: origin
                    (not_at_a_p6)

                    ; #10554: <==negation-removal== 57239 (pos)
                    (not (at_a_p6))

                    ; #40744: <==negation-removal== 51345 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #39067: origin
                    (at_a_p5)

                    ; #57239: origin
                    (not_at_a_p6)

                    ; #10554: <==negation-removal== 57239 (pos)
                    (not (at_a_p6))

                    ; #86796: <==negation-removal== 39067 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #10554: origin
                    (at_a_p6)

                    ; #57239: origin
                    (not_at_a_p6)

                    ; #10554: <==negation-removal== 57239 (pos)
                    (not (at_a_p6))

                    ; #57239: <==negation-removal== 10554 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #16626: origin
                    (at_a_p7)

                    ; #57239: origin
                    (not_at_a_p6)

                    ; #10554: <==negation-removal== 57239 (pos)
                    (not (at_a_p6))

                    ; #50914: <==negation-removal== 16626 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #57239: origin
                    (not_at_a_p6)

                    ; #92175: origin
                    (at_a_p8)

                    ; #10554: <==negation-removal== 57239 (pos)
                    (not (at_a_p6))

                    ; #49725: <==negation-removal== 92175 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #57239: origin
                    (not_at_a_p6)

                    ; #70034: origin
                    (at_a_p9)

                    ; #10554: <==negation-removal== 57239 (pos)
                    (not (at_a_p6))

                    ; #21235: <==negation-removal== 70034 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #10726: origin
                    (at_a_p1)

                    ; #50914: origin
                    (not_at_a_p7)

                    ; #16626: <==negation-removal== 50914 (pos)
                    (not (at_a_p7))

                    ; #39387: <==negation-removal== 10726 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7))
        :effect (and
                    ; #50914: origin
                    (not_at_a_p7)

                    ; #59464: origin
                    (at_a_p10)

                    ; #16626: <==negation-removal== 50914 (pos)
                    (not (at_a_p7))

                    ; #66954: <==negation-removal== 59464 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7))
        :effect (and
                    ; #23689: origin
                    (at_a_p11)

                    ; #50914: origin
                    (not_at_a_p7)

                    ; #16626: <==negation-removal== 50914 (pos)
                    (not (at_a_p7))

                    ; #80137: <==negation-removal== 23689 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7))
        :effect (and
                    ; #47115: origin
                    (at_a_p12)

                    ; #50914: origin
                    (not_at_a_p7)

                    ; #16626: <==negation-removal== 50914 (pos)
                    (not (at_a_p7))

                    ; #82118: <==negation-removal== 47115 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #19476: origin
                    (at_a_p2)

                    ; #50914: origin
                    (not_at_a_p7)

                    ; #14580: <==negation-removal== 19476 (pos)
                    (not (not_at_a_p2))

                    ; #16626: <==negation-removal== 50914 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #50914: origin
                    (not_at_a_p7)

                    ; #70883: origin
                    (at_a_p3)

                    ; #16626: <==negation-removal== 50914 (pos)
                    (not (at_a_p7))

                    ; #24181: <==negation-removal== 70883 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #50914: origin
                    (not_at_a_p7)

                    ; #51345: origin
                    (at_a_p4)

                    ; #16626: <==negation-removal== 50914 (pos)
                    (not (at_a_p7))

                    ; #40744: <==negation-removal== 51345 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #39067: origin
                    (at_a_p5)

                    ; #50914: origin
                    (not_at_a_p7)

                    ; #16626: <==negation-removal== 50914 (pos)
                    (not (at_a_p7))

                    ; #86796: <==negation-removal== 39067 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #10554: origin
                    (at_a_p6)

                    ; #50914: origin
                    (not_at_a_p7)

                    ; #16626: <==negation-removal== 50914 (pos)
                    (not (at_a_p7))

                    ; #57239: <==negation-removal== 10554 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #16626: origin
                    (at_a_p7)

                    ; #50914: origin
                    (not_at_a_p7)

                    ; #16626: <==negation-removal== 50914 (pos)
                    (not (at_a_p7))

                    ; #50914: <==negation-removal== 16626 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #50914: origin
                    (not_at_a_p7)

                    ; #92175: origin
                    (at_a_p8)

                    ; #16626: <==negation-removal== 50914 (pos)
                    (not (at_a_p7))

                    ; #49725: <==negation-removal== 92175 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #50914: origin
                    (not_at_a_p7)

                    ; #70034: origin
                    (at_a_p9)

                    ; #16626: <==negation-removal== 50914 (pos)
                    (not (at_a_p7))

                    ; #21235: <==negation-removal== 70034 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #10726: origin
                    (at_a_p1)

                    ; #49725: origin
                    (not_at_a_p8)

                    ; #39387: <==negation-removal== 10726 (pos)
                    (not (not_at_a_p1))

                    ; #92175: <==negation-removal== 49725 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8))
        :effect (and
                    ; #49725: origin
                    (not_at_a_p8)

                    ; #59464: origin
                    (at_a_p10)

                    ; #66954: <==negation-removal== 59464 (pos)
                    (not (not_at_a_p10))

                    ; #92175: <==negation-removal== 49725 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8))
        :effect (and
                    ; #23689: origin
                    (at_a_p11)

                    ; #49725: origin
                    (not_at_a_p8)

                    ; #80137: <==negation-removal== 23689 (pos)
                    (not (not_at_a_p11))

                    ; #92175: <==negation-removal== 49725 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_a_p8))
        :effect (and
                    ; #47115: origin
                    (at_a_p12)

                    ; #49725: origin
                    (not_at_a_p8)

                    ; #82118: <==negation-removal== 47115 (pos)
                    (not (not_at_a_p12))

                    ; #92175: <==negation-removal== 49725 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #19476: origin
                    (at_a_p2)

                    ; #49725: origin
                    (not_at_a_p8)

                    ; #14580: <==negation-removal== 19476 (pos)
                    (not (not_at_a_p2))

                    ; #92175: <==negation-removal== 49725 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #49725: origin
                    (not_at_a_p8)

                    ; #70883: origin
                    (at_a_p3)

                    ; #24181: <==negation-removal== 70883 (pos)
                    (not (not_at_a_p3))

                    ; #92175: <==negation-removal== 49725 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #49725: origin
                    (not_at_a_p8)

                    ; #51345: origin
                    (at_a_p4)

                    ; #40744: <==negation-removal== 51345 (pos)
                    (not (not_at_a_p4))

                    ; #92175: <==negation-removal== 49725 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #39067: origin
                    (at_a_p5)

                    ; #49725: origin
                    (not_at_a_p8)

                    ; #86796: <==negation-removal== 39067 (pos)
                    (not (not_at_a_p5))

                    ; #92175: <==negation-removal== 49725 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #10554: origin
                    (at_a_p6)

                    ; #49725: origin
                    (not_at_a_p8)

                    ; #57239: <==negation-removal== 10554 (pos)
                    (not (not_at_a_p6))

                    ; #92175: <==negation-removal== 49725 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #16626: origin
                    (at_a_p7)

                    ; #49725: origin
                    (not_at_a_p8)

                    ; #50914: <==negation-removal== 16626 (pos)
                    (not (not_at_a_p7))

                    ; #92175: <==negation-removal== 49725 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #49725: origin
                    (not_at_a_p8)

                    ; #92175: origin
                    (at_a_p8)

                    ; #49725: <==negation-removal== 92175 (pos)
                    (not (not_at_a_p8))

                    ; #92175: <==negation-removal== 49725 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #49725: origin
                    (not_at_a_p8)

                    ; #70034: origin
                    (at_a_p9)

                    ; #21235: <==negation-removal== 70034 (pos)
                    (not (not_at_a_p9))

                    ; #92175: <==negation-removal== 49725 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #10726: origin
                    (at_a_p1)

                    ; #21235: origin
                    (not_at_a_p9)

                    ; #39387: <==negation-removal== 10726 (pos)
                    (not (not_at_a_p1))

                    ; #70034: <==negation-removal== 21235 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (at_a_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #21235: origin
                    (not_at_a_p9)

                    ; #59464: origin
                    (at_a_p10)

                    ; #66954: <==negation-removal== 59464 (pos)
                    (not (not_at_a_p10))

                    ; #70034: <==negation-removal== 21235 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9))
        :effect (and
                    ; #21235: origin
                    (not_at_a_p9)

                    ; #23689: origin
                    (at_a_p11)

                    ; #70034: <==negation-removal== 21235 (pos)
                    (not (at_a_p9))

                    ; #80137: <==negation-removal== 23689 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #21235: origin
                    (not_at_a_p9)

                    ; #47115: origin
                    (at_a_p12)

                    ; #70034: <==negation-removal== 21235 (pos)
                    (not (at_a_p9))

                    ; #82118: <==negation-removal== 47115 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #19476: origin
                    (at_a_p2)

                    ; #21235: origin
                    (not_at_a_p9)

                    ; #14580: <==negation-removal== 19476 (pos)
                    (not (not_at_a_p2))

                    ; #70034: <==negation-removal== 21235 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #21235: origin
                    (not_at_a_p9)

                    ; #70883: origin
                    (at_a_p3)

                    ; #24181: <==negation-removal== 70883 (pos)
                    (not (not_at_a_p3))

                    ; #70034: <==negation-removal== 21235 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #21235: origin
                    (not_at_a_p9)

                    ; #51345: origin
                    (at_a_p4)

                    ; #40744: <==negation-removal== 51345 (pos)
                    (not (not_at_a_p4))

                    ; #70034: <==negation-removal== 21235 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #21235: origin
                    (not_at_a_p9)

                    ; #39067: origin
                    (at_a_p5)

                    ; #70034: <==negation-removal== 21235 (pos)
                    (not (at_a_p9))

                    ; #86796: <==negation-removal== 39067 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #10554: origin
                    (at_a_p6)

                    ; #21235: origin
                    (not_at_a_p9)

                    ; #57239: <==negation-removal== 10554 (pos)
                    (not (not_at_a_p6))

                    ; #70034: <==negation-removal== 21235 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #16626: origin
                    (at_a_p7)

                    ; #21235: origin
                    (not_at_a_p9)

                    ; #50914: <==negation-removal== 16626 (pos)
                    (not (not_at_a_p7))

                    ; #70034: <==negation-removal== 21235 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #21235: origin
                    (not_at_a_p9)

                    ; #92175: origin
                    (at_a_p8)

                    ; #49725: <==negation-removal== 92175 (pos)
                    (not (not_at_a_p8))

                    ; #70034: <==negation-removal== 21235 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #21235: origin
                    (not_at_a_p9)

                    ; #70034: origin
                    (at_a_p9)

                    ; #21235: <==negation-removal== 70034 (pos)
                    (not (not_at_a_p9))

                    ; #70034: <==negation-removal== 21235 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10))
        :effect (and
                    ; #49185: origin
                    (not_at_b_p10)

                    ; #53763: origin
                    (at_b_p1)

                    ; #37844: <==negation-removal== 49185 (pos)
                    (not (at_b_p10))

                    ; #62351: <==negation-removal== 53763 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10))
        :effect (and
                    ; #37844: origin
                    (at_b_p10)

                    ; #49185: origin
                    (not_at_b_p10)

                    ; #37844: <==negation-removal== 49185 (pos)
                    (not (at_b_p10))

                    ; #49185: <==negation-removal== 37844 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10))
        :effect (and
                    ; #49185: origin
                    (not_at_b_p10)

                    ; #64929: origin
                    (at_b_p11)

                    ; #37844: <==negation-removal== 49185 (pos)
                    (not (at_b_p10))

                    ; #48868: <==negation-removal== 64929 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #36093: origin
                    (at_b_p12)

                    ; #49185: origin
                    (not_at_b_p10)

                    ; #37844: <==negation-removal== 49185 (pos)
                    (not (at_b_p10))

                    ; #79637: <==negation-removal== 36093 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_b_p10))
        :effect (and
                    ; #49185: origin
                    (not_at_b_p10)

                    ; #98915: origin
                    (at_b_p2)

                    ; #37844: <==negation-removal== 49185 (pos)
                    (not (at_b_p10))

                    ; #90462: <==negation-removal== 98915 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #47739: origin
                    (at_b_p3)

                    ; #49185: origin
                    (not_at_b_p10)

                    ; #37844: <==negation-removal== 49185 (pos)
                    (not (at_b_p10))

                    ; #67016: <==negation-removal== 47739 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #49185: origin
                    (not_at_b_p10)

                    ; #64720: origin
                    (at_b_p4)

                    ; #37844: <==negation-removal== 49185 (pos)
                    (not (at_b_p10))

                    ; #40385: <==negation-removal== 64720 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_b_p10))
        :effect (and
                    ; #48600: origin
                    (at_b_p5)

                    ; #49185: origin
                    (not_at_b_p10)

                    ; #27056: <==negation-removal== 48600 (pos)
                    (not (not_at_b_p5))

                    ; #37844: <==negation-removal== 49185 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_b_p10))
        :effect (and
                    ; #49185: origin
                    (not_at_b_p10)

                    ; #76672: origin
                    (at_b_p6)

                    ; #31817: <==negation-removal== 76672 (pos)
                    (not (not_at_b_p6))

                    ; #37844: <==negation-removal== 49185 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_b_p10))
        :effect (and
                    ; #14086: origin
                    (at_b_p7)

                    ; #49185: origin
                    (not_at_b_p10)

                    ; #35449: <==negation-removal== 14086 (pos)
                    (not (not_at_b_p7))

                    ; #37844: <==negation-removal== 49185 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #43015: origin
                    (at_b_p8)

                    ; #49185: origin
                    (not_at_b_p10)

                    ; #37844: <==negation-removal== 49185 (pos)
                    (not (at_b_p10))

                    ; #78218: <==negation-removal== 43015 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_b_p10))
        :effect (and
                    ; #49185: origin
                    (not_at_b_p10)

                    ; #58597: origin
                    (at_b_p9)

                    ; #37844: <==negation-removal== 49185 (pos)
                    (not (at_b_p10))

                    ; #54460: <==negation-removal== 58597 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (at_b_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #48868: origin
                    (not_at_b_p11)

                    ; #53763: origin
                    (at_b_p1)

                    ; #62351: <==negation-removal== 53763 (pos)
                    (not (not_at_b_p1))

                    ; #64929: <==negation-removal== 48868 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11))
        :effect (and
                    ; #37844: origin
                    (at_b_p10)

                    ; #48868: origin
                    (not_at_b_p11)

                    ; #49185: <==negation-removal== 37844 (pos)
                    (not (not_at_b_p10))

                    ; #64929: <==negation-removal== 48868 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #48868: origin
                    (not_at_b_p11)

                    ; #64929: origin
                    (at_b_p11)

                    ; #48868: <==negation-removal== 64929 (pos)
                    (not (not_at_b_p11))

                    ; #64929: <==negation-removal== 48868 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (at_b_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #36093: origin
                    (at_b_p12)

                    ; #48868: origin
                    (not_at_b_p11)

                    ; #64929: <==negation-removal== 48868 (pos)
                    (not (at_b_p11))

                    ; #79637: <==negation-removal== 36093 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #48868: origin
                    (not_at_b_p11)

                    ; #98915: origin
                    (at_b_p2)

                    ; #64929: <==negation-removal== 48868 (pos)
                    (not (at_b_p11))

                    ; #90462: <==negation-removal== 98915 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11))
        :effect (and
                    ; #47739: origin
                    (at_b_p3)

                    ; #48868: origin
                    (not_at_b_p11)

                    ; #64929: <==negation-removal== 48868 (pos)
                    (not (at_b_p11))

                    ; #67016: <==negation-removal== 47739 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11))
        :effect (and
                    ; #48868: origin
                    (not_at_b_p11)

                    ; #64720: origin
                    (at_b_p4)

                    ; #40385: <==negation-removal== 64720 (pos)
                    (not (not_at_b_p4))

                    ; #64929: <==negation-removal== 48868 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #48600: origin
                    (at_b_p5)

                    ; #48868: origin
                    (not_at_b_p11)

                    ; #27056: <==negation-removal== 48600 (pos)
                    (not (not_at_b_p5))

                    ; #64929: <==negation-removal== 48868 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (at_b_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #48868: origin
                    (not_at_b_p11)

                    ; #76672: origin
                    (at_b_p6)

                    ; #31817: <==negation-removal== 76672 (pos)
                    (not (not_at_b_p6))

                    ; #64929: <==negation-removal== 48868 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #14086: origin
                    (at_b_p7)

                    ; #48868: origin
                    (not_at_b_p11)

                    ; #35449: <==negation-removal== 14086 (pos)
                    (not (not_at_b_p7))

                    ; #64929: <==negation-removal== 48868 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p8
        :precondition (and (at_b_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #43015: origin
                    (at_b_p8)

                    ; #48868: origin
                    (not_at_b_p11)

                    ; #64929: <==negation-removal== 48868 (pos)
                    (not (at_b_p11))

                    ; #78218: <==negation-removal== 43015 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11))
        :effect (and
                    ; #48868: origin
                    (not_at_b_p11)

                    ; #58597: origin
                    (at_b_p9)

                    ; #54460: <==negation-removal== 58597 (pos)
                    (not (not_at_b_p9))

                    ; #64929: <==negation-removal== 48868 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #53763: origin
                    (at_b_p1)

                    ; #79637: origin
                    (not_at_b_p12)

                    ; #36093: <==negation-removal== 79637 (pos)
                    (not (at_b_p12))

                    ; #62351: <==negation-removal== 53763 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #37844: origin
                    (at_b_p10)

                    ; #79637: origin
                    (not_at_b_p12)

                    ; #36093: <==negation-removal== 79637 (pos)
                    (not (at_b_p12))

                    ; #49185: <==negation-removal== 37844 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #64929: origin
                    (at_b_p11)

                    ; #79637: origin
                    (not_at_b_p12)

                    ; #36093: <==negation-removal== 79637 (pos)
                    (not (at_b_p12))

                    ; #48868: <==negation-removal== 64929 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #36093: origin
                    (at_b_p12)

                    ; #79637: origin
                    (not_at_b_p12)

                    ; #36093: <==negation-removal== 79637 (pos)
                    (not (at_b_p12))

                    ; #79637: <==negation-removal== 36093 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #79637: origin
                    (not_at_b_p12)

                    ; #98915: origin
                    (at_b_p2)

                    ; #36093: <==negation-removal== 79637 (pos)
                    (not (at_b_p12))

                    ; #90462: <==negation-removal== 98915 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #47739: origin
                    (at_b_p3)

                    ; #79637: origin
                    (not_at_b_p12)

                    ; #36093: <==negation-removal== 79637 (pos)
                    (not (at_b_p12))

                    ; #67016: <==negation-removal== 47739 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #64720: origin
                    (at_b_p4)

                    ; #79637: origin
                    (not_at_b_p12)

                    ; #36093: <==negation-removal== 79637 (pos)
                    (not (at_b_p12))

                    ; #40385: <==negation-removal== 64720 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12))
        :effect (and
                    ; #48600: origin
                    (at_b_p5)

                    ; #79637: origin
                    (not_at_b_p12)

                    ; #27056: <==negation-removal== 48600 (pos)
                    (not (not_at_b_p5))

                    ; #36093: <==negation-removal== 79637 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #76672: origin
                    (at_b_p6)

                    ; #79637: origin
                    (not_at_b_p12)

                    ; #31817: <==negation-removal== 76672 (pos)
                    (not (not_at_b_p6))

                    ; #36093: <==negation-removal== 79637 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #14086: origin
                    (at_b_p7)

                    ; #79637: origin
                    (not_at_b_p12)

                    ; #35449: <==negation-removal== 14086 (pos)
                    (not (not_at_b_p7))

                    ; #36093: <==negation-removal== 79637 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #43015: origin
                    (at_b_p8)

                    ; #79637: origin
                    (not_at_b_p12)

                    ; #36093: <==negation-removal== 79637 (pos)
                    (not (at_b_p12))

                    ; #78218: <==negation-removal== 43015 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #58597: origin
                    (at_b_p9)

                    ; #79637: origin
                    (not_at_b_p12)

                    ; #36093: <==negation-removal== 79637 (pos)
                    (not (at_b_p12))

                    ; #54460: <==negation-removal== 58597 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #53763: origin
                    (at_b_p1)

                    ; #62351: origin
                    (not_at_b_p1)

                    ; #53763: <==negation-removal== 62351 (pos)
                    (not (at_b_p1))

                    ; #62351: <==negation-removal== 53763 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (at_b_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #37844: origin
                    (at_b_p10)

                    ; #62351: origin
                    (not_at_b_p1)

                    ; #49185: <==negation-removal== 37844 (pos)
                    (not (not_at_b_p10))

                    ; #53763: <==negation-removal== 62351 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #62351: origin
                    (not_at_b_p1)

                    ; #64929: origin
                    (at_b_p11)

                    ; #48868: <==negation-removal== 64929 (pos)
                    (not (not_at_b_p11))

                    ; #53763: <==negation-removal== 62351 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #36093: origin
                    (at_b_p12)

                    ; #62351: origin
                    (not_at_b_p1)

                    ; #53763: <==negation-removal== 62351 (pos)
                    (not (at_b_p1))

                    ; #79637: <==negation-removal== 36093 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #62351: origin
                    (not_at_b_p1)

                    ; #98915: origin
                    (at_b_p2)

                    ; #53763: <==negation-removal== 62351 (pos)
                    (not (at_b_p1))

                    ; #90462: <==negation-removal== 98915 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #47739: origin
                    (at_b_p3)

                    ; #62351: origin
                    (not_at_b_p1)

                    ; #53763: <==negation-removal== 62351 (pos)
                    (not (at_b_p1))

                    ; #67016: <==negation-removal== 47739 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #62351: origin
                    (not_at_b_p1)

                    ; #64720: origin
                    (at_b_p4)

                    ; #40385: <==negation-removal== 64720 (pos)
                    (not (not_at_b_p4))

                    ; #53763: <==negation-removal== 62351 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #48600: origin
                    (at_b_p5)

                    ; #62351: origin
                    (not_at_b_p1)

                    ; #27056: <==negation-removal== 48600 (pos)
                    (not (not_at_b_p5))

                    ; #53763: <==negation-removal== 62351 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #62351: origin
                    (not_at_b_p1)

                    ; #76672: origin
                    (at_b_p6)

                    ; #31817: <==negation-removal== 76672 (pos)
                    (not (not_at_b_p6))

                    ; #53763: <==negation-removal== 62351 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #14086: origin
                    (at_b_p7)

                    ; #62351: origin
                    (not_at_b_p1)

                    ; #35449: <==negation-removal== 14086 (pos)
                    (not (not_at_b_p7))

                    ; #53763: <==negation-removal== 62351 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #43015: origin
                    (at_b_p8)

                    ; #62351: origin
                    (not_at_b_p1)

                    ; #53763: <==negation-removal== 62351 (pos)
                    (not (at_b_p1))

                    ; #78218: <==negation-removal== 43015 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #58597: origin
                    (at_b_p9)

                    ; #62351: origin
                    (not_at_b_p1)

                    ; #53763: <==negation-removal== 62351 (pos)
                    (not (at_b_p1))

                    ; #54460: <==negation-removal== 58597 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #53763: origin
                    (at_b_p1)

                    ; #90462: origin
                    (not_at_b_p2)

                    ; #62351: <==negation-removal== 53763 (pos)
                    (not (not_at_b_p1))

                    ; #98915: <==negation-removal== 90462 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2))
        :effect (and
                    ; #37844: origin
                    (at_b_p10)

                    ; #90462: origin
                    (not_at_b_p2)

                    ; #49185: <==negation-removal== 37844 (pos)
                    (not (not_at_b_p10))

                    ; #98915: <==negation-removal== 90462 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2))
        :effect (and
                    ; #64929: origin
                    (at_b_p11)

                    ; #90462: origin
                    (not_at_b_p2)

                    ; #48868: <==negation-removal== 64929 (pos)
                    (not (not_at_b_p11))

                    ; #98915: <==negation-removal== 90462 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #36093: origin
                    (at_b_p12)

                    ; #90462: origin
                    (not_at_b_p2)

                    ; #79637: <==negation-removal== 36093 (pos)
                    (not (not_at_b_p12))

                    ; #98915: <==negation-removal== 90462 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #90462: origin
                    (not_at_b_p2)

                    ; #98915: origin
                    (at_b_p2)

                    ; #90462: <==negation-removal== 98915 (pos)
                    (not (not_at_b_p2))

                    ; #98915: <==negation-removal== 90462 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #47739: origin
                    (at_b_p3)

                    ; #90462: origin
                    (not_at_b_p2)

                    ; #67016: <==negation-removal== 47739 (pos)
                    (not (not_at_b_p3))

                    ; #98915: <==negation-removal== 90462 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #64720: origin
                    (at_b_p4)

                    ; #90462: origin
                    (not_at_b_p2)

                    ; #40385: <==negation-removal== 64720 (pos)
                    (not (not_at_b_p4))

                    ; #98915: <==negation-removal== 90462 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #48600: origin
                    (at_b_p5)

                    ; #90462: origin
                    (not_at_b_p2)

                    ; #27056: <==negation-removal== 48600 (pos)
                    (not (not_at_b_p5))

                    ; #98915: <==negation-removal== 90462 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #76672: origin
                    (at_b_p6)

                    ; #90462: origin
                    (not_at_b_p2)

                    ; #31817: <==negation-removal== 76672 (pos)
                    (not (not_at_b_p6))

                    ; #98915: <==negation-removal== 90462 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #14086: origin
                    (at_b_p7)

                    ; #90462: origin
                    (not_at_b_p2)

                    ; #35449: <==negation-removal== 14086 (pos)
                    (not (not_at_b_p7))

                    ; #98915: <==negation-removal== 90462 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #43015: origin
                    (at_b_p8)

                    ; #90462: origin
                    (not_at_b_p2)

                    ; #78218: <==negation-removal== 43015 (pos)
                    (not (not_at_b_p8))

                    ; #98915: <==negation-removal== 90462 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #58597: origin
                    (at_b_p9)

                    ; #90462: origin
                    (not_at_b_p2)

                    ; #54460: <==negation-removal== 58597 (pos)
                    (not (not_at_b_p9))

                    ; #98915: <==negation-removal== 90462 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #53763: origin
                    (at_b_p1)

                    ; #67016: origin
                    (not_at_b_p3)

                    ; #47739: <==negation-removal== 67016 (pos)
                    (not (at_b_p3))

                    ; #62351: <==negation-removal== 53763 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #37844: origin
                    (at_b_p10)

                    ; #67016: origin
                    (not_at_b_p3)

                    ; #47739: <==negation-removal== 67016 (pos)
                    (not (at_b_p3))

                    ; #49185: <==negation-removal== 37844 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #64929: origin
                    (at_b_p11)

                    ; #67016: origin
                    (not_at_b_p3)

                    ; #47739: <==negation-removal== 67016 (pos)
                    (not (at_b_p3))

                    ; #48868: <==negation-removal== 64929 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #36093: origin
                    (at_b_p12)

                    ; #67016: origin
                    (not_at_b_p3)

                    ; #47739: <==negation-removal== 67016 (pos)
                    (not (at_b_p3))

                    ; #79637: <==negation-removal== 36093 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #67016: origin
                    (not_at_b_p3)

                    ; #98915: origin
                    (at_b_p2)

                    ; #47739: <==negation-removal== 67016 (pos)
                    (not (at_b_p3))

                    ; #90462: <==negation-removal== 98915 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #47739: origin
                    (at_b_p3)

                    ; #67016: origin
                    (not_at_b_p3)

                    ; #47739: <==negation-removal== 67016 (pos)
                    (not (at_b_p3))

                    ; #67016: <==negation-removal== 47739 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #64720: origin
                    (at_b_p4)

                    ; #67016: origin
                    (not_at_b_p3)

                    ; #40385: <==negation-removal== 64720 (pos)
                    (not (not_at_b_p4))

                    ; #47739: <==negation-removal== 67016 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #48600: origin
                    (at_b_p5)

                    ; #67016: origin
                    (not_at_b_p3)

                    ; #27056: <==negation-removal== 48600 (pos)
                    (not (not_at_b_p5))

                    ; #47739: <==negation-removal== 67016 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #67016: origin
                    (not_at_b_p3)

                    ; #76672: origin
                    (at_b_p6)

                    ; #31817: <==negation-removal== 76672 (pos)
                    (not (not_at_b_p6))

                    ; #47739: <==negation-removal== 67016 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #14086: origin
                    (at_b_p7)

                    ; #67016: origin
                    (not_at_b_p3)

                    ; #35449: <==negation-removal== 14086 (pos)
                    (not (not_at_b_p7))

                    ; #47739: <==negation-removal== 67016 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #43015: origin
                    (at_b_p8)

                    ; #67016: origin
                    (not_at_b_p3)

                    ; #47739: <==negation-removal== 67016 (pos)
                    (not (at_b_p3))

                    ; #78218: <==negation-removal== 43015 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #58597: origin
                    (at_b_p9)

                    ; #67016: origin
                    (not_at_b_p3)

                    ; #47739: <==negation-removal== 67016 (pos)
                    (not (at_b_p3))

                    ; #54460: <==negation-removal== 58597 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #40385: origin
                    (not_at_b_p4)

                    ; #53763: origin
                    (at_b_p1)

                    ; #62351: <==negation-removal== 53763 (pos)
                    (not (not_at_b_p1))

                    ; #64720: <==negation-removal== 40385 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #37844: origin
                    (at_b_p10)

                    ; #40385: origin
                    (not_at_b_p4)

                    ; #49185: <==negation-removal== 37844 (pos)
                    (not (not_at_b_p10))

                    ; #64720: <==negation-removal== 40385 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4))
        :effect (and
                    ; #40385: origin
                    (not_at_b_p4)

                    ; #64929: origin
                    (at_b_p11)

                    ; #48868: <==negation-removal== 64929 (pos)
                    (not (not_at_b_p11))

                    ; #64720: <==negation-removal== 40385 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #36093: origin
                    (at_b_p12)

                    ; #40385: origin
                    (not_at_b_p4)

                    ; #64720: <==negation-removal== 40385 (pos)
                    (not (at_b_p4))

                    ; #79637: <==negation-removal== 36093 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #40385: origin
                    (not_at_b_p4)

                    ; #98915: origin
                    (at_b_p2)

                    ; #64720: <==negation-removal== 40385 (pos)
                    (not (at_b_p4))

                    ; #90462: <==negation-removal== 98915 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #40385: origin
                    (not_at_b_p4)

                    ; #47739: origin
                    (at_b_p3)

                    ; #64720: <==negation-removal== 40385 (pos)
                    (not (at_b_p4))

                    ; #67016: <==negation-removal== 47739 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #40385: origin
                    (not_at_b_p4)

                    ; #64720: origin
                    (at_b_p4)

                    ; #40385: <==negation-removal== 64720 (pos)
                    (not (not_at_b_p4))

                    ; #64720: <==negation-removal== 40385 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #40385: origin
                    (not_at_b_p4)

                    ; #48600: origin
                    (at_b_p5)

                    ; #27056: <==negation-removal== 48600 (pos)
                    (not (not_at_b_p5))

                    ; #64720: <==negation-removal== 40385 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #40385: origin
                    (not_at_b_p4)

                    ; #76672: origin
                    (at_b_p6)

                    ; #31817: <==negation-removal== 76672 (pos)
                    (not (not_at_b_p6))

                    ; #64720: <==negation-removal== 40385 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #14086: origin
                    (at_b_p7)

                    ; #40385: origin
                    (not_at_b_p4)

                    ; #35449: <==negation-removal== 14086 (pos)
                    (not (not_at_b_p7))

                    ; #64720: <==negation-removal== 40385 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #40385: origin
                    (not_at_b_p4)

                    ; #43015: origin
                    (at_b_p8)

                    ; #64720: <==negation-removal== 40385 (pos)
                    (not (at_b_p4))

                    ; #78218: <==negation-removal== 43015 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #40385: origin
                    (not_at_b_p4)

                    ; #58597: origin
                    (at_b_p9)

                    ; #54460: <==negation-removal== 58597 (pos)
                    (not (not_at_b_p9))

                    ; #64720: <==negation-removal== 40385 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #27056: origin
                    (not_at_b_p5)

                    ; #53763: origin
                    (at_b_p1)

                    ; #48600: <==negation-removal== 27056 (pos)
                    (not (at_b_p5))

                    ; #62351: <==negation-removal== 53763 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #27056: origin
                    (not_at_b_p5)

                    ; #37844: origin
                    (at_b_p10)

                    ; #48600: <==negation-removal== 27056 (pos)
                    (not (at_b_p5))

                    ; #49185: <==negation-removal== 37844 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #27056: origin
                    (not_at_b_p5)

                    ; #64929: origin
                    (at_b_p11)

                    ; #48600: <==negation-removal== 27056 (pos)
                    (not (at_b_p5))

                    ; #48868: <==negation-removal== 64929 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #27056: origin
                    (not_at_b_p5)

                    ; #36093: origin
                    (at_b_p12)

                    ; #48600: <==negation-removal== 27056 (pos)
                    (not (at_b_p5))

                    ; #79637: <==negation-removal== 36093 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #27056: origin
                    (not_at_b_p5)

                    ; #98915: origin
                    (at_b_p2)

                    ; #48600: <==negation-removal== 27056 (pos)
                    (not (at_b_p5))

                    ; #90462: <==negation-removal== 98915 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #27056: origin
                    (not_at_b_p5)

                    ; #47739: origin
                    (at_b_p3)

                    ; #48600: <==negation-removal== 27056 (pos)
                    (not (at_b_p5))

                    ; #67016: <==negation-removal== 47739 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #27056: origin
                    (not_at_b_p5)

                    ; #64720: origin
                    (at_b_p4)

                    ; #40385: <==negation-removal== 64720 (pos)
                    (not (not_at_b_p4))

                    ; #48600: <==negation-removal== 27056 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #27056: origin
                    (not_at_b_p5)

                    ; #48600: origin
                    (at_b_p5)

                    ; #27056: <==negation-removal== 48600 (pos)
                    (not (not_at_b_p5))

                    ; #48600: <==negation-removal== 27056 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #27056: origin
                    (not_at_b_p5)

                    ; #76672: origin
                    (at_b_p6)

                    ; #31817: <==negation-removal== 76672 (pos)
                    (not (not_at_b_p6))

                    ; #48600: <==negation-removal== 27056 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #14086: origin
                    (at_b_p7)

                    ; #27056: origin
                    (not_at_b_p5)

                    ; #35449: <==negation-removal== 14086 (pos)
                    (not (not_at_b_p7))

                    ; #48600: <==negation-removal== 27056 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #27056: origin
                    (not_at_b_p5)

                    ; #43015: origin
                    (at_b_p8)

                    ; #48600: <==negation-removal== 27056 (pos)
                    (not (at_b_p5))

                    ; #78218: <==negation-removal== 43015 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #27056: origin
                    (not_at_b_p5)

                    ; #58597: origin
                    (at_b_p9)

                    ; #48600: <==negation-removal== 27056 (pos)
                    (not (at_b_p5))

                    ; #54460: <==negation-removal== 58597 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #31817: origin
                    (not_at_b_p6)

                    ; #53763: origin
                    (at_b_p1)

                    ; #62351: <==negation-removal== 53763 (pos)
                    (not (not_at_b_p1))

                    ; #76672: <==negation-removal== 31817 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (at_b_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #31817: origin
                    (not_at_b_p6)

                    ; #37844: origin
                    (at_b_p10)

                    ; #49185: <==negation-removal== 37844 (pos)
                    (not (not_at_b_p10))

                    ; #76672: <==negation-removal== 31817 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (at_b_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #31817: origin
                    (not_at_b_p6)

                    ; #64929: origin
                    (at_b_p11)

                    ; #48868: <==negation-removal== 64929 (pos)
                    (not (not_at_b_p11))

                    ; #76672: <==negation-removal== 31817 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6))
        :effect (and
                    ; #31817: origin
                    (not_at_b_p6)

                    ; #36093: origin
                    (at_b_p12)

                    ; #76672: <==negation-removal== 31817 (pos)
                    (not (at_b_p6))

                    ; #79637: <==negation-removal== 36093 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #31817: origin
                    (not_at_b_p6)

                    ; #98915: origin
                    (at_b_p2)

                    ; #76672: <==negation-removal== 31817 (pos)
                    (not (at_b_p6))

                    ; #90462: <==negation-removal== 98915 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #31817: origin
                    (not_at_b_p6)

                    ; #47739: origin
                    (at_b_p3)

                    ; #67016: <==negation-removal== 47739 (pos)
                    (not (not_at_b_p3))

                    ; #76672: <==negation-removal== 31817 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #31817: origin
                    (not_at_b_p6)

                    ; #64720: origin
                    (at_b_p4)

                    ; #40385: <==negation-removal== 64720 (pos)
                    (not (not_at_b_p4))

                    ; #76672: <==negation-removal== 31817 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #31817: origin
                    (not_at_b_p6)

                    ; #48600: origin
                    (at_b_p5)

                    ; #27056: <==negation-removal== 48600 (pos)
                    (not (not_at_b_p5))

                    ; #76672: <==negation-removal== 31817 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #31817: origin
                    (not_at_b_p6)

                    ; #76672: origin
                    (at_b_p6)

                    ; #31817: <==negation-removal== 76672 (pos)
                    (not (not_at_b_p6))

                    ; #76672: <==negation-removal== 31817 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #14086: origin
                    (at_b_p7)

                    ; #31817: origin
                    (not_at_b_p6)

                    ; #35449: <==negation-removal== 14086 (pos)
                    (not (not_at_b_p7))

                    ; #76672: <==negation-removal== 31817 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #31817: origin
                    (not_at_b_p6)

                    ; #43015: origin
                    (at_b_p8)

                    ; #76672: <==negation-removal== 31817 (pos)
                    (not (at_b_p6))

                    ; #78218: <==negation-removal== 43015 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #31817: origin
                    (not_at_b_p6)

                    ; #58597: origin
                    (at_b_p9)

                    ; #54460: <==negation-removal== 58597 (pos)
                    (not (not_at_b_p9))

                    ; #76672: <==negation-removal== 31817 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #35449: origin
                    (not_at_b_p7)

                    ; #53763: origin
                    (at_b_p1)

                    ; #14086: <==negation-removal== 35449 (pos)
                    (not (at_b_p7))

                    ; #62351: <==negation-removal== 53763 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7))
        :effect (and
                    ; #35449: origin
                    (not_at_b_p7)

                    ; #37844: origin
                    (at_b_p10)

                    ; #14086: <==negation-removal== 35449 (pos)
                    (not (at_b_p7))

                    ; #49185: <==negation-removal== 37844 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_b_p7))
        :effect (and
                    ; #35449: origin
                    (not_at_b_p7)

                    ; #64929: origin
                    (at_b_p11)

                    ; #14086: <==negation-removal== 35449 (pos)
                    (not (at_b_p7))

                    ; #48868: <==negation-removal== 64929 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7))
        :effect (and
                    ; #35449: origin
                    (not_at_b_p7)

                    ; #36093: origin
                    (at_b_p12)

                    ; #14086: <==negation-removal== 35449 (pos)
                    (not (at_b_p7))

                    ; #79637: <==negation-removal== 36093 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #35449: origin
                    (not_at_b_p7)

                    ; #98915: origin
                    (at_b_p2)

                    ; #14086: <==negation-removal== 35449 (pos)
                    (not (at_b_p7))

                    ; #90462: <==negation-removal== 98915 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #35449: origin
                    (not_at_b_p7)

                    ; #47739: origin
                    (at_b_p3)

                    ; #14086: <==negation-removal== 35449 (pos)
                    (not (at_b_p7))

                    ; #67016: <==negation-removal== 47739 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #35449: origin
                    (not_at_b_p7)

                    ; #64720: origin
                    (at_b_p4)

                    ; #14086: <==negation-removal== 35449 (pos)
                    (not (at_b_p7))

                    ; #40385: <==negation-removal== 64720 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #35449: origin
                    (not_at_b_p7)

                    ; #48600: origin
                    (at_b_p5)

                    ; #14086: <==negation-removal== 35449 (pos)
                    (not (at_b_p7))

                    ; #27056: <==negation-removal== 48600 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #35449: origin
                    (not_at_b_p7)

                    ; #76672: origin
                    (at_b_p6)

                    ; #14086: <==negation-removal== 35449 (pos)
                    (not (at_b_p7))

                    ; #31817: <==negation-removal== 76672 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #14086: origin
                    (at_b_p7)

                    ; #35449: origin
                    (not_at_b_p7)

                    ; #14086: <==negation-removal== 35449 (pos)
                    (not (at_b_p7))

                    ; #35449: <==negation-removal== 14086 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #35449: origin
                    (not_at_b_p7)

                    ; #43015: origin
                    (at_b_p8)

                    ; #14086: <==negation-removal== 35449 (pos)
                    (not (at_b_p7))

                    ; #78218: <==negation-removal== 43015 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #35449: origin
                    (not_at_b_p7)

                    ; #58597: origin
                    (at_b_p9)

                    ; #14086: <==negation-removal== 35449 (pos)
                    (not (at_b_p7))

                    ; #54460: <==negation-removal== 58597 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #53763: origin
                    (at_b_p1)

                    ; #78218: origin
                    (not_at_b_p8)

                    ; #43015: <==negation-removal== 78218 (pos)
                    (not (at_b_p8))

                    ; #62351: <==negation-removal== 53763 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8))
        :effect (and
                    ; #37844: origin
                    (at_b_p10)

                    ; #78218: origin
                    (not_at_b_p8)

                    ; #43015: <==negation-removal== 78218 (pos)
                    (not (at_b_p8))

                    ; #49185: <==negation-removal== 37844 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8))
        :effect (and
                    ; #64929: origin
                    (at_b_p11)

                    ; #78218: origin
                    (not_at_b_p8)

                    ; #43015: <==negation-removal== 78218 (pos)
                    (not (at_b_p8))

                    ; #48868: <==negation-removal== 64929 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #36093: origin
                    (at_b_p12)

                    ; #78218: origin
                    (not_at_b_p8)

                    ; #43015: <==negation-removal== 78218 (pos)
                    (not (at_b_p8))

                    ; #79637: <==negation-removal== 36093 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #78218: origin
                    (not_at_b_p8)

                    ; #98915: origin
                    (at_b_p2)

                    ; #43015: <==negation-removal== 78218 (pos)
                    (not (at_b_p8))

                    ; #90462: <==negation-removal== 98915 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #47739: origin
                    (at_b_p3)

                    ; #78218: origin
                    (not_at_b_p8)

                    ; #43015: <==negation-removal== 78218 (pos)
                    (not (at_b_p8))

                    ; #67016: <==negation-removal== 47739 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #64720: origin
                    (at_b_p4)

                    ; #78218: origin
                    (not_at_b_p8)

                    ; #40385: <==negation-removal== 64720 (pos)
                    (not (not_at_b_p4))

                    ; #43015: <==negation-removal== 78218 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #48600: origin
                    (at_b_p5)

                    ; #78218: origin
                    (not_at_b_p8)

                    ; #27056: <==negation-removal== 48600 (pos)
                    (not (not_at_b_p5))

                    ; #43015: <==negation-removal== 78218 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #76672: origin
                    (at_b_p6)

                    ; #78218: origin
                    (not_at_b_p8)

                    ; #31817: <==negation-removal== 76672 (pos)
                    (not (not_at_b_p6))

                    ; #43015: <==negation-removal== 78218 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #14086: origin
                    (at_b_p7)

                    ; #78218: origin
                    (not_at_b_p8)

                    ; #35449: <==negation-removal== 14086 (pos)
                    (not (not_at_b_p7))

                    ; #43015: <==negation-removal== 78218 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #43015: origin
                    (at_b_p8)

                    ; #78218: origin
                    (not_at_b_p8)

                    ; #43015: <==negation-removal== 78218 (pos)
                    (not (at_b_p8))

                    ; #78218: <==negation-removal== 43015 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #58597: origin
                    (at_b_p9)

                    ; #78218: origin
                    (not_at_b_p8)

                    ; #43015: <==negation-removal== 78218 (pos)
                    (not (at_b_p8))

                    ; #54460: <==negation-removal== 58597 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #53763: origin
                    (at_b_p1)

                    ; #54460: origin
                    (not_at_b_p9)

                    ; #58597: <==negation-removal== 54460 (pos)
                    (not (at_b_p9))

                    ; #62351: <==negation-removal== 53763 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (at_b_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #37844: origin
                    (at_b_p10)

                    ; #54460: origin
                    (not_at_b_p9)

                    ; #49185: <==negation-removal== 37844 (pos)
                    (not (not_at_b_p10))

                    ; #58597: <==negation-removal== 54460 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9))
        :effect (and
                    ; #54460: origin
                    (not_at_b_p9)

                    ; #64929: origin
                    (at_b_p11)

                    ; #48868: <==negation-removal== 64929 (pos)
                    (not (not_at_b_p11))

                    ; #58597: <==negation-removal== 54460 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9))
        :effect (and
                    ; #36093: origin
                    (at_b_p12)

                    ; #54460: origin
                    (not_at_b_p9)

                    ; #58597: <==negation-removal== 54460 (pos)
                    (not (at_b_p9))

                    ; #79637: <==negation-removal== 36093 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #54460: origin
                    (not_at_b_p9)

                    ; #98915: origin
                    (at_b_p2)

                    ; #58597: <==negation-removal== 54460 (pos)
                    (not (at_b_p9))

                    ; #90462: <==negation-removal== 98915 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #47739: origin
                    (at_b_p3)

                    ; #54460: origin
                    (not_at_b_p9)

                    ; #58597: <==negation-removal== 54460 (pos)
                    (not (at_b_p9))

                    ; #67016: <==negation-removal== 47739 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #54460: origin
                    (not_at_b_p9)

                    ; #64720: origin
                    (at_b_p4)

                    ; #40385: <==negation-removal== 64720 (pos)
                    (not (not_at_b_p4))

                    ; #58597: <==negation-removal== 54460 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #48600: origin
                    (at_b_p5)

                    ; #54460: origin
                    (not_at_b_p9)

                    ; #27056: <==negation-removal== 48600 (pos)
                    (not (not_at_b_p5))

                    ; #58597: <==negation-removal== 54460 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #54460: origin
                    (not_at_b_p9)

                    ; #76672: origin
                    (at_b_p6)

                    ; #31817: <==negation-removal== 76672 (pos)
                    (not (not_at_b_p6))

                    ; #58597: <==negation-removal== 54460 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #14086: origin
                    (at_b_p7)

                    ; #54460: origin
                    (not_at_b_p9)

                    ; #35449: <==negation-removal== 14086 (pos)
                    (not (not_at_b_p7))

                    ; #58597: <==negation-removal== 54460 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #43015: origin
                    (at_b_p8)

                    ; #54460: origin
                    (not_at_b_p9)

                    ; #58597: <==negation-removal== 54460 (pos)
                    (not (at_b_p9))

                    ; #78218: <==negation-removal== 43015 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #54460: origin
                    (not_at_b_p9)

                    ; #58597: origin
                    (at_b_p9)

                    ; #54460: <==negation-removal== 58597 (pos)
                    (not (not_at_b_p9))

                    ; #58597: <==negation-removal== 54460 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10))
        :effect (and
                    ; #31812: origin
                    (not_at_c_p10)

                    ; #65622: origin
                    (at_c_p1)

                    ; #11532: <==negation-removal== 31812 (pos)
                    (not (at_c_p10))

                    ; #57151: <==negation-removal== 65622 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_c_p10))
        :effect (and
                    ; #11532: origin
                    (at_c_p10)

                    ; #31812: origin
                    (not_at_c_p10)

                    ; #11532: <==negation-removal== 31812 (pos)
                    (not (at_c_p10))

                    ; #31812: <==negation-removal== 11532 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10))
        :effect (and
                    ; #31812: origin
                    (not_at_c_p10)

                    ; #45629: origin
                    (at_c_p11)

                    ; #11532: <==negation-removal== 31812 (pos)
                    (not (at_c_p10))

                    ; #73054: <==negation-removal== 45629 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10))
        :effect (and
                    ; #31812: origin
                    (not_at_c_p10)

                    ; #44760: origin
                    (at_c_p12)

                    ; #11532: <==negation-removal== 31812 (pos)
                    (not (at_c_p10))

                    ; #86443: <==negation-removal== 44760 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_c_p10))
        :effect (and
                    ; #31812: origin
                    (not_at_c_p10)

                    ; #80824: origin
                    (at_c_p2)

                    ; #11532: <==negation-removal== 31812 (pos)
                    (not (at_c_p10))

                    ; #88719: <==negation-removal== 80824 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10))
        :effect (and
                    ; #31388: origin
                    (at_c_p3)

                    ; #31812: origin
                    (not_at_c_p10)

                    ; #11532: <==negation-removal== 31812 (pos)
                    (not (at_c_p10))

                    ; #70877: <==negation-removal== 31388 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_c_p10))
        :effect (and
                    ; #31812: origin
                    (not_at_c_p10)

                    ; #47012: origin
                    (at_c_p4)

                    ; #11532: <==negation-removal== 31812 (pos)
                    (not (at_c_p10))

                    ; #91705: <==negation-removal== 47012 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_c_p10))
        :effect (and
                    ; #31812: origin
                    (not_at_c_p10)

                    ; #91253: origin
                    (at_c_p5)

                    ; #11532: <==negation-removal== 31812 (pos)
                    (not (at_c_p10))

                    ; #61520: <==negation-removal== 91253 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_c_p10))
        :effect (and
                    ; #31812: origin
                    (not_at_c_p10)

                    ; #72911: origin
                    (at_c_p6)

                    ; #11532: <==negation-removal== 31812 (pos)
                    (not (at_c_p10))

                    ; #82778: <==negation-removal== 72911 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_c_p10))
        :effect (and
                    ; #17858: origin
                    (at_c_p7)

                    ; #31812: origin
                    (not_at_c_p10)

                    ; #11532: <==negation-removal== 31812 (pos)
                    (not (at_c_p10))

                    ; #15205: <==negation-removal== 17858 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_c_p10))
        :effect (and
                    ; #11657: origin
                    (at_c_p8)

                    ; #31812: origin
                    (not_at_c_p10)

                    ; #11532: <==negation-removal== 31812 (pos)
                    (not (at_c_p10))

                    ; #89767: <==negation-removal== 11657 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_c_p10))
        :effect (and
                    ; #23071: origin
                    (at_c_p9)

                    ; #31812: origin
                    (not_at_c_p10)

                    ; #11532: <==negation-removal== 31812 (pos)
                    (not (at_c_p10))

                    ; #53207: <==negation-removal== 23071 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p11_p1
        :precondition (and (at_c_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #65622: origin
                    (at_c_p1)

                    ; #73054: origin
                    (not_at_c_p11)

                    ; #45629: <==negation-removal== 73054 (pos)
                    (not (at_c_p11))

                    ; #57151: <==negation-removal== 65622 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11))
        :effect (and
                    ; #11532: origin
                    (at_c_p10)

                    ; #73054: origin
                    (not_at_c_p11)

                    ; #31812: <==negation-removal== 11532 (pos)
                    (not (not_at_c_p10))

                    ; #45629: <==negation-removal== 73054 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #45629: origin
                    (at_c_p11)

                    ; #73054: origin
                    (not_at_c_p11)

                    ; #45629: <==negation-removal== 73054 (pos)
                    (not (at_c_p11))

                    ; #73054: <==negation-removal== 45629 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11))
        :effect (and
                    ; #44760: origin
                    (at_c_p12)

                    ; #73054: origin
                    (not_at_c_p11)

                    ; #45629: <==negation-removal== 73054 (pos)
                    (not (at_c_p11))

                    ; #86443: <==negation-removal== 44760 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (at_c_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #73054: origin
                    (not_at_c_p11)

                    ; #80824: origin
                    (at_c_p2)

                    ; #45629: <==negation-removal== 73054 (pos)
                    (not (at_c_p11))

                    ; #88719: <==negation-removal== 80824 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_c_p11))
        :effect (and
                    ; #31388: origin
                    (at_c_p3)

                    ; #73054: origin
                    (not_at_c_p11)

                    ; #45629: <==negation-removal== 73054 (pos)
                    (not (at_c_p11))

                    ; #70877: <==negation-removal== 31388 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11))
        :effect (and
                    ; #47012: origin
                    (at_c_p4)

                    ; #73054: origin
                    (not_at_c_p11)

                    ; #45629: <==negation-removal== 73054 (pos)
                    (not (at_c_p11))

                    ; #91705: <==negation-removal== 47012 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_c_p11))
        :effect (and
                    ; #73054: origin
                    (not_at_c_p11)

                    ; #91253: origin
                    (at_c_p5)

                    ; #45629: <==negation-removal== 73054 (pos)
                    (not (at_c_p11))

                    ; #61520: <==negation-removal== 91253 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #72911: origin
                    (at_c_p6)

                    ; #73054: origin
                    (not_at_c_p11)

                    ; #45629: <==negation-removal== 73054 (pos)
                    (not (at_c_p11))

                    ; #82778: <==negation-removal== 72911 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #17858: origin
                    (at_c_p7)

                    ; #73054: origin
                    (not_at_c_p11)

                    ; #15205: <==negation-removal== 17858 (pos)
                    (not (not_at_c_p7))

                    ; #45629: <==negation-removal== 73054 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #11657: origin
                    (at_c_p8)

                    ; #73054: origin
                    (not_at_c_p11)

                    ; #45629: <==negation-removal== 73054 (pos)
                    (not (at_c_p11))

                    ; #89767: <==negation-removal== 11657 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11))
        :effect (and
                    ; #23071: origin
                    (at_c_p9)

                    ; #73054: origin
                    (not_at_c_p11)

                    ; #45629: <==negation-removal== 73054 (pos)
                    (not (at_c_p11))

                    ; #53207: <==negation-removal== 23071 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #65622: origin
                    (at_c_p1)

                    ; #86443: origin
                    (not_at_c_p12)

                    ; #44760: <==negation-removal== 86443 (pos)
                    (not (at_c_p12))

                    ; #57151: <==negation-removal== 65622 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #11532: origin
                    (at_c_p10)

                    ; #86443: origin
                    (not_at_c_p12)

                    ; #31812: <==negation-removal== 11532 (pos)
                    (not (not_at_c_p10))

                    ; #44760: <==negation-removal== 86443 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_c_p12))
        :effect (and
                    ; #45629: origin
                    (at_c_p11)

                    ; #86443: origin
                    (not_at_c_p12)

                    ; #44760: <==negation-removal== 86443 (pos)
                    (not (at_c_p12))

                    ; #73054: <==negation-removal== 45629 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #44760: origin
                    (at_c_p12)

                    ; #86443: origin
                    (not_at_c_p12)

                    ; #44760: <==negation-removal== 86443 (pos)
                    (not (at_c_p12))

                    ; #86443: <==negation-removal== 44760 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12))
        :effect (and
                    ; #80824: origin
                    (at_c_p2)

                    ; #86443: origin
                    (not_at_c_p12)

                    ; #44760: <==negation-removal== 86443 (pos)
                    (not (at_c_p12))

                    ; #88719: <==negation-removal== 80824 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (at_c_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #31388: origin
                    (at_c_p3)

                    ; #86443: origin
                    (not_at_c_p12)

                    ; #44760: <==negation-removal== 86443 (pos)
                    (not (at_c_p12))

                    ; #70877: <==negation-removal== 31388 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12))
        :effect (and
                    ; #47012: origin
                    (at_c_p4)

                    ; #86443: origin
                    (not_at_c_p12)

                    ; #44760: <==negation-removal== 86443 (pos)
                    (not (at_c_p12))

                    ; #91705: <==negation-removal== 47012 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12))
        :effect (and
                    ; #86443: origin
                    (not_at_c_p12)

                    ; #91253: origin
                    (at_c_p5)

                    ; #44760: <==negation-removal== 86443 (pos)
                    (not (at_c_p12))

                    ; #61520: <==negation-removal== 91253 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (at_c_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #72911: origin
                    (at_c_p6)

                    ; #86443: origin
                    (not_at_c_p12)

                    ; #44760: <==negation-removal== 86443 (pos)
                    (not (at_c_p12))

                    ; #82778: <==negation-removal== 72911 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12))
        :effect (and
                    ; #17858: origin
                    (at_c_p7)

                    ; #86443: origin
                    (not_at_c_p12)

                    ; #15205: <==negation-removal== 17858 (pos)
                    (not (not_at_c_p7))

                    ; #44760: <==negation-removal== 86443 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12))
        :effect (and
                    ; #11657: origin
                    (at_c_p8)

                    ; #86443: origin
                    (not_at_c_p12)

                    ; #44760: <==negation-removal== 86443 (pos)
                    (not (at_c_p12))

                    ; #89767: <==negation-removal== 11657 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #23071: origin
                    (at_c_p9)

                    ; #86443: origin
                    (not_at_c_p12)

                    ; #44760: <==negation-removal== 86443 (pos)
                    (not (at_c_p12))

                    ; #53207: <==negation-removal== 23071 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #57151: origin
                    (not_at_c_p1)

                    ; #65622: origin
                    (at_c_p1)

                    ; #57151: <==negation-removal== 65622 (pos)
                    (not (not_at_c_p1))

                    ; #65622: <==negation-removal== 57151 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_c_p1))
        :effect (and
                    ; #11532: origin
                    (at_c_p10)

                    ; #57151: origin
                    (not_at_c_p1)

                    ; #31812: <==negation-removal== 11532 (pos)
                    (not (not_at_c_p10))

                    ; #65622: <==negation-removal== 57151 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_c_p1))
        :effect (and
                    ; #45629: origin
                    (at_c_p11)

                    ; #57151: origin
                    (not_at_c_p1)

                    ; #65622: <==negation-removal== 57151 (pos)
                    (not (at_c_p1))

                    ; #73054: <==negation-removal== 45629 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #44760: origin
                    (at_c_p12)

                    ; #57151: origin
                    (not_at_c_p1)

                    ; #65622: <==negation-removal== 57151 (pos)
                    (not (at_c_p1))

                    ; #86443: <==negation-removal== 44760 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #57151: origin
                    (not_at_c_p1)

                    ; #80824: origin
                    (at_c_p2)

                    ; #65622: <==negation-removal== 57151 (pos)
                    (not (at_c_p1))

                    ; #88719: <==negation-removal== 80824 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #31388: origin
                    (at_c_p3)

                    ; #57151: origin
                    (not_at_c_p1)

                    ; #65622: <==negation-removal== 57151 (pos)
                    (not (at_c_p1))

                    ; #70877: <==negation-removal== 31388 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #47012: origin
                    (at_c_p4)

                    ; #57151: origin
                    (not_at_c_p1)

                    ; #65622: <==negation-removal== 57151 (pos)
                    (not (at_c_p1))

                    ; #91705: <==negation-removal== 47012 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #57151: origin
                    (not_at_c_p1)

                    ; #91253: origin
                    (at_c_p5)

                    ; #61520: <==negation-removal== 91253 (pos)
                    (not (not_at_c_p5))

                    ; #65622: <==negation-removal== 57151 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #57151: origin
                    (not_at_c_p1)

                    ; #72911: origin
                    (at_c_p6)

                    ; #65622: <==negation-removal== 57151 (pos)
                    (not (at_c_p1))

                    ; #82778: <==negation-removal== 72911 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #17858: origin
                    (at_c_p7)

                    ; #57151: origin
                    (not_at_c_p1)

                    ; #15205: <==negation-removal== 17858 (pos)
                    (not (not_at_c_p7))

                    ; #65622: <==negation-removal== 57151 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #11657: origin
                    (at_c_p8)

                    ; #57151: origin
                    (not_at_c_p1)

                    ; #65622: <==negation-removal== 57151 (pos)
                    (not (at_c_p1))

                    ; #89767: <==negation-removal== 11657 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #23071: origin
                    (at_c_p9)

                    ; #57151: origin
                    (not_at_c_p1)

                    ; #53207: <==negation-removal== 23071 (pos)
                    (not (not_at_c_p9))

                    ; #65622: <==negation-removal== 57151 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #65622: origin
                    (at_c_p1)

                    ; #88719: origin
                    (not_at_c_p2)

                    ; #57151: <==negation-removal== 65622 (pos)
                    (not (not_at_c_p1))

                    ; #80824: <==negation-removal== 88719 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #11532: origin
                    (at_c_p10)

                    ; #88719: origin
                    (not_at_c_p2)

                    ; #31812: <==negation-removal== 11532 (pos)
                    (not (not_at_c_p10))

                    ; #80824: <==negation-removal== 88719 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (at_c_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #45629: origin
                    (at_c_p11)

                    ; #88719: origin
                    (not_at_c_p2)

                    ; #73054: <==negation-removal== 45629 (pos)
                    (not (not_at_c_p11))

                    ; #80824: <==negation-removal== 88719 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #44760: origin
                    (at_c_p12)

                    ; #88719: origin
                    (not_at_c_p2)

                    ; #80824: <==negation-removal== 88719 (pos)
                    (not (at_c_p2))

                    ; #86443: <==negation-removal== 44760 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #80824: origin
                    (at_c_p2)

                    ; #88719: origin
                    (not_at_c_p2)

                    ; #80824: <==negation-removal== 88719 (pos)
                    (not (at_c_p2))

                    ; #88719: <==negation-removal== 80824 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #31388: origin
                    (at_c_p3)

                    ; #88719: origin
                    (not_at_c_p2)

                    ; #70877: <==negation-removal== 31388 (pos)
                    (not (not_at_c_p3))

                    ; #80824: <==negation-removal== 88719 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #47012: origin
                    (at_c_p4)

                    ; #88719: origin
                    (not_at_c_p2)

                    ; #80824: <==negation-removal== 88719 (pos)
                    (not (at_c_p2))

                    ; #91705: <==negation-removal== 47012 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #88719: origin
                    (not_at_c_p2)

                    ; #91253: origin
                    (at_c_p5)

                    ; #61520: <==negation-removal== 91253 (pos)
                    (not (not_at_c_p5))

                    ; #80824: <==negation-removal== 88719 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #72911: origin
                    (at_c_p6)

                    ; #88719: origin
                    (not_at_c_p2)

                    ; #80824: <==negation-removal== 88719 (pos)
                    (not (at_c_p2))

                    ; #82778: <==negation-removal== 72911 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #17858: origin
                    (at_c_p7)

                    ; #88719: origin
                    (not_at_c_p2)

                    ; #15205: <==negation-removal== 17858 (pos)
                    (not (not_at_c_p7))

                    ; #80824: <==negation-removal== 88719 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #11657: origin
                    (at_c_p8)

                    ; #88719: origin
                    (not_at_c_p2)

                    ; #80824: <==negation-removal== 88719 (pos)
                    (not (at_c_p2))

                    ; #89767: <==negation-removal== 11657 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #23071: origin
                    (at_c_p9)

                    ; #88719: origin
                    (not_at_c_p2)

                    ; #53207: <==negation-removal== 23071 (pos)
                    (not (not_at_c_p9))

                    ; #80824: <==negation-removal== 88719 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #65622: origin
                    (at_c_p1)

                    ; #70877: origin
                    (not_at_c_p3)

                    ; #31388: <==negation-removal== 70877 (pos)
                    (not (at_c_p3))

                    ; #57151: <==negation-removal== 65622 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #11532: origin
                    (at_c_p10)

                    ; #70877: origin
                    (not_at_c_p3)

                    ; #31388: <==negation-removal== 70877 (pos)
                    (not (at_c_p3))

                    ; #31812: <==negation-removal== 11532 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #45629: origin
                    (at_c_p11)

                    ; #70877: origin
                    (not_at_c_p3)

                    ; #31388: <==negation-removal== 70877 (pos)
                    (not (at_c_p3))

                    ; #73054: <==negation-removal== 45629 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #44760: origin
                    (at_c_p12)

                    ; #70877: origin
                    (not_at_c_p3)

                    ; #31388: <==negation-removal== 70877 (pos)
                    (not (at_c_p3))

                    ; #86443: <==negation-removal== 44760 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #70877: origin
                    (not_at_c_p3)

                    ; #80824: origin
                    (at_c_p2)

                    ; #31388: <==negation-removal== 70877 (pos)
                    (not (at_c_p3))

                    ; #88719: <==negation-removal== 80824 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #31388: origin
                    (at_c_p3)

                    ; #70877: origin
                    (not_at_c_p3)

                    ; #31388: <==negation-removal== 70877 (pos)
                    (not (at_c_p3))

                    ; #70877: <==negation-removal== 31388 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #47012: origin
                    (at_c_p4)

                    ; #70877: origin
                    (not_at_c_p3)

                    ; #31388: <==negation-removal== 70877 (pos)
                    (not (at_c_p3))

                    ; #91705: <==negation-removal== 47012 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #70877: origin
                    (not_at_c_p3)

                    ; #91253: origin
                    (at_c_p5)

                    ; #31388: <==negation-removal== 70877 (pos)
                    (not (at_c_p3))

                    ; #61520: <==negation-removal== 91253 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #70877: origin
                    (not_at_c_p3)

                    ; #72911: origin
                    (at_c_p6)

                    ; #31388: <==negation-removal== 70877 (pos)
                    (not (at_c_p3))

                    ; #82778: <==negation-removal== 72911 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #17858: origin
                    (at_c_p7)

                    ; #70877: origin
                    (not_at_c_p3)

                    ; #15205: <==negation-removal== 17858 (pos)
                    (not (not_at_c_p7))

                    ; #31388: <==negation-removal== 70877 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #11657: origin
                    (at_c_p8)

                    ; #70877: origin
                    (not_at_c_p3)

                    ; #31388: <==negation-removal== 70877 (pos)
                    (not (at_c_p3))

                    ; #89767: <==negation-removal== 11657 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #23071: origin
                    (at_c_p9)

                    ; #70877: origin
                    (not_at_c_p3)

                    ; #31388: <==negation-removal== 70877 (pos)
                    (not (at_c_p3))

                    ; #53207: <==negation-removal== 23071 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #65622: origin
                    (at_c_p1)

                    ; #91705: origin
                    (not_at_c_p4)

                    ; #47012: <==negation-removal== 91705 (pos)
                    (not (at_c_p4))

                    ; #57151: <==negation-removal== 65622 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #11532: origin
                    (at_c_p10)

                    ; #91705: origin
                    (not_at_c_p4)

                    ; #31812: <==negation-removal== 11532 (pos)
                    (not (not_at_c_p10))

                    ; #47012: <==negation-removal== 91705 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #45629: origin
                    (at_c_p11)

                    ; #91705: origin
                    (not_at_c_p4)

                    ; #47012: <==negation-removal== 91705 (pos)
                    (not (at_c_p4))

                    ; #73054: <==negation-removal== 45629 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #44760: origin
                    (at_c_p12)

                    ; #91705: origin
                    (not_at_c_p4)

                    ; #47012: <==negation-removal== 91705 (pos)
                    (not (at_c_p4))

                    ; #86443: <==negation-removal== 44760 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #80824: origin
                    (at_c_p2)

                    ; #91705: origin
                    (not_at_c_p4)

                    ; #47012: <==negation-removal== 91705 (pos)
                    (not (at_c_p4))

                    ; #88719: <==negation-removal== 80824 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #31388: origin
                    (at_c_p3)

                    ; #91705: origin
                    (not_at_c_p4)

                    ; #47012: <==negation-removal== 91705 (pos)
                    (not (at_c_p4))

                    ; #70877: <==negation-removal== 31388 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #47012: origin
                    (at_c_p4)

                    ; #91705: origin
                    (not_at_c_p4)

                    ; #47012: <==negation-removal== 91705 (pos)
                    (not (at_c_p4))

                    ; #91705: <==negation-removal== 47012 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #91253: origin
                    (at_c_p5)

                    ; #91705: origin
                    (not_at_c_p4)

                    ; #47012: <==negation-removal== 91705 (pos)
                    (not (at_c_p4))

                    ; #61520: <==negation-removal== 91253 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #72911: origin
                    (at_c_p6)

                    ; #91705: origin
                    (not_at_c_p4)

                    ; #47012: <==negation-removal== 91705 (pos)
                    (not (at_c_p4))

                    ; #82778: <==negation-removal== 72911 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #17858: origin
                    (at_c_p7)

                    ; #91705: origin
                    (not_at_c_p4)

                    ; #15205: <==negation-removal== 17858 (pos)
                    (not (not_at_c_p7))

                    ; #47012: <==negation-removal== 91705 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #11657: origin
                    (at_c_p8)

                    ; #91705: origin
                    (not_at_c_p4)

                    ; #47012: <==negation-removal== 91705 (pos)
                    (not (at_c_p4))

                    ; #89767: <==negation-removal== 11657 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #23071: origin
                    (at_c_p9)

                    ; #91705: origin
                    (not_at_c_p4)

                    ; #47012: <==negation-removal== 91705 (pos)
                    (not (at_c_p4))

                    ; #53207: <==negation-removal== 23071 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #61520: origin
                    (not_at_c_p5)

                    ; #65622: origin
                    (at_c_p1)

                    ; #57151: <==negation-removal== 65622 (pos)
                    (not (not_at_c_p1))

                    ; #91253: <==negation-removal== 61520 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5))
        :effect (and
                    ; #11532: origin
                    (at_c_p10)

                    ; #61520: origin
                    (not_at_c_p5)

                    ; #31812: <==negation-removal== 11532 (pos)
                    (not (not_at_c_p10))

                    ; #91253: <==negation-removal== 61520 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_c_p5))
        :effect (and
                    ; #45629: origin
                    (at_c_p11)

                    ; #61520: origin
                    (not_at_c_p5)

                    ; #73054: <==negation-removal== 45629 (pos)
                    (not (not_at_c_p11))

                    ; #91253: <==negation-removal== 61520 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #44760: origin
                    (at_c_p12)

                    ; #61520: origin
                    (not_at_c_p5)

                    ; #86443: <==negation-removal== 44760 (pos)
                    (not (not_at_c_p12))

                    ; #91253: <==negation-removal== 61520 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #61520: origin
                    (not_at_c_p5)

                    ; #80824: origin
                    (at_c_p2)

                    ; #88719: <==negation-removal== 80824 (pos)
                    (not (not_at_c_p2))

                    ; #91253: <==negation-removal== 61520 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #31388: origin
                    (at_c_p3)

                    ; #61520: origin
                    (not_at_c_p5)

                    ; #70877: <==negation-removal== 31388 (pos)
                    (not (not_at_c_p3))

                    ; #91253: <==negation-removal== 61520 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #47012: origin
                    (at_c_p4)

                    ; #61520: origin
                    (not_at_c_p5)

                    ; #91253: <==negation-removal== 61520 (pos)
                    (not (at_c_p5))

                    ; #91705: <==negation-removal== 47012 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #61520: origin
                    (not_at_c_p5)

                    ; #91253: origin
                    (at_c_p5)

                    ; #61520: <==negation-removal== 91253 (pos)
                    (not (not_at_c_p5))

                    ; #91253: <==negation-removal== 61520 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #61520: origin
                    (not_at_c_p5)

                    ; #72911: origin
                    (at_c_p6)

                    ; #82778: <==negation-removal== 72911 (pos)
                    (not (not_at_c_p6))

                    ; #91253: <==negation-removal== 61520 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #17858: origin
                    (at_c_p7)

                    ; #61520: origin
                    (not_at_c_p5)

                    ; #15205: <==negation-removal== 17858 (pos)
                    (not (not_at_c_p7))

                    ; #91253: <==negation-removal== 61520 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #11657: origin
                    (at_c_p8)

                    ; #61520: origin
                    (not_at_c_p5)

                    ; #89767: <==negation-removal== 11657 (pos)
                    (not (not_at_c_p8))

                    ; #91253: <==negation-removal== 61520 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #23071: origin
                    (at_c_p9)

                    ; #61520: origin
                    (not_at_c_p5)

                    ; #53207: <==negation-removal== 23071 (pos)
                    (not (not_at_c_p9))

                    ; #91253: <==negation-removal== 61520 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #65622: origin
                    (at_c_p1)

                    ; #82778: origin
                    (not_at_c_p6)

                    ; #57151: <==negation-removal== 65622 (pos)
                    (not (not_at_c_p1))

                    ; #72911: <==negation-removal== 82778 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #11532: origin
                    (at_c_p10)

                    ; #82778: origin
                    (not_at_c_p6)

                    ; #31812: <==negation-removal== 11532 (pos)
                    (not (not_at_c_p10))

                    ; #72911: <==negation-removal== 82778 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #45629: origin
                    (at_c_p11)

                    ; #82778: origin
                    (not_at_c_p6)

                    ; #72911: <==negation-removal== 82778 (pos)
                    (not (at_c_p6))

                    ; #73054: <==negation-removal== 45629 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6))
        :effect (and
                    ; #44760: origin
                    (at_c_p12)

                    ; #82778: origin
                    (not_at_c_p6)

                    ; #72911: <==negation-removal== 82778 (pos)
                    (not (at_c_p6))

                    ; #86443: <==negation-removal== 44760 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #80824: origin
                    (at_c_p2)

                    ; #82778: origin
                    (not_at_c_p6)

                    ; #72911: <==negation-removal== 82778 (pos)
                    (not (at_c_p6))

                    ; #88719: <==negation-removal== 80824 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #31388: origin
                    (at_c_p3)

                    ; #82778: origin
                    (not_at_c_p6)

                    ; #70877: <==negation-removal== 31388 (pos)
                    (not (not_at_c_p3))

                    ; #72911: <==negation-removal== 82778 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #47012: origin
                    (at_c_p4)

                    ; #82778: origin
                    (not_at_c_p6)

                    ; #72911: <==negation-removal== 82778 (pos)
                    (not (at_c_p6))

                    ; #91705: <==negation-removal== 47012 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #82778: origin
                    (not_at_c_p6)

                    ; #91253: origin
                    (at_c_p5)

                    ; #61520: <==negation-removal== 91253 (pos)
                    (not (not_at_c_p5))

                    ; #72911: <==negation-removal== 82778 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #72911: origin
                    (at_c_p6)

                    ; #82778: origin
                    (not_at_c_p6)

                    ; #72911: <==negation-removal== 82778 (pos)
                    (not (at_c_p6))

                    ; #82778: <==negation-removal== 72911 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #17858: origin
                    (at_c_p7)

                    ; #82778: origin
                    (not_at_c_p6)

                    ; #15205: <==negation-removal== 17858 (pos)
                    (not (not_at_c_p7))

                    ; #72911: <==negation-removal== 82778 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #11657: origin
                    (at_c_p8)

                    ; #82778: origin
                    (not_at_c_p6)

                    ; #72911: <==negation-removal== 82778 (pos)
                    (not (at_c_p6))

                    ; #89767: <==negation-removal== 11657 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #23071: origin
                    (at_c_p9)

                    ; #82778: origin
                    (not_at_c_p6)

                    ; #53207: <==negation-removal== 23071 (pos)
                    (not (not_at_c_p9))

                    ; #72911: <==negation-removal== 82778 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #15205: origin
                    (not_at_c_p7)

                    ; #65622: origin
                    (at_c_p1)

                    ; #17858: <==negation-removal== 15205 (pos)
                    (not (at_c_p7))

                    ; #57151: <==negation-removal== 65622 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7))
        :effect (and
                    ; #11532: origin
                    (at_c_p10)

                    ; #15205: origin
                    (not_at_c_p7)

                    ; #17858: <==negation-removal== 15205 (pos)
                    (not (at_c_p7))

                    ; #31812: <==negation-removal== 11532 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7))
        :effect (and
                    ; #15205: origin
                    (not_at_c_p7)

                    ; #45629: origin
                    (at_c_p11)

                    ; #17858: <==negation-removal== 15205 (pos)
                    (not (at_c_p7))

                    ; #73054: <==negation-removal== 45629 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7))
        :effect (and
                    ; #15205: origin
                    (not_at_c_p7)

                    ; #44760: origin
                    (at_c_p12)

                    ; #17858: <==negation-removal== 15205 (pos)
                    (not (at_c_p7))

                    ; #86443: <==negation-removal== 44760 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #15205: origin
                    (not_at_c_p7)

                    ; #80824: origin
                    (at_c_p2)

                    ; #17858: <==negation-removal== 15205 (pos)
                    (not (at_c_p7))

                    ; #88719: <==negation-removal== 80824 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #15205: origin
                    (not_at_c_p7)

                    ; #31388: origin
                    (at_c_p3)

                    ; #17858: <==negation-removal== 15205 (pos)
                    (not (at_c_p7))

                    ; #70877: <==negation-removal== 31388 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #15205: origin
                    (not_at_c_p7)

                    ; #47012: origin
                    (at_c_p4)

                    ; #17858: <==negation-removal== 15205 (pos)
                    (not (at_c_p7))

                    ; #91705: <==negation-removal== 47012 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #15205: origin
                    (not_at_c_p7)

                    ; #91253: origin
                    (at_c_p5)

                    ; #17858: <==negation-removal== 15205 (pos)
                    (not (at_c_p7))

                    ; #61520: <==negation-removal== 91253 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #15205: origin
                    (not_at_c_p7)

                    ; #72911: origin
                    (at_c_p6)

                    ; #17858: <==negation-removal== 15205 (pos)
                    (not (at_c_p7))

                    ; #82778: <==negation-removal== 72911 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #15205: origin
                    (not_at_c_p7)

                    ; #17858: origin
                    (at_c_p7)

                    ; #15205: <==negation-removal== 17858 (pos)
                    (not (not_at_c_p7))

                    ; #17858: <==negation-removal== 15205 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #11657: origin
                    (at_c_p8)

                    ; #15205: origin
                    (not_at_c_p7)

                    ; #17858: <==negation-removal== 15205 (pos)
                    (not (at_c_p7))

                    ; #89767: <==negation-removal== 11657 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #15205: origin
                    (not_at_c_p7)

                    ; #23071: origin
                    (at_c_p9)

                    ; #17858: <==negation-removal== 15205 (pos)
                    (not (at_c_p7))

                    ; #53207: <==negation-removal== 23071 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #65622: origin
                    (at_c_p1)

                    ; #89767: origin
                    (not_at_c_p8)

                    ; #11657: <==negation-removal== 89767 (pos)
                    (not (at_c_p8))

                    ; #57151: <==negation-removal== 65622 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8))
        :effect (and
                    ; #11532: origin
                    (at_c_p10)

                    ; #89767: origin
                    (not_at_c_p8)

                    ; #11657: <==negation-removal== 89767 (pos)
                    (not (at_c_p8))

                    ; #31812: <==negation-removal== 11532 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8))
        :effect (and
                    ; #45629: origin
                    (at_c_p11)

                    ; #89767: origin
                    (not_at_c_p8)

                    ; #11657: <==negation-removal== 89767 (pos)
                    (not (at_c_p8))

                    ; #73054: <==negation-removal== 45629 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #44760: origin
                    (at_c_p12)

                    ; #89767: origin
                    (not_at_c_p8)

                    ; #11657: <==negation-removal== 89767 (pos)
                    (not (at_c_p8))

                    ; #86443: <==negation-removal== 44760 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #80824: origin
                    (at_c_p2)

                    ; #89767: origin
                    (not_at_c_p8)

                    ; #11657: <==negation-removal== 89767 (pos)
                    (not (at_c_p8))

                    ; #88719: <==negation-removal== 80824 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #31388: origin
                    (at_c_p3)

                    ; #89767: origin
                    (not_at_c_p8)

                    ; #11657: <==negation-removal== 89767 (pos)
                    (not (at_c_p8))

                    ; #70877: <==negation-removal== 31388 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #47012: origin
                    (at_c_p4)

                    ; #89767: origin
                    (not_at_c_p8)

                    ; #11657: <==negation-removal== 89767 (pos)
                    (not (at_c_p8))

                    ; #91705: <==negation-removal== 47012 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #89767: origin
                    (not_at_c_p8)

                    ; #91253: origin
                    (at_c_p5)

                    ; #11657: <==negation-removal== 89767 (pos)
                    (not (at_c_p8))

                    ; #61520: <==negation-removal== 91253 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #72911: origin
                    (at_c_p6)

                    ; #89767: origin
                    (not_at_c_p8)

                    ; #11657: <==negation-removal== 89767 (pos)
                    (not (at_c_p8))

                    ; #82778: <==negation-removal== 72911 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #17858: origin
                    (at_c_p7)

                    ; #89767: origin
                    (not_at_c_p8)

                    ; #11657: <==negation-removal== 89767 (pos)
                    (not (at_c_p8))

                    ; #15205: <==negation-removal== 17858 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #11657: origin
                    (at_c_p8)

                    ; #89767: origin
                    (not_at_c_p8)

                    ; #11657: <==negation-removal== 89767 (pos)
                    (not (at_c_p8))

                    ; #89767: <==negation-removal== 11657 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #23071: origin
                    (at_c_p9)

                    ; #89767: origin
                    (not_at_c_p8)

                    ; #11657: <==negation-removal== 89767 (pos)
                    (not (at_c_p8))

                    ; #53207: <==negation-removal== 23071 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #53207: origin
                    (not_at_c_p9)

                    ; #65622: origin
                    (at_c_p1)

                    ; #23071: <==negation-removal== 53207 (pos)
                    (not (at_c_p9))

                    ; #57151: <==negation-removal== 65622 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #11532: origin
                    (at_c_p10)

                    ; #53207: origin
                    (not_at_c_p9)

                    ; #23071: <==negation-removal== 53207 (pos)
                    (not (at_c_p9))

                    ; #31812: <==negation-removal== 11532 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9))
        :effect (and
                    ; #45629: origin
                    (at_c_p11)

                    ; #53207: origin
                    (not_at_c_p9)

                    ; #23071: <==negation-removal== 53207 (pos)
                    (not (at_c_p9))

                    ; #73054: <==negation-removal== 45629 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_c_p9))
        :effect (and
                    ; #44760: origin
                    (at_c_p12)

                    ; #53207: origin
                    (not_at_c_p9)

                    ; #23071: <==negation-removal== 53207 (pos)
                    (not (at_c_p9))

                    ; #86443: <==negation-removal== 44760 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #53207: origin
                    (not_at_c_p9)

                    ; #80824: origin
                    (at_c_p2)

                    ; #23071: <==negation-removal== 53207 (pos)
                    (not (at_c_p9))

                    ; #88719: <==negation-removal== 80824 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #31388: origin
                    (at_c_p3)

                    ; #53207: origin
                    (not_at_c_p9)

                    ; #23071: <==negation-removal== 53207 (pos)
                    (not (at_c_p9))

                    ; #70877: <==negation-removal== 31388 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #47012: origin
                    (at_c_p4)

                    ; #53207: origin
                    (not_at_c_p9)

                    ; #23071: <==negation-removal== 53207 (pos)
                    (not (at_c_p9))

                    ; #91705: <==negation-removal== 47012 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #53207: origin
                    (not_at_c_p9)

                    ; #91253: origin
                    (at_c_p5)

                    ; #23071: <==negation-removal== 53207 (pos)
                    (not (at_c_p9))

                    ; #61520: <==negation-removal== 91253 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #53207: origin
                    (not_at_c_p9)

                    ; #72911: origin
                    (at_c_p6)

                    ; #23071: <==negation-removal== 53207 (pos)
                    (not (at_c_p9))

                    ; #82778: <==negation-removal== 72911 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #17858: origin
                    (at_c_p7)

                    ; #53207: origin
                    (not_at_c_p9)

                    ; #15205: <==negation-removal== 17858 (pos)
                    (not (not_at_c_p7))

                    ; #23071: <==negation-removal== 53207 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #11657: origin
                    (at_c_p8)

                    ; #53207: origin
                    (not_at_c_p9)

                    ; #23071: <==negation-removal== 53207 (pos)
                    (not (at_c_p9))

                    ; #89767: <==negation-removal== 11657 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #23071: origin
                    (at_c_p9)

                    ; #53207: origin
                    (not_at_c_p9)

                    ; #23071: <==negation-removal== 53207 (pos)
                    (not (at_c_p9))

                    ; #53207: <==negation-removal== 23071 (pos)
                    (not (not_at_c_p9))))

    (:action move_d_p10_p1
        :precondition (and (at_d_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #38418: origin
                    (at_d_p1)

                    ; #82114: origin
                    (not_at_d_p10)

                    ; #58538: <==negation-removal== 38418 (pos)
                    (not (not_at_d_p1))

                    ; #71883: <==negation-removal== 82114 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p10
        :precondition (and (at_d_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #71883: origin
                    (at_d_p10)

                    ; #82114: origin
                    (not_at_d_p10)

                    ; #71883: <==negation-removal== 82114 (pos)
                    (not (at_d_p10))

                    ; #82114: <==negation-removal== 71883 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_d_p10))
        :effect (and
                    ; #26229: origin
                    (at_d_p11)

                    ; #82114: origin
                    (not_at_d_p10)

                    ; #42583: <==negation-removal== 26229 (pos)
                    (not (not_at_d_p11))

                    ; #71883: <==negation-removal== 82114 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p12
        :precondition (and (at_d_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #49549: origin
                    (at_d_p12)

                    ; #82114: origin
                    (not_at_d_p10)

                    ; #26805: <==negation-removal== 49549 (pos)
                    (not (not_at_d_p12))

                    ; #71883: <==negation-removal== 82114 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p2
        :precondition (and (at_d_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #50417: origin
                    (at_d_p2)

                    ; #82114: origin
                    (not_at_d_p10)

                    ; #68224: <==negation-removal== 50417 (pos)
                    (not (not_at_d_p2))

                    ; #71883: <==negation-removal== 82114 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p3
        :precondition (and (at_d_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #33371: origin
                    (at_d_p3)

                    ; #82114: origin
                    (not_at_d_p10)

                    ; #59253: <==negation-removal== 33371 (pos)
                    (not (not_at_d_p3))

                    ; #71883: <==negation-removal== 82114 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p4
        :precondition (and (at_d_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #62439: origin
                    (at_d_p4)

                    ; #82114: origin
                    (not_at_d_p10)

                    ; #65951: <==negation-removal== 62439 (pos)
                    (not (not_at_d_p4))

                    ; #71883: <==negation-removal== 82114 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_d_p10))
        :effect (and
                    ; #32296: origin
                    (at_d_p5)

                    ; #82114: origin
                    (not_at_d_p10)

                    ; #40512: <==negation-removal== 32296 (pos)
                    (not (not_at_d_p5))

                    ; #71883: <==negation-removal== 82114 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p6
        :precondition (and (at_d_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #70836: origin
                    (at_d_p6)

                    ; #82114: origin
                    (not_at_d_p10)

                    ; #66758: <==negation-removal== 70836 (pos)
                    (not (not_at_d_p6))

                    ; #71883: <==negation-removal== 82114 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p7
        :precondition (and (at_d_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #82114: origin
                    (not_at_d_p10)

                    ; #87667: origin
                    (at_d_p7)

                    ; #71883: <==negation-removal== 82114 (pos)
                    (not (at_d_p10))

                    ; #89535: <==negation-removal== 87667 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p10_p8
        :precondition (and (at_d_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #69786: origin
                    (at_d_p8)

                    ; #82114: origin
                    (not_at_d_p10)

                    ; #39205: <==negation-removal== 69786 (pos)
                    (not (not_at_d_p8))

                    ; #71883: <==negation-removal== 82114 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_d_p10))
        :effect (and
                    ; #33293: origin
                    (at_d_p9)

                    ; #82114: origin
                    (not_at_d_p10)

                    ; #18740: <==negation-removal== 33293 (pos)
                    (not (not_at_d_p9))

                    ; #71883: <==negation-removal== 82114 (pos)
                    (not (at_d_p10))))

    (:action move_d_p11_p1
        :precondition (and (at_d_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #38418: origin
                    (at_d_p1)

                    ; #42583: origin
                    (not_at_d_p11)

                    ; #26229: <==negation-removal== 42583 (pos)
                    (not (at_d_p11))

                    ; #58538: <==negation-removal== 38418 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_d_p11))
        :effect (and
                    ; #42583: origin
                    (not_at_d_p11)

                    ; #71883: origin
                    (at_d_p10)

                    ; #26229: <==negation-removal== 42583 (pos)
                    (not (at_d_p11))

                    ; #82114: <==negation-removal== 71883 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p11_p11
        :precondition (and (at_d_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #26229: origin
                    (at_d_p11)

                    ; #42583: origin
                    (not_at_d_p11)

                    ; #26229: <==negation-removal== 42583 (pos)
                    (not (at_d_p11))

                    ; #42583: <==negation-removal== 26229 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p11_p12
        :precondition (and (at_d_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #42583: origin
                    (not_at_d_p11)

                    ; #49549: origin
                    (at_d_p12)

                    ; #26229: <==negation-removal== 42583 (pos)
                    (not (at_d_p11))

                    ; #26805: <==negation-removal== 49549 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p11_p2
        :precondition (and (at_d_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #42583: origin
                    (not_at_d_p11)

                    ; #50417: origin
                    (at_d_p2)

                    ; #26229: <==negation-removal== 42583 (pos)
                    (not (at_d_p11))

                    ; #68224: <==negation-removal== 50417 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_d_p11))
        :effect (and
                    ; #33371: origin
                    (at_d_p3)

                    ; #42583: origin
                    (not_at_d_p11)

                    ; #26229: <==negation-removal== 42583 (pos)
                    (not (at_d_p11))

                    ; #59253: <==negation-removal== 33371 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_d_p11))
        :effect (and
                    ; #42583: origin
                    (not_at_d_p11)

                    ; #62439: origin
                    (at_d_p4)

                    ; #26229: <==negation-removal== 42583 (pos)
                    (not (at_d_p11))

                    ; #65951: <==negation-removal== 62439 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p11_p5
        :precondition (and (at_d_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #32296: origin
                    (at_d_p5)

                    ; #42583: origin
                    (not_at_d_p11)

                    ; #26229: <==negation-removal== 42583 (pos)
                    (not (at_d_p11))

                    ; #40512: <==negation-removal== 32296 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p11_p6
        :precondition (and (at_d_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #42583: origin
                    (not_at_d_p11)

                    ; #70836: origin
                    (at_d_p6)

                    ; #26229: <==negation-removal== 42583 (pos)
                    (not (at_d_p11))

                    ; #66758: <==negation-removal== 70836 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p11_p7
        :precondition (and (at_d_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #42583: origin
                    (not_at_d_p11)

                    ; #87667: origin
                    (at_d_p7)

                    ; #26229: <==negation-removal== 42583 (pos)
                    (not (at_d_p11))

                    ; #89535: <==negation-removal== 87667 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p11_p8
        :precondition (and (at_d_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #42583: origin
                    (not_at_d_p11)

                    ; #69786: origin
                    (at_d_p8)

                    ; #26229: <==negation-removal== 42583 (pos)
                    (not (at_d_p11))

                    ; #39205: <==negation-removal== 69786 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_d_p11))
        :effect (and
                    ; #33293: origin
                    (at_d_p9)

                    ; #42583: origin
                    (not_at_d_p11)

                    ; #18740: <==negation-removal== 33293 (pos)
                    (not (not_at_d_p9))

                    ; #26229: <==negation-removal== 42583 (pos)
                    (not (at_d_p11))))

    (:action move_d_p12_p1
        :precondition (and (at_d_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #26805: origin
                    (not_at_d_p12)

                    ; #38418: origin
                    (at_d_p1)

                    ; #49549: <==negation-removal== 26805 (pos)
                    (not (at_d_p12))

                    ; #58538: <==negation-removal== 38418 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p12_p10
        :precondition (and (at_d_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #26805: origin
                    (not_at_d_p12)

                    ; #71883: origin
                    (at_d_p10)

                    ; #49549: <==negation-removal== 26805 (pos)
                    (not (at_d_p12))

                    ; #82114: <==negation-removal== 71883 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_d_p12))
        :effect (and
                    ; #26229: origin
                    (at_d_p11)

                    ; #26805: origin
                    (not_at_d_p12)

                    ; #42583: <==negation-removal== 26229 (pos)
                    (not (not_at_d_p11))

                    ; #49549: <==negation-removal== 26805 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_d_p12))
        :effect (and
                    ; #26805: origin
                    (not_at_d_p12)

                    ; #49549: origin
                    (at_d_p12)

                    ; #26805: <==negation-removal== 49549 (pos)
                    (not (not_at_d_p12))

                    ; #49549: <==negation-removal== 26805 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_d_p12))
        :effect (and
                    ; #26805: origin
                    (not_at_d_p12)

                    ; #50417: origin
                    (at_d_p2)

                    ; #49549: <==negation-removal== 26805 (pos)
                    (not (at_d_p12))

                    ; #68224: <==negation-removal== 50417 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_d_p12))
        :effect (and
                    ; #26805: origin
                    (not_at_d_p12)

                    ; #33371: origin
                    (at_d_p3)

                    ; #49549: <==negation-removal== 26805 (pos)
                    (not (at_d_p12))

                    ; #59253: <==negation-removal== 33371 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_d_p12))
        :effect (and
                    ; #26805: origin
                    (not_at_d_p12)

                    ; #62439: origin
                    (at_d_p4)

                    ; #49549: <==negation-removal== 26805 (pos)
                    (not (at_d_p12))

                    ; #65951: <==negation-removal== 62439 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_d_p12))
        :effect (and
                    ; #26805: origin
                    (not_at_d_p12)

                    ; #32296: origin
                    (at_d_p5)

                    ; #40512: <==negation-removal== 32296 (pos)
                    (not (not_at_d_p5))

                    ; #49549: <==negation-removal== 26805 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p6
        :precondition (and (at_d_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #26805: origin
                    (not_at_d_p12)

                    ; #70836: origin
                    (at_d_p6)

                    ; #49549: <==negation-removal== 26805 (pos)
                    (not (at_d_p12))

                    ; #66758: <==negation-removal== 70836 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_d_p12))
        :effect (and
                    ; #26805: origin
                    (not_at_d_p12)

                    ; #87667: origin
                    (at_d_p7)

                    ; #49549: <==negation-removal== 26805 (pos)
                    (not (at_d_p12))

                    ; #89535: <==negation-removal== 87667 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_d_p12))
        :effect (and
                    ; #26805: origin
                    (not_at_d_p12)

                    ; #69786: origin
                    (at_d_p8)

                    ; #39205: <==negation-removal== 69786 (pos)
                    (not (not_at_d_p8))

                    ; #49549: <==negation-removal== 26805 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p9
        :precondition (and (at_d_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #26805: origin
                    (not_at_d_p12)

                    ; #33293: origin
                    (at_d_p9)

                    ; #18740: <==negation-removal== 33293 (pos)
                    (not (not_at_d_p9))

                    ; #49549: <==negation-removal== 26805 (pos)
                    (not (at_d_p12))))

    (:action move_d_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_d_p1))
        :effect (and
                    ; #38418: origin
                    (at_d_p1)

                    ; #58538: origin
                    (not_at_d_p1)

                    ; #38418: <==negation-removal== 58538 (pos)
                    (not (at_d_p1))

                    ; #58538: <==negation-removal== 38418 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_d_p1))
        :effect (and
                    ; #58538: origin
                    (not_at_d_p1)

                    ; #71883: origin
                    (at_d_p10)

                    ; #38418: <==negation-removal== 58538 (pos)
                    (not (at_d_p1))

                    ; #82114: <==negation-removal== 71883 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_d_p1))
        :effect (and
                    ; #26229: origin
                    (at_d_p11)

                    ; #58538: origin
                    (not_at_d_p1)

                    ; #38418: <==negation-removal== 58538 (pos)
                    (not (at_d_p1))

                    ; #42583: <==negation-removal== 26229 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_d_p1))
        :effect (and
                    ; #49549: origin
                    (at_d_p12)

                    ; #58538: origin
                    (not_at_d_p1)

                    ; #26805: <==negation-removal== 49549 (pos)
                    (not (not_at_d_p12))

                    ; #38418: <==negation-removal== 58538 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_d_p1))
        :effect (and
                    ; #50417: origin
                    (at_d_p2)

                    ; #58538: origin
                    (not_at_d_p1)

                    ; #38418: <==negation-removal== 58538 (pos)
                    (not (at_d_p1))

                    ; #68224: <==negation-removal== 50417 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_d_p1))
        :effect (and
                    ; #33371: origin
                    (at_d_p3)

                    ; #58538: origin
                    (not_at_d_p1)

                    ; #38418: <==negation-removal== 58538 (pos)
                    (not (at_d_p1))

                    ; #59253: <==negation-removal== 33371 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_d_p1))
        :effect (and
                    ; #58538: origin
                    (not_at_d_p1)

                    ; #62439: origin
                    (at_d_p4)

                    ; #38418: <==negation-removal== 58538 (pos)
                    (not (at_d_p1))

                    ; #65951: <==negation-removal== 62439 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p1_p5
        :precondition (and (at_d_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #32296: origin
                    (at_d_p5)

                    ; #58538: origin
                    (not_at_d_p1)

                    ; #38418: <==negation-removal== 58538 (pos)
                    (not (at_d_p1))

                    ; #40512: <==negation-removal== 32296 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_d_p1))
        :effect (and
                    ; #58538: origin
                    (not_at_d_p1)

                    ; #70836: origin
                    (at_d_p6)

                    ; #38418: <==negation-removal== 58538 (pos)
                    (not (at_d_p1))

                    ; #66758: <==negation-removal== 70836 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_d_p1))
        :effect (and
                    ; #58538: origin
                    (not_at_d_p1)

                    ; #87667: origin
                    (at_d_p7)

                    ; #38418: <==negation-removal== 58538 (pos)
                    (not (at_d_p1))

                    ; #89535: <==negation-removal== 87667 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p1_p8
        :precondition (and (at_d_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #58538: origin
                    (not_at_d_p1)

                    ; #69786: origin
                    (at_d_p8)

                    ; #38418: <==negation-removal== 58538 (pos)
                    (not (at_d_p1))

                    ; #39205: <==negation-removal== 69786 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_d_p1))
        :effect (and
                    ; #33293: origin
                    (at_d_p9)

                    ; #58538: origin
                    (not_at_d_p1)

                    ; #18740: <==negation-removal== 33293 (pos)
                    (not (not_at_d_p9))

                    ; #38418: <==negation-removal== 58538 (pos)
                    (not (at_d_p1))))

    (:action move_d_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_d_p2))
        :effect (and
                    ; #38418: origin
                    (at_d_p1)

                    ; #68224: origin
                    (not_at_d_p2)

                    ; #50417: <==negation-removal== 68224 (pos)
                    (not (at_d_p2))

                    ; #58538: <==negation-removal== 38418 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_d_p2))
        :effect (and
                    ; #68224: origin
                    (not_at_d_p2)

                    ; #71883: origin
                    (at_d_p10)

                    ; #50417: <==negation-removal== 68224 (pos)
                    (not (at_d_p2))

                    ; #82114: <==negation-removal== 71883 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_d_p2))
        :effect (and
                    ; #26229: origin
                    (at_d_p11)

                    ; #68224: origin
                    (not_at_d_p2)

                    ; #42583: <==negation-removal== 26229 (pos)
                    (not (not_at_d_p11))

                    ; #50417: <==negation-removal== 68224 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p12
        :precondition (and (at_d_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #49549: origin
                    (at_d_p12)

                    ; #68224: origin
                    (not_at_d_p2)

                    ; #26805: <==negation-removal== 49549 (pos)
                    (not (not_at_d_p12))

                    ; #50417: <==negation-removal== 68224 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p2
        :precondition (and (at_d_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #50417: origin
                    (at_d_p2)

                    ; #68224: origin
                    (not_at_d_p2)

                    ; #50417: <==negation-removal== 68224 (pos)
                    (not (at_d_p2))

                    ; #68224: <==negation-removal== 50417 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_d_p2))
        :effect (and
                    ; #33371: origin
                    (at_d_p3)

                    ; #68224: origin
                    (not_at_d_p2)

                    ; #50417: <==negation-removal== 68224 (pos)
                    (not (at_d_p2))

                    ; #59253: <==negation-removal== 33371 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_d_p2))
        :effect (and
                    ; #62439: origin
                    (at_d_p4)

                    ; #68224: origin
                    (not_at_d_p2)

                    ; #50417: <==negation-removal== 68224 (pos)
                    (not (at_d_p2))

                    ; #65951: <==negation-removal== 62439 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_d_p2))
        :effect (and
                    ; #32296: origin
                    (at_d_p5)

                    ; #68224: origin
                    (not_at_d_p2)

                    ; #40512: <==negation-removal== 32296 (pos)
                    (not (not_at_d_p5))

                    ; #50417: <==negation-removal== 68224 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_d_p2))
        :effect (and
                    ; #68224: origin
                    (not_at_d_p2)

                    ; #70836: origin
                    (at_d_p6)

                    ; #50417: <==negation-removal== 68224 (pos)
                    (not (at_d_p2))

                    ; #66758: <==negation-removal== 70836 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_d_p2))
        :effect (and
                    ; #68224: origin
                    (not_at_d_p2)

                    ; #87667: origin
                    (at_d_p7)

                    ; #50417: <==negation-removal== 68224 (pos)
                    (not (at_d_p2))

                    ; #89535: <==negation-removal== 87667 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_d_p2))
        :effect (and
                    ; #68224: origin
                    (not_at_d_p2)

                    ; #69786: origin
                    (at_d_p8)

                    ; #39205: <==negation-removal== 69786 (pos)
                    (not (not_at_d_p8))

                    ; #50417: <==negation-removal== 68224 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_d_p2))
        :effect (and
                    ; #33293: origin
                    (at_d_p9)

                    ; #68224: origin
                    (not_at_d_p2)

                    ; #18740: <==negation-removal== 33293 (pos)
                    (not (not_at_d_p9))

                    ; #50417: <==negation-removal== 68224 (pos)
                    (not (at_d_p2))))

    (:action move_d_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_d_p3))
        :effect (and
                    ; #38418: origin
                    (at_d_p1)

                    ; #59253: origin
                    (not_at_d_p3)

                    ; #33371: <==negation-removal== 59253 (pos)
                    (not (at_d_p3))

                    ; #58538: <==negation-removal== 38418 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p3_p10
        :precondition (and (at_d_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #59253: origin
                    (not_at_d_p3)

                    ; #71883: origin
                    (at_d_p10)

                    ; #33371: <==negation-removal== 59253 (pos)
                    (not (at_d_p3))

                    ; #82114: <==negation-removal== 71883 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p3_p11
        :precondition (and (at_d_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #26229: origin
                    (at_d_p11)

                    ; #59253: origin
                    (not_at_d_p3)

                    ; #33371: <==negation-removal== 59253 (pos)
                    (not (at_d_p3))

                    ; #42583: <==negation-removal== 26229 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_d_p3))
        :effect (and
                    ; #49549: origin
                    (at_d_p12)

                    ; #59253: origin
                    (not_at_d_p3)

                    ; #26805: <==negation-removal== 49549 (pos)
                    (not (not_at_d_p12))

                    ; #33371: <==negation-removal== 59253 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_d_p3))
        :effect (and
                    ; #50417: origin
                    (at_d_p2)

                    ; #59253: origin
                    (not_at_d_p3)

                    ; #33371: <==negation-removal== 59253 (pos)
                    (not (at_d_p3))

                    ; #68224: <==negation-removal== 50417 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_d_p3))
        :effect (and
                    ; #33371: origin
                    (at_d_p3)

                    ; #59253: origin
                    (not_at_d_p3)

                    ; #33371: <==negation-removal== 59253 (pos)
                    (not (at_d_p3))

                    ; #59253: <==negation-removal== 33371 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (at_d_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #59253: origin
                    (not_at_d_p3)

                    ; #62439: origin
                    (at_d_p4)

                    ; #33371: <==negation-removal== 59253 (pos)
                    (not (at_d_p3))

                    ; #65951: <==negation-removal== 62439 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p3_p5
        :precondition (and (at_d_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #32296: origin
                    (at_d_p5)

                    ; #59253: origin
                    (not_at_d_p3)

                    ; #33371: <==negation-removal== 59253 (pos)
                    (not (at_d_p3))

                    ; #40512: <==negation-removal== 32296 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_d_p3))
        :effect (and
                    ; #59253: origin
                    (not_at_d_p3)

                    ; #70836: origin
                    (at_d_p6)

                    ; #33371: <==negation-removal== 59253 (pos)
                    (not (at_d_p3))

                    ; #66758: <==negation-removal== 70836 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p3_p7
        :precondition (and (at_d_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #59253: origin
                    (not_at_d_p3)

                    ; #87667: origin
                    (at_d_p7)

                    ; #33371: <==negation-removal== 59253 (pos)
                    (not (at_d_p3))

                    ; #89535: <==negation-removal== 87667 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_d_p3))
        :effect (and
                    ; #59253: origin
                    (not_at_d_p3)

                    ; #69786: origin
                    (at_d_p8)

                    ; #33371: <==negation-removal== 59253 (pos)
                    (not (at_d_p3))

                    ; #39205: <==negation-removal== 69786 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_d_p3))
        :effect (and
                    ; #33293: origin
                    (at_d_p9)

                    ; #59253: origin
                    (not_at_d_p3)

                    ; #18740: <==negation-removal== 33293 (pos)
                    (not (not_at_d_p9))

                    ; #33371: <==negation-removal== 59253 (pos)
                    (not (at_d_p3))))

    (:action move_d_p4_p1
        :precondition (and (at_d_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #38418: origin
                    (at_d_p1)

                    ; #65951: origin
                    (not_at_d_p4)

                    ; #58538: <==negation-removal== 38418 (pos)
                    (not (not_at_d_p1))

                    ; #62439: <==negation-removal== 65951 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p10
        :precondition (and (at_d_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #65951: origin
                    (not_at_d_p4)

                    ; #71883: origin
                    (at_d_p10)

                    ; #62439: <==negation-removal== 65951 (pos)
                    (not (at_d_p4))

                    ; #82114: <==negation-removal== 71883 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_d_p4))
        :effect (and
                    ; #26229: origin
                    (at_d_p11)

                    ; #65951: origin
                    (not_at_d_p4)

                    ; #42583: <==negation-removal== 26229 (pos)
                    (not (not_at_d_p11))

                    ; #62439: <==negation-removal== 65951 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p12
        :precondition (and (at_d_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #49549: origin
                    (at_d_p12)

                    ; #65951: origin
                    (not_at_d_p4)

                    ; #26805: <==negation-removal== 49549 (pos)
                    (not (not_at_d_p12))

                    ; #62439: <==negation-removal== 65951 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p2
        :precondition (and (at_d_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #50417: origin
                    (at_d_p2)

                    ; #65951: origin
                    (not_at_d_p4)

                    ; #62439: <==negation-removal== 65951 (pos)
                    (not (at_d_p4))

                    ; #68224: <==negation-removal== 50417 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_d_p4))
        :effect (and
                    ; #33371: origin
                    (at_d_p3)

                    ; #65951: origin
                    (not_at_d_p4)

                    ; #59253: <==negation-removal== 33371 (pos)
                    (not (not_at_d_p3))

                    ; #62439: <==negation-removal== 65951 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p4
        :precondition (and (at_d_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #62439: origin
                    (at_d_p4)

                    ; #65951: origin
                    (not_at_d_p4)

                    ; #62439: <==negation-removal== 65951 (pos)
                    (not (at_d_p4))

                    ; #65951: <==negation-removal== 62439 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (at_d_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #32296: origin
                    (at_d_p5)

                    ; #65951: origin
                    (not_at_d_p4)

                    ; #40512: <==negation-removal== 32296 (pos)
                    (not (not_at_d_p5))

                    ; #62439: <==negation-removal== 65951 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p6
        :precondition (and (at_d_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #65951: origin
                    (not_at_d_p4)

                    ; #70836: origin
                    (at_d_p6)

                    ; #62439: <==negation-removal== 65951 (pos)
                    (not (at_d_p4))

                    ; #66758: <==negation-removal== 70836 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p4_p7
        :precondition (and (at_d_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #65951: origin
                    (not_at_d_p4)

                    ; #87667: origin
                    (at_d_p7)

                    ; #62439: <==negation-removal== 65951 (pos)
                    (not (at_d_p4))

                    ; #89535: <==negation-removal== 87667 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p4_p8
        :precondition (and (at_d_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #65951: origin
                    (not_at_d_p4)

                    ; #69786: origin
                    (at_d_p8)

                    ; #39205: <==negation-removal== 69786 (pos)
                    (not (not_at_d_p8))

                    ; #62439: <==negation-removal== 65951 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p9
        :precondition (and (at_d_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #33293: origin
                    (at_d_p9)

                    ; #65951: origin
                    (not_at_d_p4)

                    ; #18740: <==negation-removal== 33293 (pos)
                    (not (not_at_d_p9))

                    ; #62439: <==negation-removal== 65951 (pos)
                    (not (at_d_p4))))

    (:action move_d_p5_p1
        :precondition (and (at_d_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #38418: origin
                    (at_d_p1)

                    ; #40512: origin
                    (not_at_d_p5)

                    ; #32296: <==negation-removal== 40512 (pos)
                    (not (at_d_p5))

                    ; #58538: <==negation-removal== 38418 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_d_p5))
        :effect (and
                    ; #40512: origin
                    (not_at_d_p5)

                    ; #71883: origin
                    (at_d_p10)

                    ; #32296: <==negation-removal== 40512 (pos)
                    (not (at_d_p5))

                    ; #82114: <==negation-removal== 71883 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p5_p11
        :precondition (and (at_d_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #26229: origin
                    (at_d_p11)

                    ; #40512: origin
                    (not_at_d_p5)

                    ; #32296: <==negation-removal== 40512 (pos)
                    (not (at_d_p5))

                    ; #42583: <==negation-removal== 26229 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p5_p12
        :precondition (and (at_d_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #40512: origin
                    (not_at_d_p5)

                    ; #49549: origin
                    (at_d_p12)

                    ; #26805: <==negation-removal== 49549 (pos)
                    (not (not_at_d_p12))

                    ; #32296: <==negation-removal== 40512 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p2
        :precondition (and (at_d_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #40512: origin
                    (not_at_d_p5)

                    ; #50417: origin
                    (at_d_p2)

                    ; #32296: <==negation-removal== 40512 (pos)
                    (not (at_d_p5))

                    ; #68224: <==negation-removal== 50417 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_d_p5))
        :effect (and
                    ; #33371: origin
                    (at_d_p3)

                    ; #40512: origin
                    (not_at_d_p5)

                    ; #32296: <==negation-removal== 40512 (pos)
                    (not (at_d_p5))

                    ; #59253: <==negation-removal== 33371 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p5_p4
        :precondition (and (at_d_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #40512: origin
                    (not_at_d_p5)

                    ; #62439: origin
                    (at_d_p4)

                    ; #32296: <==negation-removal== 40512 (pos)
                    (not (at_d_p5))

                    ; #65951: <==negation-removal== 62439 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_d_p5))
        :effect (and
                    ; #32296: origin
                    (at_d_p5)

                    ; #40512: origin
                    (not_at_d_p5)

                    ; #32296: <==negation-removal== 40512 (pos)
                    (not (at_d_p5))

                    ; #40512: <==negation-removal== 32296 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (at_d_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #40512: origin
                    (not_at_d_p5)

                    ; #70836: origin
                    (at_d_p6)

                    ; #32296: <==negation-removal== 40512 (pos)
                    (not (at_d_p5))

                    ; #66758: <==negation-removal== 70836 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_d_p5))
        :effect (and
                    ; #40512: origin
                    (not_at_d_p5)

                    ; #87667: origin
                    (at_d_p7)

                    ; #32296: <==negation-removal== 40512 (pos)
                    (not (at_d_p5))

                    ; #89535: <==negation-removal== 87667 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_d_p5))
        :effect (and
                    ; #40512: origin
                    (not_at_d_p5)

                    ; #69786: origin
                    (at_d_p8)

                    ; #32296: <==negation-removal== 40512 (pos)
                    (not (at_d_p5))

                    ; #39205: <==negation-removal== 69786 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_d_p5))
        :effect (and
                    ; #33293: origin
                    (at_d_p9)

                    ; #40512: origin
                    (not_at_d_p5)

                    ; #18740: <==negation-removal== 33293 (pos)
                    (not (not_at_d_p9))

                    ; #32296: <==negation-removal== 40512 (pos)
                    (not (at_d_p5))))

    (:action move_d_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_d_p6))
        :effect (and
                    ; #38418: origin
                    (at_d_p1)

                    ; #66758: origin
                    (not_at_d_p6)

                    ; #58538: <==negation-removal== 38418 (pos)
                    (not (not_at_d_p1))

                    ; #70836: <==negation-removal== 66758 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_d_p6))
        :effect (and
                    ; #66758: origin
                    (not_at_d_p6)

                    ; #71883: origin
                    (at_d_p10)

                    ; #70836: <==negation-removal== 66758 (pos)
                    (not (at_d_p6))

                    ; #82114: <==negation-removal== 71883 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p6_p11
        :precondition (and (at_d_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #26229: origin
                    (at_d_p11)

                    ; #66758: origin
                    (not_at_d_p6)

                    ; #42583: <==negation-removal== 26229 (pos)
                    (not (not_at_d_p11))

                    ; #70836: <==negation-removal== 66758 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_d_p6))
        :effect (and
                    ; #49549: origin
                    (at_d_p12)

                    ; #66758: origin
                    (not_at_d_p6)

                    ; #26805: <==negation-removal== 49549 (pos)
                    (not (not_at_d_p12))

                    ; #70836: <==negation-removal== 66758 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p2
        :precondition (and (at_d_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #50417: origin
                    (at_d_p2)

                    ; #66758: origin
                    (not_at_d_p6)

                    ; #68224: <==negation-removal== 50417 (pos)
                    (not (not_at_d_p2))

                    ; #70836: <==negation-removal== 66758 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_d_p6))
        :effect (and
                    ; #33371: origin
                    (at_d_p3)

                    ; #66758: origin
                    (not_at_d_p6)

                    ; #59253: <==negation-removal== 33371 (pos)
                    (not (not_at_d_p3))

                    ; #70836: <==negation-removal== 66758 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_d_p6))
        :effect (and
                    ; #62439: origin
                    (at_d_p4)

                    ; #66758: origin
                    (not_at_d_p6)

                    ; #65951: <==negation-removal== 62439 (pos)
                    (not (not_at_d_p4))

                    ; #70836: <==negation-removal== 66758 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p5
        :precondition (and (at_d_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #32296: origin
                    (at_d_p5)

                    ; #66758: origin
                    (not_at_d_p6)

                    ; #40512: <==negation-removal== 32296 (pos)
                    (not (not_at_d_p5))

                    ; #70836: <==negation-removal== 66758 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p6
        :precondition (and (at_d_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #66758: origin
                    (not_at_d_p6)

                    ; #70836: origin
                    (at_d_p6)

                    ; #66758: <==negation-removal== 70836 (pos)
                    (not (not_at_d_p6))

                    ; #70836: <==negation-removal== 66758 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_d_p6))
        :effect (and
                    ; #66758: origin
                    (not_at_d_p6)

                    ; #87667: origin
                    (at_d_p7)

                    ; #70836: <==negation-removal== 66758 (pos)
                    (not (at_d_p6))

                    ; #89535: <==negation-removal== 87667 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_d_p6))
        :effect (and
                    ; #66758: origin
                    (not_at_d_p6)

                    ; #69786: origin
                    (at_d_p8)

                    ; #39205: <==negation-removal== 69786 (pos)
                    (not (not_at_d_p8))

                    ; #70836: <==negation-removal== 66758 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_d_p6))
        :effect (and
                    ; #33293: origin
                    (at_d_p9)

                    ; #66758: origin
                    (not_at_d_p6)

                    ; #18740: <==negation-removal== 33293 (pos)
                    (not (not_at_d_p9))

                    ; #70836: <==negation-removal== 66758 (pos)
                    (not (at_d_p6))))

    (:action move_d_p7_p1
        :precondition (and (at_d_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #38418: origin
                    (at_d_p1)

                    ; #89535: origin
                    (not_at_d_p7)

                    ; #58538: <==negation-removal== 38418 (pos)
                    (not (not_at_d_p1))

                    ; #87667: <==negation-removal== 89535 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p10
        :precondition (and (at_d_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #71883: origin
                    (at_d_p10)

                    ; #89535: origin
                    (not_at_d_p7)

                    ; #82114: <==negation-removal== 71883 (pos)
                    (not (not_at_d_p10))

                    ; #87667: <==negation-removal== 89535 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p11
        :precondition (and (at_d_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #26229: origin
                    (at_d_p11)

                    ; #89535: origin
                    (not_at_d_p7)

                    ; #42583: <==negation-removal== 26229 (pos)
                    (not (not_at_d_p11))

                    ; #87667: <==negation-removal== 89535 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p12
        :precondition (and (at_d_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #49549: origin
                    (at_d_p12)

                    ; #89535: origin
                    (not_at_d_p7)

                    ; #26805: <==negation-removal== 49549 (pos)
                    (not (not_at_d_p12))

                    ; #87667: <==negation-removal== 89535 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p2
        :precondition (and (at_d_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #50417: origin
                    (at_d_p2)

                    ; #89535: origin
                    (not_at_d_p7)

                    ; #68224: <==negation-removal== 50417 (pos)
                    (not (not_at_d_p2))

                    ; #87667: <==negation-removal== 89535 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p3
        :precondition (and (at_d_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #33371: origin
                    (at_d_p3)

                    ; #89535: origin
                    (not_at_d_p7)

                    ; #59253: <==negation-removal== 33371 (pos)
                    (not (not_at_d_p3))

                    ; #87667: <==negation-removal== 89535 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p4
        :precondition (and (at_d_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #62439: origin
                    (at_d_p4)

                    ; #89535: origin
                    (not_at_d_p7)

                    ; #65951: <==negation-removal== 62439 (pos)
                    (not (not_at_d_p4))

                    ; #87667: <==negation-removal== 89535 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p5
        :precondition (and (at_d_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #32296: origin
                    (at_d_p5)

                    ; #89535: origin
                    (not_at_d_p7)

                    ; #40512: <==negation-removal== 32296 (pos)
                    (not (not_at_d_p5))

                    ; #87667: <==negation-removal== 89535 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p6
        :precondition (and (at_d_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #70836: origin
                    (at_d_p6)

                    ; #89535: origin
                    (not_at_d_p7)

                    ; #66758: <==negation-removal== 70836 (pos)
                    (not (not_at_d_p6))

                    ; #87667: <==negation-removal== 89535 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p7
        :precondition (and (at_d_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #87667: origin
                    (at_d_p7)

                    ; #89535: origin
                    (not_at_d_p7)

                    ; #87667: <==negation-removal== 89535 (pos)
                    (not (at_d_p7))

                    ; #89535: <==negation-removal== 87667 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (at_d_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #69786: origin
                    (at_d_p8)

                    ; #89535: origin
                    (not_at_d_p7)

                    ; #39205: <==negation-removal== 69786 (pos)
                    (not (not_at_d_p8))

                    ; #87667: <==negation-removal== 89535 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p9
        :precondition (and (at_d_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #33293: origin
                    (at_d_p9)

                    ; #89535: origin
                    (not_at_d_p7)

                    ; #18740: <==negation-removal== 33293 (pos)
                    (not (not_at_d_p9))

                    ; #87667: <==negation-removal== 89535 (pos)
                    (not (at_d_p7))))

    (:action move_d_p8_p1
        :precondition (and (at_d_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #38418: origin
                    (at_d_p1)

                    ; #39205: origin
                    (not_at_d_p8)

                    ; #58538: <==negation-removal== 38418 (pos)
                    (not (not_at_d_p1))

                    ; #69786: <==negation-removal== 39205 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_d_p8))
        :effect (and
                    ; #39205: origin
                    (not_at_d_p8)

                    ; #71883: origin
                    (at_d_p10)

                    ; #69786: <==negation-removal== 39205 (pos)
                    (not (at_d_p8))

                    ; #82114: <==negation-removal== 71883 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_d_p8))
        :effect (and
                    ; #26229: origin
                    (at_d_p11)

                    ; #39205: origin
                    (not_at_d_p8)

                    ; #42583: <==negation-removal== 26229 (pos)
                    (not (not_at_d_p11))

                    ; #69786: <==negation-removal== 39205 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p12
        :precondition (and (at_d_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #39205: origin
                    (not_at_d_p8)

                    ; #49549: origin
                    (at_d_p12)

                    ; #26805: <==negation-removal== 49549 (pos)
                    (not (not_at_d_p12))

                    ; #69786: <==negation-removal== 39205 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_d_p8))
        :effect (and
                    ; #39205: origin
                    (not_at_d_p8)

                    ; #50417: origin
                    (at_d_p2)

                    ; #68224: <==negation-removal== 50417 (pos)
                    (not (not_at_d_p2))

                    ; #69786: <==negation-removal== 39205 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_d_p8))
        :effect (and
                    ; #33371: origin
                    (at_d_p3)

                    ; #39205: origin
                    (not_at_d_p8)

                    ; #59253: <==negation-removal== 33371 (pos)
                    (not (not_at_d_p3))

                    ; #69786: <==negation-removal== 39205 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_d_p8))
        :effect (and
                    ; #39205: origin
                    (not_at_d_p8)

                    ; #62439: origin
                    (at_d_p4)

                    ; #65951: <==negation-removal== 62439 (pos)
                    (not (not_at_d_p4))

                    ; #69786: <==negation-removal== 39205 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_d_p8))
        :effect (and
                    ; #32296: origin
                    (at_d_p5)

                    ; #39205: origin
                    (not_at_d_p8)

                    ; #40512: <==negation-removal== 32296 (pos)
                    (not (not_at_d_p5))

                    ; #69786: <==negation-removal== 39205 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p6
        :precondition (and (at_d_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #39205: origin
                    (not_at_d_p8)

                    ; #70836: origin
                    (at_d_p6)

                    ; #66758: <==negation-removal== 70836 (pos)
                    (not (not_at_d_p6))

                    ; #69786: <==negation-removal== 39205 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_d_p8))
        :effect (and
                    ; #39205: origin
                    (not_at_d_p8)

                    ; #87667: origin
                    (at_d_p7)

                    ; #69786: <==negation-removal== 39205 (pos)
                    (not (at_d_p8))

                    ; #89535: <==negation-removal== 87667 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p8_p8
        :precondition (and (at_d_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #39205: origin
                    (not_at_d_p8)

                    ; #69786: origin
                    (at_d_p8)

                    ; #39205: <==negation-removal== 69786 (pos)
                    (not (not_at_d_p8))

                    ; #69786: <==negation-removal== 39205 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (at_d_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #33293: origin
                    (at_d_p9)

                    ; #39205: origin
                    (not_at_d_p8)

                    ; #18740: <==negation-removal== 33293 (pos)
                    (not (not_at_d_p9))

                    ; #69786: <==negation-removal== 39205 (pos)
                    (not (at_d_p8))))

    (:action move_d_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_d_p9))
        :effect (and
                    ; #18740: origin
                    (not_at_d_p9)

                    ; #38418: origin
                    (at_d_p1)

                    ; #33293: <==negation-removal== 18740 (pos)
                    (not (at_d_p9))

                    ; #58538: <==negation-removal== 38418 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p9_p10
        :precondition (and (at_d_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #18740: origin
                    (not_at_d_p9)

                    ; #71883: origin
                    (at_d_p10)

                    ; #33293: <==negation-removal== 18740 (pos)
                    (not (at_d_p9))

                    ; #82114: <==negation-removal== 71883 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_d_p9))
        :effect (and
                    ; #18740: origin
                    (not_at_d_p9)

                    ; #26229: origin
                    (at_d_p11)

                    ; #33293: <==negation-removal== 18740 (pos)
                    (not (at_d_p9))

                    ; #42583: <==negation-removal== 26229 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_d_p9))
        :effect (and
                    ; #18740: origin
                    (not_at_d_p9)

                    ; #49549: origin
                    (at_d_p12)

                    ; #26805: <==negation-removal== 49549 (pos)
                    (not (not_at_d_p12))

                    ; #33293: <==negation-removal== 18740 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p2
        :precondition (and (at_d_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #18740: origin
                    (not_at_d_p9)

                    ; #50417: origin
                    (at_d_p2)

                    ; #33293: <==negation-removal== 18740 (pos)
                    (not (at_d_p9))

                    ; #68224: <==negation-removal== 50417 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_d_p9))
        :effect (and
                    ; #18740: origin
                    (not_at_d_p9)

                    ; #33371: origin
                    (at_d_p3)

                    ; #33293: <==negation-removal== 18740 (pos)
                    (not (at_d_p9))

                    ; #59253: <==negation-removal== 33371 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_d_p9))
        :effect (and
                    ; #18740: origin
                    (not_at_d_p9)

                    ; #62439: origin
                    (at_d_p4)

                    ; #33293: <==negation-removal== 18740 (pos)
                    (not (at_d_p9))

                    ; #65951: <==negation-removal== 62439 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_d_p9))
        :effect (and
                    ; #18740: origin
                    (not_at_d_p9)

                    ; #32296: origin
                    (at_d_p5)

                    ; #33293: <==negation-removal== 18740 (pos)
                    (not (at_d_p9))

                    ; #40512: <==negation-removal== 32296 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_d_p9))
        :effect (and
                    ; #18740: origin
                    (not_at_d_p9)

                    ; #70836: origin
                    (at_d_p6)

                    ; #33293: <==negation-removal== 18740 (pos)
                    (not (at_d_p9))

                    ; #66758: <==negation-removal== 70836 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p9_p7
        :precondition (and (at_d_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #18740: origin
                    (not_at_d_p9)

                    ; #87667: origin
                    (at_d_p7)

                    ; #33293: <==negation-removal== 18740 (pos)
                    (not (at_d_p9))

                    ; #89535: <==negation-removal== 87667 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p9_p8
        :precondition (and (at_d_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #18740: origin
                    (not_at_d_p9)

                    ; #69786: origin
                    (at_d_p8)

                    ; #33293: <==negation-removal== 18740 (pos)
                    (not (at_d_p9))

                    ; #39205: <==negation-removal== 69786 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_d_p9))
        :effect (and
                    ; #18740: origin
                    (not_at_d_p9)

                    ; #33293: origin
                    (at_d_p9)

                    ; #18740: <==negation-removal== 33293 (pos)
                    (not (not_at_d_p9))

                    ; #33293: <==negation-removal== 18740 (pos)
                    (not (at_d_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #14739: <==commonly_known== 43150 (pos)
                    (Bc_checked_p10)

                    ; #16348: <==commonly_known== 47426 (neg)
                    (Pa_checked_p10)

                    ; #23714: <==closure== 89585 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #28837: <==commonly_known== 47426 (neg)
                    (Pc_checked_p10)

                    ; #42825: <==commonly_known== 43150 (pos)
                    (Bd_checked_p10)

                    ; #43150: origin
                    (checked_p10)

                    ; #48599: <==closure== 85784 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #64421: <==commonly_known== 47426 (neg)
                    (Pb_checked_p10)

                    ; #74497: <==commonly_known== 43150 (pos)
                    (Bb_checked_p10)

                    ; #83522: <==commonly_known== 47426 (neg)
                    (Pd_checked_p10)

                    ; #85784: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #86230: <==commonly_known== 43150 (pos)
                    (Ba_checked_p10)

                    ; #89585: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #18612: <==negation-removal== 14739 (pos)
                    (not (Pc_not_checked_p10))

                    ; #26124: <==uncertain_firing== 85784 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #33266: <==negation-removal== 16348 (pos)
                    (not (Ba_not_checked_p10))

                    ; #33558: <==negation-removal== 64421 (pos)
                    (not (Bb_not_checked_p10))

                    ; #38274: <==negation-removal== 86230 (pos)
                    (not (Pa_not_checked_p10))

                    ; #47426: <==negation-removal== 43150 (pos)
                    (not (not_checked_p10))

                    ; #50433: <==negation-removal== 42825 (pos)
                    (not (Pd_not_checked_p10))

                    ; #51268: <==negation-removal== 28837 (pos)
                    (not (Bc_not_checked_p10))

                    ; #52644: <==uncertain_firing== 89585 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #58177: <==uncertain_firing== 48599 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #58618: <==negation-removal== 48599 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #58714: <==negation-removal== 85784 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #62428: <==negation-removal== 89585 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #69689: <==negation-removal== 23714 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #72712: <==negation-removal== 83522 (pos)
                    (not (Bd_not_checked_p10))

                    ; #77805: <==negation-removal== 74497 (pos)
                    (not (Pb_not_checked_p10))

                    ; #80730: <==uncertain_firing== 23714 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #10234: <==commonly_known== 46209 (neg)
                    (Pa_checked_p11)

                    ; #22912: <==commonly_known== 89294 (pos)
                    (Bc_checked_p11)

                    ; #24154: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #34711: <==commonly_known== 89294 (pos)
                    (Ba_checked_p11)

                    ; #38846: <==commonly_known== 46209 (neg)
                    (Pd_checked_p11)

                    ; #49706: <==commonly_known== 89294 (pos)
                    (Bd_checked_p11)

                    ; #54302: <==commonly_known== 46209 (neg)
                    (Pb_checked_p11)

                    ; #57606: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #64684: <==commonly_known== 89294 (pos)
                    (Bb_checked_p11)

                    ; #80853: <==commonly_known== 46209 (neg)
                    (Pc_checked_p11)

                    ; #81319: <==closure== 57606 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #84845: <==closure== 24154 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #89294: origin
                    (checked_p11)

                    ; #15350: <==negation-removal== 54302 (pos)
                    (not (Bb_not_checked_p11))

                    ; #38225: <==negation-removal== 34711 (pos)
                    (not (Pa_not_checked_p11))

                    ; #43686: <==negation-removal== 22912 (pos)
                    (not (Pc_not_checked_p11))

                    ; #46036: <==negation-removal== 84845 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #46209: <==negation-removal== 89294 (pos)
                    (not (not_checked_p11))

                    ; #48756: <==negation-removal== 24154 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #49847: <==negation-removal== 80853 (pos)
                    (not (Bc_not_checked_p11))

                    ; #55615: <==uncertain_firing== 57606 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #56038: <==uncertain_firing== 24154 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #58072: <==uncertain_firing== 81319 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #63256: <==negation-removal== 57606 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #66741: <==negation-removal== 81319 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #73581: <==uncertain_firing== 84845 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #81451: <==negation-removal== 49706 (pos)
                    (not (Pd_not_checked_p11))

                    ; #81768: <==negation-removal== 10234 (pos)
                    (not (Ba_not_checked_p11))

                    ; #82056: <==negation-removal== 38846 (pos)
                    (not (Bd_not_checked_p11))

                    ; #91826: <==negation-removal== 64684 (pos)
                    (not (Pb_not_checked_p11))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #16688: <==commonly_known== 75369 (neg)
                    (Pd_checked_p12)

                    ; #16699: <==commonly_known== 90378 (pos)
                    (Bc_checked_p12)

                    ; #33111: <==closure== 80293 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #33135: <==commonly_known== 75369 (neg)
                    (Pb_checked_p12)

                    ; #35678: <==commonly_known== 90378 (pos)
                    (Bb_checked_p12)

                    ; #44037: <==closure== 67919 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #57775: <==commonly_known== 75369 (neg)
                    (Pc_checked_p12)

                    ; #65839: <==commonly_known== 90378 (pos)
                    (Ba_checked_p12)

                    ; #67919: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #80211: <==commonly_known== 90378 (pos)
                    (Bd_checked_p12)

                    ; #80293: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #88677: <==commonly_known== 75369 (neg)
                    (Pa_checked_p12)

                    ; #90378: origin
                    (checked_p12)

                    ; #16151: <==negation-removal== 16688 (pos)
                    (not (Bd_not_checked_p12))

                    ; #16732: <==uncertain_firing== 80293 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #27862: <==negation-removal== 44037 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #28709: <==negation-removal== 80293 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #34528: <==negation-removal== 88677 (pos)
                    (not (Ba_not_checked_p12))

                    ; #36027: <==uncertain_firing== 33111 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #43679: <==uncertain_firing== 44037 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #45131: <==negation-removal== 65839 (pos)
                    (not (Pa_not_checked_p12))

                    ; #55973: <==negation-removal== 35678 (pos)
                    (not (Pb_not_checked_p12))

                    ; #56831: <==negation-removal== 57775 (pos)
                    (not (Bc_not_checked_p12))

                    ; #70465: <==negation-removal== 16699 (pos)
                    (not (Pc_not_checked_p12))

                    ; #74798: <==uncertain_firing== 67919 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #75369: <==negation-removal== 90378 (pos)
                    (not (not_checked_p12))

                    ; #83063: <==negation-removal== 80211 (pos)
                    (not (Pd_not_checked_p12))

                    ; #83964: <==negation-removal== 33135 (pos)
                    (not (Bb_not_checked_p12))

                    ; #84579: <==negation-removal== 67919 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #96533: <==negation-removal== 33111 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12993: <==commonly_known== 24221 (pos)
                    (Bd_checked_p1)

                    ; #20032: <==commonly_known== 81930 (neg)
                    (Pc_checked_p1)

                    ; #20114: <==closure== 89146 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #23251: <==commonly_known== 24221 (pos)
                    (Ba_checked_p1)

                    ; #24221: origin
                    (checked_p1)

                    ; #31509: <==commonly_known== 24221 (pos)
                    (Bb_checked_p1)

                    ; #34192: <==closure== 53933 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #43766: <==commonly_known== 81930 (neg)
                    (Pa_checked_p1)

                    ; #53933: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #58451: <==commonly_known== 81930 (neg)
                    (Pb_checked_p1)

                    ; #72999: <==commonly_known== 24221 (pos)
                    (Bc_checked_p1)

                    ; #84976: <==commonly_known== 81930 (neg)
                    (Pd_checked_p1)

                    ; #89146: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #10242: <==uncertain_firing== 20114 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #11093: <==negation-removal== 34192 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #12964: <==negation-removal== 89146 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #25369: <==uncertain_firing== 89146 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #27577: <==negation-removal== 31509 (pos)
                    (not (Pb_not_checked_p1))

                    ; #28383: <==negation-removal== 43766 (pos)
                    (not (Ba_not_checked_p1))

                    ; #31853: <==negation-removal== 23251 (pos)
                    (not (Pa_not_checked_p1))

                    ; #40003: <==negation-removal== 58451 (pos)
                    (not (Bb_not_checked_p1))

                    ; #66342: <==negation-removal== 84976 (pos)
                    (not (Bd_not_checked_p1))

                    ; #70557: <==uncertain_firing== 34192 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #70707: <==negation-removal== 20114 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #76291: <==negation-removal== 20032 (pos)
                    (not (Bc_not_checked_p1))

                    ; #76599: <==uncertain_firing== 53933 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #80968: <==negation-removal== 53933 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #81930: <==negation-removal== 24221 (pos)
                    (not (not_checked_p1))

                    ; #84818: <==negation-removal== 12993 (pos)
                    (not (Pd_not_checked_p1))

                    ; #87921: <==negation-removal== 72999 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10406: <==closure== 29932 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #22016: <==commonly_known== 35956 (pos)
                    (Ba_checked_p2)

                    ; #29932: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #30421: <==commonly_known== 48122 (neg)
                    (Pd_checked_p2)

                    ; #35956: origin
                    (checked_p2)

                    ; #37927: <==commonly_known== 48122 (neg)
                    (Pc_checked_p2)

                    ; #39916: <==commonly_known== 35956 (pos)
                    (Bc_checked_p2)

                    ; #47102: <==commonly_known== 35956 (pos)
                    (Bb_checked_p2)

                    ; #55725: <==commonly_known== 35956 (pos)
                    (Bd_checked_p2)

                    ; #72998: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #81863: <==closure== 72998 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #88786: <==commonly_known== 48122 (neg)
                    (Pa_checked_p2)

                    ; #92166: <==commonly_known== 48122 (neg)
                    (Pb_checked_p2)

                    ; #18010: <==negation-removal== 92166 (pos)
                    (not (Bb_not_checked_p2))

                    ; #20199: <==negation-removal== 47102 (pos)
                    (not (Pb_not_checked_p2))

                    ; #35845: <==negation-removal== 30421 (pos)
                    (not (Bd_not_checked_p2))

                    ; #36670: <==uncertain_firing== 10406 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #45710: <==negation-removal== 29932 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #48122: <==negation-removal== 35956 (pos)
                    (not (not_checked_p2))

                    ; #55987: <==negation-removal== 10406 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #57647: <==uncertain_firing== 81863 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #60328: <==negation-removal== 37927 (pos)
                    (not (Bc_not_checked_p2))

                    ; #64659: <==uncertain_firing== 72998 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #64892: <==negation-removal== 72998 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #65854: <==negation-removal== 88786 (pos)
                    (not (Ba_not_checked_p2))

                    ; #67335: <==negation-removal== 81863 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #71502: <==uncertain_firing== 29932 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #73754: <==negation-removal== 39916 (pos)
                    (not (Pc_not_checked_p2))

                    ; #79008: <==negation-removal== 55725 (pos)
                    (not (Pd_not_checked_p2))

                    ; #81079: <==negation-removal== 22016 (pos)
                    (not (Pa_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #14241: <==closure== 59829 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #18194: <==commonly_known== 43562 (neg)
                    (Pd_checked_p3)

                    ; #25511: <==commonly_known== 43562 (neg)
                    (Pc_checked_p3)

                    ; #38610: <==commonly_known== 85126 (pos)
                    (Bc_checked_p3)

                    ; #40884: <==commonly_known== 43562 (neg)
                    (Pa_checked_p3)

                    ; #41272: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #42337: <==commonly_known== 85126 (pos)
                    (Bd_checked_p3)

                    ; #48942: <==commonly_known== 85126 (pos)
                    (Bb_checked_p3)

                    ; #52524: <==closure== 41272 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #59829: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #81626: <==commonly_known== 43562 (neg)
                    (Pb_checked_p3)

                    ; #85126: origin
                    (checked_p3)

                    ; #90673: <==commonly_known== 85126 (pos)
                    (Ba_checked_p3)

                    ; #12283: <==negation-removal== 40884 (pos)
                    (not (Ba_not_checked_p3))

                    ; #18923: <==uncertain_firing== 59829 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #22661: <==negation-removal== 42337 (pos)
                    (not (Pd_not_checked_p3))

                    ; #23793: <==negation-removal== 18194 (pos)
                    (not (Bd_not_checked_p3))

                    ; #24442: <==uncertain_firing== 41272 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #35161: <==uncertain_firing== 52524 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #43562: <==negation-removal== 85126 (pos)
                    (not (not_checked_p3))

                    ; #49104: <==negation-removal== 41272 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #50654: <==uncertain_firing== 14241 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #58701: <==negation-removal== 52524 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #62314: <==negation-removal== 81626 (pos)
                    (not (Bb_not_checked_p3))

                    ; #63218: <==negation-removal== 25511 (pos)
                    (not (Bc_not_checked_p3))

                    ; #64296: <==negation-removal== 48942 (pos)
                    (not (Pb_not_checked_p3))

                    ; #65276: <==negation-removal== 90673 (pos)
                    (not (Pa_not_checked_p3))

                    ; #65579: <==negation-removal== 38610 (pos)
                    (not (Pc_not_checked_p3))

                    ; #72581: <==negation-removal== 14241 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #84625: <==negation-removal== 59829 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13394: <==commonly_known== 32972 (pos)
                    (Ba_checked_p4)

                    ; #13699: <==commonly_known== 32972 (pos)
                    (Bd_checked_p4)

                    ; #18057: <==commonly_known== 32972 (pos)
                    (Bc_checked_p4)

                    ; #32972: origin
                    (checked_p4)

                    ; #45186: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #47948: <==closure== 53958 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #48860: <==commonly_known== 71528 (neg)
                    (Pb_checked_p4)

                    ; #53958: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #69344: <==closure== 45186 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #69919: <==commonly_known== 71528 (neg)
                    (Pd_checked_p4)

                    ; #78542: <==commonly_known== 32972 (pos)
                    (Bb_checked_p4)

                    ; #84627: <==commonly_known== 71528 (neg)
                    (Pa_checked_p4)

                    ; #85789: <==commonly_known== 71528 (neg)
                    (Pc_checked_p4)

                    ; #11547: <==negation-removal== 78542 (pos)
                    (not (Pb_not_checked_p4))

                    ; #14622: <==negation-removal== 53958 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #17317: <==uncertain_firing== 53958 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #21740: <==negation-removal== 69919 (pos)
                    (not (Bd_not_checked_p4))

                    ; #32244: <==negation-removal== 69344 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #38891: <==negation-removal== 13394 (pos)
                    (not (Pa_not_checked_p4))

                    ; #39090: <==negation-removal== 13699 (pos)
                    (not (Pd_not_checked_p4))

                    ; #52819: <==negation-removal== 47948 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #54683: <==uncertain_firing== 69344 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #57307: <==negation-removal== 84627 (pos)
                    (not (Ba_not_checked_p4))

                    ; #71528: <==negation-removal== 32972 (pos)
                    (not (not_checked_p4))

                    ; #79951: <==negation-removal== 48860 (pos)
                    (not (Bb_not_checked_p4))

                    ; #81018: <==uncertain_firing== 45186 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #81302: <==negation-removal== 85789 (pos)
                    (not (Bc_not_checked_p4))

                    ; #84635: <==negation-removal== 45186 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #84903: <==negation-removal== 18057 (pos)
                    (not (Pc_not_checked_p4))

                    ; #88235: <==uncertain_firing== 47948 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #22022: <==commonly_known== 52384 (pos)
                    (Bb_checked_p5)

                    ; #28197: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #29173: <==commonly_known== 38193 (neg)
                    (Pc_checked_p5)

                    ; #34445: <==closure== 28197 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #49664: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #52384: origin
                    (checked_p5)

                    ; #53481: <==commonly_known== 38193 (neg)
                    (Pa_checked_p5)

                    ; #53577: <==closure== 49664 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #55632: <==commonly_known== 52384 (pos)
                    (Bc_checked_p5)

                    ; #57329: <==commonly_known== 38193 (neg)
                    (Pd_checked_p5)

                    ; #65951: <==commonly_known== 38193 (neg)
                    (Pb_checked_p5)

                    ; #77157: <==commonly_known== 52384 (pos)
                    (Bd_checked_p5)

                    ; #91398: <==commonly_known== 52384 (pos)
                    (Ba_checked_p5)

                    ; #12376: <==uncertain_firing== 34445 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #12891: <==negation-removal== 57329 (pos)
                    (not (Bd_not_checked_p5))

                    ; #13324: <==negation-removal== 49664 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #22002: <==negation-removal== 77157 (pos)
                    (not (Pd_not_checked_p5))

                    ; #23526: <==negation-removal== 22022 (pos)
                    (not (Pb_not_checked_p5))

                    ; #27611: <==negation-removal== 53577 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #30537: <==negation-removal== 65951 (pos)
                    (not (Bb_not_checked_p5))

                    ; #38003: <==negation-removal== 28197 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #38193: <==negation-removal== 52384 (pos)
                    (not (not_checked_p5))

                    ; #45204: <==negation-removal== 91398 (pos)
                    (not (Pa_not_checked_p5))

                    ; #46296: <==uncertain_firing== 28197 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #47775: <==negation-removal== 34445 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #61687: <==uncertain_firing== 53577 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #63807: <==negation-removal== 29173 (pos)
                    (not (Bc_not_checked_p5))

                    ; #65079: <==uncertain_firing== 49664 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #77013: <==negation-removal== 55632 (pos)
                    (not (Pc_not_checked_p5))

                    ; #90717: <==negation-removal== 53481 (pos)
                    (not (Ba_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #19352: <==commonly_known== 61804 (pos)
                    (Ba_checked_p6)

                    ; #25947: <==closure== 88269 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #45645: <==commonly_known== 33992 (neg)
                    (Pb_checked_p6)

                    ; #48741: <==commonly_known== 33992 (neg)
                    (Pd_checked_p6)

                    ; #57896: <==commonly_known== 33992 (neg)
                    (Pc_checked_p6)

                    ; #61804: origin
                    (checked_p6)

                    ; #64373: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #66468: <==commonly_known== 61804 (pos)
                    (Bb_checked_p6)

                    ; #71416: <==commonly_known== 61804 (pos)
                    (Bc_checked_p6)

                    ; #82518: <==commonly_known== 33992 (neg)
                    (Pa_checked_p6)

                    ; #87873: <==closure== 64373 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #88269: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #88902: <==commonly_known== 61804 (pos)
                    (Bd_checked_p6)

                    ; #11655: <==uncertain_firing== 25947 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #14095: <==uncertain_firing== 64373 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #18060: <==uncertain_firing== 88269 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #18616: <==negation-removal== 87873 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #27643: <==negation-removal== 88269 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #33992: <==negation-removal== 61804 (pos)
                    (not (not_checked_p6))

                    ; #34596: <==negation-removal== 45645 (pos)
                    (not (Bb_not_checked_p6))

                    ; #41905: <==negation-removal== 19352 (pos)
                    (not (Pa_not_checked_p6))

                    ; #42750: <==negation-removal== 66468 (pos)
                    (not (Pb_not_checked_p6))

                    ; #43643: <==negation-removal== 71416 (pos)
                    (not (Pc_not_checked_p6))

                    ; #43654: <==negation-removal== 64373 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #44215: <==negation-removal== 82518 (pos)
                    (not (Ba_not_checked_p6))

                    ; #53235: <==negation-removal== 88902 (pos)
                    (not (Pd_not_checked_p6))

                    ; #73448: <==negation-removal== 25947 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #80577: <==uncertain_firing== 87873 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #87471: <==negation-removal== 48741 (pos)
                    (not (Bd_not_checked_p6))

                    ; #98234: <==negation-removal== 57896 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #18286: <==commonly_known== 52621 (neg)
                    (Pd_checked_p7)

                    ; #36078: <==closure== 88946 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #36883: <==closure== 40377 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #40377: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #50389: origin
                    (checked_p7)

                    ; #52428: <==commonly_known== 50389 (pos)
                    (Bd_checked_p7)

                    ; #61313: <==commonly_known== 52621 (neg)
                    (Pa_checked_p7)

                    ; #64089: <==commonly_known== 50389 (pos)
                    (Ba_checked_p7)

                    ; #68824: <==commonly_known== 52621 (neg)
                    (Pc_checked_p7)

                    ; #78031: <==commonly_known== 50389 (pos)
                    (Bb_checked_p7)

                    ; #83678: <==commonly_known== 52621 (neg)
                    (Pb_checked_p7)

                    ; #87434: <==commonly_known== 50389 (pos)
                    (Bc_checked_p7)

                    ; #88946: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #11689: <==uncertain_firing== 88946 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #22392: <==negation-removal== 87434 (pos)
                    (not (Pc_not_checked_p7))

                    ; #27043: <==negation-removal== 40377 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #34132: <==negation-removal== 52428 (pos)
                    (not (Pd_not_checked_p7))

                    ; #42125: <==uncertain_firing== 36883 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #52621: <==negation-removal== 50389 (pos)
                    (not (not_checked_p7))

                    ; #54026: <==uncertain_firing== 36078 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #54165: <==negation-removal== 36883 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #54322: <==negation-removal== 61313 (pos)
                    (not (Ba_not_checked_p7))

                    ; #56545: <==negation-removal== 64089 (pos)
                    (not (Pa_not_checked_p7))

                    ; #62752: <==negation-removal== 68824 (pos)
                    (not (Bc_not_checked_p7))

                    ; #65647: <==negation-removal== 83678 (pos)
                    (not (Bb_not_checked_p7))

                    ; #67331: <==negation-removal== 36078 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #71232: <==negation-removal== 78031 (pos)
                    (not (Pb_not_checked_p7))

                    ; #76176: <==uncertain_firing== 40377 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #80188: <==negation-removal== 88946 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #90587: <==negation-removal== 18286 (pos)
                    (not (Bd_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #19504: <==closure== 22498 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #20279: <==commonly_known== 71644 (pos)
                    (Bd_checked_p8)

                    ; #22498: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #56826: <==commonly_known== 33149 (neg)
                    (Pc_checked_p8)

                    ; #59149: <==commonly_known== 33149 (neg)
                    (Pa_checked_p8)

                    ; #63606: <==closure== 82892 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #65232: <==commonly_known== 33149 (neg)
                    (Pb_checked_p8)

                    ; #65736: <==commonly_known== 71644 (pos)
                    (Bc_checked_p8)

                    ; #71644: origin
                    (checked_p8)

                    ; #82892: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #84325: <==commonly_known== 71644 (pos)
                    (Bb_checked_p8)

                    ; #87592: <==commonly_known== 33149 (neg)
                    (Pd_checked_p8)

                    ; #91126: <==commonly_known== 71644 (pos)
                    (Ba_checked_p8)

                    ; #10324: <==negation-removal== 20279 (pos)
                    (not (Pd_not_checked_p8))

                    ; #11175: <==negation-removal== 19504 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #11724: <==uncertain_firing== 19504 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #17865: <==negation-removal== 65232 (pos)
                    (not (Bb_not_checked_p8))

                    ; #26530: <==negation-removal== 84325 (pos)
                    (not (Pb_not_checked_p8))

                    ; #26690: <==uncertain_firing== 22498 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #31873: <==negation-removal== 87592 (pos)
                    (not (Bd_not_checked_p8))

                    ; #33149: <==negation-removal== 71644 (pos)
                    (not (not_checked_p8))

                    ; #37906: <==negation-removal== 82892 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #54172: <==negation-removal== 56826 (pos)
                    (not (Bc_not_checked_p8))

                    ; #54234: <==uncertain_firing== 63606 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #67904: <==negation-removal== 59149 (pos)
                    (not (Ba_not_checked_p8))

                    ; #68122: <==uncertain_firing== 82892 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #75634: <==negation-removal== 65736 (pos)
                    (not (Pc_not_checked_p8))

                    ; #77450: <==negation-removal== 22498 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #85440: <==negation-removal== 91126 (pos)
                    (not (Pa_not_checked_p8))

                    ; #98329: <==negation-removal== 63606 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12326: origin
                    (checked_p9)

                    ; #14473: <==commonly_known== 12326 (pos)
                    (Bb_checked_p9)

                    ; #15208: <==commonly_known== 10657 (neg)
                    (Pb_checked_p9)

                    ; #20993: <==commonly_known== 12326 (pos)
                    (Bd_checked_p9)

                    ; #28751: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #41973: <==commonly_known== 12326 (pos)
                    (Bc_checked_p9)

                    ; #44010: <==commonly_known== 12326 (pos)
                    (Ba_checked_p9)

                    ; #47602: <==commonly_known== 10657 (neg)
                    (Pc_checked_p9)

                    ; #51086: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #63273: <==commonly_known== 10657 (neg)
                    (Pd_checked_p9)

                    ; #82771: <==commonly_known== 10657 (neg)
                    (Pa_checked_p9)

                    ; #84854: <==closure== 28751 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #90584: <==closure== 51086 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #10657: <==negation-removal== 12326 (pos)
                    (not (not_checked_p9))

                    ; #12693: <==negation-removal== 63273 (pos)
                    (not (Bd_not_checked_p9))

                    ; #18421: <==negation-removal== 14473 (pos)
                    (not (Pb_not_checked_p9))

                    ; #22465: <==uncertain_firing== 28751 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #23459: <==negation-removal== 28751 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #29714: <==uncertain_firing== 90584 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #40470: <==negation-removal== 84854 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #43365: <==negation-removal== 41973 (pos)
                    (not (Pc_not_checked_p9))

                    ; #45285: <==negation-removal== 51086 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #48021: <==uncertain_firing== 51086 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #51659: <==negation-removal== 15208 (pos)
                    (not (Bb_not_checked_p9))

                    ; #52014: <==negation-removal== 47602 (pos)
                    (not (Bc_not_checked_p9))

                    ; #57098: <==uncertain_firing== 84854 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #63273: <==negation-removal== 20993 (pos)
                    (not (Pd_not_checked_p9))

                    ; #63464: <==negation-removal== 44010 (pos)
                    (not (Pa_not_checked_p9))

                    ; #72393: <==negation-removal== 82771 (pos)
                    (not (Ba_not_checked_p9))

                    ; #75188: <==negation-removal== 90584 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #14739: <==commonly_known== 43150 (pos)
                    (Bc_checked_p10)

                    ; #16348: <==commonly_known== 47426 (neg)
                    (Pa_checked_p10)

                    ; #20348: <==closure== 88747 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #28837: <==commonly_known== 47426 (neg)
                    (Pc_checked_p10)

                    ; #31908: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #42825: <==commonly_known== 43150 (pos)
                    (Bd_checked_p10)

                    ; #43150: origin
                    (checked_p10)

                    ; #64421: <==commonly_known== 47426 (neg)
                    (Pb_checked_p10)

                    ; #68116: <==closure== 31908 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #74497: <==commonly_known== 43150 (pos)
                    (Bb_checked_p10)

                    ; #83522: <==commonly_known== 47426 (neg)
                    (Pd_checked_p10)

                    ; #86230: <==commonly_known== 43150 (pos)
                    (Ba_checked_p10)

                    ; #88747: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #18612: <==negation-removal== 14739 (pos)
                    (not (Pc_not_checked_p10))

                    ; #28904: <==negation-removal== 88747 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #33266: <==negation-removal== 16348 (pos)
                    (not (Ba_not_checked_p10))

                    ; #33558: <==negation-removal== 64421 (pos)
                    (not (Bb_not_checked_p10))

                    ; #38274: <==negation-removal== 86230 (pos)
                    (not (Pa_not_checked_p10))

                    ; #47426: <==negation-removal== 43150 (pos)
                    (not (not_checked_p10))

                    ; #47441: <==uncertain_firing== 88747 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #48949: <==negation-removal== 31908 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #50433: <==negation-removal== 42825 (pos)
                    (not (Pd_not_checked_p10))

                    ; #51268: <==negation-removal== 28837 (pos)
                    (not (Bc_not_checked_p10))

                    ; #51316: <==negation-removal== 68116 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #60664: <==uncertain_firing== 20348 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #68182: <==uncertain_firing== 31908 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #72712: <==negation-removal== 83522 (pos)
                    (not (Bd_not_checked_p10))

                    ; #77805: <==negation-removal== 74497 (pos)
                    (not (Pb_not_checked_p10))

                    ; #80845: <==negation-removal== 20348 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #83636: <==uncertain_firing== 68116 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #10234: <==commonly_known== 46209 (neg)
                    (Pa_checked_p11)

                    ; #22853: <==closure== 27668 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #22912: <==commonly_known== 89294 (pos)
                    (Bc_checked_p11)

                    ; #27668: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #34711: <==commonly_known== 89294 (pos)
                    (Ba_checked_p11)

                    ; #38846: <==commonly_known== 46209 (neg)
                    (Pd_checked_p11)

                    ; #49706: <==commonly_known== 89294 (pos)
                    (Bd_checked_p11)

                    ; #54302: <==commonly_known== 46209 (neg)
                    (Pb_checked_p11)

                    ; #64684: <==commonly_known== 89294 (pos)
                    (Bb_checked_p11)

                    ; #80853: <==commonly_known== 46209 (neg)
                    (Pc_checked_p11)

                    ; #89294: origin
                    (checked_p11)

                    ; #91621: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #94127: <==closure== 91621 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #10107: <==uncertain_firing== 22853 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #12479: <==negation-removal== 27668 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #15350: <==negation-removal== 54302 (pos)
                    (not (Bb_not_checked_p11))

                    ; #38153: <==uncertain_firing== 27668 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #38225: <==negation-removal== 34711 (pos)
                    (not (Pa_not_checked_p11))

                    ; #38232: <==uncertain_firing== 94127 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #39559: <==negation-removal== 91621 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #41901: <==negation-removal== 22853 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #43686: <==negation-removal== 22912 (pos)
                    (not (Pc_not_checked_p11))

                    ; #46209: <==negation-removal== 89294 (pos)
                    (not (not_checked_p11))

                    ; #48464: <==uncertain_firing== 91621 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #49847: <==negation-removal== 80853 (pos)
                    (not (Bc_not_checked_p11))

                    ; #67812: <==negation-removal== 94127 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #81451: <==negation-removal== 49706 (pos)
                    (not (Pd_not_checked_p11))

                    ; #81768: <==negation-removal== 10234 (pos)
                    (not (Ba_not_checked_p11))

                    ; #82056: <==negation-removal== 38846 (pos)
                    (not (Bd_not_checked_p11))

                    ; #91826: <==negation-removal== 64684 (pos)
                    (not (Pb_not_checked_p11))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #16688: <==commonly_known== 75369 (neg)
                    (Pd_checked_p12)

                    ; #16699: <==commonly_known== 90378 (pos)
                    (Bc_checked_p12)

                    ; #33135: <==commonly_known== 75369 (neg)
                    (Pb_checked_p12)

                    ; #35678: <==commonly_known== 90378 (pos)
                    (Bb_checked_p12)

                    ; #47276: <==closure== 60411 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #47463: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #57775: <==commonly_known== 75369 (neg)
                    (Pc_checked_p12)

                    ; #60411: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #65839: <==commonly_known== 90378 (pos)
                    (Ba_checked_p12)

                    ; #80211: <==commonly_known== 90378 (pos)
                    (Bd_checked_p12)

                    ; #88677: <==commonly_known== 75369 (neg)
                    (Pa_checked_p12)

                    ; #90378: origin
                    (checked_p12)

                    ; #91133: <==closure== 47463 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #16151: <==negation-removal== 16688 (pos)
                    (not (Bd_not_checked_p12))

                    ; #24795: <==negation-removal== 47463 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #26508: <==uncertain_firing== 47463 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #34528: <==negation-removal== 88677 (pos)
                    (not (Ba_not_checked_p12))

                    ; #36862: <==negation-removal== 91133 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #40348: <==uncertain_firing== 91133 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #40496: <==negation-removal== 60411 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #45131: <==negation-removal== 65839 (pos)
                    (not (Pa_not_checked_p12))

                    ; #55973: <==negation-removal== 35678 (pos)
                    (not (Pb_not_checked_p12))

                    ; #56831: <==negation-removal== 57775 (pos)
                    (not (Bc_not_checked_p12))

                    ; #70465: <==negation-removal== 16699 (pos)
                    (not (Pc_not_checked_p12))

                    ; #75369: <==negation-removal== 90378 (pos)
                    (not (not_checked_p12))

                    ; #76081: <==negation-removal== 47276 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #82576: <==uncertain_firing== 47276 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #83063: <==negation-removal== 80211 (pos)
                    (not (Pd_not_checked_p12))

                    ; #83964: <==negation-removal== 33135 (pos)
                    (not (Bb_not_checked_p12))

                    ; #94551: <==uncertain_firing== 60411 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12993: <==commonly_known== 24221 (pos)
                    (Bd_checked_p1)

                    ; #18685: <==closure== 48593 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #20032: <==commonly_known== 81930 (neg)
                    (Pc_checked_p1)

                    ; #23251: <==commonly_known== 24221 (pos)
                    (Ba_checked_p1)

                    ; #24221: origin
                    (checked_p1)

                    ; #31509: <==commonly_known== 24221 (pos)
                    (Bb_checked_p1)

                    ; #37838: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #43766: <==commonly_known== 81930 (neg)
                    (Pa_checked_p1)

                    ; #48593: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #58451: <==commonly_known== 81930 (neg)
                    (Pb_checked_p1)

                    ; #72999: <==commonly_known== 24221 (pos)
                    (Bc_checked_p1)

                    ; #84976: <==commonly_known== 81930 (neg)
                    (Pd_checked_p1)

                    ; #90369: <==closure== 37838 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #27577: <==negation-removal== 31509 (pos)
                    (not (Pb_not_checked_p1))

                    ; #28383: <==negation-removal== 43766 (pos)
                    (not (Ba_not_checked_p1))

                    ; #31853: <==negation-removal== 23251 (pos)
                    (not (Pa_not_checked_p1))

                    ; #34850: <==negation-removal== 18685 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #40003: <==negation-removal== 58451 (pos)
                    (not (Bb_not_checked_p1))

                    ; #56127: <==uncertain_firing== 90369 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #59749: <==negation-removal== 37838 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #61057: <==uncertain_firing== 18685 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #66342: <==negation-removal== 84976 (pos)
                    (not (Bd_not_checked_p1))

                    ; #70350: <==negation-removal== 90369 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #76291: <==negation-removal== 20032 (pos)
                    (not (Bc_not_checked_p1))

                    ; #78556: <==negation-removal== 48593 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #79046: <==uncertain_firing== 37838 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #81169: <==uncertain_firing== 48593 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #81930: <==negation-removal== 24221 (pos)
                    (not (not_checked_p1))

                    ; #84818: <==negation-removal== 12993 (pos)
                    (not (Pd_not_checked_p1))

                    ; #87921: <==negation-removal== 72999 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #13005: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #22016: <==commonly_known== 35956 (pos)
                    (Ba_checked_p2)

                    ; #28129: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #30421: <==commonly_known== 48122 (neg)
                    (Pd_checked_p2)

                    ; #35956: origin
                    (checked_p2)

                    ; #37927: <==commonly_known== 48122 (neg)
                    (Pc_checked_p2)

                    ; #39916: <==commonly_known== 35956 (pos)
                    (Bc_checked_p2)

                    ; #41449: <==closure== 13005 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #47102: <==commonly_known== 35956 (pos)
                    (Bb_checked_p2)

                    ; #55725: <==commonly_known== 35956 (pos)
                    (Bd_checked_p2)

                    ; #56325: <==closure== 28129 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #88786: <==commonly_known== 48122 (neg)
                    (Pa_checked_p2)

                    ; #92166: <==commonly_known== 48122 (neg)
                    (Pb_checked_p2)

                    ; #18010: <==negation-removal== 92166 (pos)
                    (not (Bb_not_checked_p2))

                    ; #20199: <==negation-removal== 47102 (pos)
                    (not (Pb_not_checked_p2))

                    ; #23578: <==uncertain_firing== 13005 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #26063: <==uncertain_firing== 28129 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #29228: <==uncertain_firing== 41449 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #35845: <==negation-removal== 30421 (pos)
                    (not (Bd_not_checked_p2))

                    ; #48122: <==negation-removal== 35956 (pos)
                    (not (not_checked_p2))

                    ; #54570: <==negation-removal== 41449 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #60328: <==negation-removal== 37927 (pos)
                    (not (Bc_not_checked_p2))

                    ; #65854: <==negation-removal== 88786 (pos)
                    (not (Ba_not_checked_p2))

                    ; #68664: <==negation-removal== 56325 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #71967: <==negation-removal== 28129 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #73754: <==negation-removal== 39916 (pos)
                    (not (Pc_not_checked_p2))

                    ; #79008: <==negation-removal== 55725 (pos)
                    (not (Pd_not_checked_p2))

                    ; #81079: <==negation-removal== 22016 (pos)
                    (not (Pa_not_checked_p2))

                    ; #87265: <==uncertain_firing== 56325 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #88525: <==negation-removal== 13005 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #18194: <==commonly_known== 43562 (neg)
                    (Pd_checked_p3)

                    ; #25511: <==commonly_known== 43562 (neg)
                    (Pc_checked_p3)

                    ; #38610: <==commonly_known== 85126 (pos)
                    (Bc_checked_p3)

                    ; #40233: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #40884: <==commonly_known== 43562 (neg)
                    (Pa_checked_p3)

                    ; #42337: <==commonly_known== 85126 (pos)
                    (Bd_checked_p3)

                    ; #48942: <==commonly_known== 85126 (pos)
                    (Bb_checked_p3)

                    ; #55786: <==closure== 40233 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #61858: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #81626: <==commonly_known== 43562 (neg)
                    (Pb_checked_p3)

                    ; #82682: <==closure== 61858 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #85126: origin
                    (checked_p3)

                    ; #90673: <==commonly_known== 85126 (pos)
                    (Ba_checked_p3)

                    ; #10787: <==negation-removal== 82682 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #12283: <==negation-removal== 40884 (pos)
                    (not (Ba_not_checked_p3))

                    ; #22661: <==negation-removal== 42337 (pos)
                    (not (Pd_not_checked_p3))

                    ; #23793: <==negation-removal== 18194 (pos)
                    (not (Bd_not_checked_p3))

                    ; #33599: <==uncertain_firing== 40233 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #39163: <==negation-removal== 40233 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #43562: <==negation-removal== 85126 (pos)
                    (not (not_checked_p3))

                    ; #62314: <==negation-removal== 81626 (pos)
                    (not (Bb_not_checked_p3))

                    ; #63218: <==negation-removal== 25511 (pos)
                    (not (Bc_not_checked_p3))

                    ; #63975: <==uncertain_firing== 82682 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #64296: <==negation-removal== 48942 (pos)
                    (not (Pb_not_checked_p3))

                    ; #65276: <==negation-removal== 90673 (pos)
                    (not (Pa_not_checked_p3))

                    ; #65579: <==negation-removal== 38610 (pos)
                    (not (Pc_not_checked_p3))

                    ; #71304: <==negation-removal== 55786 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #72047: <==uncertain_firing== 61858 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #79195: <==negation-removal== 61858 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #84971: <==uncertain_firing== 55786 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13394: <==commonly_known== 32972 (pos)
                    (Ba_checked_p4)

                    ; #13699: <==commonly_known== 32972 (pos)
                    (Bd_checked_p4)

                    ; #18057: <==commonly_known== 32972 (pos)
                    (Bc_checked_p4)

                    ; #32972: origin
                    (checked_p4)

                    ; #32987: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #48860: <==commonly_known== 71528 (neg)
                    (Pb_checked_p4)

                    ; #69919: <==commonly_known== 71528 (neg)
                    (Pd_checked_p4)

                    ; #72677: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #76331: <==closure== 72677 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #78542: <==commonly_known== 32972 (pos)
                    (Bb_checked_p4)

                    ; #80953: <==closure== 32987 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #84627: <==commonly_known== 71528 (neg)
                    (Pa_checked_p4)

                    ; #85789: <==commonly_known== 71528 (neg)
                    (Pc_checked_p4)

                    ; #11547: <==negation-removal== 78542 (pos)
                    (not (Pb_not_checked_p4))

                    ; #18553: <==negation-removal== 80953 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #21740: <==negation-removal== 69919 (pos)
                    (not (Bd_not_checked_p4))

                    ; #23546: <==uncertain_firing== 80953 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #33876: <==uncertain_firing== 76331 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #38820: <==uncertain_firing== 72677 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #38891: <==negation-removal== 13394 (pos)
                    (not (Pa_not_checked_p4))

                    ; #39090: <==negation-removal== 13699 (pos)
                    (not (Pd_not_checked_p4))

                    ; #45422: <==negation-removal== 72677 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #57307: <==negation-removal== 84627 (pos)
                    (not (Ba_not_checked_p4))

                    ; #59235: <==uncertain_firing== 32987 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #65445: <==negation-removal== 76331 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #71528: <==negation-removal== 32972 (pos)
                    (not (not_checked_p4))

                    ; #78942: <==negation-removal== 32987 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #79951: <==negation-removal== 48860 (pos)
                    (not (Bb_not_checked_p4))

                    ; #81302: <==negation-removal== 85789 (pos)
                    (not (Bc_not_checked_p4))

                    ; #84903: <==negation-removal== 18057 (pos)
                    (not (Pc_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #13344: <==closure== 37808 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #22022: <==commonly_known== 52384 (pos)
                    (Bb_checked_p5)

                    ; #29173: <==commonly_known== 38193 (neg)
                    (Pc_checked_p5)

                    ; #34694: <==closure== 75115 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #37808: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #52384: origin
                    (checked_p5)

                    ; #53481: <==commonly_known== 38193 (neg)
                    (Pa_checked_p5)

                    ; #55632: <==commonly_known== 52384 (pos)
                    (Bc_checked_p5)

                    ; #57329: <==commonly_known== 38193 (neg)
                    (Pd_checked_p5)

                    ; #65951: <==commonly_known== 38193 (neg)
                    (Pb_checked_p5)

                    ; #75115: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #77157: <==commonly_known== 52384 (pos)
                    (Bd_checked_p5)

                    ; #91398: <==commonly_known== 52384 (pos)
                    (Ba_checked_p5)

                    ; #12891: <==negation-removal== 57329 (pos)
                    (not (Bd_not_checked_p5))

                    ; #19195: <==negation-removal== 75115 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #22002: <==negation-removal== 77157 (pos)
                    (not (Pd_not_checked_p5))

                    ; #23526: <==negation-removal== 22022 (pos)
                    (not (Pb_not_checked_p5))

                    ; #24347: <==negation-removal== 34694 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #30537: <==negation-removal== 65951 (pos)
                    (not (Bb_not_checked_p5))

                    ; #38193: <==negation-removal== 52384 (pos)
                    (not (not_checked_p5))

                    ; #38422: <==uncertain_firing== 13344 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #40379: <==uncertain_firing== 75115 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #44043: <==negation-removal== 13344 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #45204: <==negation-removal== 91398 (pos)
                    (not (Pa_not_checked_p5))

                    ; #50762: <==uncertain_firing== 37808 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #54711: <==negation-removal== 37808 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #63807: <==negation-removal== 29173 (pos)
                    (not (Bc_not_checked_p5))

                    ; #77013: <==negation-removal== 55632 (pos)
                    (not (Pc_not_checked_p5))

                    ; #82152: <==uncertain_firing== 34694 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #90717: <==negation-removal== 53481 (pos)
                    (not (Ba_not_checked_p5))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #19352: <==commonly_known== 61804 (pos)
                    (Ba_checked_p6)

                    ; #34466: <==closure== 93794 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #38031: <==closure== 83093 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #45645: <==commonly_known== 33992 (neg)
                    (Pb_checked_p6)

                    ; #48741: <==commonly_known== 33992 (neg)
                    (Pd_checked_p6)

                    ; #57896: <==commonly_known== 33992 (neg)
                    (Pc_checked_p6)

                    ; #61804: origin
                    (checked_p6)

                    ; #66468: <==commonly_known== 61804 (pos)
                    (Bb_checked_p6)

                    ; #71416: <==commonly_known== 61804 (pos)
                    (Bc_checked_p6)

                    ; #82518: <==commonly_known== 33992 (neg)
                    (Pa_checked_p6)

                    ; #83093: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #88902: <==commonly_known== 61804 (pos)
                    (Bd_checked_p6)

                    ; #93794: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #19889: <==uncertain_firing== 93794 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #22833: <==uncertain_firing== 34466 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #26165: <==uncertain_firing== 83093 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #33928: <==negation-removal== 93794 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #33992: <==negation-removal== 61804 (pos)
                    (not (not_checked_p6))

                    ; #34596: <==negation-removal== 45645 (pos)
                    (not (Bb_not_checked_p6))

                    ; #41905: <==negation-removal== 19352 (pos)
                    (not (Pa_not_checked_p6))

                    ; #42750: <==negation-removal== 66468 (pos)
                    (not (Pb_not_checked_p6))

                    ; #43643: <==negation-removal== 71416 (pos)
                    (not (Pc_not_checked_p6))

                    ; #44215: <==negation-removal== 82518 (pos)
                    (not (Ba_not_checked_p6))

                    ; #45342: <==negation-removal== 38031 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #47554: <==negation-removal== 34466 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #49945: <==negation-removal== 83093 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #53235: <==negation-removal== 88902 (pos)
                    (not (Pd_not_checked_p6))

                    ; #54759: <==uncertain_firing== 38031 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #87471: <==negation-removal== 48741 (pos)
                    (not (Bd_not_checked_p6))

                    ; #98234: <==negation-removal== 57896 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #18286: <==commonly_known== 52621 (neg)
                    (Pd_checked_p7)

                    ; #20989: <==closure== 26463 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #26463: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #40141: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #50389: origin
                    (checked_p7)

                    ; #52428: <==commonly_known== 50389 (pos)
                    (Bd_checked_p7)

                    ; #61313: <==commonly_known== 52621 (neg)
                    (Pa_checked_p7)

                    ; #64089: <==commonly_known== 50389 (pos)
                    (Ba_checked_p7)

                    ; #68484: <==closure== 40141 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #68824: <==commonly_known== 52621 (neg)
                    (Pc_checked_p7)

                    ; #78031: <==commonly_known== 50389 (pos)
                    (Bb_checked_p7)

                    ; #83678: <==commonly_known== 52621 (neg)
                    (Pb_checked_p7)

                    ; #87434: <==commonly_known== 50389 (pos)
                    (Bc_checked_p7)

                    ; #10502: <==uncertain_firing== 20989 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #22392: <==negation-removal== 87434 (pos)
                    (not (Pc_not_checked_p7))

                    ; #26119: <==negation-removal== 40141 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #34132: <==negation-removal== 52428 (pos)
                    (not (Pd_not_checked_p7))

                    ; #37813: <==negation-removal== 26463 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #49719: <==uncertain_firing== 68484 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #52621: <==negation-removal== 50389 (pos)
                    (not (not_checked_p7))

                    ; #54322: <==negation-removal== 61313 (pos)
                    (not (Ba_not_checked_p7))

                    ; #56545: <==negation-removal== 64089 (pos)
                    (not (Pa_not_checked_p7))

                    ; #62752: <==negation-removal== 68824 (pos)
                    (not (Bc_not_checked_p7))

                    ; #65388: <==negation-removal== 68484 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #65647: <==negation-removal== 83678 (pos)
                    (not (Bb_not_checked_p7))

                    ; #71232: <==negation-removal== 78031 (pos)
                    (not (Pb_not_checked_p7))

                    ; #79995: <==uncertain_firing== 40141 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #82937: <==negation-removal== 20989 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #87773: <==uncertain_firing== 26463 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #90587: <==negation-removal== 18286 (pos)
                    (not (Bd_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #20279: <==commonly_known== 71644 (pos)
                    (Bd_checked_p8)

                    ; #36284: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #39176: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #43847: <==closure== 39176 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #56826: <==commonly_known== 33149 (neg)
                    (Pc_checked_p8)

                    ; #59149: <==commonly_known== 33149 (neg)
                    (Pa_checked_p8)

                    ; #65232: <==commonly_known== 33149 (neg)
                    (Pb_checked_p8)

                    ; #65736: <==commonly_known== 71644 (pos)
                    (Bc_checked_p8)

                    ; #67570: <==closure== 36284 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #71644: origin
                    (checked_p8)

                    ; #84325: <==commonly_known== 71644 (pos)
                    (Bb_checked_p8)

                    ; #87592: <==commonly_known== 33149 (neg)
                    (Pd_checked_p8)

                    ; #91126: <==commonly_known== 71644 (pos)
                    (Ba_checked_p8)

                    ; #10324: <==negation-removal== 20279 (pos)
                    (not (Pd_not_checked_p8))

                    ; #17865: <==negation-removal== 65232 (pos)
                    (not (Bb_not_checked_p8))

                    ; #18395: <==negation-removal== 36284 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #18598: <==negation-removal== 43847 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #21331: <==uncertain_firing== 67570 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #26530: <==negation-removal== 84325 (pos)
                    (not (Pb_not_checked_p8))

                    ; #31873: <==negation-removal== 87592 (pos)
                    (not (Bd_not_checked_p8))

                    ; #33149: <==negation-removal== 71644 (pos)
                    (not (not_checked_p8))

                    ; #39019: <==negation-removal== 39176 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #41738: <==uncertain_firing== 43847 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #54172: <==negation-removal== 56826 (pos)
                    (not (Bc_not_checked_p8))

                    ; #55546: <==negation-removal== 67570 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #63474: <==uncertain_firing== 36284 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #67904: <==negation-removal== 59149 (pos)
                    (not (Ba_not_checked_p8))

                    ; #75634: <==negation-removal== 65736 (pos)
                    (not (Pc_not_checked_p8))

                    ; #85440: <==negation-removal== 91126 (pos)
                    (not (Pa_not_checked_p8))

                    ; #85689: <==uncertain_firing== 39176 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12326: origin
                    (checked_p9)

                    ; #14473: <==commonly_known== 12326 (pos)
                    (Bb_checked_p9)

                    ; #15208: <==commonly_known== 10657 (neg)
                    (Pb_checked_p9)

                    ; #20993: <==commonly_known== 12326 (pos)
                    (Bd_checked_p9)

                    ; #33526: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #35957: <==closure== 33526 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #41973: <==commonly_known== 12326 (pos)
                    (Bc_checked_p9)

                    ; #44010: <==commonly_known== 12326 (pos)
                    (Ba_checked_p9)

                    ; #47602: <==commonly_known== 10657 (neg)
                    (Pc_checked_p9)

                    ; #54868: <==closure== 74463 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #63273: <==commonly_known== 10657 (neg)
                    (Pd_checked_p9)

                    ; #74463: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #82771: <==commonly_known== 10657 (neg)
                    (Pa_checked_p9)

                    ; #10657: <==negation-removal== 12326 (pos)
                    (not (not_checked_p9))

                    ; #10968: <==negation-removal== 74463 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #12693: <==negation-removal== 63273 (pos)
                    (not (Bd_not_checked_p9))

                    ; #18421: <==negation-removal== 14473 (pos)
                    (not (Pb_not_checked_p9))

                    ; #40642: <==negation-removal== 33526 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #43365: <==negation-removal== 41973 (pos)
                    (not (Pc_not_checked_p9))

                    ; #44299: <==uncertain_firing== 74463 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #51659: <==negation-removal== 15208 (pos)
                    (not (Bb_not_checked_p9))

                    ; #52014: <==negation-removal== 47602 (pos)
                    (not (Bc_not_checked_p9))

                    ; #52118: <==uncertain_firing== 54868 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #52847: <==negation-removal== 35957 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #56543: <==negation-removal== 54868 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #63273: <==negation-removal== 20993 (pos)
                    (not (Pd_not_checked_p9))

                    ; #63464: <==negation-removal== 44010 (pos)
                    (not (Pa_not_checked_p9))

                    ; #66268: <==uncertain_firing== 35957 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #71738: <==uncertain_firing== 33526 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #72393: <==negation-removal== 82771 (pos)
                    (not (Ba_not_checked_p9))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #14739: <==commonly_known== 43150 (pos)
                    (Bc_checked_p10)

                    ; #16348: <==commonly_known== 47426 (neg)
                    (Pa_checked_p10)

                    ; #28837: <==commonly_known== 47426 (neg)
                    (Pc_checked_p10)

                    ; #42825: <==commonly_known== 43150 (pos)
                    (Bd_checked_p10)

                    ; #43150: origin
                    (checked_p10)

                    ; #56705: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #64421: <==commonly_known== 47426 (neg)
                    (Pb_checked_p10)

                    ; #74497: <==commonly_known== 43150 (pos)
                    (Bb_checked_p10)

                    ; #81906: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #82821: <==closure== 56705 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #83522: <==commonly_known== 47426 (neg)
                    (Pd_checked_p10)

                    ; #86142: <==closure== 81906 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #86230: <==commonly_known== 43150 (pos)
                    (Ba_checked_p10)

                    ; #18612: <==negation-removal== 14739 (pos)
                    (not (Pc_not_checked_p10))

                    ; #20833: <==negation-removal== 82821 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #23710: <==uncertain_firing== 82821 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #26832: <==negation-removal== 86142 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #31682: <==uncertain_firing== 81906 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #33266: <==negation-removal== 16348 (pos)
                    (not (Ba_not_checked_p10))

                    ; #33558: <==negation-removal== 64421 (pos)
                    (not (Bb_not_checked_p10))

                    ; #38274: <==negation-removal== 86230 (pos)
                    (not (Pa_not_checked_p10))

                    ; #38533: <==uncertain_firing== 86142 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #47426: <==negation-removal== 43150 (pos)
                    (not (not_checked_p10))

                    ; #50319: <==negation-removal== 81906 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #50433: <==negation-removal== 42825 (pos)
                    (not (Pd_not_checked_p10))

                    ; #51268: <==negation-removal== 28837 (pos)
                    (not (Bc_not_checked_p10))

                    ; #52545: <==uncertain_firing== 56705 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #62974: <==negation-removal== 56705 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #72712: <==negation-removal== 83522 (pos)
                    (not (Bd_not_checked_p10))

                    ; #77805: <==negation-removal== 74497 (pos)
                    (not (Pb_not_checked_p10))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #10234: <==commonly_known== 46209 (neg)
                    (Pa_checked_p11)

                    ; #22750: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #22912: <==commonly_known== 89294 (pos)
                    (Bc_checked_p11)

                    ; #34711: <==commonly_known== 89294 (pos)
                    (Ba_checked_p11)

                    ; #38846: <==commonly_known== 46209 (neg)
                    (Pd_checked_p11)

                    ; #49706: <==commonly_known== 89294 (pos)
                    (Bd_checked_p11)

                    ; #54302: <==commonly_known== 46209 (neg)
                    (Pb_checked_p11)

                    ; #63024: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #64684: <==commonly_known== 89294 (pos)
                    (Bb_checked_p11)

                    ; #70964: <==closure== 22750 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #80853: <==commonly_known== 46209 (neg)
                    (Pc_checked_p11)

                    ; #88915: <==closure== 63024 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #89294: origin
                    (checked_p11)

                    ; #15350: <==negation-removal== 54302 (pos)
                    (not (Bb_not_checked_p11))

                    ; #16043: <==negation-removal== 63024 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #18964: <==negation-removal== 22750 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #23392: <==uncertain_firing== 63024 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #27105: <==uncertain_firing== 70964 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #38225: <==negation-removal== 34711 (pos)
                    (not (Pa_not_checked_p11))

                    ; #40640: <==uncertain_firing== 22750 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #43686: <==negation-removal== 22912 (pos)
                    (not (Pc_not_checked_p11))

                    ; #44839: <==negation-removal== 88915 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #46209: <==negation-removal== 89294 (pos)
                    (not (not_checked_p11))

                    ; #49847: <==negation-removal== 80853 (pos)
                    (not (Bc_not_checked_p11))

                    ; #50102: <==negation-removal== 70964 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #81451: <==negation-removal== 49706 (pos)
                    (not (Pd_not_checked_p11))

                    ; #81768: <==negation-removal== 10234 (pos)
                    (not (Ba_not_checked_p11))

                    ; #82056: <==negation-removal== 38846 (pos)
                    (not (Bd_not_checked_p11))

                    ; #87784: <==uncertain_firing== 88915 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #91826: <==negation-removal== 64684 (pos)
                    (not (Pb_not_checked_p11))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #16688: <==commonly_known== 75369 (neg)
                    (Pd_checked_p12)

                    ; #16699: <==commonly_known== 90378 (pos)
                    (Bc_checked_p12)

                    ; #33135: <==commonly_known== 75369 (neg)
                    (Pb_checked_p12)

                    ; #35678: <==commonly_known== 90378 (pos)
                    (Bb_checked_p12)

                    ; #57775: <==commonly_known== 75369 (neg)
                    (Pc_checked_p12)

                    ; #62042: <==closure== 79312 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #65839: <==commonly_known== 90378 (pos)
                    (Ba_checked_p12)

                    ; #69813: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #76175: <==closure== 69813 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #79312: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #80211: <==commonly_known== 90378 (pos)
                    (Bd_checked_p12)

                    ; #88677: <==commonly_known== 75369 (neg)
                    (Pa_checked_p12)

                    ; #90378: origin
                    (checked_p12)

                    ; #12770: <==negation-removal== 62042 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #16151: <==negation-removal== 16688 (pos)
                    (not (Bd_not_checked_p12))

                    ; #20393: <==uncertain_firing== 62042 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #34528: <==negation-removal== 88677 (pos)
                    (not (Ba_not_checked_p12))

                    ; #43399: <==negation-removal== 69813 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #45131: <==negation-removal== 65839 (pos)
                    (not (Pa_not_checked_p12))

                    ; #45397: <==uncertain_firing== 69813 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #48478: <==uncertain_firing== 79312 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #50158: <==negation-removal== 76175 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #51932: <==negation-removal== 79312 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #55513: <==uncertain_firing== 76175 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #55973: <==negation-removal== 35678 (pos)
                    (not (Pb_not_checked_p12))

                    ; #56831: <==negation-removal== 57775 (pos)
                    (not (Bc_not_checked_p12))

                    ; #70465: <==negation-removal== 16699 (pos)
                    (not (Pc_not_checked_p12))

                    ; #75369: <==negation-removal== 90378 (pos)
                    (not (not_checked_p12))

                    ; #83063: <==negation-removal== 80211 (pos)
                    (not (Pd_not_checked_p12))

                    ; #83964: <==negation-removal== 33135 (pos)
                    (not (Bb_not_checked_p12))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12993: <==commonly_known== 24221 (pos)
                    (Bd_checked_p1)

                    ; #20032: <==commonly_known== 81930 (neg)
                    (Pc_checked_p1)

                    ; #22749: <==closure== 63002 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #23251: <==commonly_known== 24221 (pos)
                    (Ba_checked_p1)

                    ; #24221: origin
                    (checked_p1)

                    ; #31509: <==commonly_known== 24221 (pos)
                    (Bb_checked_p1)

                    ; #31528: <==closure== 34709 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #34709: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #43766: <==commonly_known== 81930 (neg)
                    (Pa_checked_p1)

                    ; #58451: <==commonly_known== 81930 (neg)
                    (Pb_checked_p1)

                    ; #63002: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #72999: <==commonly_known== 24221 (pos)
                    (Bc_checked_p1)

                    ; #84976: <==commonly_known== 81930 (neg)
                    (Pd_checked_p1)

                    ; #12165: <==uncertain_firing== 63002 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #22739: <==negation-removal== 34709 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #27577: <==negation-removal== 31509 (pos)
                    (not (Pb_not_checked_p1))

                    ; #28383: <==negation-removal== 43766 (pos)
                    (not (Ba_not_checked_p1))

                    ; #29171: <==negation-removal== 31528 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #31853: <==negation-removal== 23251 (pos)
                    (not (Pa_not_checked_p1))

                    ; #40003: <==negation-removal== 58451 (pos)
                    (not (Bb_not_checked_p1))

                    ; #54328: <==negation-removal== 22749 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #66342: <==negation-removal== 84976 (pos)
                    (not (Bd_not_checked_p1))

                    ; #66598: <==negation-removal== 63002 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #70501: <==uncertain_firing== 31528 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #76291: <==negation-removal== 20032 (pos)
                    (not (Bc_not_checked_p1))

                    ; #81930: <==negation-removal== 24221 (pos)
                    (not (not_checked_p1))

                    ; #84818: <==negation-removal== 12993 (pos)
                    (not (Pd_not_checked_p1))

                    ; #87921: <==negation-removal== 72999 (pos)
                    (not (Pc_not_checked_p1))

                    ; #90671: <==uncertain_firing== 34709 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #90793: <==uncertain_firing== 22749 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #13814: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #14974: <==closure== 71897 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #22016: <==commonly_known== 35956 (pos)
                    (Ba_checked_p2)

                    ; #30421: <==commonly_known== 48122 (neg)
                    (Pd_checked_p2)

                    ; #35956: origin
                    (checked_p2)

                    ; #36196: <==closure== 13814 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #37927: <==commonly_known== 48122 (neg)
                    (Pc_checked_p2)

                    ; #39916: <==commonly_known== 35956 (pos)
                    (Bc_checked_p2)

                    ; #47102: <==commonly_known== 35956 (pos)
                    (Bb_checked_p2)

                    ; #55725: <==commonly_known== 35956 (pos)
                    (Bd_checked_p2)

                    ; #71897: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #88786: <==commonly_known== 48122 (neg)
                    (Pa_checked_p2)

                    ; #92166: <==commonly_known== 48122 (neg)
                    (Pb_checked_p2)

                    ; #17062: <==uncertain_firing== 13814 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #18010: <==negation-removal== 92166 (pos)
                    (not (Bb_not_checked_p2))

                    ; #20199: <==negation-removal== 47102 (pos)
                    (not (Pb_not_checked_p2))

                    ; #20289: <==negation-removal== 14974 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #35845: <==negation-removal== 30421 (pos)
                    (not (Bd_not_checked_p2))

                    ; #36344: <==uncertain_firing== 71897 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #46774: <==uncertain_firing== 14974 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #48122: <==negation-removal== 35956 (pos)
                    (not (not_checked_p2))

                    ; #60328: <==negation-removal== 37927 (pos)
                    (not (Bc_not_checked_p2))

                    ; #61547: <==uncertain_firing== 36196 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #65854: <==negation-removal== 88786 (pos)
                    (not (Ba_not_checked_p2))

                    ; #69507: <==negation-removal== 71897 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #73754: <==negation-removal== 39916 (pos)
                    (not (Pc_not_checked_p2))

                    ; #79008: <==negation-removal== 55725 (pos)
                    (not (Pd_not_checked_p2))

                    ; #81079: <==negation-removal== 22016 (pos)
                    (not (Pa_not_checked_p2))

                    ; #82539: <==negation-removal== 13814 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #87575: <==negation-removal== 36196 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11525: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #18194: <==commonly_known== 43562 (neg)
                    (Pd_checked_p3)

                    ; #20381: <==closure== 11525 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #25511: <==commonly_known== 43562 (neg)
                    (Pc_checked_p3)

                    ; #38610: <==commonly_known== 85126 (pos)
                    (Bc_checked_p3)

                    ; #40599: <==closure== 41709 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #40884: <==commonly_known== 43562 (neg)
                    (Pa_checked_p3)

                    ; #41709: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #42337: <==commonly_known== 85126 (pos)
                    (Bd_checked_p3)

                    ; #48942: <==commonly_known== 85126 (pos)
                    (Bb_checked_p3)

                    ; #81626: <==commonly_known== 43562 (neg)
                    (Pb_checked_p3)

                    ; #85126: origin
                    (checked_p3)

                    ; #90673: <==commonly_known== 85126 (pos)
                    (Ba_checked_p3)

                    ; #12283: <==negation-removal== 40884 (pos)
                    (not (Ba_not_checked_p3))

                    ; #22661: <==negation-removal== 42337 (pos)
                    (not (Pd_not_checked_p3))

                    ; #23793: <==negation-removal== 18194 (pos)
                    (not (Bd_not_checked_p3))

                    ; #25113: <==uncertain_firing== 40599 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #26682: <==uncertain_firing== 20381 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #43562: <==negation-removal== 85126 (pos)
                    (not (not_checked_p3))

                    ; #55782: <==uncertain_firing== 41709 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #55914: <==uncertain_firing== 11525 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #60155: <==negation-removal== 11525 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #62314: <==negation-removal== 81626 (pos)
                    (not (Bb_not_checked_p3))

                    ; #63218: <==negation-removal== 25511 (pos)
                    (not (Bc_not_checked_p3))

                    ; #64296: <==negation-removal== 48942 (pos)
                    (not (Pb_not_checked_p3))

                    ; #65276: <==negation-removal== 90673 (pos)
                    (not (Pa_not_checked_p3))

                    ; #65579: <==negation-removal== 38610 (pos)
                    (not (Pc_not_checked_p3))

                    ; #71975: <==negation-removal== 40599 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #75959: <==negation-removal== 41709 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #82879: <==negation-removal== 20381 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13394: <==commonly_known== 32972 (pos)
                    (Ba_checked_p4)

                    ; #13699: <==commonly_known== 32972 (pos)
                    (Bd_checked_p4)

                    ; #18057: <==commonly_known== 32972 (pos)
                    (Bc_checked_p4)

                    ; #32972: origin
                    (checked_p4)

                    ; #35069: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #45161: <==closure== 35069 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #48860: <==commonly_known== 71528 (neg)
                    (Pb_checked_p4)

                    ; #69919: <==commonly_known== 71528 (neg)
                    (Pd_checked_p4)

                    ; #74325: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #74598: <==closure== 74325 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #78542: <==commonly_known== 32972 (pos)
                    (Bb_checked_p4)

                    ; #84627: <==commonly_known== 71528 (neg)
                    (Pa_checked_p4)

                    ; #85789: <==commonly_known== 71528 (neg)
                    (Pc_checked_p4)

                    ; #11547: <==negation-removal== 78542 (pos)
                    (not (Pb_not_checked_p4))

                    ; #21740: <==negation-removal== 69919 (pos)
                    (not (Bd_not_checked_p4))

                    ; #27475: <==uncertain_firing== 45161 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #30752: <==negation-removal== 74325 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #38891: <==negation-removal== 13394 (pos)
                    (not (Pa_not_checked_p4))

                    ; #39090: <==negation-removal== 13699 (pos)
                    (not (Pd_not_checked_p4))

                    ; #47918: <==uncertain_firing== 35069 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #52587: <==uncertain_firing== 74325 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #57307: <==negation-removal== 84627 (pos)
                    (not (Ba_not_checked_p4))

                    ; #60301: <==negation-removal== 74598 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #70117: <==uncertain_firing== 74598 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #71528: <==negation-removal== 32972 (pos)
                    (not (not_checked_p4))

                    ; #73723: <==negation-removal== 45161 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #77723: <==negation-removal== 35069 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #79951: <==negation-removal== 48860 (pos)
                    (not (Bb_not_checked_p4))

                    ; #81302: <==negation-removal== 85789 (pos)
                    (not (Bc_not_checked_p4))

                    ; #84903: <==negation-removal== 18057 (pos)
                    (not (Pc_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #22022: <==commonly_known== 52384 (pos)
                    (Bb_checked_p5)

                    ; #29173: <==commonly_known== 38193 (neg)
                    (Pc_checked_p5)

                    ; #32483: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #35061: <==closure== 66525 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #35855: <==closure== 32483 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #52384: origin
                    (checked_p5)

                    ; #53481: <==commonly_known== 38193 (neg)
                    (Pa_checked_p5)

                    ; #55632: <==commonly_known== 52384 (pos)
                    (Bc_checked_p5)

                    ; #57329: <==commonly_known== 38193 (neg)
                    (Pd_checked_p5)

                    ; #65951: <==commonly_known== 38193 (neg)
                    (Pb_checked_p5)

                    ; #66525: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #77157: <==commonly_known== 52384 (pos)
                    (Bd_checked_p5)

                    ; #91398: <==commonly_known== 52384 (pos)
                    (Ba_checked_p5)

                    ; #11146: <==negation-removal== 32483 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #12891: <==negation-removal== 57329 (pos)
                    (not (Bd_not_checked_p5))

                    ; #22002: <==negation-removal== 77157 (pos)
                    (not (Pd_not_checked_p5))

                    ; #23526: <==negation-removal== 22022 (pos)
                    (not (Pb_not_checked_p5))

                    ; #30537: <==negation-removal== 65951 (pos)
                    (not (Bb_not_checked_p5))

                    ; #38111: <==negation-removal== 35855 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #38193: <==negation-removal== 52384 (pos)
                    (not (not_checked_p5))

                    ; #43976: <==negation-removal== 35061 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #45204: <==negation-removal== 91398 (pos)
                    (not (Pa_not_checked_p5))

                    ; #48318: <==uncertain_firing== 35061 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #54676: <==negation-removal== 66525 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #63807: <==negation-removal== 29173 (pos)
                    (not (Bc_not_checked_p5))

                    ; #77013: <==negation-removal== 55632 (pos)
                    (not (Pc_not_checked_p5))

                    ; #78860: <==uncertain_firing== 35855 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #87080: <==uncertain_firing== 66525 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #89534: <==uncertain_firing== 32483 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #90717: <==negation-removal== 53481 (pos)
                    (not (Ba_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #19352: <==commonly_known== 61804 (pos)
                    (Ba_checked_p6)

                    ; #22263: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #24840: <==closure== 22263 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #37268: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #45645: <==commonly_known== 33992 (neg)
                    (Pb_checked_p6)

                    ; #48741: <==commonly_known== 33992 (neg)
                    (Pd_checked_p6)

                    ; #57896: <==commonly_known== 33992 (neg)
                    (Pc_checked_p6)

                    ; #61804: origin
                    (checked_p6)

                    ; #66468: <==commonly_known== 61804 (pos)
                    (Bb_checked_p6)

                    ; #71416: <==commonly_known== 61804 (pos)
                    (Bc_checked_p6)

                    ; #82518: <==commonly_known== 33992 (neg)
                    (Pa_checked_p6)

                    ; #86391: <==closure== 37268 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #88902: <==commonly_known== 61804 (pos)
                    (Bd_checked_p6)

                    ; #21279: <==uncertain_firing== 37268 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #33992: <==negation-removal== 61804 (pos)
                    (not (not_checked_p6))

                    ; #34596: <==negation-removal== 45645 (pos)
                    (not (Bb_not_checked_p6))

                    ; #41905: <==negation-removal== 19352 (pos)
                    (not (Pa_not_checked_p6))

                    ; #42750: <==negation-removal== 66468 (pos)
                    (not (Pb_not_checked_p6))

                    ; #43643: <==negation-removal== 71416 (pos)
                    (not (Pc_not_checked_p6))

                    ; #44078: <==uncertain_firing== 24840 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #44215: <==negation-removal== 82518 (pos)
                    (not (Ba_not_checked_p6))

                    ; #47644: <==negation-removal== 22263 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #48780: <==negation-removal== 24840 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #53235: <==negation-removal== 88902 (pos)
                    (not (Pd_not_checked_p6))

                    ; #59376: <==uncertain_firing== 22263 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #65843: <==negation-removal== 86391 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #81390: <==uncertain_firing== 86391 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #82953: <==negation-removal== 37268 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #87471: <==negation-removal== 48741 (pos)
                    (not (Bd_not_checked_p6))

                    ; #98234: <==negation-removal== 57896 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #18286: <==commonly_known== 52621 (neg)
                    (Pd_checked_p7)

                    ; #25190: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #43460: <==closure== 25190 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #50389: origin
                    (checked_p7)

                    ; #52428: <==commonly_known== 50389 (pos)
                    (Bd_checked_p7)

                    ; #55096: <==closure== 58000 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #58000: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #61313: <==commonly_known== 52621 (neg)
                    (Pa_checked_p7)

                    ; #64089: <==commonly_known== 50389 (pos)
                    (Ba_checked_p7)

                    ; #68824: <==commonly_known== 52621 (neg)
                    (Pc_checked_p7)

                    ; #78031: <==commonly_known== 50389 (pos)
                    (Bb_checked_p7)

                    ; #83678: <==commonly_known== 52621 (neg)
                    (Pb_checked_p7)

                    ; #87434: <==commonly_known== 50389 (pos)
                    (Bc_checked_p7)

                    ; #22392: <==negation-removal== 87434 (pos)
                    (not (Pc_not_checked_p7))

                    ; #34132: <==negation-removal== 52428 (pos)
                    (not (Pd_not_checked_p7))

                    ; #37725: <==negation-removal== 43460 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #52621: <==negation-removal== 50389 (pos)
                    (not (not_checked_p7))

                    ; #54322: <==negation-removal== 61313 (pos)
                    (not (Ba_not_checked_p7))

                    ; #56086: <==negation-removal== 58000 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #56545: <==negation-removal== 64089 (pos)
                    (not (Pa_not_checked_p7))

                    ; #61419: <==uncertain_firing== 43460 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #62752: <==negation-removal== 68824 (pos)
                    (not (Bc_not_checked_p7))

                    ; #65647: <==negation-removal== 83678 (pos)
                    (not (Bb_not_checked_p7))

                    ; #68207: <==uncertain_firing== 58000 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #69296: <==uncertain_firing== 55096 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #71232: <==negation-removal== 78031 (pos)
                    (not (Pb_not_checked_p7))

                    ; #74092: <==negation-removal== 25190 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #86416: <==uncertain_firing== 25190 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #90587: <==negation-removal== 18286 (pos)
                    (not (Bd_not_checked_p7))

                    ; #90616: <==negation-removal== 55096 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12287: <==closure== 79569 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #20279: <==commonly_known== 71644 (pos)
                    (Bd_checked_p8)

                    ; #41495: <==closure== 67012 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #56826: <==commonly_known== 33149 (neg)
                    (Pc_checked_p8)

                    ; #59149: <==commonly_known== 33149 (neg)
                    (Pa_checked_p8)

                    ; #65232: <==commonly_known== 33149 (neg)
                    (Pb_checked_p8)

                    ; #65736: <==commonly_known== 71644 (pos)
                    (Bc_checked_p8)

                    ; #67012: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #71644: origin
                    (checked_p8)

                    ; #79569: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #84325: <==commonly_known== 71644 (pos)
                    (Bb_checked_p8)

                    ; #87592: <==commonly_known== 33149 (neg)
                    (Pd_checked_p8)

                    ; #91126: <==commonly_known== 71644 (pos)
                    (Ba_checked_p8)

                    ; #10324: <==negation-removal== 20279 (pos)
                    (not (Pd_not_checked_p8))

                    ; #14751: <==uncertain_firing== 41495 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #17865: <==negation-removal== 65232 (pos)
                    (not (Bb_not_checked_p8))

                    ; #26530: <==negation-removal== 84325 (pos)
                    (not (Pb_not_checked_p8))

                    ; #27700: <==negation-removal== 12287 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #31873: <==negation-removal== 87592 (pos)
                    (not (Bd_not_checked_p8))

                    ; #32671: <==negation-removal== 67012 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #33149: <==negation-removal== 71644 (pos)
                    (not (not_checked_p8))

                    ; #39408: <==uncertain_firing== 12287 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #51646: <==uncertain_firing== 67012 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #53435: <==uncertain_firing== 79569 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #54172: <==negation-removal== 56826 (pos)
                    (not (Bc_not_checked_p8))

                    ; #54729: <==negation-removal== 79569 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #63984: <==negation-removal== 41495 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #67904: <==negation-removal== 59149 (pos)
                    (not (Ba_not_checked_p8))

                    ; #75634: <==negation-removal== 65736 (pos)
                    (not (Pc_not_checked_p8))

                    ; #85440: <==negation-removal== 91126 (pos)
                    (not (Pa_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12326: origin
                    (checked_p9)

                    ; #14473: <==commonly_known== 12326 (pos)
                    (Bb_checked_p9)

                    ; #15208: <==commonly_known== 10657 (neg)
                    (Pb_checked_p9)

                    ; #20993: <==commonly_known== 12326 (pos)
                    (Bd_checked_p9)

                    ; #31544: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #36334: <==closure== 61759 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #41973: <==commonly_known== 12326 (pos)
                    (Bc_checked_p9)

                    ; #44010: <==commonly_known== 12326 (pos)
                    (Ba_checked_p9)

                    ; #47602: <==commonly_known== 10657 (neg)
                    (Pc_checked_p9)

                    ; #60440: <==closure== 31544 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #61759: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #63273: <==commonly_known== 10657 (neg)
                    (Pd_checked_p9)

                    ; #82771: <==commonly_known== 10657 (neg)
                    (Pa_checked_p9)

                    ; #10657: <==negation-removal== 12326 (pos)
                    (not (not_checked_p9))

                    ; #12050: <==uncertain_firing== 60440 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #12693: <==negation-removal== 63273 (pos)
                    (not (Bd_not_checked_p9))

                    ; #18421: <==negation-removal== 14473 (pos)
                    (not (Pb_not_checked_p9))

                    ; #20714: <==negation-removal== 31544 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #24106: <==negation-removal== 61759 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #29426: <==uncertain_firing== 36334 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #41979: <==negation-removal== 60440 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #43365: <==negation-removal== 41973 (pos)
                    (not (Pc_not_checked_p9))

                    ; #51659: <==negation-removal== 15208 (pos)
                    (not (Bb_not_checked_p9))

                    ; #52014: <==negation-removal== 47602 (pos)
                    (not (Bc_not_checked_p9))

                    ; #53081: <==uncertain_firing== 31544 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #63273: <==negation-removal== 20993 (pos)
                    (not (Pd_not_checked_p9))

                    ; #63464: <==negation-removal== 44010 (pos)
                    (not (Pa_not_checked_p9))

                    ; #63659: <==uncertain_firing== 61759 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #72393: <==negation-removal== 82771 (pos)
                    (not (Ba_not_checked_p9))

                    ; #76535: <==negation-removal== 36334 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))))

    (:action observ_d_p10_s
        :precondition (and (at_d_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #14739: <==commonly_known== 43150 (pos)
                    (Bc_checked_p10)

                    ; #16348: <==commonly_known== 47426 (neg)
                    (Pa_checked_p10)

                    ; #28837: <==commonly_known== 47426 (neg)
                    (Pc_checked_p10)

                    ; #30073: <==closure== 84722 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pd_survivorat_s_p10))

                    ; #42825: <==commonly_known== 43150 (pos)
                    (Bd_checked_p10)

                    ; #43150: origin
                    (checked_p10)

                    ; #47622: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #64421: <==commonly_known== 47426 (neg)
                    (Pb_checked_p10)

                    ; #71441: <==closure== 47622 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #74497: <==commonly_known== 43150 (pos)
                    (Bb_checked_p10)

                    ; #83522: <==commonly_known== 47426 (neg)
                    (Pd_checked_p10)

                    ; #84722: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bd_survivorat_s_p10))

                    ; #86230: <==commonly_known== 43150 (pos)
                    (Ba_checked_p10)

                    ; #17619: <==negation-removal== 47622 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #18612: <==negation-removal== 14739 (pos)
                    (not (Pc_not_checked_p10))

                    ; #33266: <==negation-removal== 16348 (pos)
                    (not (Ba_not_checked_p10))

                    ; #33558: <==negation-removal== 64421 (pos)
                    (not (Bb_not_checked_p10))

                    ; #36000: <==negation-removal== 71441 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #38274: <==negation-removal== 86230 (pos)
                    (not (Pa_not_checked_p10))

                    ; #46838: <==uncertain_firing== 47622 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #47426: <==negation-removal== 43150 (pos)
                    (not (not_checked_p10))

                    ; #50433: <==negation-removal== 42825 (pos)
                    (not (Pd_not_checked_p10))

                    ; #51268: <==negation-removal== 28837 (pos)
                    (not (Bc_not_checked_p10))

                    ; #57303: <==uncertain_firing== 71441 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #58034: <==negation-removal== 84722 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #59284: <==uncertain_firing== 30073 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #63459: <==negation-removal== 30073 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #72712: <==negation-removal== 83522 (pos)
                    (not (Bd_not_checked_p10))

                    ; #77805: <==negation-removal== 74497 (pos)
                    (not (Pb_not_checked_p10))

                    ; #91076: <==uncertain_firing== 84722 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pd_not_survivorat_s_p10)))))

    (:action observ_d_p11_s
        :precondition (and (at_d_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #10234: <==commonly_known== 46209 (neg)
                    (Pa_checked_p11)

                    ; #21622: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #22912: <==commonly_known== 89294 (pos)
                    (Bc_checked_p11)

                    ; #34711: <==commonly_known== 89294 (pos)
                    (Ba_checked_p11)

                    ; #38846: <==commonly_known== 46209 (neg)
                    (Pd_checked_p11)

                    ; #49706: <==commonly_known== 89294 (pos)
                    (Bd_checked_p11)

                    ; #54302: <==commonly_known== 46209 (neg)
                    (Pb_checked_p11)

                    ; #64684: <==commonly_known== 89294 (pos)
                    (Bb_checked_p11)

                    ; #74698: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bd_survivorat_s_p11))

                    ; #77902: <==closure== 74698 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pd_survivorat_s_p11))

                    ; #80853: <==commonly_known== 46209 (neg)
                    (Pc_checked_p11)

                    ; #88914: <==closure== 21622 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #89294: origin
                    (checked_p11)

                    ; #15350: <==negation-removal== 54302 (pos)
                    (not (Bb_not_checked_p11))

                    ; #22737: <==uncertain_firing== 88914 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #35715: <==uncertain_firing== 74698 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #38225: <==negation-removal== 34711 (pos)
                    (not (Pa_not_checked_p11))

                    ; #43686: <==negation-removal== 22912 (pos)
                    (not (Pc_not_checked_p11))

                    ; #46209: <==negation-removal== 89294 (pos)
                    (not (not_checked_p11))

                    ; #49847: <==negation-removal== 80853 (pos)
                    (not (Bc_not_checked_p11))

                    ; #49959: <==uncertain_firing== 21622 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #50819: <==negation-removal== 88914 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #66871: <==negation-removal== 21622 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #68296: <==negation-removal== 77902 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #81451: <==negation-removal== 49706 (pos)
                    (not (Pd_not_checked_p11))

                    ; #81768: <==negation-removal== 10234 (pos)
                    (not (Ba_not_checked_p11))

                    ; #82056: <==negation-removal== 38846 (pos)
                    (not (Bd_not_checked_p11))

                    ; #84983: <==negation-removal== 74698 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #91826: <==negation-removal== 64684 (pos)
                    (not (Pb_not_checked_p11))

                    ; #92719: <==uncertain_firing== 77902 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bd_not_survivorat_s_p11)))))

    (:action observ_d_p12_s
        :precondition (and (at_d_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #16688: <==commonly_known== 75369 (neg)
                    (Pd_checked_p12)

                    ; #16699: <==commonly_known== 90378 (pos)
                    (Bc_checked_p12)

                    ; #18420: <==closure== 65066 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pd_survivorat_s_p12))

                    ; #33135: <==commonly_known== 75369 (neg)
                    (Pb_checked_p12)

                    ; #33267: <==closure== 63726 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #35678: <==commonly_known== 90378 (pos)
                    (Bb_checked_p12)

                    ; #57775: <==commonly_known== 75369 (neg)
                    (Pc_checked_p12)

                    ; #63726: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #65066: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bd_survivorat_s_p12))

                    ; #65839: <==commonly_known== 90378 (pos)
                    (Ba_checked_p12)

                    ; #80211: <==commonly_known== 90378 (pos)
                    (Bd_checked_p12)

                    ; #88677: <==commonly_known== 75369 (neg)
                    (Pa_checked_p12)

                    ; #90378: origin
                    (checked_p12)

                    ; #13845: <==negation-removal== 63726 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #16151: <==negation-removal== 16688 (pos)
                    (not (Bd_not_checked_p12))

                    ; #34528: <==negation-removal== 88677 (pos)
                    (not (Ba_not_checked_p12))

                    ; #36202: <==negation-removal== 33267 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #37269: <==uncertain_firing== 63726 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #40676: <==negation-removal== 18420 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #45131: <==negation-removal== 65839 (pos)
                    (not (Pa_not_checked_p12))

                    ; #48704: <==negation-removal== 65066 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #49807: <==uncertain_firing== 33267 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #50215: <==uncertain_firing== 65066 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #55973: <==negation-removal== 35678 (pos)
                    (not (Pb_not_checked_p12))

                    ; #56831: <==negation-removal== 57775 (pos)
                    (not (Bc_not_checked_p12))

                    ; #70465: <==negation-removal== 16699 (pos)
                    (not (Pc_not_checked_p12))

                    ; #75369: <==negation-removal== 90378 (pos)
                    (not (not_checked_p12))

                    ; #83063: <==negation-removal== 80211 (pos)
                    (not (Pd_not_checked_p12))

                    ; #83964: <==negation-removal== 33135 (pos)
                    (not (Bb_not_checked_p12))

                    ; #86841: <==uncertain_firing== 18420 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bd_not_survivorat_s_p12)))))

    (:action observ_d_p1_s
        :precondition (and (at_d_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12993: <==commonly_known== 24221 (pos)
                    (Bd_checked_p1)

                    ; #20032: <==commonly_known== 81930 (neg)
                    (Pc_checked_p1)

                    ; #23251: <==commonly_known== 24221 (pos)
                    (Ba_checked_p1)

                    ; #24221: origin
                    (checked_p1)

                    ; #26379: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #31509: <==commonly_known== 24221 (pos)
                    (Bb_checked_p1)

                    ; #33497: <==closure== 26379 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #36425: <==closure== 46616 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #43766: <==commonly_known== 81930 (neg)
                    (Pa_checked_p1)

                    ; #46616: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #58451: <==commonly_known== 81930 (neg)
                    (Pb_checked_p1)

                    ; #72999: <==commonly_known== 24221 (pos)
                    (Bc_checked_p1)

                    ; #84976: <==commonly_known== 81930 (neg)
                    (Pd_checked_p1)

                    ; #22154: <==uncertain_firing== 26379 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #22527: <==negation-removal== 33497 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #27577: <==negation-removal== 31509 (pos)
                    (not (Pb_not_checked_p1))

                    ; #28383: <==negation-removal== 43766 (pos)
                    (not (Ba_not_checked_p1))

                    ; #31853: <==negation-removal== 23251 (pos)
                    (not (Pa_not_checked_p1))

                    ; #36173: <==negation-removal== 36425 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #40003: <==negation-removal== 58451 (pos)
                    (not (Bb_not_checked_p1))

                    ; #42706: <==negation-removal== 46616 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #47904: <==negation-removal== 26379 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #52790: <==uncertain_firing== 33497 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #59345: <==uncertain_firing== 46616 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #66342: <==negation-removal== 84976 (pos)
                    (not (Bd_not_checked_p1))

                    ; #76291: <==negation-removal== 20032 (pos)
                    (not (Bc_not_checked_p1))

                    ; #81930: <==negation-removal== 24221 (pos)
                    (not (not_checked_p1))

                    ; #84818: <==negation-removal== 12993 (pos)
                    (not (Pd_not_checked_p1))

                    ; #87921: <==negation-removal== 72999 (pos)
                    (not (Pc_not_checked_p1))

                    ; #89407: <==uncertain_firing== 36425 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))))

    (:action observ_d_p2_s
        :precondition (and (at_d_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #22016: <==commonly_known== 35956 (pos)
                    (Ba_checked_p2)

                    ; #29771: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #30421: <==commonly_known== 48122 (neg)
                    (Pd_checked_p2)

                    ; #35956: origin
                    (checked_p2)

                    ; #37927: <==commonly_known== 48122 (neg)
                    (Pc_checked_p2)

                    ; #38657: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #39916: <==commonly_known== 35956 (pos)
                    (Bc_checked_p2)

                    ; #46717: <==closure== 38657 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #47102: <==commonly_known== 35956 (pos)
                    (Bb_checked_p2)

                    ; #55725: <==commonly_known== 35956 (pos)
                    (Bd_checked_p2)

                    ; #80429: <==closure== 29771 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #88786: <==commonly_known== 48122 (neg)
                    (Pa_checked_p2)

                    ; #92166: <==commonly_known== 48122 (neg)
                    (Pb_checked_p2)

                    ; #10389: <==uncertain_firing== 46717 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #13421: <==negation-removal== 29771 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #15664: <==uncertain_firing== 29771 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #18010: <==negation-removal== 92166 (pos)
                    (not (Bb_not_checked_p2))

                    ; #20199: <==negation-removal== 47102 (pos)
                    (not (Pb_not_checked_p2))

                    ; #28873: <==negation-removal== 38657 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #35845: <==negation-removal== 30421 (pos)
                    (not (Bd_not_checked_p2))

                    ; #45587: <==uncertain_firing== 80429 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #47600: <==negation-removal== 80429 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #48122: <==negation-removal== 35956 (pos)
                    (not (not_checked_p2))

                    ; #60328: <==negation-removal== 37927 (pos)
                    (not (Bc_not_checked_p2))

                    ; #65854: <==negation-removal== 88786 (pos)
                    (not (Ba_not_checked_p2))

                    ; #73362: <==uncertain_firing== 38657 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #73434: <==negation-removal== 46717 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #73754: <==negation-removal== 39916 (pos)
                    (not (Pc_not_checked_p2))

                    ; #79008: <==negation-removal== 55725 (pos)
                    (not (Pd_not_checked_p2))

                    ; #81079: <==negation-removal== 22016 (pos)
                    (not (Pa_not_checked_p2))))

    (:action observ_d_p3_s
        :precondition (and (at_d_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #18194: <==commonly_known== 43562 (neg)
                    (Pd_checked_p3)

                    ; #25511: <==commonly_known== 43562 (neg)
                    (Pc_checked_p3)

                    ; #38610: <==commonly_known== 85126 (pos)
                    (Bc_checked_p3)

                    ; #40884: <==commonly_known== 43562 (neg)
                    (Pa_checked_p3)

                    ; #42337: <==commonly_known== 85126 (pos)
                    (Bd_checked_p3)

                    ; #48942: <==commonly_known== 85126 (pos)
                    (Bb_checked_p3)

                    ; #74312: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #74538: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #81626: <==commonly_known== 43562 (neg)
                    (Pb_checked_p3)

                    ; #84869: <==closure== 74538 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #85126: origin
                    (checked_p3)

                    ; #87461: <==closure== 74312 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #90673: <==commonly_known== 85126 (pos)
                    (Ba_checked_p3)

                    ; #12283: <==negation-removal== 40884 (pos)
                    (not (Ba_not_checked_p3))

                    ; #18669: <==negation-removal== 74538 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #22661: <==negation-removal== 42337 (pos)
                    (not (Pd_not_checked_p3))

                    ; #22860: <==uncertain_firing== 74538 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #23793: <==negation-removal== 18194 (pos)
                    (not (Bd_not_checked_p3))

                    ; #24479: <==uncertain_firing== 87461 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #34598: <==uncertain_firing== 84869 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #43562: <==negation-removal== 85126 (pos)
                    (not (not_checked_p3))

                    ; #62314: <==negation-removal== 81626 (pos)
                    (not (Bb_not_checked_p3))

                    ; #63218: <==negation-removal== 25511 (pos)
                    (not (Bc_not_checked_p3))

                    ; #64296: <==negation-removal== 48942 (pos)
                    (not (Pb_not_checked_p3))

                    ; #65276: <==negation-removal== 90673 (pos)
                    (not (Pa_not_checked_p3))

                    ; #65579: <==negation-removal== 38610 (pos)
                    (not (Pc_not_checked_p3))

                    ; #73917: <==negation-removal== 87461 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #75938: <==negation-removal== 74312 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #88002: <==negation-removal== 84869 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #89109: <==uncertain_firing== 74312 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))))

    (:action observ_d_p4_s
        :precondition (and (at_d_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13394: <==commonly_known== 32972 (pos)
                    (Ba_checked_p4)

                    ; #13699: <==commonly_known== 32972 (pos)
                    (Bd_checked_p4)

                    ; #18057: <==commonly_known== 32972 (pos)
                    (Bc_checked_p4)

                    ; #32972: origin
                    (checked_p4)

                    ; #33649: <==closure== 69374 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #48860: <==commonly_known== 71528 (neg)
                    (Pb_checked_p4)

                    ; #69374: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #69919: <==commonly_known== 71528 (neg)
                    (Pd_checked_p4)

                    ; #71240: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #78542: <==commonly_known== 32972 (pos)
                    (Bb_checked_p4)

                    ; #84627: <==commonly_known== 71528 (neg)
                    (Pa_checked_p4)

                    ; #85789: <==commonly_known== 71528 (neg)
                    (Pc_checked_p4)

                    ; #87427: <==closure== 71240 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #10875: <==uncertain_firing== 87427 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #11547: <==negation-removal== 78542 (pos)
                    (not (Pb_not_checked_p4))

                    ; #21427: <==negation-removal== 33649 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #21740: <==negation-removal== 69919 (pos)
                    (not (Bd_not_checked_p4))

                    ; #29537: <==uncertain_firing== 71240 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #31082: <==negation-removal== 71240 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #36043: <==negation-removal== 87427 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #38891: <==negation-removal== 13394 (pos)
                    (not (Pa_not_checked_p4))

                    ; #39090: <==negation-removal== 13699 (pos)
                    (not (Pd_not_checked_p4))

                    ; #43581: <==uncertain_firing== 33649 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #51473: <==uncertain_firing== 69374 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #54972: <==negation-removal== 69374 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #57307: <==negation-removal== 84627 (pos)
                    (not (Ba_not_checked_p4))

                    ; #71528: <==negation-removal== 32972 (pos)
                    (not (not_checked_p4))

                    ; #79951: <==negation-removal== 48860 (pos)
                    (not (Bb_not_checked_p4))

                    ; #81302: <==negation-removal== 85789 (pos)
                    (not (Bc_not_checked_p4))

                    ; #84903: <==negation-removal== 18057 (pos)
                    (not (Pc_not_checked_p4))))

    (:action observ_d_p5_s
        :precondition (and (at_d_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #20997: <==closure== 76165 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #22022: <==commonly_known== 52384 (pos)
                    (Bb_checked_p5)

                    ; #29173: <==commonly_known== 38193 (neg)
                    (Pc_checked_p5)

                    ; #52384: origin
                    (checked_p5)

                    ; #53481: <==commonly_known== 38193 (neg)
                    (Pa_checked_p5)

                    ; #55632: <==commonly_known== 52384 (pos)
                    (Bc_checked_p5)

                    ; #56414: <==closure== 67358 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #57329: <==commonly_known== 38193 (neg)
                    (Pd_checked_p5)

                    ; #65951: <==commonly_known== 38193 (neg)
                    (Pb_checked_p5)

                    ; #67358: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #76165: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #77157: <==commonly_known== 52384 (pos)
                    (Bd_checked_p5)

                    ; #91398: <==commonly_known== 52384 (pos)
                    (Ba_checked_p5)

                    ; #12891: <==negation-removal== 57329 (pos)
                    (not (Bd_not_checked_p5))

                    ; #13942: <==uncertain_firing== 20997 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #22002: <==negation-removal== 77157 (pos)
                    (not (Pd_not_checked_p5))

                    ; #22417: <==negation-removal== 20997 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #23526: <==negation-removal== 22022 (pos)
                    (not (Pb_not_checked_p5))

                    ; #30410: <==negation-removal== 67358 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #30537: <==negation-removal== 65951 (pos)
                    (not (Bb_not_checked_p5))

                    ; #34391: <==negation-removal== 76165 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #34722: <==uncertain_firing== 67358 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #36501: <==uncertain_firing== 56414 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #38193: <==negation-removal== 52384 (pos)
                    (not (not_checked_p5))

                    ; #41064: <==uncertain_firing== 76165 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #45204: <==negation-removal== 91398 (pos)
                    (not (Pa_not_checked_p5))

                    ; #49899: <==negation-removal== 56414 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #63807: <==negation-removal== 29173 (pos)
                    (not (Bc_not_checked_p5))

                    ; #77013: <==negation-removal== 55632 (pos)
                    (not (Pc_not_checked_p5))

                    ; #90717: <==negation-removal== 53481 (pos)
                    (not (Ba_not_checked_p5))))

    (:action observ_d_p6_s
        :precondition (and (at_d_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #19352: <==commonly_known== 61804 (pos)
                    (Ba_checked_p6)

                    ; #29486: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #32840: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #45645: <==commonly_known== 33992 (neg)
                    (Pb_checked_p6)

                    ; #48741: <==commonly_known== 33992 (neg)
                    (Pd_checked_p6)

                    ; #57896: <==commonly_known== 33992 (neg)
                    (Pc_checked_p6)

                    ; #61804: origin
                    (checked_p6)

                    ; #66468: <==commonly_known== 61804 (pos)
                    (Bb_checked_p6)

                    ; #71416: <==commonly_known== 61804 (pos)
                    (Bc_checked_p6)

                    ; #80176: <==closure== 29486 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #82278: <==closure== 32840 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #82518: <==commonly_known== 33992 (neg)
                    (Pa_checked_p6)

                    ; #88902: <==commonly_known== 61804 (pos)
                    (Bd_checked_p6)

                    ; #11824: <==negation-removal== 32840 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #30430: <==uncertain_firing== 29486 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #33992: <==negation-removal== 61804 (pos)
                    (not (not_checked_p6))

                    ; #34596: <==negation-removal== 45645 (pos)
                    (not (Bb_not_checked_p6))

                    ; #41905: <==negation-removal== 19352 (pos)
                    (not (Pa_not_checked_p6))

                    ; #42214: <==negation-removal== 82278 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #42750: <==negation-removal== 66468 (pos)
                    (not (Pb_not_checked_p6))

                    ; #43643: <==negation-removal== 71416 (pos)
                    (not (Pc_not_checked_p6))

                    ; #44215: <==negation-removal== 82518 (pos)
                    (not (Ba_not_checked_p6))

                    ; #53235: <==negation-removal== 88902 (pos)
                    (not (Pd_not_checked_p6))

                    ; #65435: <==uncertain_firing== 32840 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #66459: <==uncertain_firing== 82278 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #69852: <==negation-removal== 80176 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #86023: <==uncertain_firing== 80176 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #87471: <==negation-removal== 48741 (pos)
                    (not (Bd_not_checked_p6))

                    ; #92172: <==negation-removal== 29486 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #98234: <==negation-removal== 57896 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observ_d_p7_s
        :precondition (and (at_d_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #18286: <==commonly_known== 52621 (neg)
                    (Pd_checked_p7)

                    ; #20220: <==closure== 67875 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #20912: <==closure== 55167 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #50389: origin
                    (checked_p7)

                    ; #52428: <==commonly_known== 50389 (pos)
                    (Bd_checked_p7)

                    ; #55167: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #61313: <==commonly_known== 52621 (neg)
                    (Pa_checked_p7)

                    ; #64089: <==commonly_known== 50389 (pos)
                    (Ba_checked_p7)

                    ; #67875: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #68824: <==commonly_known== 52621 (neg)
                    (Pc_checked_p7)

                    ; #78031: <==commonly_known== 50389 (pos)
                    (Bb_checked_p7)

                    ; #83678: <==commonly_known== 52621 (neg)
                    (Pb_checked_p7)

                    ; #87434: <==commonly_known== 50389 (pos)
                    (Bc_checked_p7)

                    ; #16669: <==uncertain_firing== 55167 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #22392: <==negation-removal== 87434 (pos)
                    (not (Pc_not_checked_p7))

                    ; #28215: <==negation-removal== 55167 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #34132: <==negation-removal== 52428 (pos)
                    (not (Pd_not_checked_p7))

                    ; #52621: <==negation-removal== 50389 (pos)
                    (not (not_checked_p7))

                    ; #53888: <==uncertain_firing== 20912 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #54322: <==negation-removal== 61313 (pos)
                    (not (Ba_not_checked_p7))

                    ; #56545: <==negation-removal== 64089 (pos)
                    (not (Pa_not_checked_p7))

                    ; #59912: <==negation-removal== 20912 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #62752: <==negation-removal== 68824 (pos)
                    (not (Bc_not_checked_p7))

                    ; #65647: <==negation-removal== 83678 (pos)
                    (not (Bb_not_checked_p7))

                    ; #71232: <==negation-removal== 78031 (pos)
                    (not (Pb_not_checked_p7))

                    ; #76411: <==uncertain_firing== 67875 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #83823: <==uncertain_firing== 20220 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #85135: <==negation-removal== 67875 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #90587: <==negation-removal== 18286 (pos)
                    (not (Bd_not_checked_p7))

                    ; #90895: <==negation-removal== 20220 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))))

    (:action observ_d_p8_s
        :precondition (and (at_d_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10302: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #15338: <==closure== 10302 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #20279: <==commonly_known== 71644 (pos)
                    (Bd_checked_p8)

                    ; #56826: <==commonly_known== 33149 (neg)
                    (Pc_checked_p8)

                    ; #59149: <==commonly_known== 33149 (neg)
                    (Pa_checked_p8)

                    ; #65232: <==commonly_known== 33149 (neg)
                    (Pb_checked_p8)

                    ; #65736: <==commonly_known== 71644 (pos)
                    (Bc_checked_p8)

                    ; #71644: origin
                    (checked_p8)

                    ; #84325: <==commonly_known== 71644 (pos)
                    (Bb_checked_p8)

                    ; #86556: <==closure== 89490 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #87592: <==commonly_known== 33149 (neg)
                    (Pd_checked_p8)

                    ; #89490: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #91126: <==commonly_known== 71644 (pos)
                    (Ba_checked_p8)

                    ; #10324: <==negation-removal== 20279 (pos)
                    (not (Pd_not_checked_p8))

                    ; #17865: <==negation-removal== 65232 (pos)
                    (not (Bb_not_checked_p8))

                    ; #22789: <==negation-removal== 10302 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #26530: <==negation-removal== 84325 (pos)
                    (not (Pb_not_checked_p8))

                    ; #31873: <==negation-removal== 87592 (pos)
                    (not (Bd_not_checked_p8))

                    ; #33149: <==negation-removal== 71644 (pos)
                    (not (not_checked_p8))

                    ; #48772: <==negation-removal== 89490 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #54172: <==negation-removal== 56826 (pos)
                    (not (Bc_not_checked_p8))

                    ; #67904: <==negation-removal== 59149 (pos)
                    (not (Ba_not_checked_p8))

                    ; #71009: <==uncertain_firing== 86556 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #71437: <==uncertain_firing== 89490 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #75634: <==negation-removal== 65736 (pos)
                    (not (Pc_not_checked_p8))

                    ; #85440: <==negation-removal== 91126 (pos)
                    (not (Pa_not_checked_p8))

                    ; #85888: <==negation-removal== 86556 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #87738: <==negation-removal== 15338 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #88103: <==uncertain_firing== 15338 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #89677: <==uncertain_firing== 10302 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))))

    (:action observ_d_p9_s
        :precondition (and (at_d_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12326: origin
                    (checked_p9)

                    ; #14473: <==commonly_known== 12326 (pos)
                    (Bb_checked_p9)

                    ; #15208: <==commonly_known== 10657 (neg)
                    (Pb_checked_p9)

                    ; #18186: <==closure== 55272 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #20993: <==commonly_known== 12326 (pos)
                    (Bd_checked_p9)

                    ; #41973: <==commonly_known== 12326 (pos)
                    (Bc_checked_p9)

                    ; #44010: <==commonly_known== 12326 (pos)
                    (Ba_checked_p9)

                    ; #47602: <==commonly_known== 10657 (neg)
                    (Pc_checked_p9)

                    ; #55272: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #56472: <==closure== 75586 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #63273: <==commonly_known== 10657 (neg)
                    (Pd_checked_p9)

                    ; #75586: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #82771: <==commonly_known== 10657 (neg)
                    (Pa_checked_p9)

                    ; #10657: <==negation-removal== 12326 (pos)
                    (not (not_checked_p9))

                    ; #12693: <==negation-removal== 63273 (pos)
                    (not (Bd_not_checked_p9))

                    ; #15219: <==negation-removal== 56472 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #16515: <==uncertain_firing== 56472 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #18421: <==negation-removal== 14473 (pos)
                    (not (Pb_not_checked_p9))

                    ; #20797: <==uncertain_firing== 18186 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #39084: <==negation-removal== 55272 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #42232: <==uncertain_firing== 75586 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #43365: <==negation-removal== 41973 (pos)
                    (not (Pc_not_checked_p9))

                    ; #45410: <==negation-removal== 75586 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #51659: <==negation-removal== 15208 (pos)
                    (not (Bb_not_checked_p9))

                    ; #52014: <==negation-removal== 47602 (pos)
                    (not (Bc_not_checked_p9))

                    ; #63273: <==negation-removal== 20993 (pos)
                    (not (Pd_not_checked_p9))

                    ; #63464: <==negation-removal== 44010 (pos)
                    (not (Pa_not_checked_p9))

                    ; #72393: <==negation-removal== 82771 (pos)
                    (not (Ba_not_checked_p9))

                    ; #75131: <==uncertain_firing== 55272 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #89953: <==negation-removal== 18186 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))))

)